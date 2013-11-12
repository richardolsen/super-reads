# BiblioPile: A Rudimentary GoodReads.com Clone

####Table of Contents

1. [Introduction](#readers)
2. [Server-side](#server-side)
3. [Client-side](#client-side)


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

Obviously, in these days of even further accelerated production, in print and especially online, readers need a way to hone in on those books they actually want to read.

Enter websites like [GoodReads](https://www.goodreads.com/), which allow readers to connect with other readers with similar tastes, and exchange information.


## Server-side

The backend is a [Rails](http://rubyonrails.org/) 3.2.13 application exposing a
[JSON](http://www.json.org/) API. It is layered on top of a [PostgreSQL](http://www.postgresql.org/)
database.


### Database model

The central persisted entities are:

* Users
* Texts
* Ratings
* Reviews
* Comments

The schema can be seen [here](https://github.com/imurchie/super-reads/blob/master/db/schema.rb).


## Client-side

On the client the bulk of the application is a single [Backbone.js](http://backbonejs.org/)
application styled with [Twitter](http://www.twitter.com/) [Bootstrap](http://getbootstrap.com/).
