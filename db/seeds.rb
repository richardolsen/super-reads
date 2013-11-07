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


# authors
helen_dewitt = Author.create!(name: "Helen Dewitt",
                              birthday: "January 01, 1957",
                              gender: "female",
                              website: "http://www.paperpools.blogspot.com/",
                              bio: <<-BIO)
Helen DeWitt (born 1957 in Takoma Park, Maryland, a suburb of Washington, D.C.) is a novelist.

DeWitt grew up primarily in South America (Mexico, Brazil, Colombia and Ecuador), as her parents worked in the United States diplomatic service. After a year at Northfield Mount Hermon School and two short periods at Smith College, DeWitt studied classics at the University of Oxford, first at Lady Margaret Hall, and then at Brasenose College for her D.Phil.

DeWitt is best known for her acclaimed debut novel, The Last Samurai. She held a variety of jobs while struggling to finish a book, including a dictionary text tagger, a copytaker, and Dunkin' Donuts employee, she also worked in a laundry service. During this time she reportedly attempted to finish many novels, before finally completing The Last Samurai, her 50th manuscript, in 1998.

In 2005 she collaborated with Ingrid Kerma, the London-based painter, writing limit5 for the exhibition Blushing Brides.

In 2004, DeWitt went missing from her home in Staten Island. She was found unharmed a few days later at Niagara Falls.

DeWitt lives in Berlin where she has recently finished a second novel, Your Name Here, in collaboration with the Australian journalist Ilya Gridneff. DeWitt had met Gridneff in an East London pub shortly before her departure for New York; impressed by the linguistic virtuosity of his e-mails, she suggested a book inspired by Charlie Kaufman's Adaptation, or Being John Malkovich, with Gridneff as Malkovich.
BIO

michael_chabon = Author.create!(name: "Michael Chabon",
                                birthday: "May 24, 1963",
                                gender: "male",
                                website: "http://www.michaelchabon.com",
                                bio: <<-BIO)
Michael Chabon (b. 1963) is an acclaimed and bestselling author whose works include the Pulitzer Prize–winning novel The Amazing Adventures of Kavalier & Clay (2000). Chabon achieved literary fame at age twenty-four with his first novel, The Mysteries of Pittsburgh (1988), which was a major critical and commercial success. He then published Wonder Boys (1995), another bestseller, which was made into a film starring Michael Douglas. One of America’s most distinctive voices, Chabon has been called “a magical prose stylist” by the New York Times Book Review, and is known for his lively writing, nostalgia for bygone modes of storytelling, and deep empathy for the human predicament.
BIO

orhan_pamuk = Author.create!(name: "Orhan Pamuk",
                             birthday: "June 07, 1952",
                             gender: "male",
                             website: "http://www.orhanpamuk.net/",
                             bio: <<-BIO)
Ferit Orhan Pamuk is a Nobel Prize-winning Turkish novelist. Pamuk is often regarded as a post-modern writer. As one of Turkey's most prominent novelists, his work has been translated into more than forty languages. He is the recipient of numerous national and international literary awards. He was the first Turkish person awarded the Nobel Prize in Literature on October 12, 2006, commended for being an author "who in the quest for the melancholic soul of his native city has discovered new symbols for the clash and interlacing of cultures."
BIO

erdag_goknar = Author.create!(name: "Erdağ M. Göknar")


# publishers
miramax = Publisher.create!(name: "Miramax Books", city: "New York")
picador = Publisher.create!(name: "Picador", city: "New York")
vintage = Publisher.create!(name: "Vintage", city: "New York")


# texts
last_samurai = Text.create!(title: "The Last Samurai",
                            publisher_id: miramax.id,
                            published_date: "April 3rd 2002",
                            description: <<-DESCRIPTION)
Helen DeWitt's extraordinary debut, The Last Samurai, centers on the relationship between Sibylla, a single mother of precocious and rigorous intelligence, and her son, who, owing to his mother's singular attitude to education, develops into a prodigy of learning. Ludo reads Homer in the original Greek at 4 before moving on to Hebrew, Japanese, Old Norse, and Inuit; studying advanced mathematical techniques (Fourier analysis and Laplace transformations); and, as the title hints, endlessly watching and analyzing Akira Kurosawa's masterpiece, The Seven Samurai. But the one question that eludes an answer is that of the name of his father: Sibylla believes the film obliquely provides the male role models that Ludo's genetic father cannot, and refuses to be drawn on the question of paternal identity. The child thinks differently, however, and eventually sets out on a search, one that leads him beyond the certainties of acquired knowledge into the complex and messy world of adults.The novel draws on themes topical and perennial--the hothousing of children, the familiar literary trope of the quest for the (absent) father--and as such, divides itself into two halves: the first describes Ludo's education, the second follows him in his search for his father and father figures. The first stresses a sacred, Apollonian pursuit of logic, precise (if wayward) erudition, and the erratic and endlessly fascinating architecture of languages, while the second moves this knowledge into the world of emotion, human ambitions, and their attendant frustrations and failures.

The Last Samurai is about the pleasure of ideas, the rich varieties of human thought, the possibilities that life offers us, and, ultimately, the balance between the structures we make of the world and the chaos that it proffers in return. Stylistically, the novel mirrors this ambivalence: DeWitt's remarkable prose follows the shifts and breaks of human consciousness and memory, capturing the intrusions of unspoken thought that punctuate conversation while providing tantalizing disquisitions on, for example, Japanese grammar or the physics of aerodynamics. It is remarkable, profound, and often very funny. Arigato DeWitt-sensei. --Burhan Tufail
DESCRIPTION
helen_dewitt.texts << last_samurai

kavalier_and_clay = Text.create!(title: "The Amazing Adventures of Kavalier & Clay",
                                 publisher_id: picador.id,
                                 published_date: "August 25th 2001",
                                 description: <<-DESCRIPTION)
Joe Kavalier, a young Jewish artist who has also been trained in the art of Houdini-esque escape, has just smuggled himself out of Nazi-invaded Prague and landed in New York City. His Brooklyn cousin Sammy Clay is looking for a partner to create heroes, stories, and art for the latest novelty to hit America - the comic book. Drawing on their own fears and dreams, Kavalier and Clay create the Escapist, the Monitor, and Luna Moth, inspired by the beautiful Rosa Saks, who will become linked by powerful ties to both men. With exhilarating style and grace, Michael Chabon tells an unforgettable story about American romance and possibility.
DESCRIPTION
michael_chabon.texts << kavalier_and_clay

my_name_is_red = Text.create!(title: "My Name is Red",
                              publisher_id: vintage.id,
                              published_date: "August 27th 2002",
                              description: <<-DESCRIPTION)
At once a fiendishly devious mystery, a beguiling love story, and a brilliant symposium on the power of art, My Name Is Red is a transporting tale set amid the splendor and religious intrigue of sixteenth-century Istanbul, from one of the most prominent contemporary Turkish writers.

The Sultan has commissioned a cadre of the most acclaimed artists in the land to create a great book celebrating the glories of his realm. Their task: to illuminate the work in the European style. But because figurative art can be deemed an affront to Islam, this commission is a dangerous proposition indeed. The ruling elite therefore mustn’t know the full scope or nature of the project, and panic erupts when one of the chosen miniaturists disappears. The only clue to the mystery–or crime? –lies in the half-finished illuminations themselves. Part fantasy and part philosophical puzzle, My Name is Red is a kaleidoscopic journey to the intersection of art, religion, love, sex and power.

Translated from the Turkish by Erda M Göknar
DESCRIPTION
orhan_pamuk.texts << my_name_is_red
erdag_goknar.texts << my_name_is_red

snow = Text.create!(title: "Snow",
                    publisher_id: vintage.id,
                    published_date: "August 2005",
                    description: <<-DESCRIPTION)
Dread, yearning, identity, intrigue, the lethal chemistry between secular doubt and Islamic fanaticism–these are the elements that Orhan Pamuk anneals in this masterful, disquieting novel. An exiled poet named Ka returns to Turkey and travels to the forlorn city of Kars. His ostensible purpose is to report on a wave of suicides among religious girls forbidden to wear their head-scarves. But Ka is also drawn by his memories of the radiant Ipek, now recently divorced. Amid blanketing snowfall and universal suspicion, Ka finds himself pursued by figures ranging from Ipek’s ex-husband to a charismatic terrorist. A lost gift returns with ecstatic suddenness. A theatrical evening climaxes in a massacre. And finding god may be the prelude to losing everything else. Touching, slyly comic, and humming with cerebral suspense, Snow is of immense relevance to our present moment.
DESCRIPTION
orhan_pamuk.texts << snow
