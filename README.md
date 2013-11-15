# BiblioPile: A Rudimentary GoodReads.com Clone

####Table of Contents

1. [Introduction](#readers)
2. [Server-side](#server-side)
    - [Authentication](#authentication)
    - [Database Model](#databasemodel)
3. [Client-side](#client-side)
4. [To Do](#todo)


## Readers

The great American novelist and essayist, Elwyn Brooks ('E. B.') White wrote, in
the November 30, 1935 issue of _The New Yorker_, a short essay, "Irtnog," about the struggle
between readers and writers

> Along about 1920 it became apparent that more things were being written than
> people had time to read.  That is to say, even if a man spent his entire time
> reading stories, articles, and news, as they appeared in books, magazines, and
> pamphlets, he fell behind.  This was no fault of the reading public; on the
> contrary, readers made a real effort to keep pace with writers, and utilized
> every spare moment during their walking hours.

Obviously, in these days of even further accelerated production, in print and
especially online, readers need a way to hone in on those books they actually
want to read.

Enter websites like [GoodReads](https://www.goodreads.com/), which allow readers
to connect with other readers with similar tastes, and exchange information.


## Server-side

The backend is a [Rails](http://rubyonrails.org/) 3.2.13 application exposing a
[JSON](http://www.json.org/) API, layered on top of a [PostgreSQL](http://www.postgresql.org/)
database. The API allows for accessing all the major database entities (users,
texts, etc.) as well as some of the relationships, such as "friends."

The only complex aspect of the server-side code is in the SQL for efficiently
assembling the information needed by the client. For instance, to get all the
texts by a particular author, for a logged-in user (that is, with information
about the user's interactions with those texts) we need a scope which gets the
information in one fell swoop


```ruby
# /app/models/text.rb
def self.find_all_texts_by_author_for_user(author_id, user_id)
  Text.find_by_sql([<<-SQL, user_id, user_id, author_id])
    SELECT
      texts.*,
      text_states.state AS state,
      ratings.rating AS user_rating
    FROM
      texts
    LEFT OUTER JOIN
      text_states ON (texts.id = text_states.text_id AND
        text_states.user_id = ?)
    LEFT OUTER JOIN
      ratings ON (texts.id = ratings.text_id AND
        ratings.user_id = ?)
    INNER JOIN
      text_authors ON (texts.id = text_authors.text_id AND
        text_authors.author_id = ?)
  SQL
end
```



### Authentication

Authentication is handled on the server with a hand-rolled solution based on
random 16-character strings as session keys. I chose to write my own authentication
system in order to have more control over the codebase and to limit the amount
delegated to third parties. The system as it stands only has a single role, that
of the current user, who is authorized to do any _creation_ of elements. Other
users can read the data of all elements.

Users are identified by _two_ unique attributes, `username` and `email`. They can
use either to login. Internally `username` is given precedence.


### Database model

The central persisted entities are:

* Users
* Texts
* Genres
* Ratings
* Reviews
* Comments

The are then related through a series of join-tables. For instance, users can
have "friends," so there is a table for relating users with other users in a
single direction.

The schema can be seen [here](https://github.com/imurchie/super-reads/blob/master/db/schema.rb).


## Client-side

In contrast to the ur-site, this site is largely a single-page application running
the client-side JavaScript MVC framework [Backbone.js](http://backbonejs.org/), styled with
[Twitter](http://www.twitter.com/)'s [Bootstrap](http://getbootstrap.com/) library.
Bootstrap is a good fit since most of the functionality is confined to a few pages
representing different sets of a relatively small collection of data types (see
the [database model](#databasemodel) for more details). This also has the advantage
of allowing a more responsive experience.

There is minimal caching of database entities on the client-side, in the form of
available books (the "heaviest" resource in the system). These get cached but
immediately updated while being viewed. With a larger load this caching could be
shored up with a more sophisticated system for checking up-to-dateness, in addition
to the possibility of being supplemented with server-side caching with a system
such as Redis or Memcached.


## To Do

The implementation as it stands covers the basic functionality, but other features
would be nice. Particularly those involved in interacting users. Thus we would like

    - messaging between users
    - user recommendations (one user to another)
    - notifications of recent activity of other users
    - commenting on things other than books. Comments on authors, genres, reviews, etc.

Another level of recommendations would be nice, but would require a significantly
larger data set and user base, to allow for automated taste-based recommendations.

Comments and reviews are currently just treated as text. The only processing is
to protect from injection attacks. It would be nice to allow for some markup so
users can format their comments and reviews nicely. We could use a markdown-style
processing engine with little difficultly.

The last _big_ desideratum is a feature for searching books, authors, and genres.
Finding anything now is based on browsing, which is fine for a small amount of data
but would be unwieldy with much more.

On a different level is integration with other social-media sites. At the moment
there is the ability to [tweet](http://twitter.com/) about particular pages.
Integration with other sites, like [Facebook](http://www.facebook.com/), would
be a lovely feature.

As a completely frivolous **bonus-feature** it would be nice to implement a version
of the [_Amazon.com Knee-Jerk Contrarian Game_](http://waxy.org/2004/07/amazoncom_kneej/),
allowing a user to browse particularly delightful low reviews of beloved books.
Something like the [best-of Craigslist](http://www.craigslist.org/about/best/all/).
