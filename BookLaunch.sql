USE [BookLaunch]
GO
/****** Object:  Table [dbo].[AuthorComments]    Script Date: 8/7/2020 11:33:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthorComments](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[NameSurname] [varchar](35) NULL,
	[Email] [varchar](50) NULL,
	[Date] [varchar](100) NULL,
	[Content] [text] NULL,
	[AuthorId] [int] NULL,
	[Title] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 8/7/2020 11:33:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[AuthorId] [int] IDENTITY(1,1) NOT NULL,
	[AuthorName] [varchar](50) NULL,
	[About] [text] NULL,
	[Image] [text] NULL,
	[BigImage] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 8/7/2020 11:33:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookName] [varchar](100) NULL,
	[AuthorId] [int] NOT NULL,
	[PublishingHouse] [varchar](50) NULL,
	[Explain] [text] NULL,
	[YearReleased] [varchar](50) NULL,
	[Language] [varchar](15) NULL,
	[PageNumber] [smallint] NULL,
	[CategoryId] [int] NOT NULL,
	[Image] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8/7/2020 11:33:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 8/7/2020 11:33:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[NameSurname] [varchar](35) NULL,
	[Email] [varchar](50) NULL,
	[Date] [varchar](100) NULL,
	[Content] [text] NULL,
	[Title] [varchar](20) NULL,
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[BookId] [int] NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quotations]    Script Date: 8/7/2020 11:33:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quotations](
	[Id] [int] NOT NULL,
	[QuotationSentence] [text] NOT NULL,
	[AuthorId] [int] NOT NULL,
	[BookId] [int] NOT NULL,
 CONSTRAINT [PK_Quotations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table]    Script Date: 8/7/2020 11:33:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](35) NULL,
	[Email] [varchar](50) NULL,
	[Date] [varchar](100) NULL,
	[Content] [text] NULL,
	[BookId] [int] NOT NULL,
	[Title] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AuthorComments] ON 

INSERT [dbo].[AuthorComments] ([CommentId], [NameSurname], [Email], [Date], [Content], [AuthorId], [Title]) VALUES (1, N'Sule A', N'suleatan@pota.mu.edu.tr', N'sdfg', N'sdfcv', 2, N'sdfgbnm')
INSERT [dbo].[AuthorComments] ([CommentId], [NameSurname], [Email], [Date], [Content], [AuthorId], [Title]) VALUES (2, N'', N'', N'6/14/2020 5:41:16 PM', N'', 2, N'')
INSERT [dbo].[AuthorComments] ([CommentId], [NameSurname], [Email], [Date], [Content], [AuthorId], [Title]) VALUES (3, N'Sule Ayser Atan', N'asdtre', N'6/14/2020 6:27:16 PM', N'deneme', 2, N'123456sljg')
SET IDENTITY_INSERT [dbo].[AuthorComments] OFF
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([AuthorId], [AuthorName], [About], [Image], [BigImage]) VALUES (2, N'Markus Zusak                  ', N'Zusak was born in Sydney, Australia. His mother Lisa is originally from Germany and his father Helmut is from Austria. They emigrated to Australia in the late 1950s. Markus is the youngest of four children and has two sisters and one brother. He attended Engadine High School and briefly returned there to teach English while writing. He studied English and history at the University of New South Wales, from which he graduated with a Bachelor of Arts and a Diploma of Education.

Zusak is the author of six books. His first three books, The Underdog, Fighting Ruben Wolfe, and When Dogs Cry, released between 1999 and 2001, were all published internationally. The Messenger, published in 2002, won the 2003 CBC Book of the Year Award (Older Readers) and the 2003 NSW Premier''s Literary Award (Ethel Turner Prize) in Australia and was a runner-up for the Printz Award in America.

The Book Thief was published in 2005 and has since been translated into more than 40 languages. The Book Thief was adapted as a film of the same name in 2013. In 2014, Zusak delivered a Ted Talk, called ''The Failurist'' at the Sydney Opera House. It focused on his drafting process and journey to success through writing The Book Thief.

The Messenger (I Am the Messenger in the United States) was published in 2002 and was one of Zusak''s first novels. This novel has won awards such as the New South Wales Premier''s Literary Awards: Ethel Turner Prize for Young People''s Literature.

In March 2016 Zusak talked about his then unfinished novel Bridge of Clay. He stated that the book was 90% finished but that, "... I’m a completely different person than the person who wrote The Book Thief. And this is also the scary thing—I’m a different person to the one who started Bridge of Clay eight, nine years ago ... I’ve got to get it done this year, or else I’ll probably finally have to set it aside."', N'Sule''s Web Project\images\author\MarkusZusak.jpg', N'Sule''s Web Project\images\author\BigMarkusZusak.jpg')
INSERT [dbo].[Authors] ([AuthorId], [AuthorName], [About], [Image], [BigImage]) VALUES (1002, N'Charlotte Bronte', N'Charlotte Brontë (April 1816 – 31 March 1855) was an English novelist and poet, the eldest of the three Brontë sisters who survived into adulthood and whose novels became classics of English literature.
She enlisted in school at Roe Head in January 1831, aged 14 years. She left the year after to teach her sisters, Emily and Anne, at home, returning in 1835 as a governess. In 1839 she undertook the role as governess for the Sidgwick family but left after a few months to return to Haworth where the sisters opened a school, but failed to attract pupils. Instead, they turned to writing and they each first published in 1846 under the pseudonyms of Currer, Ellis and Acton Bell. While her first novel, The Professor, was rejected by publishers, her second novel, Jane Eyre, was published in 1847. The sisters admitted to their Bell pseudonyms in 1848, and by the following year were celebrated in London literary circles.
Brontë was the last to die of all her siblings. She became pregnant shortly after her marriage in June 1854 but died on 31 March 1855, almost certainly from hyperemesis gravidarum, a complication of pregnancy which causes excessive nausea and vomiting.
', N'Sule''s Web Project\images\author\CharlotteBronte.jpg', NULL)
INSERT [dbo].[Authors] ([AuthorId], [AuthorName], [About], [Image], [BigImage]) VALUES (1003, N'F Scott Fitzgerald   ', N'Francis Scott Key Fitzgerald (September 24, 1896 – December 21, 1940) was an American essayist, novelist, screenwriter, and short-story writer, although he was best known for his novels depicting the flamboyance and excess of the Jazz Age—a term which he coined. During his lifetime, he published four novels, four collections of short stories, and 164 short stories. Although he temporarily achieved popular success and fortune in the 1920s, Fitzgerald only received wide critical and popular acclaim after his death. He is widely regarded as one of the greatest American writers of the 20th century.
Fitzgerald was born into an upper-middle-class family in St. Paul, Minnesota, but was primarily raised in New York. He attended Princeton University, but due to a failed relationship and a preoccupation with writing, he dropped out in 1917 to join the army. While stationed in Alabama, he fell in love with rich socialite Zelda Sayre. Although she initially rejected him due to his financial situation, Zelda agreed to marry Fitzgerald after he had published the commercially successful This Side of Paradise (1920).
In the 1920s, Fitzgerald frequented Europe, where he was influenced by the modernist writers and artists of the "Lost Generation" expatriate community, particularly Ernest Hemingway. His second novel, The Beautiful and Damned (1922), propelled him into the New York City elite. To maintain his lifestyle during this time, he also wrote several stories for magazines. His third novel, The Great Gatsby (1925), was inspired by his rise to fame and relationship with Zelda. Although it received mixed reviews, The Great Gatsby is now widely praised, with some even labeling it the "Great American Novel". While Zelda was placed at a mental institute for her schizophrenia, Fitzgerald completed his final novel, Tender Is the Night (1934).
Faced with financial difficulties due to the declining popularity of his works, Fitzgerald turned to Hollywood, writing and revising screenplays. After a long struggle with alcoholism, he died in 1940, at the age of 44. A fifth, unfinished novel, The Last Tycoon (1941), was completed by Edmund Wilson and published after Fitzgerald''s death.
', N'Sule''s Web Project\images\author\FScottFitzgerald.jpg', NULL)
INSERT [dbo].[Authors] ([AuthorId], [AuthorName], [About], [Image], [BigImage]) VALUES (1004, N'Harper Lee', N'Nelle Harper Lee (April 28, 1926 – February 19, 2016) was an American novelist best known for her 1960 novel To Kill a Mockingbird. It won the 1961 Pulitzer Prize and has become a classic of modern American literature. Lee only published two books, yet she was awarded the Presidential Medal of Freedom in 2007 for her contribution to literature. She also received numerous honorary degrees, though she declined to speak on those occasions. She assisted her close friend Truman Capote in his research for the book In Cold Blood (1966). Capote was the basis for the character Dill in To Kill a Mockingbird. 
The plot and characters of To Kill a Mockingbird are loosely based on Lee''s observations of her family and neighbors, as well as an event that occurred near her hometown in 1936 when she was 10. The novel deals with the irrationality of adult attitudes towards race and class in the Deep South of the 1930s, as depicted through the eyes of two children. It was inspired by racist attitudes in her hometown of Monroeville, Alabama. She also wrote the novel Go Set a Watchman in the mid-1950s and published it in July 2015 as a sequel to Mockingbird, but it was later confirmed to be merely her first draft of Mockingbird. 
Nelle Harper Lee (April 28, 1926 – February 19, 2016) was an American novelist best known for her 1960 novel To Kill a Mockingbird. It won the 1961 Pulitzer Prize and has become a classic of modern American literature. Lee only published two books, yet she was awarded the Presidential Medal of Freedom in 2007 for her contribution to literature. She also received numerous honorary degrees, though she declined to speak on those occasions. She assisted her close friend Truman Capote in his research for the book In Cold Blood (1966). Capote was the basis for the character Dill in To Kill a Mockingbird. 
The plot and characters of To Kill a Mockingbird are loosely based on Lee''s observations of her family and neighbors, as well as an event that occurred near her hometown in 1936 when she was 10. The novel deals with the irrationality of adult attitudes towards race and class in the Deep South of the 1930s, as depicted through the eyes of two children. It was inspired by racist attitudes in her hometown of Monroeville, Alabama. She also wrote the novel Go Set a Watchman in the mid-1950s and published it in July 2015 as a sequel to Mockingbird, but it was later confirmed to be merely her first draft of Mockingbird. 
', N'Sule''s Web Project\images\author\HarperLee.jpg', NULL)
INSERT [dbo].[Authors] ([AuthorId], [AuthorName], [About], [Image], [BigImage]) VALUES (1005, N'Jane Austen', N'Jane Austen (16 December 1775 – 18 July 1817) was an English novelist known primarily for her six major novels, which interpret, critique and comment upon the British landed gentry at the end of the 18th century. Austen''s plots often explore the dependence of women on marriage in the pursuit of favourable social standing and economic security. Her works critique the novels of sensibility of the second half of the 18th century and are part of the transition to 19th-century literary realism. Her use of biting irony, along with her realism, humour, and social commentary, have long earned her acclaim among critics, scholars, and popular audiences alike. 
With the publications of Sense and Sensibility (1811), Pride and Prejudice (1813), Mansfield Park (1814) and Emma (1816), she achieved success as a published writer. She wrote two additional novels, Northanger Abbey and Persuasion, both published posthumously in 1818, and began another, eventually titled Sanditon, but died before its completion. She also left behind three volumes of juvenile writings in manuscript, a short epistolary novel Lady Susan, and another unfinished novel, The Watsons. Her six full-length novels have rarely been out of print, although they were published anonymously and brought her moderate success and little fame during her lifetime.
A significant transition in her posthumous reputation occurred in 1833, when her novels were republished in Richard Bentley''s Standard Novels series, illustrated by Ferdinand Pickering, and sold as a set. They gradually gained wider acclaim and popular readership. In 1869, fifty-two years after her death, her nephew''s publication of A Memoir of Jane Austen introduced a compelling version of her writing career and supposedly uneventful life to an eager audience.
Austen has inspired many critical essays and literary anthologies. Her novels have inspired many films, from 1940''s Pride and Prejudice to more recent productions like Sense and Sensibility (1995), Emma (1996), Mansfield Park (1999), Pride & Prejudice (2005), Love & Friendship (2016), and Emma. (2020).
', N'Sule''s Web Project\images\author\JaneAusten.jpg', NULL)
INSERT [dbo].[Authors] ([AuthorId], [AuthorName], [About], [Image], [BigImage]) VALUES (1006, N'Rosalie Ham', N'Rosalie Ham was born, and raised in Jerilderie, NSW, Australia. She completed her secondary education at St Margaret''s School, Berwick in 1972. After travelling and working at a variety of jobs (including aged care) for most of her twenties, Rosalie completed a Bachelor of Education majoring in Drama and Literature (Deakin University, 1989), and achieved a Master of Arts, Creative Writing (RMIT, Melbourne) in 2007. Rosalie lives in Brunswick, Melbourne, and when she is not writing, Rosalie teaches literature. Her novels have sold over 50,000 copies.
', N'Sule''s Web Project\images\author\RosalieHam.jpg', NULL)
INSERT [dbo].[Authors] ([AuthorId], [AuthorName], [About], [Image], [BigImage]) VALUES (1007, N'Suzanne Collins', N'In 1991, Suzanne Collins began her professional career writing for children''s television. She worked on the staffs of several Nickelodeon shows, including the Emmy-nominated hit Clarissa Explains it All and The Mystery Files of Shelby Woo. For preschool viewers, she penned multiple stories for the Emmy-nominated Little Bear and Oswald. She also co-wrote the Rankin/Bass Christmas special, Santa, Baby! with her friend, Peter Bakalian, which was nominated for a WGA Award in Animation. Most recently she was the Head Writer for Scholastic Entertainment''s Clifford''s Puppy Days,and a freelancer on Wow! Wow! Wubbzy! While working on a Kids WB show called Generation O! she met children''s author and illustrator James Proimos, who talked her into giving children''s books a try.

 

Thinking one day about Alice in Wonderland, she was struck by how pastoral the setting must seem to kids who, like her own, lived in urban surroundings. In New York City, you''re much more likely to fall down a manhole than a rabbit hole and, if you do, you''re not going to find a tea party. What you might find...? Well, that''s the story of Gregor the Overlander, the first book in her five-part fantasy/war series, The Underland Chronicles,which became a New York Times bestseller. It has been sold into 21 foreign territories.

 

Her next series, The Hunger Games Trilogy, is an international bestseller. The Hunger Games has spent over six years to date on The New York Times bestseller list since publication in September 2008, and has also appeared consistently on USA Today and Publishers Weekly bestseller lists. It has been sold into 56 territories in 51 languages. In 2010 Collins was named to the TIME 100 list as well as the Entertainment Weekly Entertainers of the Year list.

 

Lionsgate released a film adaptation of THE HUNGER GAMES on March 23, 2012, directed by Gary Ross who also shared screenplay credit with Suzanne and Billy Ray. It broke multiple box office records and went on to become the 14th highest-grossing North American release of all time on its way to generating nearly $700 million at the worldwide box office. Lionsgate released the second installment THE HUNGER GAMES: CATCHING FIRE worldwide on November 22, 2013, directed by Francis Lawrence from a screenplay by Simon Beaufoy and Michael DeBruyn and bringing back stars Jennifer Lawrence, Josh Hutcherson, Liam Hemsworth, Woody Harrelson, Elizabeth Banks, Willow Shields, Paula Malcomson, Donald Sutherland, Stanley Tucci and Lenny Kravitz along with new cast members Philip Seymour Hoffman, Sam Claflin, Jena Malone and Jeffrey Wright. It was the highest-grossing domestic box office release of 2013 and the 10th highest-grossing domestic release of all time. Lionsgate will release THE HUNGER GAMES: MOCKINGJAY – PART 1 on November 21, 2014 and THE HUNGER GAMES: MOCKINGJAY – PART 2 on November 20, 2015, also directed by Lawrence. All four films are being produced by Nina Jacobson of Color Force and Jon Kilik.

 

In September 2013, Suzanne released a critically acclaimed autobiographical picture book, YEAR OF THE JUNGLE, illustrated by James Proimos. It deals with the year she was six and her father was deployed to Viet Nam. It has been sold into 12 territories in 11 languages. Her first picture book, WHEN CHARLIE MCBUTTON LOST POWER, about a boy obsessed with computer games, was illustrated by Mike Lester and came out in 2005. It has been sold into 4 foreign territories.

 

Her books have sold over 100 million copies worldwide.', N'Sule''s Web Project\images\author\SuzanneCollins.jpg', NULL)
INSERT [dbo].[Authors] ([AuthorId], [AuthorName], [About], [Image], [BigImage]) VALUES (2002, N'Anthony Doerr', N'Anthony Doerr was born and raised in Cleveland, Ohio. He is the author of the story collections The Shell Collector and Memory Wall, the memoir Four Seasons in Rome, and the novels About Grace and All the Light We Cannot See, which was awarded the 2015 Pulitzer Prize for fiction and the 2015 Andrew Carnegie Medal for Excellence in Fiction. He served as guest editor for the 2019 Best American Short Stories, which will be released in October.

Doerr’s short stories and essays have won four O. Henry Prizes and been anthologized in The Best American Short Stories, New American Stories, The Best American Essays, The Scribner Anthology of Contemporary Fiction, and lots of other places. His work has been translated into over forty languages and won the Barnes & Noble Discover Prize, the Rome Prize, the New York Public Library’s Young Lions Award, a Guggenheim Fellowship, an NEA Fellowship, an Alex Award from the American Library Association, the National Magazine Award for Fiction, four Pushcart Prizes, two Pacific Northwest Book Awards, four Ohioana Book Awards, the 2010 Story Prize, which is considered the most prestigious prize in the U.S. for a collection of short stories, and the Sunday Times EFG Short Story Award, which is the largest prize in the world for a single short story. All the Light We Cannot See was a #1 New York Times bestseller, remained on the hardcover fiction bestseller list for 134 consecutive weeks, and is being adapted as a limited series by Netflix.

Doerr lives in Boise, Idaho with his wife and two sons. A number of media interviews with him are collected here. Though he is often asked, as far as he knows he is not related to the late writer Harriet Doerr.

If you’re interested in reading some of his work online, you can find a number of essays here, a story at Granta, and you can watch the actor Damian Lewis reading part of Doerr’s story “The Deep” here.', N'Sule''s Web Project\images\author\AnthonyDoerr.jpg', NULL)
INSERT [dbo].[Authors] ([AuthorId], [AuthorName], [About], [Image], [BigImage]) VALUES (2003, N'George R R Martin', N'George R.R. Martin, in full George Raymond Richard Martin, original name George Raymond Martin, (born September 20, 1948, Bayonne, New Jersey, U.S.), American writer of fantasy, best known for his Song of Ice and Fire series (1996– ), a bloody saga about various factions vying for control of a fictional kingdom.

Martin attended Northwestern University and graduated with bachelor’s (1970) and master’s (1971) degrees in journalism. He had been an aficionado of science fiction and fantasy literature since childhood, and he sold his first short story in 1971. Having received conscientious objector status during the Vietnam War, Martin fulfilled his alternative military service by volunteering for a legal assistance organization in Chicago while earning his living as an organizer of chess tournaments and writing short fiction. He also frequently attended science-fiction and fantasy conventions. He won a Hugo Award in 1974 for his sci-fi novella “A Song for Lya.” In 1976 he accepted a position teaching journalism at Clarke College in Dubuque, Iowa.

In 1977 Martin released his first work of full-length fiction, Dying of the Light, about a festival on a planet nearing apocalypse, and two years later he moved to Santa Fe, New Mexico, to write full time. He received both the Hugo and the Nebula Award for his novelette Sandkings (1981). That year he also released Windhaven (cowritten with Lisa Tuttle), about a girl who gains the ability to fly, and he followed with two full-length efforts, the vampire novel Fevre Dream (1982) and the rock-and-roll horror tale The Armageddon Rag (1983). Though the latter sold poorly, a producer optioned the film rights. The film was never made but the producer suggested Martin as a writer for a remake of The Twilight Zone series in 1985. He wrote several screenplays for the show before accepting a position as a writer for the TV series Beauty and the Beast (1987–90); he eventually became a producer for the modernized fairy tale. Martin returned to long-form fiction in 1991, having had no luck selling his television pilots and screenplays.', N'Sule''s Web Project\images\author\GeorgeRRMartin.jpg', NULL)
INSERT [dbo].[Authors] ([AuthorId], [AuthorName], [About], [Image], [BigImage]) VALUES (2004, N'Jhon Green', N'John Michael Green (born August 24, 1977) is an American author and YouTube content creator. He won the 2006 Printz Award for his debut novel, Looking for Alaska, and his fourth solo novel, The Fault in Our Stars, debuted at number one on The New York Times Best Seller list in January 2012. The 2014 film adaptation opened at number one at the box office. In 2014, Green was included in Time magazine''s list of The 100 Most Influential People in the World. Another film based on a Green novel, Paper Towns, was released on July 24, 2015.
Aside from being a novelist, Green is also well known for his YouTube ventures. In 2007, he launched the Vlogbrothers channel with his brother, Hank Green. Since then, John and Hank have launched events such as Project for Awesome and VidCon and created a total of 11 online series, including Crash Course, an educational channel teaching Literature, History, and Science, later joined by fourteen other courses as of 2018. 
', N'Sule''s Web Project\images\author\JhonGreen.jpg', NULL)
INSERT [dbo].[Authors] ([AuthorId], [AuthorName], [About], [Image], [BigImage]) VALUES (2005, N'Lisa Genova', N'Lisa Genova (born November 22, 1970) is an American neuroscientist and author. She self-published her debut novel Still Alice (2007), about a Harvard University professor who suffers early onset Alzheimer''s disease. The book gained popularity and was acquired by Simon & Schuster; it was published in January 2009 by Pocket Books (now Gallery Books). There are over 2.6 million copies in print, and it has been translated into 37 languages. It was chosen as one of the thirty titles for World Book Night 2013. The book was adapted into a film in 2014 and won the Academy Award for Best Actress for Julianne Moore''s highly acclaimed performance as Alice Howland.
Genova has written fiction about characters dealing with neurological disorders. Gallery Books published her next three novels, Left Neglected, Love Anthony, and Inside the O''Briens, all New York Times bestsellers
', N'Sule''s Web Project\images\author\LisaGenova.jpg', NULL)
INSERT [dbo].[Authors] ([AuthorId], [AuthorName], [About], [Image], [BigImage]) VALUES (2006, N'Paulo Coelho', NULL, N'Sule''s Web Project\images\author\PauloCoelho.jpg', NULL)
INSERT [dbo].[Authors] ([AuthorId], [AuthorName], [About], [Image], [BigImage]) VALUES (2008, N'Sabahattin Ali', N'Sabahattin Ali was born in 1907 in the township of Egridere (now Ardino in southern Bulgaria) in the Ottoman Empire. He graduated from the School of Education in Istanbul in 1926.

While he was serving as a German language teacher in Konya, he was arrested for a poem criticizing Atatürk’s policies and accused of defaming two other journalists. After serving his sentence for several months in Konya and later at the Sinop Fortress Prison, he was released in 1933 in an amnesty marking the 10th anniversary of the declaration of the Republic of Turkey.

Upon his release from prison, he suffered financial troubles and his application for a passport was denied. He was killed at the Bulgarian border, around April 1 or 2, 1948, and his body found on June 16, 1948.

It is believed that he was killed by Ali Ertekin, a smuggler with connections to the National Intelligence Organization (MIT) who had been paid to help him pass the border. Another hypothesis is Ertekin handed Ali over to the MIT for interrogations during which Ali was killed. In any case, it is believed Ali was killed because of his political opinions.

Because his books have been read in Bulgarian schools since the 1950s, Ali is a well-known author in Bulgaria. Ali’s 100th birth anniversary was celebrated in Ardino on March 31, 2007.

', N'Sule''s Web Project\images\author\SabahattinAli.jpg', NULL)
SET IDENTITY_INSERT [dbo].[Authors] OFF
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([Id], [BookName], [AuthorId], [PublishingHouse], [Explain], [YearReleased], [Language], [PageNumber], [CategoryId], [Image]) VALUES (1010, N'The Book Thief', 2, N'Knopf Books for Young Readers; Anniversary edition', N'When Death has a story to tell, you listen.

It is 1939. Nazi Germany. The country is holding its breath. Death has never been busier, and will become busier still.

Liesel Meminger is a foster girl living outside of Munich, who scratches out a meager existence for herself by stealing when she encounters something she can’t resist–books. With the help of her accordion-playing foster father, she learns to read and shares her stolen books with her neighbors during bombing raids as well as with the Jewish man hidden in her basement. 

In superbly crafted writing that burns with intensity, award-winning author Markus Zusak, author of I Am the Messenger, has given us one of the most enduring stories of our time.
 
“The kind of book that can be life-changing.” —The New York Times
 
“Deserves a place on the same shelf with The Diary of a Young Girl by Anne Frank.” —USA Today', N'March 8, 2016', N'English', 592, 1, N'Sule''s Web Project/images/books/TheBookThief.jpg')
INSERT [dbo].[Books] ([Id], [BookName], [AuthorId], [PublishingHouse], [Explain], [YearReleased], [Language], [PageNumber], [CategoryId], [Image]) VALUES (2020, N'All The Light We Cannot See', 2002, NULL, N'From the highly acclaimed, multiple award-winning Anthony Doerr, the stunningly beautiful instant New York Times bestseller about a blind French girl and a German boy whose paths collide in occupied France as both try to survive the devastation of World War II.

Marie-Laure lives in Paris near the Museum of Natural History, where her father works. When she is twelve, the Nazis occupy Paris and father and daughter flee to the walled citadel of Saint-Malo, where Marie-Laure’s reclusive great uncle lives in a tall house by the sea. With them they carry what might be the museum’s most valuable and dangerous jewel.

In a mining town in Germany, Werner Pfennig, an orphan, grows up with his younger sister, enchanted by a crude radio they find that brings them news and stories from places they have never seen or imagined. Werner becomes an expert at building and fixing these crucial new instruments and is enlisted to use his talent to track down the resistance. Deftly interweaving the lives of Marie-Laure and Werner, Doerr illuminates the ways, against all odds, people try to be good to one another', N'May 6th, 2014 ', N'English', 531, 1, N'Sule''s Web Project/images/books/AllTheLightWeCannotSee.jpg')
INSERT [dbo].[Books] ([Id], [BookName], [AuthorId], [PublishingHouse], [Explain], [YearReleased], [Language], [PageNumber], [CategoryId], [Image]) VALUES (2025, N'Every Note Played', 2005, N'Large Print Edition', N'An accomplished concert pianist, Richard received standing ovations from audiences all over the world in awe of his rare combination of emotional resonance and flawless technique. That was eight months ago.

Richard now has ALS, and his entire right arm is paralyzed. His fingers are impotent, still, devoid of possibility. The loss of his hand feels like a death, a loss of true love, a divorce—his divorce.

He knows his left arm will go next.

Three years ago, Karina removed their framed wedding picture from the living room wall and hung a mirror there instead. But she still hasn’t moved on. Karina is paralyzed by excuses and fear, stuck in an unfulfilling life as a piano teacher, afraid to pursue the path she abandoned as a young woman, blaming Richard and their failed marriage for all of it.

When Richard becomes increasingly paralyzed and is no longer able to live on his own, Karina becomes his reluctant caretaker. As Richard’s muscles, voice, and breath fade, both he and Karina try to reconcile their past before it’s too late. ', N'March 20th, 2018 ', N'English', 307, 1, N'Sule''s Web Project/images/books/EveryNotePlayed.jpg')
INSERT [dbo].[Books] ([Id], [BookName], [AuthorId], [PublishingHouse], [Explain], [YearReleased], [Language], [PageNumber], [CategoryId], [Image]) VALUES (2026, N'Fire &  Blood', 2003, NULL, NULL, NULL, N'English', 530, 2, N'Sule''s Web Project/images/books/FireBlood.jpg')
INSERT [dbo].[Books] ([Id], [BookName], [AuthorId], [PublishingHouse], [Explain], [YearReleased], [Language], [PageNumber], [CategoryId], [Image]) VALUES (2027, N'Jane Eyre', 1004, NULL, NULL, NULL, N'English', 200, 5, N'Sule''s Web Project/images/books/JaneEyre.jpg')
INSERT [dbo].[Books] ([Id], [BookName], [AuthorId], [PublishingHouse], [Explain], [YearReleased], [Language], [PageNumber], [CategoryId], [Image]) VALUES (2031, N'Iron Earth Copper Sky', 1004, NULL, NULL, NULL, N'Turkish', 120, 6, N'Sule''s Web Project/images/books/IronEarthCopperSky.jpg')
INSERT [dbo].[Books] ([Id], [BookName], [AuthorId], [PublishingHouse], [Explain], [YearReleased], [Language], [PageNumber], [CategoryId], [Image]) VALUES (2032, N'Madonna In A Fur Coar', 2008, N'Penguin Classic', N'The bestselling Turkish classic of love and longing in a changing world, available in English for the first time. ''It is, perhaps, easier to dismiss a man whose face gives no indication of an inner life. And what a pity that is: a dash of curiosity is all it takes to stumble upon treasures we never expected.'' A shy young man leaves his home in rural Turkey to learn a trade in 1920s Berlin. The city''s crowded streets, thriving arts scene, passionate politics and seedy cabarets provide the backdrop for a chance meeting with a woman, which will haunt him for the rest of his life. Emotionally powerful, intensely atmospheric and touchingly profound, Madonna in a Fur Coat is an unforgettable novel about new beginnings and the unfathomable nature of the human soul. ''Passionate but clear . . . Ali''s success [is in ] his ability to describe the emergence of a feeling, seemingly straightforward from the outside but swinging back and forth between opposite extremes at its core, revealing the tensions that accompanies such rise and fall.'' Atilla Özkirimli, writer and literary historian', N'July 26, 2016', N'Turkish', 160, 1, N'Sule''s Web Project/images/books/MadonnaInAFurCoat.jpg')
SET IDENTITY_INSERT [dbo].[Books] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (1, N'Novel')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (2, N'Philosophy')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (5, N'Family And Children''s')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (6, N'Crime')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (7, N'Science Fiction')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (8, N'World''s Classics')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (9, N'Horror - Thriller')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (10, N'Memoir - Diary')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (11, N'Science')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (12, N'Poetry')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (13, N'Romance')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (14, N'History')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([NameSurname], [Email], [Date], [Content], [Title], [CommentId], [BookId]) VALUES (N'Sule Ayser Atan', N'suleatan2004@gmail.com', N'6/8/2020 10:56:45 PM', N'This book is so good. You have to read!!', N'Good', 1002, 1010)
INSERT [dbo].[Comments] ([NameSurname], [Email], [Date], [Content], [Title], [CommentId], [BookId]) VALUES (N'Halil Ibrahim Pasa', N'hibrahim@outlook.com', N'6/28/2020 1:38:12 AM', N'Bu nasil bir kitap Allh askina. Kim yaziyor böyle kitaplari. Ben daha iyisini yazardim. Imkan verselerdi.', N'Yerme', 2002, 1010)
SET IDENTITY_INSERT [dbo].[Comments] OFF
ALTER TABLE [dbo].[AuthorComments]  WITH CHECK ADD  CONSTRAINT [FK_AuthorComments_Authors] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[AuthorComments] CHECK CONSTRAINT [FK_AuthorComments_Authors]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Authors]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Categories]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Books] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Books]
GO
ALTER TABLE [dbo].[Quotations]  WITH CHECK ADD  CONSTRAINT [FK_Quotations_Authors] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
GO
ALTER TABLE [dbo].[Quotations] CHECK CONSTRAINT [FK_Quotations_Authors]
GO
ALTER TABLE [dbo].[Quotations]  WITH CHECK ADD  CONSTRAINT [FK_Quotations_Books] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Quotations] CHECK CONSTRAINT [FK_Quotations_Books]
GO
ALTER TABLE [dbo].[Table]  WITH CHECK ADD  CONSTRAINT [FK_Table_Books] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Table] CHECK CONSTRAINT [FK_Table_Books]
GO
