# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# guest account
guest = User.create!(username: "guest",
                     email: "guest@example.com",
                     password: "password",
                     firstname: "Guesty",
                     lastname: "McGuesterson")

isaac = User.create!(username: "isaac",
                     email: "isaac@example.com",
                     password: "password",
                     firstname: "Isaac",
                     lastname: "Murchie")

peter_pevensie = User.create!(username: "peter",
                              email: "peter@example.com",
                              password: "password",
                              firstname: "Peter",
                              lastname: "Pevensie")

charlotte_cavatica = User.create!(username: "charlotte",
                                  email: "charlotte@example.com",
                                  password: "password",
                                  firstname: "Charolotte",
                                  lastname: "Cavatica")

holly_golightly = User.create!(username: "holly",
                               email: "holly@example.com",
                               password: "password",
                               firstname: "Holly",
                               lastname: "Golightly")

atticus_finch = User.create!(username: "atticus",
                             email: "atticus@example.com",
                             password: "password",
                             firstname: "Atticus",
                             lastname: "Finch")

dean_moriarty = User.create!(username: "dean",
                             email: "dean@road.com",
                             password: "password",
                             firstname: "Dean",
                             lastname: "Moriarty")




# authors
helen_dewitt = Author.create!(name: "Helen Dewitt",
                              birthday: "January 01, 1957",
                              gender: "female",
                              website: "http://www.paperpools.blogspot.com/",
                              bio: <<-BIO)
Helen DeWitt (born 1957 in Takoma Park, Maryland, a suburb of Washington, D.C.)
is a novelist.

DeWitt grew up primarily in South America (Mexico, Brazil, Colombia and Ecuador),
as her parents worked in the United States diplomatic service. After a year at
Northfield Mount Hermon School and two short periods at Smith College, DeWitt studied
classics at the University of Oxford, first at Lady Margaret Hall, and then at
Brasenose College for her D.Phil.

DeWitt is best known for her acclaimed debut novel, The Last Samurai. She held a
variety of jobs while struggling to finish a book, including a dictionary text
tagger, a copytaker, and Dunkin' Donuts employee, she also worked in a laundry
service. During this time she reportedly attempted to finish many novels, before
finally completing The Last Samurai, her 50th manuscript, in 1998.

In 2005 she collaborated with Ingrid Kerma, the London-based painter, writing
limit5 for the exhibition Blushing Brides.

In 2004, DeWitt went missing from her home in Staten Island. She was found
unharmed a few days later at Niagara Falls.

DeWitt lives in Berlin where she has recently finished a second novel, Your Name
Here, in collaboration with the Australian journalist Ilya Gridneff. DeWitt had
met Gridneff in an East London pub shortly before her departure for New York;
impressed by the linguistic virtuosity of his e-mails, she suggested a book
inspired by Charlie Kaufman's Adaptation, or Being John Malkovich, with Gridneff
as Malkovich.
BIO

michael_chabon = Author.create!(name: "Michael Chabon",
                                birthday: "May 24, 1963",
                                gender: "male",
                                website: "http://www.michaelchabon.com",
                                bio: <<-BIO)
Michael Chabon (b. 1963) is an acclaimed and bestselling author whose works
include the Pulitzer Prize–winning novel The Amazing Adventures of Kavalier &
Clay (2000). Chabon achieved literary fame at age twenty-four with his first
novel, The Mysteries of Pittsburgh (1988), which was a major critical and
commercial success. He then published Wonder Boys (1995), another bestseller,
which was made into a film starring Michael Douglas. One of America’s most
distinctive voices, Chabon has been called “a magical prose stylist” by the New
York Times Book Review, and is known for his lively writing, nostalgia for bygone
modes of storytelling, and deep empathy for the human predicament.
BIO

orhan_pamuk = Author.create!(name: "Orhan Pamuk",
                             birthday: "June 07, 1952",
                             gender: "male",
                             website: "http://www.orhanpamuk.net/",
                             bio: <<-BIO)
Ferit Orhan Pamuk is a Nobel Prize-winning Turkish novelist. Pamuk is often
regarded as a post-modern writer. As one of Turkey's most prominent novelists,
his work has been translated into more than forty languages. He is the recipient
of numerous national and international literary awards. He was the first Turkish
person awarded the Nobel Prize in Literature on October 12, 2006, commended for
being an author "who in the quest for the melancholic soul of his native city has
discovered new symbols for the clash and interlacing of cultures."
BIO

herman_melville = Author.create!(name: "Herman Melville",
                                 birthday: "August 01, 1819",
                                 gender: "male",
                                 website: "http://en.wikipedia.org/wiki/Herman_Melville",
                                 bio: <<-BIO)
Herman Melville was an American novelist, short story writer, essayist, and poet.
His first two books gained much attention, though they were not bestsellers, and
his popularity declined precipitously only a few years later. By the time of his
death he had been almost completely forgotten, but his longest novel, Moby-Dick —
largely considered a failure during his lifetime, and most responsible for
Melville's fall from favor with the reading public — was rediscovered in the 20th
century as one of the chief literary masterpieces of both American and world
literature.
BIO

j_k_rowling = Author.create!(name: "J. K. Rowling",
                             birthday: "July 31, 1965",
                             gender: "female",
                             website: "http://www.jkrowling.com",
                             bio: <<-BIO)
Although she writes under the pen name J. K. Rowling, pronounced like rolling,
her name when her first Harry Potter book was published was simply Joanne Rowling.
Anticipating that the target audience of young boys might not want to read a
book written by a woman, her publishers demanded that she use two initials,
rather than her full name. As she had no middle name, she chose K as the second
initial of her pen name, from her paternal grandmother Kathleen Ada Bulgen Rowling.
She calls herself Jo and has said, "No one ever called me 'Joanne' when I was young,
unless they were angry." Following her marriage, she has sometimes used the name
Joanne Murray when conducting personal business. During the Leveson Inquiry she
gave evidence under the name of Joanne Kathleen Rowling. In a 2012 interview,
Rowling noted that she no longer cared that people pronounced her name incorrectly.

Rowling was born to Peter James Rowling, a Rolls-Royce aircraft engineer, and
Anne Rowling (née Volant), on 31 July 1965 in Yate, Gloucestershire, England,
10 miles (16 km) northeast of Bristol. Her mother Anne was half-French and
half-Scottish. Her parents first met on a train departing from King's Cross
Station bound for Arbroath in 1964. They married on 14 March 1965. Her mother's
maternal grandfather, Dugald Campbell, was born in Lamlash on the Isle of Arran.
Her mother's paternal grandfather, Louis Volant, was awarded the Croix de Guerre
for exceptional bravery in defending the village of Courcelles-le-Comte during
the First World War.

Rowling's sister Dianne was born at their home when Rowling was 23 months old.
The family moved to the nearby village Winterbourne when Rowling was four. She
attended St Michael's Primary School, a school founded by abolitionist William
Wilberforce and education reformer Hannah More. Her headmaster at St Michael's,
Alfred Dunn, has been suggested as the inspiration for the Harry Potter headmaster
Albus Dumbledore.

As a child, Rowling often wrote fantasy stories, which she would usually then
read to her sister. She recalls that: "I can still remember me telling her a
story in which she fell down a rabbit hole and was fed strawberries by the rabbit
family inside it. Certainly the first story I ever wrote down (when I was five
or six) was about a rabbit called Rabbit. He got the measles and was visited by
his friends, including a giant bee called Miss Bee." At the age of nine, Rowling
moved to Church Cottage in the Gloucestershire village of Tutshill, close to
Chepstow, Wales. When she was a young teenager, her great aunt, who Rowling said
"taught classics and approved of a thirst for knowledge, even of a questionable
kind," gave her a very old copy of Jessica Mitford's autobiography, Hons and Rebels.
Mitford became Rowling's heroine, and Rowling subsequently read all of her books.

Rowling has said of her teenage years, in an interview with The New Yorker,
"I wasn’t particularly happy. I think it’s a dreadful time of life." She had a
difficult homelife; her mother was ill and she had a difficult relationship with
her father (she is no longer on speaking terms with him). She attended secondary
school at Wyedean School and College, where her mother had worked as a technician
in the science department. Rowling said of her adolescence, "Hermione [a bookish,
know-it-all Harry Potter character] is loosely based on me. She's a caricature
of me when I was eleven, which I'm not particularly proud of." Steve Eddy, who
taught Rowling English when she first arrived, remembers her as "not exceptional"
but "one of a group of girls who were bright, and quite good at English." Sean
Harris, her best friend in the Upper Sixth owned a turquoise Ford Anglia, which
she says inspired the one in her books.
BIO




# publishers
miramax = Publisher.create!(name: "Miramax Books", city: "New York")
picador = Publisher.create!(name: "Picador", city: "New York")
vintage = Publisher.create!(name: "Vintage", city: "New York")
new_directions = Publisher.create!(name: "New Directions", city: "New York")
harper = Publisher.create!(name: "Harper", city: "New York")
scholastic = Publisher.create!(name: "Scholastic Press", city: "New York")


# texts
kavalier_and_clay = Text.create!(title: "The Amazing Adventures of Kavalier & Clay",
                                 publisher_id: picador.id,
                                 published_date: "August 25th 2001",
                                 description: <<-DESCRIPTION)
Joe Kavalier, a young Jewish artist who has also been trained in the art of
Houdini-esque escape, has just smuggled himself out of Nazi-invaded Prague and
landed in New York City. His Brooklyn cousin Sammy Clay is looking for a partner
to create heroes, stories, and art for the latest novelty to hit America - the
comic book. Drawing on their own fears and dreams, Kavalier and Clay create the
Escapist, the Monitor, and Luna Moth, inspired by the beautiful Rosa Saks, who
will become linked by powerful ties to both men. With exhilarating style and grace,
Michael Chabon tells an unforgettable story about American romance and possibility.
DESCRIPTION
michael_chabon.texts << kavalier_and_clay

my_name_is_red = Text.create!(title: "My Name is Red",
                              publisher_id: vintage.id,
                              published_date: "August 27th 2002",
                              description: <<-DESCRIPTION)
At once a fiendishly devious mystery, a beguiling love story, and a brilliant
symposium on the power of art, My Name Is Red is a transporting tale set amid
the splendor and religious intrigue of sixteenth-century Istanbul, from one of
the most prominent contemporary Turkish writers.

The Sultan has commissioned a cadre of the most acclaimed artists in the land to
create a great book celebrating the glories of his realm. Their task: to illuminate
the work in the European style. But because figurative art can be deemed an affront
to Islam, this commission is a dangerous proposition indeed. The ruling elite
therefore mustn’t know the full scope or nature of the project, and panic erupts
when one of the chosen miniaturists disappears. The only clue to the mystery–or
  crime? –lies in the half-finished illuminations themselves. Part fantasy and
  part philosophical puzzle, My Name is Red is a kaleidoscopic journey to the
  intersection of art, religion, love, sex and power.

Translated from the Turkish by Erda M Göknar
DESCRIPTION
orhan_pamuk.texts << my_name_is_red

last_samurai = Text.create!(title: "The Last Samurai",
                            publisher_id: miramax.id,
                            published_date: "April 3rd 2002",
                            description: <<-DESCRIPTION)
Helen DeWitt's extraordinary debut, The Last Samurai, centers on the relationship
between Sibylla, a single mother of precocious and rigorous intelligence, and her
son, who, owing to his mother's singular attitude to education, develops into a
prodigy of learning. Ludo reads Homer in the original Greek at 4 before moving
on to Hebrew, Japanese, Old Norse, and Inuit; studying advanced mathematical
techniques (Fourier analysis and Laplace transformations); and, as the title
hints, endlessly watching and analyzing Akira Kurosawa's masterpiece, The Seven
Samurai. But the one question that eludes an answer is that of the name of his
father: Sibylla believes the film obliquely provides the male role models that
Ludo's genetic father cannot, and refuses to be drawn on the question of paternal
identity. The child thinks differently, however, and eventually sets out on a search,
one that leads him beyond the certainties of acquired knowledge into the complex
and messy world of adults.The novel draws on themes topical and perennial--the
hothousing of children, the familiar literary trope of the quest for the (absent)
father--and as such, divides itself into two halves: the first describes Ludo's
education, the second follows him in his search for his father and father figures.
The first stresses a sacred, Apollonian pursuit of logic, precise (if wayward)
erudition, and the erratic and endlessly fascinating architecture of languages,
while the second moves this knowledge into the world of emotion, human ambitions,
  and their attendant frustrations and failures.

The Last Samurai is about the pleasure of ideas, the rich varieties of human
thought, the possibilities that life offers us, and, ultimately, the balance
between the structures we make of the world and the chaos that it proffers in
return. Stylistically, the novel mirrors this ambivalence: DeWitt's remarkable
prose follows the shifts and breaks of human consciousness and memory, capturing
the intrusions of unspoken thought that punctuate conversation while providing
tantalizing disquisitions on, for example, Japanese grammar or the physics of
aerodynamics. It is remarkable, profound, and often very funny. Arigato
DeWitt-sensei. --Burhan Tufail
DESCRIPTION
helen_dewitt.texts << last_samurai

snow = Text.create!(title: "Snow",
                    publisher_id: vintage.id,
                    published_date: "August 2005",
                    description: <<-DESCRIPTION)
Dread, yearning, identity, intrigue, the lethal chemistry between secular doubt
and Islamic fanaticism–these are the elements that Orhan Pamuk anneals in this
masterful, disquieting novel. An exiled poet named Ka returns to Turkey and
travels to the forlorn city of Kars. His ostensible purpose is to report on a
wave of suicides among religious girls forbidden to wear their head-scarves. But
Ka is also drawn by his memories of the radiant Ipek, now recently divorced. Amid
blanketing snowfall and universal suspicion, Ka finds himself pursued by figures
ranging from Ipek’s ex-husband to a charismatic terrorist. A lost gift returns
with ecstatic suddenness. A theatrical evening climaxes in a massacre. And finding
god may be the prelude to losing everything else. Touching, slyly comic, and
humming with cerebral suspense, Snow is of immense relevance to our present moment.
DESCRIPTION
orhan_pamuk.texts << snow

lightning_rods = Text.create!(title: "Lightning Rods",
                              publisher_id: new_directions.id,
                              published_date: "October 5th 2011",
                              description: <<-DESCRIPTION)
“All I want is to be a success. That’s all I ask.” Joe fails to sell a single set
of the Encyclopedia Britannica in six months. Then fails to sell a single
Electrolux and must eat 126 pieces of homemade pie, served up by his would-be
customers who feel sorry for him. Holed up in his trailer, Joe finds an outlet
for his frustrations in a series of ingenious sexual fantasies, and at last strikes
  gold. His brainstorm, Lightning Rods, Inc., will take Joe to the very top —
  and to the very heart of corporate insanity — with an outrageous solution to
  the spectre of sexual harassment in the modern office.

An uproarious, hard-boiled modern fable of corporate life, sex, and race in America,
Helen DeWitt’s Lightning Rods brims with the satiric energy of Nathanael West and
the philosophic import of an Aristophanic comedy of ideas. Her wild yarn is second
cousin to the spirit of Mel Brooks and the hilarious reality-blurring of Being
John Malkovich. Dewitt continues to take the novel into new realms of storytelling —
as the timeliness of Lightning Rods crosses over into timelessness.
DESCRIPTION
helen_dewitt.texts << lightning_rods

moby_dick = Text.create!(title: "Moby-Dick; or, The Whale",
                         publisher_id: harper.id,
                         published_date: "November 14, 1851",
                         description: <<-DESCRIPTION)
Over a century and a half after its publication, Moby-Dick still stands as an
indisputable literary classic. It is the story of an eerily compelling madman
pursuing an unholy war against a creature as vast and dangerous and unknowable as
the sea itself. But more than just a novel of adventure, more than an encyclopedia
of whaling lore and legend, Moby-Dick is a haunting, mesmerizing, and important
social commentary populated with several of the most unforgettable and enduring
characters in literature. Written with wonderfully redemptive humor, Moby-Dick
is a profound and timeless inquiry into character, faith, and the nature of
perception.
DESCRIPTION
herman_melville.texts << moby_dick


harry_potter_1 = Text.create!(title: "Harry Potter and the Sorcerer's Stone",
                              publisher_id: scholastic.id,
                              published_date: "January 1, 1997",
                              description: <<-DESCRIPTION)
Harry Potter has never played a sport while flying on a broomstick. He's never
worn a Cloak of Invisibility, befriended a giant, or helped hatch a dragon. All
Harry knows is a miserable life with the Dursleys, his horrible aunt and uncle,
and their abominable son, Dudley. Harry's room is a tiny cupboard under the stairs,
and he hasn't had a birthday party in ten years.

But all that is about to change when a mysterious letter arrives by owl messenger:
a letter with an invitation to a wonderful place he never dreamed existed. There
he finds not only friends, aerial sports, and magic around every corner, but a
great destiny that's been waiting for him... if Harry can survive the encounter.
DESCRIPTION
j_k_rowling.texts << harry_potter_1

harry_potter_2 = Text.create!(title: "Harry Potter and the Chamber of Secrets",
                              publisher_id: scholastic.id,
                              published_date: "June 2, 1999",
                              description: <<-DESCRIPTION)
The Dursleys were so mean and hideous that summer that all Harry Potter wanted
was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as
he's packing his bags, Harry receives a warning from a strange, impish creature
named Dobby who says that if Harry Potter returns to Hogwarts, disaster will
strike.

And strike it does. For in Harry's second year at Hogwarts, fresh torments and
horrors arise, including an outrageously stuck-up new professor, Gilderoy
Lockheart, a spirit named Moaning Myrtle who haunts the girl's bathroom, and the
unwanted attentions of Ron Weasley's younger sister, Ginny.

But each of these seem minor annoyances when the real trouble beings, and
someone--or something--starts turning Hogwarts students to stone. Could it be
Draco Malfoy, a more poisonous rival than ever? Could it possibly be Hagrid,
whose mysterious past is finally told? Or could it be the one everyone at
Hogwarts most suspects...Harry Potter himself.
DESCRIPTION
j_k_rowling.texts << harry_potter_2

harry_potter_3 = Text.create!(title: "Harry Potter and the Prisoner of Azkaban",
                              publisher_id: scholastic.id,
                              published_date: "July 8, 1999",
                              description: <<-DESCRIPTION)
Harry Potter is lucky to reach the age of thirteen, since he has already
survived the murderous attacks of the feared Dark Lord on more than one occasion.
But his hopes for a quiet term concentrating on Quidditch are dashed when a
maniacal mass-murderer escapes from Azkaban, pursued by the soul-sucking Dementors
who guard the prison. It's assumed that Hogwarts is the safest place for Harry to
be. But is it a coincidence that he can feel eyes watching him in the dark, and
should he be taking Professor Trelawney's ghoulish predictions seriously?
DESCRIPTION
j_k_rowling.texts << harry_potter_3

harry_potter_4 = Text.create!(title: "Harry Potter and the Goblet of Fire",
                              publisher_id: scholastic.id,
                              published_date: "July 8, 2000",
                              description: <<-DESCRIPTION)
The summer holidays are dragging on and Harry Potter can't wait for the start of
the school year. It is his fourth year at Hogwarts School of Witchcraft and
Wizardry, and there are spells to be learnt, potions to be brewed and Divination
lessons (sigh) to be attended.
DESCRIPTION
j_k_rowling.texts << harry_potter_4

harry_potter_5 = Text.create!(title: "Harry Potter and the Order of the Phoenix",
                              publisher_id: scholastic.id,
                              published_date: "June 21, 2003",
                              description: <<-DESCRIPTION)
Harry Potter is due to start his fifth year at Hogwarts School of Witchcraft and
Wizardry. His best friends Ron and Hermione have been very secretive all summer
and he is desperate to get back to school and find out what has been going on.
However, what Harry discovers is far more devastating than he could ever have
expected...

Suspense, secrets and thrilling action from the pen of J.K. Rowling ensure an
electrifying adventure that is impossible to put down.
DESCRIPTION
j_k_rowling.texts << harry_potter_5

harry_potter_6 = Text.create!(title: "Harry Potter and the Half-Blood Prince",
                              publisher_id: scholastic.id,
                              published_date: "September 16, 2005",
                              description: <<-DESCRIPTION)
The war against Voldemort is not going well; even the Muggle governments are
noticing. Ron scans the obituary pages of the Daily Prophet, looking for familiar
names. Dumbledore is absent from Hogwarts for long stretches of time, and the
Order of the Phoenix has already suffered losses.

And yet, as with all wars, life goes on. Sixth-year students learn to Apparate—-and
lose a few eyebrows in the process. Teenagers flirt and fight and fall in love.
Classes are never straightforward, though Harry receives some extraordinary help
from the mysterious Half-Blood Prince.

So it's the home front that takes center stage in the multilayered sixth
installment of the story of Harry Potter. Here at Hogwarts, Harry will search
for the full and complex story of the boy who became Lord Voldemort—and thereby
find what may be his only vulnerability.
DESCRIPTION
j_k_rowling.texts << harry_potter_6

harry_potter_7 = Text.create!(title: "Harry Potter and the Deathly Hallows",
                              publisher_id: scholastic.id,
                              published_date: "August 1, 2007",
                              description: <<-DESCRIPTION)
Harry Potter is preparing to leave the Dursleys and Privet Drive for the last
time. But the future that awaits him is full of danger, not only for him, but
for anyone close to him — and Harry has already lost so much. Only by destroying
Voldemort's remaining Horcruxes can Harry free himself and overcome the Dark
Lord's forces of evil.

In this dramatic conclusion to the Harry Potter series, Harry must leave his most
loyal friends behind, and in a final perilous journey find the strength and the
will to face his terrifying destiny: a deadly confrontation that is his alone to
fight.
DESCRIPTION
j_k_rowling.texts << harry_potter_7


# genres
lit_and_fiction = Genre.create!(name: "Literature & Fiction")

moby_dick.genres << lit_and_fiction
herman_melville.genres << lit_and_fiction
last_samurai.genres << lit_and_fiction
helen_dewitt.genres << lit_and_fiction

satire = Genre.create!(name: "Satire")
lightning_rods.genres << satire
helen_dewitt.genres << satire

young_adult = Genre.create!(name: "Young Adult")
harry_potter_1.genres << young_adult
harry_potter_2.genres << young_adult
harry_potter_3.genres << young_adult
harry_potter_4.genres << young_adult
harry_potter_5.genres << young_adult
harry_potter_6.genres << young_adult
j_k_rowling.genres << young_adult



# reviews
peter_pevensie.reviews.create!(text_id: harry_potter_1.id,
  title: "",
  body: <<-REVIEW)
I'm going to keep this brief since there isn't much to say that hasn't already
been said. *clears throat*

I think the reason I waited so long to read this series is because I just
couldn't imagine myself enjoying reading about an eleven-year-old boy and his
adventures at a school of wizardry. I thought it would be too juvenile for my
taste. I was wrong, of course.

I can honestly say that I loved every minute of this. It's a spectacular little
romp with funny, courageous, and endearing characters that you can't help but
love.

It has talking chess pieces, singing hats, a giant three-headed dog named Fluffy,
a hilarious giant with a dragon fetish, a master wizard that's just a little bit
crazy, mail carrier owls, goblins running a bank, unicorns, centaurs(!),
trolls . . . and probably much more that I'm forgetting.

And then there's the lead characters: Hermione, the young scholar who starts out
prim and up-tight but soon becomes a true friend; Ron, the boy who has little
money but who has an abundance of family and loyalty to his friends to make up
for it; and then there's Harry, the boy who starts out sleeping in a closet and
ends up being a hero. Harry is kind to those that deserve it, fearless when it
counts the most, and wonderfully intelligent. What's not to love?
REVIEW
peter_pevensie.ratings.create!(text_id: harry_potter_1.id, rating: 5)

charlotte_cavatica.reviews.create!(text_id: harry_potter_1.id,
  title: "",
  body: <<-REVIEW)
Overall, this series is the most memorable from my childhood. I was originally
introduced to the series in third grade and immediately fell in love with the
realistic characters, suspenseful plot, and flawless writing style. I was the
diehard fan who watched each movie a dozen times at the same movie theater,
eventually coming to know the employees at the concessions stand on a first name
basis. For Halloween last year, in fact, I dressed up in an old pair of robes,
pulled on a wig, and drew a scar on my forehead. And to this day, I find myself
reciting quotes from the series. I was crushed after the release of the final
book, feeling that part of my childhood had ended with the series. Looking back,
I have never once regretted the time I have spent reading and rereading the
series, committing it to memory. The Harry Potter series has served as more than
a way to pass the time; it has helped to shape the person I am today.
REVIEW
charlotte_cavatica.ratings.create!(text_id: harry_potter_1.id, rating: 5)

atticus_finch.reviews.create!(text_id: harry_potter_1.id,
  title: "",
  body: <<-REVIEW)
Fairly standard kid's fantasy fare from Rowling as she re-introduces the world
to the classic British fairy tale, which had been mostly forgotten since Tolkien
spliced it with the epic. She mines gold from this rich and storied tradition,
but doesn't really fashion anything unique from it.

We can see the beginnings of Rowling's authorial failings (and a hint of her
strengths as well). She adopts Rouald Dahl's 'awful family' trope, though it's
clear that Rowling does not have the gift of bizarre characterization or the
knowledge of the darker parts of the human soul that made his books resonate.

She writes sympathetic characters, but not unusual ones. Overall her writing has
relatively little character or style. Then again, mass success often requires
leaving the more unusual elements behind. So she relies on standard character
types, managing to keep them afloat through the patented perpetual plot of the
airplane book.
REVIEW
atticus_finch.ratings.create!(text_id: harry_potter_1.id, rating: 3)

holly_golightly.reviews.create!(text_id: kavalier_and_clay.id,
  title: "",
  body: <<-REVIEW)
The Amazing Adventures of Kavalier and Clay is amazing. Well, some of it is. To
be specific I found it fairly amazing up until about page 429. Then it got
slightly less amazing which was sad really because, prior to that it was zipping
along so nicely like Superman with a new stream-lined cape sliding in and out of
the slip stream. After page 429 it became a bit more like Superman trying to
erratically jump over tall buildings with Dr Octopus tied to one leg and the
Juggernaut tied to the other.
REVIEW
holly_golightly.ratings.create!(text_id: kavalier_and_clay.id, rating: 5)

dean_moriarty.reviews.create!(text_id: kavalier_and_clay.id,
  title: "",
  body: <<-REVIEW)
"Absolutely, gosh ,wow" (cover quip) on his sentences? Yes, very yes. Chabon can
flat out compose sentences. Think Dickens, Pynchon, Tolstoy. But that's it. You
keep waiting for the sentences to compile some meaning but they never seem to
achieve any depth. He uses the backdrop of the comic book heydays, WWII, and
magic acts, his neither here nor there Jewish-ness, to stitch together an overly
long book that basically explores the relationship between two male characters
who are caricatures themselves. And, frankly, even those relationships--friendships
and sexual identities-- I do not see develop. They are more like "Mr. In and Mr.
Out" in Fitzgerald's whimsical short story. A Jungian analysis holds that all
the people in your dreams are simply fractions of your own persona. Two sides
of the same persona. The dance is in his head. A gifted writer, a fascinating
mind, needs a deeper theme. This is not DeLillo.

I found his brilliance frustrating, getting constantly lost in the wonderful
sentences and not ever finding myself in the forest of the story. He is a gifted
researcher as well, and shares everything he learns about a wide spectrum but
again, all seems mere convenience for the flow of words that magically cascade,
effusively blossom, out of each new idea, as if the primordial stew of vowels
and consonants impulsively births new cranial cognitions that the author’s
creative ether must spontaneously, irrepressibly deliver to his delighted and by
now addicted, but too addled readers. I don’t get this Pulitzer, but then I find
most Pulitzers stilted, safe, reliable good prosey.

I hope Chabon finds a theme worthy of his words. He should re-read page 286 and
make his own decision between art and money. I find in the postmodern, good
writers wreak havoc among real lives in order to construct a profitable memoir.
Real people ought not to be autopsied alive for the sake of an extended fiction.
REVIEW
dean_moriarty.ratings.create!(text_id: kavalier_and_clay.id, rating: 4)

guest.reviews.create!(text_id: kavalier_and_clay.id,
  title: "",
  body: <<-REVIEW)
Chabon is now one of my three favorite contemporary writers (others are David
Foster Wallace and Neal Stephenson) with his graceful, elegant prose, extensive
vocabulary, and entertaining plot. While the book was not "fall-on-the-floor-funny"
as one reviewer says, it certainly was entertaining and beautifully written. I
really was floored by many of his metaphors.
REVIEW
guest.ratings.create!(text_id: kavalier_and_clay.id, rating: 5)

peter_pevensie.reviews.create!(text_id: kavalier_and_clay.id,
  title: "",
  body: <<-REVIEW)
this is a bit of a rant. i liked this book, but it just did not live up to my
expectations. what to say. not quite sure. it opens great. sammy's background
with his father and joe's escape from prague are a wonderful set up. but in some
ways, in particular joe's very adventurous beginning, the beginning is unbalanced.
we never really see that kind of adventure again. but nor do we want to, because
the beauty of this novel is that "the amazing adventures" of these two men are
not super-hero like escapades, but the everyday triumphs, ordeals, and
suffering two middle-class men in america might face in that time. they are
not saving women and foiling super villains. they are doing the unglamorous
and unfullfilling: creating their art of which they do not reap the full benefit,
living a lie and losing a chance at love because of others' closed minded views
on sexuality, and living with extreme guilt because you live comfortably while
your family abroad is killed for no good reason and on top of that feeling
powerless to stop it. at times all of that great, everyday desperation comes out.
i like that sammy is kind of joe's side-kick in keeping with the comic book theme.
though i think not enough attention is given sammy through most of the book.
chabon's talent for detail and research or very evident here. the wet streets
and smokey dinner rooms of prague, the inky, long hours of the comic business.
awesome.

but for me the book seems to lose its sturdy ground after the first 200 pages or
so and not gain it back until the end. for me too much detail or space was focused
in the wrong place. chabon's writing is solid, which comes out is his descriptions
of action, work, cities, food. but the writing does not dig the reader deeper into
the story, into the characters.
REVIEW
peter_pevensie.ratings.create!(text_id: kavalier_and_clay.id, rating: 3)

guest.reviews.create!(text_id: my_name_is_red.id,
  title: "",
  body: <<-REVIEW)
It’s not a historical, though there is sort of history in it (Istanbul, Ottoman
Empire, 1591). The mystery death of two master miniaturists doesn’t make it a
murder mystery novel either. It’s not a philosophical novel though there are
lots of discussions about illusrtation in European style concerning perspective,
and traditional Eastern illustrating, which sees the world in the way Allah would
see it.

What amazed me is, how Pamuk has taken a now forbiden discussion, to 5 centuries
back, to stablish a better situation to discuss about tabus, concerning the
distinctions between Islamic states and Western Europe. It's how the so-called
Islamic style of illuminating lost it’s values to the so-called Frankish mode of
painting, painting the earthly wealth, rather than images of what God creates on
earth. In another word, demonstrating the creative abilities of the artist
(European style) which Enishte effendi finds fascinating is forbiden in Islam,
as if it’s kind of competing with God in creation. That’s why some other master
miniaturists kill him to not loose their stabilities and honour as artists. It
means that those who are not seeing the realilty of life and human being
(idealists) are going to loose their style and power. This describes the
restrained violence of the culture clashes which are so relevant to our world at
this time through the allegory of artistic expression as European manner of
representing the world, and that of the Islamic faith, in the novel!
REVIEW
guest.ratings.create!(text_id: my_name_is_red.id, rating: 4)

holly_golightly.reviews.create!(text_id: my_name_is_red.id,
  title: "",
  body: <<-REVIEW)
A triumph of hype over substance, I thought. I'm not sure whether this is
because of Pamuk himself, or whether the astonishingly stiff and formal style of
the narrative can be attributed to the translator, but I was very much
underwhelmed by this. The aspects of the novel which covered the differences
between Western Christian and Islamic perceptions of art and aesthetics were
certainly interesting; there were also some moments of true inventiveness and
creativity, such as the chapters which were narrated from the point of view of a
sketch of a dog, or the colour red. For the most part, though, I found the
characters unengaging, flat and irritating, with Pamuk liking to show off, almost,
through them. It's a very uneven mix of dialogue, plot, history and theology, and
while not a bad novel, per se, I really don't think I'll ever be coming back to
it.
REVIEW
holly_golightly.ratings.create!(text_id: my_name_is_red.id, rating: 1)

peter_pevensie.reviews.create!(text_id: my_name_is_red.id,
  title: "",
  body: <<-REVIEW)
I was deeply troubled by the low quality of this book. The structure and concept
are interesting: rotating narration in the wake of a Turkish murder in the Middle
Ages; in keeping with traditional murder mysteries it is the role of the author
to use each character's narrative as evidence; love triangles, death, sleaze,
domestic violence, sexual violence, in fact violence in any and every form it
existed five centuries ago between the backstreets of Eurasia. It sounded
promising.

Unfortunately, the storyline is dull and lifeless - much like the characters
that populate its 800 pages. The only thing to celebrate about this book is
reaching the long-awaited finale, not because of any fantastic twist (I'm only
guessing here since after 9 weeks trawling through its passionless pages I am
finally giving up) but because there's no more left to read.

I'm going to assume that this book has been poorly translated, though my issue
is not so much with the prose as everything else, because it is the only way I
can conceive that this is the same author that received the 2006 Nobel Prize for
Literature.
REVIEW
peter_pevensie.ratings.create!(text_id: my_name_is_red.id, rating: 2)


# ratings for unreviewed books
peter_pevensie.ratings.create!(text_id: harry_potter_2.id, rating: (rand(5) + 1))
peter_pevensie.ratings.create!(text_id: harry_potter_3.id, rating: (rand(5) + 1))
peter_pevensie.ratings.create!(text_id: harry_potter_4.id, rating: (rand(5) + 1))
peter_pevensie.ratings.create!(text_id: harry_potter_5.id, rating: (rand(5) + 1))
peter_pevensie.ratings.create!(text_id: harry_potter_6.id, rating: (rand(5) + 1))
peter_pevensie.ratings.create!(text_id: harry_potter_7.id, rating: (rand(5) + 1))

peter_pevensie.ratings.create!(text_id: last_samurai.id, rating: (rand(5) + 1))
peter_pevensie.ratings.create!(text_id: lightning_rods.id, rating: (rand(5) + 1))
peter_pevensie.ratings.create!(text_id: snow.id, rating: (rand(5) + 1))
peter_pevensie.ratings.create!(text_id: moby_dick.id, rating: (rand(5) + 1))

isaac.ratings.create!(text_id: harry_potter_1.id, rating: (rand(5) + 1))
isaac.ratings.create!(text_id: harry_potter_2.id, rating: (rand(5) + 1))
isaac.ratings.create!(text_id: harry_potter_3.id, rating: (rand(5) + 1))
isaac.ratings.create!(text_id: harry_potter_4.id, rating: (rand(5) + 1))
isaac.ratings.create!(text_id: harry_potter_5.id, rating: (rand(5) + 1))
isaac.ratings.create!(text_id: harry_potter_6.id, rating: (rand(5) + 1))
isaac.ratings.create!(text_id: harry_potter_7.id, rating: (rand(5) + 1))

isaac.ratings.create!(text_id: last_samurai.id, rating: (rand(5) + 1))
isaac.ratings.create!(text_id: lightning_rods.id, rating: (rand(5) + 1))
isaac.ratings.create!(text_id: snow.id, rating: (rand(5) + 1))
isaac.ratings.create!(text_id: moby_dick.id, rating: (rand(5) + 1))



# set up guest user with some books
guest.text_states.create!(text_id: my_name_is_red.id, state: :current)
guest.text_states.create!(text_id: last_samurai.id, state: :read)
guest.text_states.create!(text_id: harry_potter_1.id, state: :read)
guest.text_states.create!(text_id: snow.id, state: :read)
guest.text_states.create!(text_id: moby_dick.id, state: :read)
guest.text_states.create!(text_id: harry_potter_2.id, state: :queue)
guest.text_states.create!(text_id: harry_potter_3.id, state: :queue)
