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
                              bio: <<-BIO
Helen DeWitt (born 1957 in Takoma Park, Maryland, a suburb of Washington, D.C.) is a novelist.

DeWitt grew up primarily in South America (Mexico, Brazil, Colombia and Ecuador), as her parents worked in the United States diplomatic service. After a year at Northfield Mount Hermon School and two short periods at Smith College, DeWitt studied classics at the University of Oxford, first at Lady Margaret Hall, and then at Brasenose College for her D.Phil.

DeWitt is best known for her acclaimed debut novel, The Last Samurai. She held a variety of jobs while struggling to finish a book, including a dictionary text tagger, a copytaker, and Dunkin' Donuts employee, she also worked in a laundry service. During this time she reportedly attempted to finish many novels, before finally completing The Last Samurai, her 50th manuscript, in 1998.

In 2005 she collaborated with Ingrid Kerma, the London-based painter, writing limit5 for the exhibition Blushing Brides.

In 2004, DeWitt went missing from her home in Staten Island. She was found unharmed a few days later at Niagara Falls.

DeWitt lives in Berlin where she has recently finished a second novel, Your Name Here, in collaboration with the Australian journalist Ilya Gridneff. DeWitt had met Gridneff in an East London pub shortly before her departure for New York; impressed by the linguistic virtuosity of his e-mails, she suggested a book inspired by Charlie Kaufman's Adaptation, or Being John Malkovich, with Gridneff as Malkovich.
BIO
)


# publishers
miramax = Publisher.create!(name: "Miramax Books", city: "New York")


# texts
last_samurai = Text.create!(title: "The Last Samurai",
                            publisher_id: miramax.id,
                            published_date: "April 3rd 2002",
                            description: <<-DESCRIPTION
Helen DeWitt's extraordinary debut, The Last Samurai, centers on the relationship between Sibylla, a single mother of precocious and rigorous intelligence, and her son, who, owing to his mother's singular attitude to education, develops into a prodigy of learning. Ludo reads Homer in the original Greek at 4 before moving on to Hebrew, Japanese, Old Norse, and Inuit; studying advanced mathematical techniques (Fourier analysis and Laplace transformations); and, as the title hints, endlessly watching and analyzing Akira Kurosawa's masterpiece, The Seven Samurai. But the one question that eludes an answer is that of the name of his father: Sibylla believes the film obliquely provides the male role models that Ludo's genetic father cannot, and refuses to be drawn on the question of paternal identity. The child thinks differently, however, and eventually sets out on a search, one that leads him beyond the certainties of acquired knowledge into the complex and messy world of adults.The novel draws on themes topical and perennial--the hothousing of children, the familiar literary trope of the quest for the (absent) father--and as such, divides itself into two halves: the first describes Ludo's education, the second follows him in his search for his father and father figures. The first stresses a sacred, Apollonian pursuit of logic, precise (if wayward) erudition, and the erratic and endlessly fascinating architecture of languages, while the second moves this knowledge into the world of emotion, human ambitions, and their attendant frustrations and failures.

The Last Samurai is about the pleasure of ideas, the rich varieties of human thought, the possibilities that life offers us, and, ultimately, the balance between the structures we make of the world and the chaos that it proffers in return. Stylistically, the novel mirrors this ambivalence: DeWitt's remarkable prose follows the shifts and breaks of human consciousness and memory, capturing the intrusions of unspoken thought that punctuate conversation while providing tantalizing disquisitions on, for example, Japanese grammar or the physics of aerodynamics. It is remarkable, profound, and often very funny. Arigato DeWitt-sensei. --Burhan Tufail
DESCRIPTION
)

helen_dewitt.texts << last_samurai

