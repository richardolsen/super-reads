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

erdag_goknar = Author.create!(name: "Erdağ M. Göknar")

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
erdag_goknar.texts << my_name_is_red

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
