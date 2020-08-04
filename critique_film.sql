-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 17 déc. 2019 à 10:03
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `critique_film`
--

-- --------------------------------------------------------

--
-- Structure de la table `aimer`
--

CREATE TABLE `aimer` (
  `numFilm` int(11) NOT NULL,
  `numUtilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `aimer`
--

INSERT INTO `aimer` (`numFilm`, `numUtilisateur`) VALUES
(1, 8),
(2, 1),
(11, 1),
(25, 8);

-- --------------------------------------------------------

--
-- Structure de la table `artiste`
--

CREATE TABLE `artiste` (
  `numArtiste` int(11) NOT NULL,
  `nomArtiste` varchar(30) NOT NULL,
  `prenomArtiste` varchar(30) NOT NULL,
  `naissance` varchar(10) NOT NULL,
  `photo_prof` varchar(200) NOT NULL,
  `Biographie` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `artiste`
--

INSERT INTO `artiste` (`numArtiste`, `nomArtiste`, `prenomArtiste`, `naissance`, `photo_prof`, `Biographie`) VALUES
(1, 'Phillips', 'Todd', '20/12/1970', '..\\images\\todd.jpg', 'Licencié de cinéma à l\'Université de New-York, Todd Phillips débute sa carrière par la réalisation de deux documentaires Hated (1994) et Frat House (1998); ce dernier, évocation de la vie étudiante, étant récompensé du Grand Prix du Jury de la catégorie au Festival de Sundance.  En 2000, Todd Phillips réalise Road trip, un premier long-métrage déjanté dans lequel il dirige notamment Tom Green et Seann William Scott. Il signe ensuite une nouvelle comédie délirante intitulée Back to School (retour à la fac) (2001), sur le désenchantement de jeunes adultes. En 2004, Todd Phillips est choisi pour mettre en scène Starsky and Hutch, adaptation cinématographique de la célèbre série télévisée portée sur grand écran par Ben Stiller et Owen Wilson, puis il signe deux ans après L\'École des dragueurs, remake de L\'Académie des coquins avec Billy Bob Thornton en tant qu\'expert en séduction.  C\'est en 2009 que Todd Phillips atteint la consécration avec le succès international de Very Bad Trip dans lequel trois amis tentent de retrouver le futur marié à Las Vegas le lendemain d\'un enterrement de vie de garçon dont ils n\'ont plus aucun souvenir. Le film révèle par la même occasion le talent de Bradley Cooper, Ed Helms et Zach Galifianakis qui retrouveront le réalisateur deux ans plus tard dans Very Bad Trip 2. Mais entre temps, Todd Phillips met en scène un nouveau road-trip intitulé Date limite, porté par un duo d\'enfer: Zach Galifianakis et Robert Downey Jr..'),
(2, 'Phoenix', 'Joaquin', '28/10/1974', '..\\images\\joaquin.jpg', 'Joaquin est le seul enfant de la famille Phoenix à ne pas porter un nom en relation avec la nature (comme ses aînés River et Rain, ainsi que sa cadette Summer). Frustré, l\'acteur adopte le prénom de \"Leaf\" (feuille) pour l\'abandonner dans les années 90. Son enfance est nomade, puisque ses parents, cueilleurs de fruits itinérants, parcourent le continent nord-américain dans une caravane et fréquentent la secte des Enfants de Dieu. Encouragé par sa famille, le comédien débute très tôt sa carrière d\'acteur. A peine âgé de 8 ans, Joaquin apparaît dans la série TV Seven Brides for Seven Brothers aux côtés de son frère River et de Richard Dean Anderson, puis deux ans plus tard, dans un épisode de la série Arabesque. Il lui faut toutefois attendre 1987 pour tourner son premier long-métrage, Spacecamp. Entre-temps, il tourne à nouveau sous la direction de son metteur en scène fétiche, James Gray, pour The Immigrant, sélectionné en compétition officielle à Cannes. Il y est un proxénète qui profite de la détresse d\'une Polonaise (Marion Cotillard) fraîchement débarquée à New York avant de s\'éprendre d\'elle. Il se frotte également à la science-fiction dans Her de Spike Jonze où il tombe éperdument amoureux de la voix d\'une intelligence artificielle doublée par Scarlett Johansson. En 2015, il ajoute à sa filmographie une nouvelle collaboration prestigieuse grâce à Woody Allen. Dans L\'Homme irrationnel, il est un professeur de philosophie torturé et nihiliste qui reprend goût à la vie lorsqu\'il décide de basculer dans le crime. Absent des écrans pendant deux ans, il fait un retour en force en 2017 avec A Beautiful Day, polar ultra-violent et esthétisant de Lynne Ramsay. Son interprétation habitée d\'un vétéran reconverti en tueur à gages adepte du marteau lui vaut le Prix d\'interprétation masculine au Festival de Cannes. Suit Marie Madeleine, drame dans lequel il n\'est rien de moins que Jésus de Nazareth face à sa compagne à la ville, Rooney Mara. Il la retrouve dans son film suivant, Don\'t Worry, He Won\'t Get Far On Foot de Gus Van Sant, biopic consacré au caricaturiste quadraplégique et alcoolique John Callahan. En 2018, l\'acteur brille devant la caméra de Jacques Audiard dans le western Les Frères Sisters avant de se glisser sous le maquillage du Joker. Phoenix crève l\'écran dans la peau du méchant emblématique DC Comics, le film remportant le Lion d\'Or au Festival de Venise.'),
(3, 'Fleischer', 'Ruben', '31/10/1974', '..\\images\\ruben.jpg', 'Diplômé d’histoire de l’Université Wesleyan dans le Connecticut, le jeune Ruben Fleischer travaille tout d’abord en tant que programmeur indépendant avant de devenir assistant de production pour les scénaristes de la série adolescente culte, Dawson. Le jeune homme se lance ensuite dans la réalisation et dans la production de courts-métrages, publicités et clips musicaux. Il s’essaye en même temps à l’écriture pour quelques séries avant de se lancer dans la réalisation d’épisodes télévisés.  C’est le grand écran qui fera connaître Ruben Fleischer pour sa première grosse production, la comédie horrifique Bienvenue à Zombieland (2009) emmenée par Emma Stone, Woody Harrelson, Abigail Breslin et Jesse Eisenberg. Par la suite, il confie à ce dernier le premier rôle de son deuxième long-métrage, la comédie d’action 30 Minutes Maximum (2011). Touche-à-tout, le metteur en scène enfile aussi sa casquette de producteur pour les films Unicorn Store (2017), réalisé par Brie Larson avec Samuel L. Jackson et Joan Cusack, et La Mule (2018), de et avec Clint Eastwood, ainsi que pour la série à succès De celles qui osent. En parallèle, il s’illustre dans la mise en scène épisodique pour les séries American Housewife, Santa Clarita Diet, avec Drew Barrymore et Timothy Olyphant, et Superstore portée par America Ferrera, trois programmes qu’il a également produit et dont il a signé les pilotes.En 2017, Ruben Fleischer est annoncé à la réalisation de l’adaptation de la bande dessinée Archer & Armstrong (2021) de Valiant Comics. L’année qui suit, il présente son quatrième long-métrage, le très attendu Venom, qui raconte les aventures du personnage d’Eddie Brock issu de l’univers de Marvel. Il met en vedette Tom Hardy dans le rôle principal, accompagné de Michelle Williams et Riz Ahmed.Suivent ensuite Bienvenue à Zombieland 2, suite du lucratif Bienvenue à Zombieland, et The Regional Office Is Under Attack (2019), l’histoire d’une organisation secrète de jeunes femmes agents chargées de protéger la Terre du flot incessant de menaces extra-terrestres dont elle est victime. Ruben Fleischer sera aussi le réalisateur de Jekyll, un film avec Chris Evans adapté du fameux conte gothique Dr. Jekyll and Mr. Hyde.'),
(4, 'Eisenberg', 'Jesse ', '05/10/1983', '..\\images\\jesse.jpg', 'Né dans le Queens d\'un père professeur et d\'une mère clown, le frère aîné de l\'actrice Hallie Kate Eisenberg commence sa carrière dès l\'âge de 13 ans sur les planches de Broadway. Trois ans plus tard, il décroche un rôle dans la série La Famille Green avec Anne Hathaway, mais l\'aventure cesse dès la fin de la première saison. Il est de nouveau à l\'affiche de productions plus mineures comme Jewish Connection et 30 Minutes Maximum (second long métrage du réalisateur de Bienvenue à Zombieland) et il s\'essaye également au doublage en prêtant sa voix à Blu dans le lucratif Rio. En 2012, il ajoute une autre corde à son arc en rejoignant le casting quatre étoiles (Alec Baldwin, Roberto Benigni, Penélope Cruz et Ellen Page) de To Rome with Love du très prolifique Woody Allen. La trentaine, l\'étoile montante du cinéma américain continue de se démarquer en faisant de grands écarts entre des films plutôt grand public (Insaisissables, American Ultra) et des productions indépendantes à la visibilité réduite (Night Moves, The Double, Back Home). En 2016 sort en salles le très attendu blockbuster à 200 millions de dollars Batman v Superman: L\'aube de la justice de Zack Snyder, dans lequel l\'acteur incarne Lex Luthor, le méchant s\'opposant aux super héros campés par Ben Affleck et Henry Cavill.'),
(5, 'Harrelson', 'Woody ', '23/07/1961', '..\\images\\woody.jpg', 'Fils d\'un tueur à gages mort en purgeant une peine de prison à vie, Woody Harrelson est élevé par sa mère et ses deux frères dans l\'Ohio. Après avoir obtenu un diplôme d\'anglais et d\'art dramatique au Hanover College dans l\'Indiana, il débute sa carrière sur le petit écran et rejoint, en 1982, le casting de la série américaine à succès Cheers.   Il débute au cinéma quatre ans plus tard en interprétant un étudiant, joueur de football américain, dans la comédie Wildcats et fait ainsi la connaissance de Wesley Snipes, qu\'il retrouvera dans Les Blancs ne savent pas sauter (1992) de Spike Lee et le film policier Money train (1995). Entre-temps, il devient l\'époux de Demi Moore dans Proposition indécente en 1993. Le succès s\'offre à lui après avoir occupé la tête d\'affiche de deux films controversés : Tueurs nés (1994) d\'Oliver Stone, dans lequel il incarne Mickey, un serial killer adepte de l\'ultra-violence gratuite, et Larry Flynt (1997) de Milos Forman. Sa prestation de nabab du porno américain lui vaut une nomination à l\'Oscar du Meilleur acteur. Il passe ensuite de la comédie 7 Psychopathes au thriller Les Brasiers de la Colère, toujours par le biais d\'un personnage très violent. Entre les deux, on le retrouve en mentaliste dans l’époustouflant Insaisissables aux côtés de Jesse Eisenberg, Mark Ruffalo, Isla Fisher et Mélanie Laurent. En 2014, Harrelson joue l\'inspecteur de police Martin Hart dans la première saison de True Detective avec Matthew McConaughey. Brillante, la série reçoit un accueil critique exceptionnel et la prestation de l\'acteur est saluée.Entre 2013 et 2016, Woody Harrelson endosse d’anciens costumes dans les suites de plusieurs grosses productions. Hunger Games – L’embrasement, d’abord, qui est le deuxième volet de la franchise, avant de devenir à nouveau Haymitch dans les deux derniers chapitres de la saga : Hunger Games - La Révolte : Partie 1 et Partie 2. En 2015, ce sont les talents du mentaliste Merritt McKinney qu’il reprend, dans Insaisissables 2.Toujours à l\'aise dans la peau de personnages virils et menaçants, Woody Harrelson est le méchant s\'opposant à César dans La Planète des Singes - Suprématie, troisième volet trilogie simiesque entamée en 2011. Dans un registre très différent, l\'acteur campe le rôle-titre de la comédie Wilson, un misanthrope à la recherche son ex-femme droguée.'),
(6, 'Boden', 'Anna', '20/09/1976', '..\\images\\anna.png', 'Anna Boden rencontre Ryan Fleck lors du tournage d\'un film étudiant en 2002, alors qu\'ils suivent tous deux le cursus de cinéma à la Tisch School of the Arts de l\'université de New York. Les deux réalisateurs en herbe sortent rapidement ensemble et décident de collaborer. Le couple réalise d\'abord des courts-métrages documentaires (Have You Seen This Man?, Young Rebels) avant de s\'essayer à la fiction avec Gowanus, Brooklyn. Le film est avant tout un moyen d\'intéresser de potentiels investisseurs à un projet plus important : Half Nelson, qui n\'est alors qu\'à l\'état de scénario en développement. Une stratégie qui s\'avère payante, puisque le court remporte un prix au Festival de Sundance en 2004. Le duo peut donc se concentrer sur son premier long qui sort en 2006, avec dans le premier rôle un jeune Ryan Gosling touchant en professeur brillant mais paumé dans un lycée de Brooklyn. L\'acteur est même nommé aux Oscars en 2007.  Le duo s\'établit dans le milieu indépendant et s\'attèle en 2008 à la réalisation de Sugar, un drame sur la star dominicaine du base-ball Miguel Santos, présenté pour en avant-première mondiale à Sundance mais inédit en France. Il s\'agit de leur première réalisation en duo, Half Nelson ayant mis en scène par Ryan Fleck seulement. En 2010, ils dirigent Zach Galifianakis, Emma Roberts et Viola Davis dans Une drôle d\'histoire, une comédie enlevée sur des patients d\'un hôpital psychiatrique. En parallèle, Anna Boden et Ryan Fleck infiltrent la télévision en réalisant quelques épisodes de plusieurs séries saluées par la critique (The Big C, Looking, The Affair, Billions). Pour Under Pressure, leur troisième collaboration, les réalisateurs s\'entourent à nouveau d\'un casting de choix : Ryan Reynolds, Ben Mendelsohn, Sienna Miller et Analeigh Tipton se retrouvent ainsi dans un thriller sous haute tension et aux ambitions plus affirmées.  Au mois d\'avril 2017, Marvel annonce qu\'Anna Boden et Ryan Fleck seront les deux réalisateurs du très attendu Captain Marvel, avec Brie Larson dans le rôle de la super-héroïne qui débarque pour la première fois sur grand écran. '),
(7, 'Fleck', 'Ryan', '20/09/1976', '..\\images\\ryan.jpg', 'Ryan Fleck rencontre Anna Boden lors du tournage d\'un film étudiant en 2002, alors qu\'ils suivent tous deux le cursus de cinéma à la Tisch School of the Arts de l\'université de New York. Les deux réalisateurs en herbe sortent rapidement ensemble et décident de collaborer. Le couple réalise d\'abord des courts-métrages documentaires (Have You Seen This Man?, Young Rebels) avant de s\'essayer à la fiction avec Gowanus, Brooklyn. Le film est avant tout un moyen d\'intéresser de potentiels investisseurs à un projet plus important : Half Nelson, qui n\'est alors qu\'à l\'état de scénario en développement. Une stratégie qui s\'avère payante, puisque le court remporte un prix au Festival de Sundance en 2004. Le duo peut donc se concentrer sur son premier long qui sort en 2006, avec dans le premier rôle un jeune Ryan Gosling touchant en professeur brillant mais paumé dans un lycée de Brooklyn. L\'acteur est même nommé aux Oscars en 2007.  Le duo s\'établit dans le milieu indépendant et s\'attèle en 2008 à la réalisation de Sugar, un drame sur la star dominicaine du base-ball Miguel Santos, présenté pour en avant-première mondiale à Sundance mais inédit en France. Il s\'agit de leur première réalisation en duo, Half Nelson ayant mis en scène par Ryan Fleck seulement. En 2010, ils dirigent Zach Galifianakis, Emma Roberts et Viola Davis dans Une drôle d\'histoire, une comédie enlevée sur des patients d\'un hôpital psychiatrique. En parallèle, Anna Boden et Ryan Fleck infiltrent la télévision en réalisant quelques épisodes de plusieurs séries saluées par la critique (The Big C, Looking, The Affair, Billions). Pour Under Pressure, leur troisième collaboration, les réalisateurs s\'entourent à nouveau d\'un casting de choix : Ryan Reynolds, Ben Mendelsohn, Sienna Miller et Analeigh Tipton se retrouvent ainsi dans un thriller sous haute tension et aux ambitions plus affirmées.  Au mois d\'avril 2017, Marvel annonce qu\'Anna Boden et Ryan Fleck seront les deux réalisateurs du très attendu Captain Marvel, avec Brie Larson dans le rôle de la super-héroïne qui débarque pour la première fois sur grand écran. '),
(8, 'Larson', 'Brie', '01/10/1989', '..\\images\\brie.jpg', 'Brie Larson est une actrice américaine connue pour son rôle dans le film Room qui lui vaut un Oscar en 2016 et pour celui de Captain Marvel dans le Marvel Cinatic Universe. En 2015, Brie Larson est l\'héroïne du film Room où elle incarne une jeune femme victime d\'un enlèvement. Son interprétation lui vaut plusieurs prix prestigieux dont l\'Oscar 2016 de la meilleure actrice, un Golden Globe ou encore un BAFTA Awards. En 2017, on la retrouve aussi face à Tom Hiddleston dans Kong : Skull Island. En 2019, elle est la star de Captain Marvel, film solo consacré à l\'héroïne du même nom de l\'univers Marvel. Elle est aussi la même année au casting de Avengers : Endgame.'),
(9, 'Lanzac', 'Abel', '06/05/1975', '..\\images\\Abel_Lanzac_Antonin_Baudry.jpg', 'Abel Lanzac, scénariste de l’album, sait de quoi il parle puisqu’il fut lui-même membre de plusieurs cabinets ministériels. Ce trentenaire passionné par le cinéma et la littérature rêvait de restituer en images l’univers sans pitié de la politique et de la diplomatie. Sa rencontre avec Blain lui a permis de réaliser ce rêve, une fructueuse collaboration qui devrait se poursuivre. Lanzac, qui se consacre aux voyages et à l’écriture, est également inventeur de jeux de société.'),
(10, 'Sy', 'Omar', '20/01/1978', '..\\images\\Omar_Sy.jpg', 'Omar Sy débute sa carrière comme animateur sur \"Radio Nova\" où il rencontre son futur complice, Fred Testot. Ensemble, ils multiplient les programmes comiques, côtoyant Jamel Debbouze sur Canal + ou Eric et Ramzy qui offrent à Omar son premier rôle sur grand écran dans La Tour Montparnasse infernale (2001). Omar rencontre aussi les scénaristes-réalisateurs Olivier Nakache et Eric Toledano avec qui il tourne un premier court métrage en 2002. Il effectue un retour remarqué à la comédie fin 2011 en jouant les Intouchables aux côtés de François Cluzet. Grand succès au box-office, ce film marque une étape importante dans la carrière du comédien puisque Omar Sy reçoit le César du meilleur acteur. Il entre ensuite dans l\'équipe de comiques-footballeurs formée par Olivier Dahan pour Les Seigneurs (2012) avant de retrouver d\'anciens compagnons de la chaîne cryptée, Kad Merad et Olivier Baroux, dans Mais qui a re-tué Pamela Rose ?. La même année, il mène l\'enquête accompagné de Laurent Lafitte dans De l\'autre côté du périph puis change complètement de style avec L\'Ecume des jours (2013), adaptation du célèbre roman de Boris Vian par Michel Gondry.Partant à la conquête d\'Hollywood, Omar Sy s\'installe à Los Angeles et tient le rôle de Bishop dans X-Men Days of Future Past (2014) puis celui de Barry dans Jurassic World (2015). Il n\'en oublie pas pour autant les projets français puisqu\'il campe entre ces deux blockbusters Samba, un sans papiers au grand coeur dans le nouveau film d\'Eric Toledano et Olivier Nakache. Après avoir cuisiné aux côté de Bradley Cooper (A vif !), l\'acteur se glisse dans la peau de Chocolat mis en scène par Roschdy Zem, premier artiste noir de la scène française au début du 20ème siècle.'),
(11, 'Civil', 'François', '29/01/1989', '..\\images\\francois_Civil.png', 'François Civil se passionne très tôt pour la comédie et intègre le studio Le Magasin où il étudie le théâtre. Le jeune homme décroche un premier petit rôle au cinéma à 16 ans dans la comédie Le Cactus avec Clovis Cornillac (2005). Après quelques petits passages à la télévision (P.J., Louis la brocante), François révèle l’étendue de son talent dans Soit je meurs, soit je vais mieux en 2008. Il y incarne Martial, un adolescent ayant du mal à s’intégrer après un déménagement et qui se rapproche de jumelles marginales qui vont l’entraîner dans des expériences aussi inquiétantes qu’excitantes. Le comédien est pré-nommé au César du Meilleur espoir masculin 2009 pour sa performance. L\'acteur brille ensuite dans la série à succès Dix pour Cent. Il y incarne Hippolite Rivière, un jeune comédien qui débute. En 2018, il fait sensation dans Burn Out. Il joue Tony, une tête brûlée accro aux sensations fortes qui ne vit que pour une seule chose : devenir pilote professionnel de moto superbike. Jusqu\'au jour où il découvre que la mère de son fils est liée à la pègre manouche. Seule issue pour la sortir de cet engrenage : mettre ses talents au service des truands. 2019 est une grande année pour François. Il donne la réplique à Reda Kateb, Omar Sy et Mathieu Kassovitz dans Le Chant du loup, un film de sous-marin sous haute tension. Civil campe Chanteraide, \"Oreille d\'or\" dans un submersible. Il est chargé de décrypter les bruits de la mer et prévenir les éventuels dangers.'),
(12, 'Mangold', 'James', '16/12/1963', '..\\images\\James_Mangold.jpg', 'James Mangold baigne très tôt dans le monde artistique. Fils de deux peintres, il s\'intéresse rapidement au cinéma qu\'il étudie à la California Institute of Arts avec le cinéaste Alexander Mackendrick. Mais c\'est en 1985 que le destin lui sourit, lorsqu\'il est engagé par les studios Disney pour lesquels il signe, entre autres, le scénario de Oliver et compagnie. En 1995, James Mangold franchit le pas et signe son premier long métrage, Heavy, plongée dans le quotidien d\'un petit restaurant de l\'Etat de New York qui lui rapporte le Prix Spécial du Jury au Festival de Sundance. Deux ans plus tard, il est consacré par la critique internationale avec le thriller Copland, offrant pour l\'occasion un rôle à contre-emploi de shérif à Sylvester Stallone.Après plusieurs années de préparation, il signe en 2005 Walk the line, un biopic célébrant l\'une des légendes de la musique Country : Johnny Cash, en confiant le rôle-titre à un Joaquin Phoenix dont la performance est unanimement saluée. Grand admirateur du western Trois heures dix pour Yuma qu\'il a découvert à l\'âge de 17 ans, il met en scène quarante ans après un remake, en offrant les rôles principaux à Russell Crowe et Christian Bale. En 2010, le metteur en scène réunit Tom Cruise et Cameron Diaz (qui s\'étaient déjà donnés la réplique sur Vanilla Sky en 2001) pour la comédie d\'action Night and Day. James Mangold revient en 2013 dans un genre plus fantastique et réalise Wolverine : Le combat de l\'immortel, logiquement porté par le massif Hugh Jackman. Trois ans plus tard, le metteur en scène et le comédien rempilent pour Logan, ultime volet consacré au célèbre mutant.'),
(13, 'Damon', 'Matt', '08/10/1970', '..\\images\\Matt_Damon.jpg', 'Après des études littéraires à la prestigieuse université de Harvard, Matt Damon choisit de monter sur les planches, et connaît son premier succès avec la pièce The Speed of Darkness de Steve Tesich. Il fait ensuite des débuts remarqués au cinéma en 1988 dans la comédie dramatique Mystic Pizza de Donald Petrie aux côtés de Julia Roberts, star montante à l\'époque, et de Lili Taylor. Le jeune acteur décroche ensuite plusieurs seconds rôles, notamment dans le Geronimo de Walter Hill en 1993, puis donne la réplique en 1996 à Meg Ryan et Denzel Washington dans A l\'épreuve du feu de Edward Zwick. Désormais considéré comme une valeur montante à Hollywood, il campe L\'Idealiste de Francis Ford Coppola en 1997. La même année, il écrit avec son ami Ben Affleck le scénario de Will Hunting. Ce film, réalisé par Gus Van Sant, où il tient également le rôle principal, est salué par la critique et le public et obtient l\'Oscar du Meilleur scénario ainsi que l\'Ours d\'argent à Berlin. L\'acteur retourne jouer pour la quatrième fois pour Gus Van Sant en 2012 dans son film Promised Land, qu\'il co-écrit et produit, avant d\'obtenir le rôle principal d\'Elysium, du jeune réalisateur Neill Blomkamp, où il partage la vedette avec Jodie Foster. Diversifiant encore et toujours ses interprétations, il incarne l\'amant de Michael Douglas dans Ma vie avec Liberace, qui lui vaut une nomination comme meilleur acteur dans un second rôle aux Golden Globes et aux British Academy Film Award. Il retrouve George Clooney dans le film de ce dernier, Monuments Men, qui lui permet de côtoyer pour la première fois Bill Murray et Jean Dujardin.Matt tourne ensuite coup sur coup dans deux blockbusters de SF, Interstellar de Christopher Nolan et Seul sur Mars de Ridley Scott. Pour ce rôle d\'astronaute livré à lui-même sur la planète rouge, le comédien est nommé à l\'Oscar du meilleur acteur. En 2016, Damon revient dans la peau d\'un personnage emblématique, l\'agent secret Jason Bourne, plus en colère que jamais, dans Jason Bourne, toujours mis en scène par Paul Greengrass.'),
(14, 'Bale', 'Christian', '30/01/1974', '..\\images\\Christian_Bale.jpg', 'Originaire du Pays de Galles, Christian Bale apparaît dès l\'âge de 8 ans dans des spots publicitaires et fait à 10 ans ses débuts d\'acteur, en jouant au théâtre dans The Nerd, aux côtés de Rowan Atkinson. En 1987, il tourne son premier film, le conte fantastique Mio Min Mio et décroche le rôle principal de la fresque de Steven Spielberg, L\'Empire du soleil. Son interprétation de jeune orphelin détenu dans un camp de concentration japonais lui vaut des critiques unanimes. En 2005, l\'acteur s\'approprie l\'un des rôles les plus convoités de Hollywood : celui de Bruce Wayne dans Batman Begins, de Christopher Nolan. Le début d\'une trilogie, carton au box-office mondial, qui verra naître The Dark Knight, Le Chevalier Noir en 2008, et The Dark Knight Rises en 2012. Entre ces prestations masquées, Bale continue à malmener son corps. La preuve en est sa rencontre avec le jusqu\'auboutiste Werner Herzog, qui l\'engage pour Rescue Dawn. Le personnage de Bale maigrit à vue d\'œil, au cours de son périple, et l\'acteur perd près de 25 kilos tout au long du tournage.'),
(15, 'Stahelski', 'Chad', '20/09/1968', '..\\images\\Chad_Stahelski.jpg', 'Cascadeur, producteur, acteur, réalisateur, mais aussi coordinateur de cascades, Chad Stahelski n’a jamais caché sa passion pour les sports de combat. Après avoir travaillé comme instructeur à l’Académie des Arts Martiaux Inosanto (Californie) sous les enseignements de Jeet Kune Do et Jun Fan, il débute au cinéma en tant que cascadeur à l’âge de 25 ans. Durant ces nombreux tournages, il rencontre David Leitch, ayant également un penchant pour les cascades : les deux hommes s’associent. Ils réalisent ensemble John Wick (2013), un thriller d\'action porté par Keanu Reeves, ainsi qu\'une série, Rain, également avec l\'acteur de Matrix dans le rôle principal. Racontant l’histoire d’un tueur à gages mi-japonais, mi-américain, la série est actuellement en cours de développement.'),
(16, 'Reeves', 'Keanu', '02/09/1974', '..\\images\\Keanu_Reeves.png', 'Keanu Reeves passe son enfance en Australie jusqu\'au divorce de ses parents. Il part alors à New York, puis à Toronto, au Canada, avec sa mère et ses deux soeurs. Abandonnant les études pour s\'orienter vers le métier de comédien, il fait ses débuts à la télévision dans la série Going great (1982), puis au cinéma dans des productions canadiennes comme de Robert Fortier (1985). Loin de délaisser par cette nouvelle carrière l\'actorat, on retrouve Keanu Reeves dans un univers japonais fantastique médiéval et non plus chinois contemporain. Personnage central du film jouant entre kung-fu et wu xia pian, il doit pourtant partager la vedette avec un panel d\'acteurs japonais des plus renommés dont Hiroyuki Sanada et Tadanobu Asano.En 2014, Keanu Reeves renoue avec le succès grâce au personnage de John Wick, ancien tueur à gages reprenant du service après que son chien se soit fait assassiner. Ce film réalisé par Chad Stahelski (célèbre cascadeur ayant doublé Reeves à plusieurs reprises) est un succès et donne lieu à une suite qui sort début 2017. Parallèlement, l\'acteur fait l\'erreur d\'ouvrir sa porte à deux superbes jeunes femmes mal intentionnées dans Knock Knock et campe un gérant d\'hôtel pervers dans The Neon Demon.'),
(17, 'Russo', 'Anthony', '03/02/1970', '..\\images\\Anthony_Russo.jpg', 'Frère de Joe Russo et fils d\'un homme politique libéral, Anthony Russo grandit dans un quartier ouvrier italien de Cleveland, dans l\'Ohio. Avant de suivre une formation aux métiers du cinéma, il écrit, réalise et produit, en collaboration avec son frère, une comédie intitulée Pieces. Le film est présenté en 1997 au Slamdance Film Festival de Park City, dans l\'Utah, et à l\'American Film Institute Festival à Los Angeles. Huit ans plus tard, la carrière des frères Russo prend un tournant sans précédent lorsqu\'ils se retrouvent aux commandes du blockbuster Captain America, le soldat de l\'hiver (2014). Le film est un succès colossal (714 millions de dollars de recettes mondiales alors que le premier volet avait fait 370 millions) et ils rempilent ainsi pour le troisième opus consacré aux aventures de Steve Rogers inaugurant la Phase III de l\'Univers cinématographique Marvel : Captain America: Civil War. Ensuite, Anthony et Joe Russo s\'attèleront à Avengers : Infinity War (Partie 1) et Partie 2 qui sortiront respectivement en 2018 et 2019.'),
(18, 'Russo', 'Joe', '18/07/1971', '..\\images\\Joe_Russo.jpg', 'Frère d\'Anthony Russo et fils d\'un homme politique libéral, Joe Russo grandit dans un quartier ouvrier italien de Cleveland, dans l\'Ohio. Avant de suivre une formation aux métiers du cinéma, il écrit, réalise et produit, en collaboration avec son frère, Pieces, une comédie dont il est lui-même interprète. Le film est présenté en 1997 au Slamdance Film Festival de Park City, dans l\'Utah, et à l\'American Film Institute Festival à Los Angeles, où Joe obtient le Prix du meilleur acteur de l\'American Film Institute. Huit ans plus tard, la carrière des frères Russo prend un tournant non négligeable lorsqu\'ils se retrouvent aux commandes de l\'attendu blockbuster Captain America, le soldat de l\'hiver. Le film est un succès colossal (714 millions de dollars de recettes mondiales alors que le premier volet avait fait 370 millions) et ils rempilent ainsi pour le troisième opus consacré aux aventures de Steve Rogers inaugurant la Phase III de l\'Univers cinématographique Marvel : Captain America: Civil War. Ensuite, Joe et Anthony Russo s\'attèleront à Avengers : Infinity War (Partie 1) et Partie 2 qui sortiront respectivement en 2018 et 2019.'),
(19, 'Downey Jr.', 'Robert', '04/04/1965', '..\\images\\Robert_Downey_Jr.jpg', 'Après des études à Los Angeles, Robert Downey Jr. s\'installe à New York à l\'âge de 16 ans pour y débuter une carrière de comédien. Il s\'illustre notamment dans Baby, it\'s you (1983) et Une créature de rêve (1985), mais c\'est en participant régulièrement à l\'émission télévisée comique Saturday night live qu\'il accède à la célébrité. Libre et en bonne santé, il enchaîne les seconds rôles marquants : tour à tour, journaliste dans Good Night, and Good Luck de George Clooney et médecin dans Raymond de Brian Robbins, l\'acteur devient, en 2007, l\'énigmatique Lionel qui séduit Nicole Kidman dans Fur : un portrait imaginaire de Diane Arbus. A l\'affiche, la même année, de Zodiac de David Fincher, où il tente, aux côtés de Jake Gyllenhaal, de mettre un terme aux agissements d\'un tueur en série, il rejoint ensuite Eric Bana et Drew Barrymore dans Lucky You de Curtis Hanson. Fort de ce nouveau tournant qu\'a pris sa carrière, Robert Downey Jr. n\'en finit pas de gravir les échelons.Il devient même l\'un des acteurs les plus bancables d\'Hollywood grâce à deux franchises très lucratives, dans lesquelles le comédien crève l\'écran : il incarne un super-héros Marvel dans Iron Man en 2008 et ses deux suites Iron Man 2 en 2010 et 3 en 2013 (sans oublier son importante participation à Avengers, Avengers 2 et Captain America Civil War par le biais de ce même personnage) tout en prêtant ses traits à l\'incontournable Sherlock Holmes pour les besoins de deux nouvelles versions (2010 et 2012) explosives centrées sur le célèbre détective, à base de kung-fu, d\'humour et d\'action. Ces succès commerciaux colossaux ne l\'empêchent toutefois pas de prendre part à des films plus ancrés dans la réalité, comme l\'émouvant Soliste (2009), l\'hilarant Date limite (2010) et le judiciaire Le Juge (2014).'),
(20, 'Evans', 'Chris', '13/06/1981', '..\\images\\Chris_Evans.jpg', 'Après une enfance et une scolarité passées à Boston, Chris Evans décide de partir à New York pour tenter sa chance dans la comédie. Il parvient très vite à percer dans le métier, en s\'illustrant notamment dans des séries télévisées (Boston Public, Opposite Sex). Sa carrière au cinéma débute en 2001, dans une comédie pour adolescents (Sex academy). Mais loin de rester cantonné à un seul genre, l\'acteur multiplie les rôles : il triche aux examens avec Scarlett Johansson dans la comédie policière The Perfect score (2004), donne la réplique à Kim Basinger dans le thriller Cellular (2004), et séduit Jessica Biel dans London (2005). De manière logique, on le retrouve à nouveau en super-héros en 2014 dans Captain America, le soldat de l\'hiver et en 2016 dans Captain America : Civil War. Entre les deux, Chris Evans fait à nouveau équipe avec ses collègues Avengers dans Avengers : L\'Ère d\'Ultron toujours de Joss Whedon, qui réalise un score presque aussi élevé que le premier volet de plus d\'1,4 milliard de dollars de recettes mondiales.'),
(21, 'Pitt', 'Brad', '18/12/1963', '..\\images\\Brad_Pitt.jpg', 'Après des débuts de carrière assez difficiles, l’acteur Brad Pitt décroche, en 1991, un rôle secondaire dans le film de Ridley Scott, Thelma et Louise dans lequel il joue le rôle d’un autostoppeur. Sa carrière est alors lancée, il devient vite l’acteur phare de Hollywood et est acclamé acteur le plus sexy d’Hollywood. Brad Pitt devient vite l’un des meilleurs acteurs d’Hollywood et joue aux côtés des plus grands. Il interprète de grands rôles aux côtés d’acteurs très talentueux comme Julia Roberts. En 1995, l’acteur Brad Pitt reçoit le MTV Movie Award du meilleur acteur pour son rôle dans Entretien avec un vampire. Depuis il en a reçu beaucoup d’autres pour sa qualité d’interprétation. En 2009, il joue dans le film Inglorious Basterds de Quentin Tarantino. Puis en 2013 dans Twelve Years a Slave de Steve McQueen. En 2017, il est à l\'affiche de Voyage of Time de Terrence Malick.'),
(22, 'Gray', 'James', '14/04/1969', '..\\images\\James_Gray.jpg', 'La vision des films de Francis Ford Coppola et notamment d\' Apocalypse Now en 1979 alors qu\'il n\'a que dix ans marquent profondément James Gray. Lui qui se destinait à la peinture se tourne vers le cinéma, qu\'il étudie à l\'University of South California. Après un film de fin d\'études remarqué, la reconnaissance ne se fait pas attendre.   En 1994, alors qu\'il n\'a que 25 ans, son premier long métrage Little Odessa reçoit le Lion d\'argent à Venise (ex-aequo avec Créatures célestes de Peter Jackson). Cette oeuvre âpre et virtuose s\'attache au conflit psychologique d\'un tueur solitaire (Tim Roth), en rupture avec sa famille et la communauté russe de New York. Refusant ensuite de mettre en scène plusieurs scripts (dont Ennemis rapprochés), il écrit une adaptation de Paycheck de Philip K. Dick, qu\'aucun studio ne veut financer. Son deuxième long métrage, The Yards, écrit entre 1995 et 1997 et produit par Miramax, voit le jour en 2000. Sélectionné à Cannes, ce film noir aux allures de tragédie antique réunit grands anciens (James Caan, Faye Dunaway) et jeunes pousses prometteuses (Mark Wahlberg, Joaquin Phoenix, Charlize Theron).'),
(23, 'Leitch', 'David', '16/11/1975', '..\\images\\David_Leitch.jpg', 'David Leitch est un coordinateur de cascades, réalisateur et un producteur américain qui travaille avec Chad Stahelski.Avant de monter 87Eleven, les deux hommes ont été cascadeurs pendant une vingtaine d\'années. Ils se sont rencontrés au début des années 1990 dans une école de karaté. Leitch a ensuite travaillé avec Brad Pitt dans des films comme Fight club, Mr & Mrs Smith et Troie.87Eleven est devenu incontournable pour la conception de scènes de combat. Fondée par deux cascadeurs chevronnés, Chad Stahelski, et David Leitch, la société élabore des chorégraphies de combat extrêmement sophistiquées. Les deux hommes sont à même de mettre au point, de tourner et de monter des séquences de cascades. Une fois recrutés sur un projet, ils entraînent les comédiens et leur apprennent chacun des gestes de la chorégraphie qu\'ils ont élaborée. Sur le plateau, ils assument les rôles de chef-cascadeur et de chorégraphe combats, et leurs cascadeurs assurent les doublures cascades des acteurs et des figurants. Ce passage du métier de cascadeur à celui de réalisateur, même s\'il est assez rare, est assez logique. En effet, comme Leitch et Stahelski ont très tôt tourné leurs propres scènes avant de les détailler à plusieurs réalisateurs, ils se sont initiés à la prise de vue et au montage. \"Quand on est cascadeur, on est une sorte de mini- réalisateur\", indique Leitch. \"On s\'entretient avec les comédiens de leur prestation. La manière d\'expliquer une cascade est intrinsèquement liée à la manière de la filmer, si bien qu\'on passe beaucoup de temps avec le chef-opérateur. On apprend à rendre un film d\'action dynamique, à donner le sentiment que l\'affrontement se déroule à quelques mètres du spectateur et à tourner avec une longue focale pour intensifier la vitesse\".Forts de leurs nombreux succès – Jason Bourne : L\'héritage, Expendables 3, la saga Hunger games, Jurassic World, Légendes vivantes, Wolverine et Dracula untold -, les deux hommes signent leur premier long métrage, John Wick.'),
(24, 'Reynolds', 'Ryan', '23/10/1976', '..\\images\\Ryan_Reynolds.png', 'Ryan Reynolds est le plus jeune fils d\'une famille de quatre enfants. Né d\'un père grossiste dans l\'alimentaire à Vancouver, et d\'une mère vendeuse au détail dans un magasin, Reynolds débute sa carrière en 1991, dans la série télévisée pour ados Hillside. Après avoir tenu à l\'âge de 17 ans la vedette du drame Ordinary Magic, le jeune Canadien découvre Hollywood en 1997, avec la comédie Life During Wartime. Il apparaît dans la comédie Dick, les dessous de la présidence puis obtient en 2002 son premier grand rôle dans American Party - Van Wilder relations publiques, où il incarne un organisateur de soirées très décontracté. En 2013, Ryan Reynolds côtoie Jeff Bridges dans le buddy movie fantastique R.I.P.D Brigade Fantôme. La même année, l’acteur prête sa voix aux personnages de deux dessins animés : Turbo dans le film du même nom et Guy dans Les Croods. Enchaînant les films qui ne trouvent pas leur public, il campe un père de famille dont la fille est enlevée dans le thriller neigeux Captives (2015) et côtoie Ben Kingsley dans le thriller de SF Renaissances (id.). Entre temps, il prend part à deux projets originaux : le slasher à l\'humour très noir The Voices, signé Marjane Satrapi, et La Femme au tableau où Helen Mirren lui demande de l’aider à récupérer une peinture qui aurait appartenu à sa famille.En 2016, il incarne à nouveau Deadpool, sept ans après X-Men Origins : Wolverine, mais dans un registre beaucoup plus comique et trash que le film de Gavin Hood. Cet anti-héros atypique dans l\'univers Marvel séduit le public et le film remporte pas loin de 784 millions de dollars dans le monde. Un succès qui appelle bien sûr à une suite deux ans plus tard où il fait face cette fois à Josh Brolin alias Cable. Entre-temps, il tient un rôle secondaire dans Life - Origine inconnue, film de SF horrifique où il est aux prises avec une créature extraterrestre peu commode. On le voit également en tête d\'affiche de Hitman & Bodyguard, un buddy movie avec Samuel L. Jackson dans lequel le duo fait preuve d\'un humour ravageur entre deux scènes de fusillades.'),
(25, 'Diesel', 'Vin', '18/07/1967', '..\\images\\vin_diesel.jpg', 'Elevé par une mère astrologue et un père adoptif professeur et directeur de théâtre, Vin Diesel monte sur les planches dès l\'âge de sept ans dans le quartier new-yorkais de Greenwich Village. Tout en continuant le théâtre, avec la troupe de son père puis à Broadway, il étudie l\'anglais et l\'écriture artistique à l\'Université de Hunter. Doté d\'un physique impressionnant, il devient parallèlement videur dans certains établissements huppés de New York. En 1994, Vin Diesel se tourne résolument vers le cinéma en écrivant, produisant, réalisant et interprétant son court métrage Multi-Facial. Après un premier long remarqué, Strays, présenté au Festival de Sundance en 1997, il est contacté par Steven Spielberg pour le rôle d\'Adrian Caparzo dans Il faut sauver le soldat Ryan (1998). En 2002, Vin Diesel enrichit sa collection de rôles musclés avec le film d\'action XXX et le polar Un homme à part. Trois ans après, l\'acteur s\'essaie à la comédie avec Baby-sittor et Jugez-moi coupable de Sidney Lumet, mais le public le plébiscite davantage dans un registre physique comme le prouve sa collaboration avec Mathieu Kassovitz pour le futuriste Babylon A.D. et son retour dans la saga Fast and Furious avec Fast & Furious 4 (2009), Fast & Furious 5 (2011), Fast & Furious 6 (2013), Fast & Furious 7 (2015) et Fast & Furious 8. Une saga de films extrêmement lucrative pour laquelle il s\'investit aussi beaucoup au niveau de la production.Acteur de franchises musclées, Vin Diesel se glisse parallèlement à nouveau dans la peau du tueur qui l\'a rendu célèbre en la personne du redoutable Riddick (2013), double le personnage de Groot dans Les Gardiens de la Galaxie (2014) et reprend son personnage de sportif de l’extrême devenu agent d\'élite dans xXx : Reactivated (2017). '),
(26, 'Johnson', 'Dwayne', '02/05/1972', '..\\images\\therock.jpg', ' Issu d\'une famille de catcheurs (son père et son grand-père étaient catcheurs professionnels), il se lance d\'abord dans une carrière de footballeur américain, mais une blessure à l\'épaule le fait se tourner vers le catch. Il intègre la fédération World Wrestling Entertainment, dont il devient l\'une des figures de proue après avoir gagné le WWF Championship en 1998. Surnommé The Rock, Dwayne Johnson mesure 1,96 m pour 120 kg. Sacré dix fois champion du monde poids lourds, il a également remporté le titre du WWF/E Championship huit fois et le WCW/World Championship à deux reprises. Le WWF Intercontinental Championship (deux victoires) et le WWF Tag Team Championship (cinq victoires) viennent s\'ajouter à son palmarès. The Rock, célèbre pour sa catchphrase \" If you smell what The Rock is cooking ?\", a également remporté le Royal Rumble 2000. La même année, il publie son autobiographie, \"The Rock Says\". En 2003, il perd son dernier match officiel contre Goldberg et se retire des rings. Dwayne Johnson a fait ses premiers pas sur grand écran en 2001, en décrochant un rôle dans \"Le Retour de la Momie\". Après de nombreuses apparitions dans différents films, il intègre le casting de \"Fast and Furious 5\", dans lequel il incarne l\'agent Luke Dobbs. En 2012, on retrouve Dwayne Johnson à l\'affiche du film \"Voyage au centre de la Terre 2 : l\'île mystérieuse\". On a pu le voir en 2013 dans \"G.I. Joe : Conspiration\", \"No Pain No Gain\", \"Fast and Furious 6\"... The Rock n\'a pas abandonné sa carrière de catcheur pour autant : il a fait son retour sur les rings en février 2011. '),
(27, 'Gray', 'Gary', '17/07/1969', '..\\images\\gary_gray.jpg', 'F. Gary Gray fait ses premières armes comme réalisateur de clips, comme pour Ice Cube avec It was a good day, puis pour Waterfalls des TLC, If I could turn back the hands of time de R. Kelly et Ms. Jackson du groupe Outkast. En 1995, il met en scène son premier long métrage, la comédie dramatique Friday, qui révèle au public américain l\'acteur Chris Tucker. Son deuxième film, la virée féministe Le Prix à payer (1996), portée par Jada Pinkett et Queen Latifah, connaît le succès grâce à sa bande originale. Le metteur en scène renoue ensuite avec son premier amour, la musique, et plus particulièrement le hip-hop, en se consacrant en 2014 à un biopic sur le célèbre groupe N.W.A, dont les membres étaient entre autres son ami de longue date Ice Cube, Dr. Dre et MC Ren. Fin 2015, F. Gary Gray est choisi pour être aux commandes de la réalisation du très attendu Fast & Furious 8 porté par les musclés Vin Diesel, Dwayne Johnson et Jason Statham qui doivent faire face à un nouvel ennemi campé par Charlize Theron.'),
(28, 'Nolan', 'Christopher', '30/07/1970', '..\\images\\christopher_nolan.jpg', 'Né d\'un père anglais et d\'une mère américaine, Christopher Nolan a commencé dès son plus jeune âge à réaliser des films avec la caméra 8mm de son père, et ce malgré son daltonisme. Son court métrage en 8mm, Tarantella, est diffusé aux États-Unis sur la chaîne PBS alors qu\'il est encore étudiant en lettres à l\'Université de Londres. Une fois la trilogie Batman bouclée, il s\'attaque à une autre figure de l\'écurie DC Comics, et pas des moindres : il écrit et produit Man of Steel, une nouvelle adaptation des aventures Superman, mais en confie la réalisation à Zack Snyder. Il ne retourne derrière la caméra qu\'en 2014, pour réaliser Interstellar, une fable au message écologique pour laquelle il envoie Matthew McConaughey fraîchement oscarisé, dans l\'espace à la recherche d\'une planète de substitution. En 2017, Nolan s\'attaque pour la première fois au film de guerre avec Dunkerque, le récit de la fameuse évacuation des troupes alliées de Dunkerque en mai 1940.'),
(29, 'McConaughey', 'Matthew', '04/11/1969', '..\\images\\matthew_mcconaughey.jpg', 'Matthew McConaughey n\'est encore qu\'un étudiant en droit à l\'université du Texas lorsqu\'un ami commun lui présente Richard Linklater, qui décide de lui confier une figuration dans son film Génération Rebelle en 1993. Après le tournage, il reprend consciencieusement ses études avant d\'enchaîner quelques petits rôles, qui lui permettent surtout de faire connaître son physique avantageux. Fort de ces rôles marquants, Matthew entame 2014 avec un projet ambitieux pour lequel il perd 22 kilos : Dallas Buyers Club où il se glisse dans la peau de Ron Woodroof, une personne diagnostiquée séropositive qui décide de s’engager dans une bataille contre les laboratoires et les autorités fédérales. Cette même année, il joue le personnage principal d\'Interstellar de Christopher Nolan.Après cette période de franches réussites, Matthew McConaughey enchaîne avec trois films qui ne rencontrent pas de succès malgré l\'investissement de l\'acteur : Nos souvenirs (2016), Free State of Jones (id.) et Gold (2017). Toujours en 2017, il est l\'Homme en noir de La Tour sombre, adaptation attendue d\'une série de huit romans de Stephen King.'),
(30, 'Hathaway', 'Anne', '12/11/1982', '..\\images\\anne.hathaway.jpg', 'Membre du prestigieux Barrow Group new-yorkais, section cinéma, la jeune Anne Hathaway a 17 ans lorsqu\'elle fait ses grands débuts à l\'écran, en 1999, dans la série télévisée La Famille Green. Mais c\'est deux ans plus tard que l\'adolescente se révèle au grand public avec son incarnation de la Princesse Thermopolis dans la production Disney Princesse malgré elle. Ce rôle de figure royale empruntée, gaffeuse et d\'une naïveté confondante remporte un joli succès public qui appellera une suite en 2004, intitulée Un mariage de princesse.  Entre ses deux rôles de Princesse, Anne Hathaway se forge un chemin sans encombres en se construisant, film par film, une image de jeune fille modèle. Elle joue ainsi uniquement dans des productions destinées au jeune public telles Nicholas Nickleby et Ella au pays enchanté, ou prête sa voix à des films d\'animation comme Le Royaume des chats (voix de Haru) et le déjanté La Véritable histoire du petit chaperon rouge (voix du rôle-titre). Anne Hathaway noircit légèrement le trait à partir de Secret de Brokeback Mountain, où elle incarne la compagne délaissée de Jake Gyllenhaal. En 2006, elle est à l\'affiche de la comédie dramatique Le Diable s\'habille en Prada, en tant qu\'assistante d\'une tyrannique rédactrice en chef incarnée par Meryl Streep. On l\'aperçoit plus tard dans Les Misérables, une adaptation américaine du classique de Victor Hugo, elle-même inspirée d\'une comédie musicale de Broadway où, métamorphosée, elle campe Fantine, la mère de la petite Cosette. En 2014, Anne Hathaway prête de nouveau sa voix à la pétillante Jewel, dans Rio 2, avant de retrouver Christopher Nolan dans le sublime Interstellar. En 2015, elle incarne une jeune chef d\'entreprise qui a un certain Robert De Niro comme stagiaire et côtoie Johnny Depp l\'année suivante dans Alice de l\'autre côté du miroir, qui se solde par un échec au box-office. La comédienne prend ensuite part à deux films d\'arnaque : Ocean\'s 8 et Le Coup du siècle.'),
(31, 'Miller', 'George', '03/03/1945', '..\\images\\george_miller.jpg', 'Originaire d\'une petite bourgade du Queensland en Australie, George Miller entreprend des études de médecine avant de s\'orienter vers le cinéma. En 1971, il écrit et réalise un court métrage intitulé Violence in the Cinema, Part 1 qui remportera deux prix de l\'Australian Film Institute et sera présenté aux festivals de Sydney et de Moscou. Le film est produit par son fidèle associé Byron Kennedy, avec qui il fondera la société Kennedy Miller.   Il connaît son premier grand triomphe avec son long métrage Mad Max, un road movie apocalyptique interprété par Mel Gibson et qui fut largement censuré en raison de nombreuses scènes de violence. Fort de ce succès, le réalisateur signe deux suites intitulées Mad Max 2 et Mad Max au-delà du Dôme du Tonnerre. Steven Spielberg l\'invite à réaliser le dernier épisode de La Quatrième dimension, considéré par les critiques comme le meilleur de cette anthologie. Après une éclipse de 7 ans, George Miller revient à la réalisation en mettant en scène un manchot de l\'Antarctique dans Happy Feet. Il s\'agit du premier film d\'animation du metteur en scène australien qui obtient un succès retentissant auprès du public à travers le monde et qui remporte également l\'Oscar du meilleur film d\'animation en 2007. Une suite, intitulée sobrement Happy Feet 2, est aussitôt mise en chantier et George Miller est à nouveau chargé de la réalisation. Le film sort en 2011 mais malheureusement, cette fois-ci, le succès n\'est pas au rendez-vous.');
INSERT INTO `artiste` (`numArtiste`, `nomArtiste`, `prenomArtiste`, `naissance`, `photo_prof`, `Biographie`) VALUES
(32, 'Hardy', 'Tom', '15/09/1977', '..\\images\\tom_hardy.jpg', 'Après un passage au Drama Centre de Londres, où il se familiarise avec le métier d\'acteur, Tom Hardy est vite plongé dans des projets d\'envergure : en 2001, il participe à deux épisodes de la mini-série Frères d\'armes produite par Steven Spielberg et figure au casting de La Chute du faucon noir de Ridley Scott. Le jeune acteur ne connaît donc pas vraiment la galère d\'un début de carrière, d\'autant qu\'il enchaîne vite avec des rôles dans Star Trek Nemesis et le thriller Attraction fatale, aux côtés de Gael García Bernal. Adepte de personnages virils et violents, il commence l\'année 2016 très fort. Ainsi, Tom Hardy campe les jumeaux Reggie et Ronnie Kray, célèbres gangsters du Royaume-Uni dans Legend, avant de provoquer la vengeance du trappeur Leonardo DiCaprio en assassinant son fils dans le western glacial et oscarisé The Revenant.L\'acteur affronte ensuite Cillian Murphy dans la série de gangsters Peaky Blinders ; il y incarne le personnage de Alfie Solomons depuis la saison 2. Après s\'être glissé dans l\'armure d\'un Stormtrooper dans un caméo pour Star Wars Les Derniers Jedi, Tom est à nouveau dirigé par Christopher Nolan dans Dunkerque. Il y campe un héroïque aviateur de la seconde guerre mondiale. Le comédien se glisse ensuite dans le costume du super-vilain Venom dans le film du même nom consacré au meilleur ennemi de Spider-Man. Il est aussi la star de la série Taboo depuis 2017.Tom y incarne James Keziah Delaney, qui refait surface à Londres en 1814, après 10 ans passés en Afrique. De retour en possession de diamants acquis illégalement et bien décidé à venger la mort de son père, il va refuser de vendre ce qu\'il reste de l\'héritage familial à la Compagnie britannique des Indes orientales et se mettre en tête de bâtir son propre empire de négoce et de transport. Mais James, qui va rapidement comprendre qu\'il a de nombreux ennemis, va devoir naviguer bien des eaux troubles pour rester en vie et parvenir à ses fins.'),
(33, 'Theron', 'Charlize', '07/08/1975', '..\\images\\charlize_theron.jpg', 'La carrière de Charlize Theron a décollé grâce à une rencontre très particulière. Après s’être installée à Los Angeles pour débuter dans le cinéma, sa situation devient très précaire. Sa mère l’aide à survivre. Alors que son banquier refuse d’encaisser un chèque, Charlize Theron pique une colère et se fait remarquer par un agent d’acteur qui attendait dans la banque.  Grâce à lui, elle décroche des rôles et rencontre les bonnes personnes. Charlize Theron joue dans L’Associé Du Diable et quelques autres films réputés mais c’est en 2003, grâce au film Monster, qu’elle voit son statut changer. Elle décroche des premiers rôles dans des long-métrages prestigieux comme L’Affaire Josey Aimes, Aeon Flux, Loin de la Terre Brûlée, Prometheus ou Hancock. Et ce n’est que le début de sa carrière !'),
(34, 'Brolin', 'Josh', '12/02/1968', '..\\images\\josh_brolin.jpg', 'Josh Brolin débute sa carrière cinématographique de manière tonitruante. En 1985, à l\'âge de 17 ans, il est choisi pour incarner l\'un des jeunes héros (précisément le \"grand frère\" de la bande) du film d\'aventure Les Goonies, réalisé par Richard Donner et écrit par Steven Spielberg. Après ce film culte, le jeune américain s\'illustre beaucoup à la télévision (L\'Equipée du Pony Express...) et sur scène, en fréquentant notamment le théâtre Geva de Rochester. Après avoir endossé le rôle de l\'assassin d\'Harvey Milk (2009) et un redoutable trader dans Wall Street : l\'argent ne dort jamais (2010), son deuxième film sous la houlette d\'Oliver Stone, il collabore avec Woody Allen (Vous allez rencontrer un bel et sombre inconnu, id.) et les frères Coen (True Grit, 2011). En 2012, Josh Brolin investit la tête d\'affiche du troisième volet de Men in Black en incarnant l\'agent K (Tommy Lee Jones) jeune face à un agent J (Will Smith) qui voyage dans le passé. L\'année suivante, il est à la tête d\'un groupe de policiers coriaces qui entendent bien mener la vie dure au gangster Mickey Cohen dans le Los Angeles des années d\'après guerre.Très actif, le comédien entame l\'année 2014 avec deux projets attendus : Oldboy de Spike Lee, qui est le remake du film de Park Chan-Wook où il incarne le personnage principal séquestré pendant 20 ans, puis l\'émouvant Last days of Summer réalisé par Jason Reitman où il donne la réplique à Kate Winslet. La même année, Josh Brolin se glisse dans la peau de Dwight pour les besoins de Sin City : j\'ai tué pour elle. Incarnant un agent du gouvernement américain en guerre contre les cartels de drogue dans Sicario (2015) et sa suite (2018), Josh Brolin campe parallèlement le grand méchant Thanos du très attendu blockbuster Marvel Avengers: Infinity War qui sort en avril 2018. Quelques semaines plus tard, on peut le voir dans la peau du cyborg Cable, un autre film de super-héros. '),
(35, 'Beetz', 'Zazie', '25/05/1991', '..\\images\\zazie_beetz.jpg', 'Zazie Beetz est née à Berlin en 1991 d\'un père allemand et d\'une mère afro-américaine. Elle se passionne très jeune pour le théâtre, poursuivant des études à la Muscota New School de New York. La jeune femme continue ensuite son cursus à l\'école des arts d\'Harlem puis au lycée artistique LaGuardia Arts.  Zazie fait ses premières armes de comédienne dans des courts métrages avant de décrocher ses premiers rôles au cinéma en 2015 dans la comédie Applesauce et le drame James White. C\'est l\'année suivante que l\'actrice se fait connaître du grand public en incarnant Van, la compagne de Donald Glover dans la série à succès Atlanta. Elle apparaît également dans Easy, une série qui suit des habitants de Chicago de tous horizons pris dans les méandres de l\'amour, du sexe, de la technologie et de la culture.  Zazie fait ensuite équipe avec le charismatique Gerard Butler dans le film catastrophe Geostorm. Elle y campe le personnage de Dana, une experte en cybersécurité. 2018 s\'annonce explosif pour la jeune femme ! En effet, Zazie a été choisie pour prêter ses traits à la mutante Domino alias Neena Thurman dans le film de super-héros Marvel Deadpool 2. L\'héroïne, toute de cuir noir vêtue, est née d\'une expérience génétique commandée par le gouvernement américain. Cette expérience visait à créer des armes biologiques. Domino est le seul nouveau-né à avoir survécu à ce projet baptisé Armageddon.  Sa mère sauve finalement Domino des griffes du gouvernement et la confie à un prêtre de Chicago. C\'est à l\'adolescence que la future super-héroïne découvre ses pouvoirs qui consistent à manipuler le hasard et la chance. Elle possède également une espèce de \"spider-sense\" qui lui permet d\'éviter les projectiles comme des balles. Grâce à ces aptitudes, Domino devient une redoutable mercenaire qui collabore notamment avec Cable, le super-vilain principal de Deadpool 2, incarné par Josh Brolin.'),
(36, 'Johansson', 'Scarlett', '22/11/1984', '..\\images\\scarlett_johansson.jpg', 'Scarlett Johansson entame sa carrière de comédienne sur les planches de Broadway, à l\'âge de huit ans, en tenant la vedette de la pièce Sophistry aux côtés d\'Ethan Hawke. Au cinéma, c\'est devant la caméra de Rob Reiner, pour la comédie L\'Irrésistible North (1994) qu\'elle fait ses premiers pas. Dans un registre plus sombre, elle dévoile ses charmes dans le méconnu The Spirit (2008), l\'adaptation du comic-book culte de Will Eisner. Un genre qu\'elle retrouve deux ans plus tard pour le blockbuster issu du catalogue Marvel, Iron Man 2. Scarlett Johansson y incarne le personnage hyper-athlétique de La Veuve Noire et en profite pour donner la réplique à Robert Downey Jr., comédien qu\'elle retrouve rapidement au sein des Avengers en 2012 (et sa suite Avengers: L\'ère d\'Ultron en 2015), dans lequel son personnage côtoie d\'autres super-héros made in Marvel tels que Thor (Chris Hemsworth), Hulk (Mark Ruffalo) ou encore Captain America (Chris Evans).Elle quitte son armure de super-héroïne pour jouer la fille prude et romantique dans Don Jon, le premier long-métrage de Joseph-Gordon Levitt qui en tombe amoureux transit. Sa voix suave et sexy porte ensuite la love story 2.0 Her de Spike Jonze. Un rôle à contre-emploi puisque l\'actrice, qui reçoit des mains de Quentin Tarantino un César d\'honneur lors de la 39ème Nuit des César, n\'apparaît jamais en chair et en os à l\'écran.On la voit ensuite dans les suites du plus patriotique des super-héros avec Captain America, Le soldat de l\'hiver (2014) et Captain America : Civil War (2016) où elle renfile le costume de La Veuve noire. En 2014, Luc Besson revient à ses premiers amours, la science-fiction, et fait appel à l\'actrice pour jouer le rôle-titre de Lucy où elle incarne une étudiante perdant peu à peu le contrôle sur ses capacités intellectuelles disproportionnées. Toujours dans le registre de la science-fiction et de l\'action, Scarlett Johansson incarnera le rôle principal de Ghost in the Shell, l\'adaptation du célèbre manga japonais par Rupert Sanders dont la sortie est prévue pour 2017.'),
(37, 'Hemsworth', 'Chris ', '11/08/1983', '..\\images\\chris_hemsworth.jpg', 'Il a fait ses débuts dans la série \"Summer Bay\" (2004-2007), dans laquelle il tenait le rôle de Kim Hyde. En 2009, il décroche le rôle du père de James Kirk dans \"Star Trek\". On le retrouve également dans \"Escapade fatale\" (2009) et dans le film \"Ca$h\" (2010). Son rôle dans le film \"Thor\", réalisé par Kenneth Branagh (2011), le fait connaître dans le monde entier. En 2012, il est à l\'affiche du film d\'horreur américain \"La Cabane dans les bois\" et de \"L\'Aube rouge\", un remake du film éponyme sorti en 1984. Chris Hemsworth retrouve le personnage du superhéros Thor dans le blockbuster \"Avengers\", qui réunit les principaux personnages de l\'univers Marvel : Hulk, Hawk-Eye, la Veuve Noire, Iron Man, Captain America et Thor. L\'acteur australien partage également l\'affiche de \"Blanche-Neige et le Chasseur\" (2012) aux côtés de Kristen Stewart, Charlize Theron et Sam Claflin. Il retrouve le personnage de Thor dans \"Thor, le monde des ténèbres\". Depuis juillet 2010, Chris Hemsworth partage la vie de l\'actrice espagnole Elsa Pataky. Le couple, qui s\'est marié en décembre 2010, a une petite fille, India Rose (née en mai 2012). Chris Hemsworth et Elsa Pataky attendent leur deuxième enfant.'),
(38, 'Mendes', 'Sam', '01/08/1965', '..\\images\\sam_mendes.jpg', 'Diplômé de Cambridge, Sam Mendes se lance dans une carrière au théâtre. Il connaît rapidement le succès grâce à ses adaptations très novatrices. Il se fait alors remarquer et engager en 1992 par la Royal Shakespeare Company. Ces diverses expériences lui permettent de travailler avec des comédiens reconnus comme Judi Dench ou Ralph Fiennes. Il devient ensuite directeur du Donmar Warehouse Theater où il continue d\'adapter les plus grands, de Shakespeare à Tennessee Williams. Ses activités au cinéma ne l\'empêchent pas pour autant de se consacrer à des projets plus personnels : en 2013, il met ainsi en scène la comédie musicale de grande envergure Charlie et la Chocolaterie, entre le London Palladium et Broadway, ce qui lui permet de renouer avec ses premières amours, celles de la scène.Compte tenu des succès critique et public de \"Skyfall\", Sam Mendes rempile pour le prochain James Bond sobrement intitulé 007 Spectre, toujours avec le charismatique et athlétique Daniel Craig dans le rôle du célèbre espion.'),
(39, 'Craig', 'Daniel', '02/03/1968', '..\\images\\daniel_craig.jpg', 'Daniel Craig découvre très jeune le théâtre avec la compagnie du Liverpool Everyman. Il n\'a pas encore vingt ans quand il part s\'installer à Londres pour rejoindre le National Youth Theatre. Sa carrière d\'acteur décolle en 1996 grâce à ses prestations télévisuelles dans Kiss and tell, The Fortune and misfortunes of Moll Flanders et la minisérie Our friends in the north avec Christopher Eccleston. 011 est une année chargée pour l\'acteur puisqu\'il est à l\'affiche du blockbuster Cowboys & envahisseurs, avant de jouer le journaliste Mikael Blomkvist dans le Millenium de David Fincher. L\'année suivante, le comédien campe à nouveau le célèbre espion pour les besoins de Skyfall réalisé par Sam Mendes, qui est un gros succès public mais aussi critique. D\'où un autre film James Bond qui sort en 2015 intitulé 007 Spectre, toujours avec le cinéaste d\'American Beauty aux commandes de la mise en scène et Daniel Craig dans la peau de l\'infatigable athlétique Agent 007.'),
(40, 'Dench', 'Judi', '09/12/1934', '..\\images\\judi_dench.jpg', 'Actrice shakespearienne avant tout, Judi Dench se distingue d\'abord sur les planches, notamment au sein de la Royal Shakespeare Company pour laquelle elle interprète autant des grands rôles classiques que des personnages modernes et comiques. Elevée au rang de Dame de l\'empire britannique en 1988 pour ses services rendus au théâtre, Judi Dench s\'illustre également à la télévision et au cinéma.  La comédienne fait ses débuts sur grand écran en 1964 dans The Third secret, de Charles Crichton. Cantonnée la plupart du temps à des seconds rôles, l\'actrice est remarquée en 1986 pour son interprétation dans Chambre avec vue, aux côtés d\'une autre grande figure du théâtre britannique, Maggie Smith, qu\'elle retrouvera quelques années plus tard dans la comédie dramatique de Franco Zeffirelli, Un thé avec Mussolini.  Portant un grand intérêt à la dramaturgie anglaise, elle se tourne naturellement vers les adaptations cinématographiques des pièces de Shakespeare. Elle est logiquement dirigée par l\'un des spécialistes du genre, Kenneth Branagh, dans Hamlet et Henry V. Ironie du sort, c\'est grâce à un film évoquant la jeunesse du célèbre dramaturge, Shakespeare in Love, qu\'elle remporte l\'Oscar du Meilleur second rôle en 1999. Deux ans plus tôt, elle avait remporté le BAFTA de la Meilleure actrice pour son interprétation d\'une autre reine d\'Angleterre, Victoria, dirigée aussi par John Madden dans La Dame de Windsor.  Parallèlement à ces rôles en costumes, Judi Dench se plait aussi à changer de registre et apparaît à partir de 1995 dans les James Bond pour le rôle du patron des services secrets britanniques, \"M\". Elle se laisse aussi tenter par la science fiction dans Les Chroniques de Riddick, en 2004, la suite de Pitch Black. Désormais connue pour ses personnages de femme âgée à la fois hautaine et malicieuse, Judi Dench enchaîne les tournages.'),
(41, 'Burton', 'Tim', '25/08/1958', '..\\images\\tim_burton.jpg', 'Après des études à la California Institute of the Arts, Tim Burton débute chez Disney dans les années 70, collaborant à l\'animation de plusieurs dessins animés, dont Rox et Rouky. Après cette expérience, il fait ses débuts dans la réalisation par le biais de deux courts métrages, l\'un d\'animation (Vincent, 1982), l\'autre de facture classique, Frankenweenie (1984), parodie revendiquée de Frankenstein et des films de la firme Hammer.  En 1985, Tim Burton réalise son premier long métrage, Pee Wee Big Adventure, qui plante déjà les bases d\'un univers très personnel, où le fantastique le dispute à l\'onirisme. Trois ans plus tard, il se révèle au grand public avec la comédie Beetlejuice, fable fantastico-macabre dans laquelle Michael Keaton incarne un \"bio-exorciste\" totalement déjanté. Il retrouvera le comédien pour Batman (1988) et Batman, le défi (1991), le glissant dans le costume du célèbre homme chauve-souris et démontrant par la-même que son génie créatif peut aussi s\'exprimer sur des films dits \"de commande\". En 2010, Tim Burton poursuit sa collaboration avec Johnny Depp et Helena Bonham Carter (sa femme, rencontrée sur le tournage de La Planète des singes), en leur offrant deux des rôles principaux de sa relecture d\'Alice au Pays des Merveilles, où il dirige la jeune Mia Wasikowska. Après cette production qui est l\'un des plus gros succès de tous les temps (un milliard de dollars au box office mondial), le cinéaste se plonge dans une libre adaptation d\'un feuilleton des années 60. Dans Dark Shadows (2012), il transforme ainsi Johnny Depp en vampire, dans une comédie macabre où la thématique de la malédiction côtoie celle du disco...En 2014, avec Big Eyes, il change radicalement de sujet pour se lancer dans le biopic dédié à Walter et Margaret Keane, peintres célèbres dans les années 60 pour leurs portraits d’enfants aux très grands yeux. Burton produit et réalise ce film, qui offre des premiers rôles à Amy Adams et Christoph Waltz. 2016 marque le retour du cinéaste dans le genre fantastique avec Miss Peregrine et les enfants particuliers. Burton raconte l\'histoire de Jacob, un jeune homme qui découvre les indices et l’existence d’un monde mystérieux qui le mène dans un lieu magique : la Maison de Miss Peregrine pour Enfants Particuliers. Mais le mystère et le danger s’amplifient quand il apprend à connaître les résidents, leurs étranges pouvoirs…et leurs puissants ennemis. Ce film marque la seconde collaboration du metteur en scène avec Eva Green après Dark Shadows.'),
(42, 'Depp', 'Johnny', '09/06/1963', '..\\images\\johnny_depp.jpg', 'Fils d\'un ingénieur et d\'une femme de ménage, Johnny Depp se passionne pour la musique en assistant à un spectacle de gospel. Il rejoint alors le groupe The Flame, qui devient The Kids, et fait la première partie de la tournée d\'Iggy Pop. Deux ans plus tard, les musiciens se rendent à Los Angeles, mais la formation ne remporte pas le succès escompté. C\'est à cette période que Depp fait la connaissance de Nicolas Cage, qui lui fait rencontrer son agent. Il obtient ainsi un petit rôle dans Les Griffes de la nuit (1984) de Wes Craven.  Johnny Depp s\'inscrit ensuite au Loft Studio de Los Angeles pour suivre des cours de comédie. Une fois sorti de l\'école, il est enrôlé chez les marines de Platoon, puis connaît la célébrité avec le lancement, en 1987, de la série 21 jump street. Sa carrière lancée, il choisit de rompre avec l\'image véhiculée par la télévision, celle d\'un jeune acteur pour midinettes, en jouant sous la direction de John Waters dans le satirique Cry-baby (1990). A partir de ce film, l\'acteur ne cessera d\'être en marge, incarnant régulièrement des personnages décalés et hors-normes. Toujours en 1990, en interprétant Edward aux mains d\'argent, il entame avec le réalisateur Tim Burton une fructueuse collaboration qui se poursuivra avec Ed Wood (1994), Sleepy hollow, la légende du cavalier sans tête (1999), Charlie et la chocolaterie (2004), Les Noces funèbres (2005), film d\'animation pour lequel il prête sa voix, et la comédie musicale Sweeney Todd (2008). En 2013, l\'année de ses 50 ans, le comédien retrouve une fois de plus Gore Verbinski pour les besoins de l\'atypique western Lone Ranger, une grosse production dont le budget avoisine les 250 millions de dollars mais qui se solde par un gros échec financier. Ses films suivants, Transcendance, Charlie Mortdecai et Strictly Criminal peinent eux aussi à trouver leur public. Depp retrouve ensuite deux personnages qui ont fait des merveilles au box office : Le Chapelier Fou (Alice de l\'autre côté du miroir, 2016) et Jack Sparrow (Pirates des Caraïbes 5, 2017).'),
(43, 'Ryder', 'Winona', '29/10/1971', '..\\images\\winona_ryder.jpg', 'Remarquée dès l\'âge de treize ans lors d\'une représentation de l\'American Conservatory Theatre à San Francisco, Winona Ryder effectue ses débuts sur grand écran deux ans plus tard dans le drame Lucas (1986) aux cotés de Charlie Sheen. Ce sont cependant ses prestations sous la direction de Tim Burton, dans Beetlejuice (1988) et Edward aux mains d\'argent (1990), qui placent la jeune actrice au premier rang des comédiennes hollywoodiennes.  Nommée au Golden Globe du Meilleur second rôle féminin pour Les Deux sirènes (1990), Winona Ryder tente cependant de s\'affranchir de son image de faire-valoir féminin. Elle choisit ainsi des projets plus risqués tels que Night on Earth (1991) de Jim Jarmusch, Dracula (1993) de Francis Ford Coppola ou encore La Maison aux esprits (id.) de Bille August. Nommée successivement à l\'Oscar du Meilleur second rôle féminin pour Le Temps de l\'innocence (1993) de Martin Scorsese puis à celui de la Meilleure actrice pour Les Quatre filles du docteur March (1994) de Gillian Armstrong, la comédienne ne cesse d\'alterner les grosses productions (Alien, la résurrection) et les réalisations plus indépendantes (Celebrity, Génération 90, Le Patchwork de la vie et La Chasse aux sorcières).  Très présente sur les écrans en 1999 et 2000 avec le trio Une vie volée, Un automne à New York et Les Ames perdues, Winona Ryder joue de son statut de star capricieuse dans le caustique Simone en 2002. Après quelques démêlés avec la justice pour une affaire de vol à l\'étalage, la belle tente un retour timide devant la caméra en donnant respectivement la réplique à Adam Sandler et Asia Argento dans Les Aventures de Mister Deeds (2003) et Le Livre de Jérémie (2004) puis en incarnant la compagne de Keanu Reeves dans A Scanner Darkly. Après quelques seconds rôles, c\'est en 2009 que sa carrière reprend un bel envol puisqu\'elle retrouve les plateaux de cinéastes prestigieux. Mère de Monsieur Spock dans le onzième épisode de Star Trek sous la direction de J.J. Abrams, elle est l\'année suivante une ancienne gloire déchue de la danse dans Black Swan de Darren Aronofsky. Frankenweenie (2012) marque ensuite ses retrouvailles avec le réalisateur qui l\'a révélée, Tim Burton.'),
(44, 'Wan', 'James', '26/02/1977', '..\\images\\james_wan.jpg', 'Né à Kuching, en Malaisie, c\'est pourtant en Australie que grandit James Wan, où il poursuit le rêve qui l\'obsède depuis ses 11 ans : devenir réalisateur. A 18 ans, il rejoint la prestigieuse Royal Melbourne Institute of Technology, obtient un diplôme en Arts et rencontre Leigh Whannell, qui deviendra son principal collaborateur. Il se forme au sein de l\'école en réalisant plusieurs courts-métrages, dont le film d\'horreur Stygian, qui sera récompensé comme meilleur film de guerre lors du Festival du film Underground en 2000, à Melbourne. Multifacette, le réalisateur s\'oriente ensuite vers la publicité, et officie notamment en tant que graphiste, réalisateur et monteur pour la chaîne jeunesse d\'ABC !2013 est une année bien remplie pour le réalisateur qui met en scène Conjuring : les dossiers Warren, toujours attaché aux films d\'épouvante. Nouveau carton au box-office face à des blockbusters beaucoup plus couteux qui ne fonctionnent pas aussi bien. C\'est cette même année que sort aussi Insidious 2. Cette fois-ci, James Wan ne laisse personne d\'autre que lui faire la suite de son film à succès et retrouve Patrick Wilson, Rose Byrne et Ty Simpkins après le premier opus. Véritable tournant dans sa carrière cinématographique, Wan réalise ensuite le musclé Fast & Furious 7 (2014). Plus que jamais passionné par les films d\'horreur, James Wan refuse la réalisation de Fast & Furious 8 (malgré la somme qui lui a été proposée par Universal) pour se centrer sur The Conjuring 2. En 2018 il met en scène son premier film de super-héros avec Aquaman.'),
(45, 'Wilson', 'Patrick', '03/07/1973', '..\\images\\patrick_wilson.jpg', 'Après des études à la Carnegie Mellon University, Patrick Wilson se tourne vers la comédie et fait ses débuts sur les planches dans The Full Monty et Oklahoma. Deux pièces qui marqueront le début de sa reconnaissance artistique, tandis que ses prestations lui vaudront plusieurs nominations aux Tony Award, Drama Desk et Drama League.  C\'est dans le film indépendant My Sister\'s Wedding que Patrick Wilson tient son premier rôle au cinéma. Mais ce long métrage ne connaît pas un immense succès. L\'acteur passe donc ensuite par le petit écran, pour les besoins de la série Angels in America, réalisée par Mike Nichols et dans laquelle il y campe un homosexuel qui a du mal à s\'assumer. Rôle qui lui vaudra une nomination au Golden Globe et à l\'Emmy Award. En parallèle, il est la tête d\'affiche de la série A Gifted Man, dans le rôle du Dr Michael Holt, un neurochirurgien égocentrique qui communique avec le fantôme de sa femme. Malheureusement, le programme est annulé après une saison. En 2013, Patrick Wilson continue sa collaboration horrifique avec James Wan en incarnant l\'enquêteur paranormal Ed Warren dans le grand succès Conjuring : Les dossiers Warren, tout en participant à la suite d\'Insidious, toujours réalisée par le metteur en scène malaisien.Le petit écran fait de nouveau appel à lui en 2015 puisque la production de la série Fargo, basée sur le film homonyme des frères Joel et Ethan Coen, l\'engage pour sa saison 2 dans le rôle de Lou Solverson, un officier du Minnesota enquêtant sur des meurtres en collaboration avec le shérif joué par Ted Danson.'),
(46, 'Taylor', 'Lili', '20/02/1967', '..\\images\\lili_taylor.jpg', 'Née dans une famille de classe moyenne de Glencoe en Illinois, Lili Taylor grandit parmi cinq frères et soeurs et étudie au lycée de New Trier, lycée par lequel Rock Hudson passa lui aussi. Puis, elle quitta le foyer familial pour étudier le théâtre à l\'Université de Chicago.  Son premier rôle dans un long-métrage date de 1988 avec le film Mystic Pizza qui révèle aussi Julia Roberts. Elle se fait alors remarquer dans un bon nombre de productions de haut niveau artistique tel Né un 4 juillet, Arizona Dream, Short cuts, Prêt-à-porter. Mais c\'est en 1995 qu\'elle obtient son premier rôle principal, celui de Kathleen, vampire étudiante en philosophie, dans le film culte d\'Abel Ferrara: The Addiction. Elle retrouvera le puissant réalisateur New-Yorkais 4 ans plus tard pour un court-métrage méconnu traitant de la fin du monde à l\'approche du passage au nouveau millénaire.  Icône du cinéma underground, elle ne dédaigne pas pour autant le grand public, passant de la screwball comedy (The Impostors) au film fantastique à gros budget (Hantise). Après quelques passages à la télévision dans des séries, notamment Six feet under, on la retrouve dans le film Factotum, adapté d\'un roman de Charles Bukowski puis en 2006 dans le deuxième long-métrage de Vincent Perez, The Secret. Dans le film The Promotion, en 2008, Lili Taylor incarne la femme écossaise de John C. Reilly avant de se glisser sous l\'uniforme du Shérif Lillian Holley qui met le braqueur de banque John Dillinger (Johnny Depp) derrière les verrous, dans le Public Enemies de Michael Mann.'),
(47, 'Livingston', 'Ron', '05/06/1967', '..\\images\\ron_livingston.jpg', 'Ron Livingston suit de brillantes études de théâtre et de littérature anglaise à la prestigieuse Yale University. Il intègre ensuite le Williamstown Theatre Festival et fait ses premières armes sur les planches.  C’est en 1992 que le comédien obtient son premier rôle au cinéma dans Franc-parler de Dolly Parton. Il pose alors ses valises à Los Angeles et démarre sa carrière d’acteur. Il obtient un premier rôle important en 1996 avec le film Swingers sous la houlette de Doug Liman.  Après un passage sur le petit écran dans Timecop ou The Players, les maîtres du jeu, le comédien revient au cinéma en 1999 avec la comédie 35 heures, c’est déjà trop où il donne la réplique à Jennifer Aniston. La télévision lui tend à nouveau les bras au début des années 2000.  En effet, l’acteur se fait remarquer successivement dans les séries à succès Frères d’armes et The Practice. Il interprète respectivement le capitaine Lewis Nixon dans l’une et le procureur adjoint Alan Lowe dans l’autre. Le comédien joue également Jack Berger, un des petits amis de Carrie dans la série populaire Sex and the city lors des saisons 5 et 6 du show.  L’acteur enchaîne ensuite les rôles plus ou moins importants sur grand écran, notamment dans Adaptation de Spike Jonze en 2002, Winter Solstice en 2004 ou Mon vrai père et moi en 2006 où il partage l’affiche avec Danny DeVito.  Le comédien s’illustre par la suite dans des registres très différents. De la comédie pure comme The Dinner, le remake américain de notre Dîner de cons à l’épouvante-horreur avec The Conjuring en passant par la romance avec Hors du temps, Ron Livingston se distingue toujours par sa capacité à rendre crédible n’importe quel rôle.  En 2013, il est engagé pour incarner le détective Roy Phillips dans la série de gangsters à succès Boardwalk Empire. Très prolifique, l’artiste enchaîne les projets ; on le retrouvera prochainement dans Shangri-La Suite dans lequel il incarne rien de moins que le King Elvis Presley en personne et dans The 5th Wave, un film de SF avec Chloë Grace Moretz.'),
(48, 'Leonetti', 'John', '04/07/1956', '..\\images\\john_leonetti.jpg', 'Né à Los Angeles, John R. Leonetti, de son vrai nom John Robert Leonetti commence sa carrière alors qu’il est adolescent, en travaillant dans l’entreprise d’équipements cinématographiques créée par son père Frank Leonetti (connu pour son travail de chef-électricien, par exemple sur Le Magicien d’Oz et Chantons sous la pluie).   Issu d’une famille du cinéma, John R. suit les traces de son grand frère Matthew F. Leonetti et embrasse une carrière de directeur de la photographie en 1988 (avec Reach, un court-métrage). Il participe à la photographie de films très différents, de Chucky 3 (1991) à The Mask (1994) en passant par Le Roi Scorpion (2002) et L’Homme parfait (2004).   Ces huit dernières années, il s’est fait spécialiste des films d’horreur après sa rencontre avec le réalisateur James Wan, dont il est le directeur de la photographie pour cinq de ses films : Death Sentence, Dead Silence, Insidious, Insidious : Chapitre 2 et Conjuring : les dossiers Warren.   En 1997, il passe derrière la caméra pour la première fois et réalise Mortal Kombat, destruction finale. Neuf ans plus tard, il est le réalisateur de L’Effet papillon 2. Ses deux films reçoivent un accueil mitigé. En 2014, c’est grâce à sa collaboration sur Conjuring que John R. Leonetti est choisi pour réaliser son spin-off, Annabelle. Il signe avec ce film son troisième long-métrage.'),
(49, 'Wallis', 'Annabelle', '05/09/1984', '..\\images\\annabelle_wallis.jpg', 'Annabelle Wallis est la nièce du célèbre acteur, compositeur, chanteur et réalisateur irlandais Richard Harris. Elle passe une partie de son efance au Portugal, où elle joue dans plusieurs courts-métrages, avant de revenir dans son pays natal. Là-bas, elle suit des cours de théâtre dans une école d’art dramatique à Londres. Annabelle parle couramment l’anglais, le français, le portugais et l’espagnol.  La comédienne commence par effectuer quelques apparitions dans des films, comme Mensonge d\'état, porté par un certain Leonardo DiCaprio. Elle est ensuite choisie pour incarner Jane Seymour le temps de cinq épisodes de la série Les Tudors. Ses rôles prennent alors un peu plus d\'importance, tout comme ses projets. Ainsi, Annabelle est au casting de X-Men: Le commencement (2011), W.E. (2012), Hello Carter (2013) et surtout Annabelle (2014). Dans ce lucratif film d\'horreur, elle se glisse dans la peau du personnage principal confronté à la malédiction.  Tout en continuant de jouer dans Peaky Blinders, unaniment saluée par la critique et le public, le rôle de Grace Burgess, aux côtés de Cillian Murphy, Annabelle Wallis figure au casting de deux des plus gros blockbusters de 2017 : la relecture de la légende du Roi Arthur par Guy Ritchie et La Momie, aux côtés de Tom Cruise et Sofia Boutella.'),
(50, 'Horton', 'Ward', '14/01/1976', '..\\images\\ward_horton.jpg', 'Ward Horton est un acteur américain.Originaire de Morristown, petite ville du New Jersey, il a connu une enfance simple, loin de la frénésie des studios de cinéma. Encore en bas âge lorsque ses parents décident de s’installer en Caroline du Nord pour y exploiter une ferme agricole, il profite de cette vie rurale pour se montrer curieux de tout et s’épanouir au grand air.Pendant son temps libre, le jeune Ward passe de longues heures à monter à cheval et à jouer au basket, mais son hobby favori reste les cours de théâtre qu’il suit en parallèle de l’école. Après une scolarité sans encombre, il rejoint les bancs de la Wake Forest University, pour ne pas trop s’éloigner de sa famille. Ne se sentant pas encore le courage de se lancer dans le jeu, l’étudiant préfère s’inscrire à un cursus commercial et met ses rêves de cinéma entre parenthèses à l’obtention de son diplôme. Durant quelques années, Ward Horton travaille comme banquier d’investissement. Toutefois, au début des années 2000, cette vie lui semble sans saveur et sa vocation artistique, toujours vive, le pousse à tout plaquer pour tenter sa chance à New York. C’est par la voie de la comédie qu’il fait son entrée dans le monde du cinéma, avec le film décalé The Pink House (2003). L’année suivante, le comédien débutant campe un rôle de figuration dans 30 ans sinon rien – romance au joli succès, portée par Jennifer Garner – sans être toutefois crédité au générique.Se tournant vers le petit écran, Ward enchaîne les registres : policier avec New York - Unité spéciale, considérée comme un vivier de futurs talents, humoristique pour La star de la famille et même le soap avec La Force du destin, indétrônable feuilleton américain. Au-delà de l’éclectisme de ce début de carrière, ces expérience lui valent de devenir progressivement un visage familier des téléspectateurs outre-Atlantique.En 2007, il apparaît dans la première saison de Gossip Girl, sous les traits d’Edward Abbot et reste dans le registre romantique au cinéma avec I Hate Valentine\'s Day (2009). Grâce à un rôle ponctuel dans Fringe, Ward Horton prouve qu’il ne craint pas d’osciller entre grand écran et télévision, ni de se frotter au genre fantastique. Jusqu’en 2012, il semble se spécialiser dans le registre de la série policière avec New York - Police judiciaire, Les experts: Miami, Body of Proof, FBI: Duo très spécial et Elementary.Les bonnes audiences de ces shows permettent à Ward de se faire un nom dans le milieu et, l’année suivante, le comédien décroche son premier rôle régulier à la télévision : celui de Dean Trayger dans le drama One Life to Live. Fort d’une apparition dans Le Loup de Wall Street, il décroche enfin en 2014 un rôle principal dans le film d\'horreur Annabelle.'),
(52, 'Smith', 'Will', '25/09/1968', '..\\images\\b75bc3123f49b6c2ee1493f75a65a3e6.jpg', 'Will Smith se destine à une carrière musicale lorsque, en 1989, il fait la rencontre de Benny Medina, productrice exécutive pour la Warner, qui lui confie le rôle principal de la série télévisée Le Prince de Bel-Air. Un feuilleton qui le rend extrêmement populaire et qui lui permet de débuter une carrière cinématographique. En 1992, il joue dans la comédie Made in America puis se distingue dans le drame Six degrés de séparation.\r\n\r\nC\'est en 1995 que Will Smith explose au niveau international avec son rôle de flic casse-cou et séducteur dans le blockbuster Bad boys. L\'année suivante, il confirme son ascension fulgurante en évoluant dans la superproduction Independence day (1996). S\'appuyant sur sa gouaille et son talent pour la comédie, l\'acteur afro-américain apparaît en tête d\'affiche de longs métrages délibérément funs tels que la comédie de science-fiction Men in black ou Wild wild west, adapté de la série télévisée Les Mystères de l\'Ouest. Mais Will Smith prouve qu\'il est également capable de jouer des rôles plus ambitieux. En témoigne sa présence aux génériques du thriller Ennemi d\'Etat (2000) et de La Légende de Bagger Vance (2001), l\'un de ses rares échecs au box office.\r\n\r\nAprès son étonnante composition du boxeur Mohammed Ali en 2002, il retrouve ses personnages fétiches d\'Agent J dans Men in black 2 et de Mike Lowrey dans le film d\'action Bad boys 2 (2003). Très sollicité à Hollywood, il s\'impose une nouvelle fois dans un rôle physique de détective pour les besoins du futuriste I, robot (2004), adapté de l\'oeuvre d\'Isaac Asimov. En 2005, de passage à Paris pour la promotion de Hitch, nouveau carton au box-office, cet \"expert en séduction\" se voit décerner un César d\'honneur : une façon pour le cinéma français de saluer l\'ensemble de sa jeune mais prolifique carrière.');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `numCommentaire` int(11) NOT NULL,
  `commentaire` varchar(2000) NOT NULL,
  `date` varchar(10) NOT NULL,
  `numUtilisateur` int(11) DEFAULT NULL,
  `numFilm` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`numCommentaire`, `commentaire`, `date`, `numUtilisateur`, `numFilm`) VALUES
(17, 'c\'est ', '2019-11-26', 1, 1),
(18, 'ça va ?', '2019-11-26', 2, 1),
(19, 'test', '2019-11-27', 1, 1),
(23, 'L\'acteur Joaquin interprète le rôle du Joker incroyablement bien ! ', '2019-12-16', 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `numFilm` int(11) NOT NULL,
  `nomFilm` varchar(50) NOT NULL,
  `resume` varchar(2000) NOT NULL,
  `annee` varchar(4) NOT NULL,
  `age_restric` varchar(3) NOT NULL,
  `critique` varchar(2000) NOT NULL,
  `note_moy` float NOT NULL,
  `langue` varchar(30) NOT NULL,
  `duree` varchar(10) NOT NULL,
  `photo_affiche` varchar(100) NOT NULL,
  `lien_ba` varchar(100) NOT NULL,
  `numutilisateur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`numFilm`, `nomFilm`, `resume`, `annee`, `age_restric`, `critique`, `note_moy`, `langue`, `duree`, `photo_affiche`, `lien_ba`, `numutilisateur`) VALUES
(1, 'Retour à Zombieland', 'Dix ans après, Tallahassee, Columbus, Wichita et Little Rock font toujours équipe et luttent ensemble pour survivre face \r\naux zombies. Ils trouvent un temps refuge dans la Maison-Blanche. Columbus et Wichita vivent leur petite vie de couple, alors que Tallahassee « couve » Little Rock. Mais cette \r\ndernière a des envies d\'ailleurs et d\'être avec des gens de son âge. Elle décide de partir. Wichita et Little Rock reprennent donc seules la route, au grand désespoir des deux \r\nhommes. Mais Little Rock va disparaitre avec un dénommé Berkeley. Wichita revient alors à la Maison-Blanche pour s\'armer avant d\'aller chercher sa petite sœur. Entre temps, \r\nColumbus a rencontré une certaine Madison...', '2019', '-17', 'S’il a fallu dix ans, malgré un succès commercial et critique, pour que le très drôle «Zombieland» ait droit à sa suite, \r\ncette décennie pourra jouer à son avantage. Depuis 2009, le public a eu le temps de manger et remanger du zombie. De s’emballer pour « Walking Dead », puis de s’impatienter devant \r\nle pathos redondant de la série. De voir, sur grand écran, mille variations de morts-vivants : avec Brad Pitt, dans un TGV coréen, façon Jane Austen, en ouverture à Cannes… \r\nEt dans cette masse de chairs en putréfaction, personne ne s’est aventuré dans la «zom-com» grand-public avec autant de brio. À défaut d’un nouveau «Shaun Of The Dead», \r\n«Zombieland» a ainsi laissé un souvenir aussi heureux que lointain. De quoi retrouver aujourd’hui ses héros avec plaisir, sans forcément être dérangé par les quelques redites \r\nde cette suite.', 6.4, 'vf', '1h39', '..\\images\\retour_a_zombieland.jpg', 'https://www.youtube.com/embed/tYLQmbHKVeM', 1),
(2, 'Joker', 'Dans les années 1980, à Gotham City, Arthur Fleck, un comédien de stand-up raté est agressé alors qu\'il ère dans les rues de la ville \r\ndéguisé en clown. Méprisé de tous et bafoué, il bascule peu à peu dans la folie pour devenir le Joker, un dangereux tueur psychotique.', '2019', '-12', 'Avec colère et avec méchanceté, \r\nPhillips et Phoenix disloquent et réinventent de toutes pièces le Joker, célèbre méchant de Batman, pour porter un coup fatal à l’ère Marvel Studios, en faisant l’inverse d’un \r\nfilm de comics ou de super-héros convenable, tout en en singeant la mécanique héroïque', 8, 'vostfr', '2h02', '..\\images\\joker.jpg', 'https://www.youtube.com/embed/7CWqC3j7Y14', 1),
(3, 'Captain Marvel', 'Captain Marvel raconte l’histoire de Carol Danvers qui va devenir l’une des super-héroïnes les plus puissantes de l’univers \r\nlorsque la Terre se révèle l’enjeu d’une guerre galactique entre deux races extraterrestres.', '2019', '-12', 'Divertissant, spectaculaire et féministe dans sa dernière partie, \r\nle film oscille entre long-métrage de science-fiction et pastiche amusante de l’univers Marvel.', 7.3, 'vo', '2h05', '..\\images\\Captain_Marvel.jpg', 'https://www.youtube.com/embed/curUCwimHwM', 1),
(4, 'Le Chant du loup', 'Un jeune homme a le don rare de reconnaître chaque son qu’il entend. A bord d’un sous-marin nucléaire français, tout repose sur lui, l’Oreille d’Or. Réputé infaillible, il commet pourtant une erreur qui met l’équipage en danger de mort. Il veut retrouver la confiance de ses camarades mais sa quête les entraîne dans une situation encore plus dramatique. Dans le monde de la dissuasion nucléaire et de la désinformation, ils se retrouvent tous pris au piège d’un engrenage incontrôlable.', '2019', '-10', 'Doté d’un suspense haletant, Le chant du loup s’avère être une excellente surprise, redorant le blason trop souvent écorné d’un certain cinéma de genre français. A découvrir en salles pour être totalement immergé dans une ambiance hautement anxiogène.', 7.4, 'vf', '1h55', '..\\images\\Le_Chant_du_loup.jpg', 'https://www.youtube.com/embed/0-LTTNiGgUA', 1),
(5, 'Le Mans 66', 'Basé sur une histoire vraie, le film suit une équipe d’excentriques ingénieurs américains menés par le visionnaire Carroll Shelby et son pilote britannique Ken Miles, qui sont envoyés par Henry Ford II pour construire à partir de rien une nouvelle automobile qui doit détrôner la Ferrari à la compétition du Mans de 1966.', '2019', '-10', 'Quel film ! Au volant, le réalisateur James Mangold parvient à trouver l\'équilibre parfait entre enjeux économiques de ce récit, histoire humaine entre Shelby et Miles, et scènes de courses grisantes et spectaculaires qui vont à 300 à l\'heure.', 7.3, 'vostfr', '2h32', '..\\images\\Le_Mans_66.jpg', 'https://www.youtube.com/embed/2-earOG0OMA', 1),
(6, 'Avengers : Endgame', 'Le Titan Thanos, ayant réussi à s\'approprier les six Pierres d\'Infinité et à les réunir sur le Gantelet doré, a pu réaliser son objectif de pulvériser la moitié de la population de l\'Univers. Cinq ans plus tard, Scott Lang, alias Ant-Man, parvient à s\'échapper de la dimension subatomique où il était coincé. Il propose aux Avengers une solution pour faire revenir à la vie tous les êtres disparus, dont leurs alliés et coéquipiers : récupérer les Pierres d\'Infinité dans le passé.', '2019', '-12', 'Au-delà de la réussite du film en soi, \"Avengers : Endgame\" offre un triomphe définitif à l’Univers Cinématographique Marvel.', 6.7, 'vo', '3h01', '..\\images\\Avengers_Endgame.jpg', 'https://www.youtube.com/embed/o3Hs5WZd8l4', 1),
(7, 'Ad Astra', 'L’astronaute Roy McBride s’aventure jusqu’aux confins du système solaire à la recherche de son père disparu et pour résoudre un mystère qui menace la survie de notre planète. Lors de son voyage, il sera confronté à des révélations mettant en cause la nature même de l’existence humaine, et notre place dans l’univers.', '2019', '-12', 'Ad Astra est bien plus qu’un film de science-fiction. Il retrace l’incroyable destinée d’une relation entre un enfant et son père absent. Ce film sidérant comptera assurément dans l’histoire du cinéma américain.', 6.8, 'vf', '2h04', '..\\images\\Ad_Astra.jpg', 'https://www.youtube.com/embed/y-SMqqEiXHw', 1),
(8, 'John Wick : Parabellum', 'John Wick a transgressé une règle fondamentale : il a tué à l’intérieur même de l’Hôtel Continental. \"Excommunié\", tous les services liés au Continental lui sont fermés et sa tête mise à prix. John se retrouve sans soutien, traqué par tous les plus dangereux tueurs du monde.', '2019', '-16', 'Qu’il eu cru que la saga John Wick – lancée de manière hasardeuse en 2014 – pourrait redessiner à ce point l’avenir du cinéma d’action. Au-delà des limites et des espérances, Parabellum est un bijou du genre.', 6.6, 'vostfr', '2h11', '..\\images\\John_Wick_Parabellum.jpg', 'https://www.youtube.com/embed/WMC52CQAZxc', 1),
(11, 'Deadpool 2', 'Plus grand, plus-mieux, et occasionnellement les fesses à l’air, Deadpool devra affronter un Super-Soldat, repenser l’amitié, la famille, et ce que signifie l’héroïsme – tout en bottant cinquante nuances de culs, car comme chacun sait, pour faire le Bien, il faut parfois se salir les doigts.', '2018', '-12', 'Vous avez aimé le premier film ? Vous jubilerez devant cette suite. Ryan Reynolds s\'amuse comme un fou dans son costume moulant de super-héros décalé, vulgaire et insolent, et nous aussi.', 8.2, 'vf', '1h59', '..\\images\\Deadpool_2.jpg', 'https://www.youtube.com/embed/FAhksu4-oLI', 1),
(19, 'Fast And Furious 8', 'Maintenant que Dom et Letty sont en lune de miel, que Brian et Mia se sont rangés et que le reste de l’équipe a été disculpé, la bande de globetrotteurs retrouve un semblant de vie normale. Mais quand une mystérieuse femme entraîne Dom dans le monde de la criminalité, ce dernier ne pourra éviter de trahir ses proches qui vont faire face à des épreuves qu’ils n’avaient jamais rencontrées jusqu’alors.\r\n\r\nDes rivages de Cuba au rues de New York en passant par les plaines gelées de la mer arctique de Barrents, notre équipe va sillonner le globe pour tenter d\'empêcher une anarchiste de déchaîner un chaos mondial et de ramener à la maison l’homme qui a fait d’eux une famille.', '2017', '-12', 'Ce segment majeur dans la saga est entièrement dévoué au divertissement bulldozer. Il promeut une action débridée, inventive et créative, totalement inédite à ce jour à l’écran. Les fans adoreront !', 8.2, 'vostfr', '2h16', '..\\images\\fastandfurious.jpg', 'https://www.youtube.com/embed/bV9IFNm24Fw', 2),
(20, 'Interstellar', 'Dans un futur proche, la Terre est de moins en moins accueillante pour l\'humanité qui connaît une grave crise alimentaire. Le film raconte les aventures d\'un groupe d\'explorateurs qui utilise une faille récemment découverte dans l\'espace-temps afin de repousser les limites humaines et partir à la conquête des distances astronomiques dans un voyage interstellaire.', '2014', '-13', 'C’est la petite leçon d’humilité qui libère ce film tiraillé de bout en bout par une quête impossible de grandeur et de métaphysique : en dépit d’allers-retours aux confins de l’univers et d’un monde au bord de l’agonie, la vie y demeure une simple tragédie du temps qui passe, scandée par les promesses non tenues et les rendez-vous manqués.', 9.1, 'vf', '2h49', '..\\images\\interstellar.jpg', 'https://www.youtube.com/embed/lySFRajdJl8', 1),
(21, 'Mad Max : Fury Road', 'Hanté par un lourd passé, Mad Max estime que le meilleur moyen de survivre est de rester seul. Cependant, il se retrouve embarqué par une bande qui parcourt la Désolation à bord d\'un véhicule militaire piloté par l\'Imperator Furiosa. Ils fuient la Citadelle où sévit le terrible Immortan Joe qui s\'est fait voler un objet irremplaçable. Enragé, ce Seigneur de guerre envoie ses hommes pour traquer les rebelles impitoyablement.', '2015', '-12', 'Avec \"Mad Max: Fury Road\", George Miller aura une fois de plus redéfini de manière irréversible les codes du cinéma d\'action. Pour y parvenir, il fallait beaucoup d\'audace, une bonne dose de génie et un sacré gain de folie. C\'est la marque des plus grands cinéastes.', 8.8, 'vo', '2h00', '..\\images\\mad_max.jpg', 'https://www.youtube.com/embed/CHG3NKwH03Y', 1),
(22, 'Skyfall', 'Laissé pour mort après une mission en Turquie qui a tourné au désastre, l\'agent britannique James Bond, nom de code 007, réapparaît à Londres lorsqu\'il apprend par les informations d\'un journal télévisé qu\'un attentat a été commis contre le M16. Cet événement ébranle considérablement l\'autorité de la directrice M.', '2012', '-12', 'Entre autres surprises que vous ont réservées les producteurs pour les 50 ans au cinéma de l\'agent secret, vous risquez d\'avoir du mal à résister à un Javier Bardem coiffé à la Michou, terrifiant en méchant, ou à une Judi Dench alias M toujours aussi géniale (...) Un film hallucinant !', 8.7, 'Vostfr', '2h23', '..\\images\\skyfall.jpg', 'https://www.youtube.com/embed/czrIZP9xh6w', 1),
(23, 'Edward aux mains d\'argent', 'Dans un château niché au sommet d\'une colline vivait un génial inventeur qui créa Edward. Bien que gratifié d\'un charme irrésistible, ce dernier n\'était pas tout à fait parfait. La mort soudaine de l\'inventeur l\'avait laissé pourvu de ciseaux acérés en guise de mains. Edward vivait reclus dans l\'obscurité jusqu\'au jour où la douce demoiselle Avon lui fit goûter aux joies d\'un véritable foyer.', '1990', '-10', 'La beauté de ce film c\'est sa tendresse. Edward est un héros que l\'on a envie de prendre dans ses bras, même si lui ne peut tenir personne dans les siens.', 9.8, 'vf', '1h45', '..\\images\\edward.jpg', 'https://www.youtube.com/embed/5kGp8ujz6Vo', 1),
(24, 'Conjuring, dossiers Warren', 'L\'histoire horrible, mais vraie, d\'Ed et Lorraine Warren, enquêteurs paranormaux réputés dans le monde entier, venus en aide à une famille terrorisée par une présence inquiétante dans leur ferme isolée. Contraints d\'affronter une créature démoniaque d\'une force redoutable, les Warren se retrouvent face à l\'affaire la plus terrifiante de leur carrière.', '2013', '-12', 'La peur au cinéma est toujours en de très bonnes mains avec James Wan. Le jeune cinéaste continue de s’amuser à nous effrayer avec une efficacité indéniable et un vrai respect des codes du genre.', 6.6, 'Vostfr', '1h50', '..\\images\\conjuring.jpg', 'https://www.youtube.com/embed/R45elnlyzKw', 2),
(25, 'Annabelle', 'Été 1969, John et Mia, qui attendent leur premier enfant, viennent d\'emménager dans une maison à Santa Monica. John, qui ne sait comment choyer son épouse, lui a offert une poupée ancienne. La nuit suivante, ils sont sauvagement attaqués par un couple lié à une secte satanique. La police leur porte secours rapidement, abattant l\'homme tandis que sa compagne se tranche la gorge, laissant couler quelques gouttes de sang dans l\'oeil de la poupée.', '2014', '-12', 'Voir ses jouets s\'animer est un rêve que tout enfant a fait. Le cinéma s\'est souvent emparé de ce fantasme dans des films de hantise. \"Annabelle\" en est le dernier rejeton, plutôt efficace.', 4.5, 'Vf', '1h38', '..\\images\\annabelle.jpg', 'https://www.youtube.com/embed/Z5wj3BBVkv0', 2);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `numGenre` int(11) NOT NULL,
  `nomGenre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`numGenre`, `nomGenre`) VALUES
(1, 'Action'),
(2, 'Drame'),
(3, 'Thriller'),
(4, 'Comédie'),
(5, 'Fantastique'),
(6, 'Horreur'),
(7, 'Science-fiction');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `genre_film`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `genre_film` (
`nomFilm` varchar(50)
,`photo_affiche` varchar(100)
,`nomGenre` varchar(30)
);

-- --------------------------------------------------------

--
-- Structure de la table `jouer`
--

CREATE TABLE `jouer` (
  `numArtiste` int(11) NOT NULL,
  `numFilm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `jouer`
--

INSERT INTO `jouer` (`numArtiste`, `numFilm`) VALUES
(2, 2),
(4, 1),
(5, 1),
(8, 3),
(10, 4),
(11, 4),
(13, 5),
(14, 5),
(16, 8),
(19, 6),
(20, 6),
(21, 7),
(24, 11),
(25, 19),
(26, 19),
(29, 20),
(30, 20),
(32, 21),
(33, 21),
(34, 11),
(35, 2),
(35, 11),
(36, 6),
(37, 6),
(39, 22),
(40, 22),
(42, 23),
(43, 23),
(45, 24),
(46, 24),
(47, 24),
(49, 25),
(50, 25);

-- --------------------------------------------------------

--
-- Structure de la table `localiser`
--

CREATE TABLE `localiser` (
  `numPays` int(11) NOT NULL,
  `numFilm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `localiser`
--

INSERT INTO `localiser` (`numPays`, `numFilm`) VALUES
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 11),
(2, 19),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(5, 20),
(5, 22),
(7, 21);

-- --------------------------------------------------------

--
-- Structure de la table `noter`
--

CREATE TABLE `noter` (
  `numUtilisateur` int(11) NOT NULL,
  `numFilm` int(11) NOT NULL,
  `note` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `noter`
--

INSERT INTO `noter` (`numUtilisateur`, `numFilm`, `note`) VALUES
(1, 2, 9.3),
(1, 3, 4.8),
(1, 11, 8.5),
(1, 21, 7.2),
(2, 1, 9.5),
(2, 11, 9.3),
(2, 21, 7.9);

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `numPays` int(11) NOT NULL,
  `nomPays` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`numPays`, `nomPays`) VALUES
(1, 'France'),
(2, 'Etats-Unis'),
(3, 'Canada'),
(4, 'Espagne'),
(5, 'Angleterre'),
(6, 'Inde'),
(7, 'Australie');

-- --------------------------------------------------------

--
-- Structure de la table `posseder`
--

CREATE TABLE `posseder` (
  `numFilm` int(11) NOT NULL,
  `numGenre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `posseder`
--

INSERT INTO `posseder` (`numFilm`, `numGenre`) VALUES
(1, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 7),
(4, 1),
(4, 2),
(5, 2),
(6, 1),
(6, 5),
(7, 2),
(7, 7),
(8, 1),
(8, 3),
(11, 1),
(11, 4),
(19, 3),
(20, 2),
(20, 7),
(21, 1),
(21, 7),
(22, 1),
(23, 2),
(23, 5),
(24, 6),
(25, 3),
(25, 6);

-- --------------------------------------------------------

--
-- Structure de la table `realiser`
--

CREATE TABLE `realiser` (
  `numArtiste` int(11) NOT NULL,
  `numFilm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `realiser`
--

INSERT INTO `realiser` (`numArtiste`, `numFilm`) VALUES
(1, 2),
(3, 1),
(6, 3),
(7, 3),
(9, 4),
(12, 5),
(15, 8),
(17, 6),
(18, 6),
(22, 7),
(23, 11),
(27, 19),
(28, 20),
(31, 21),
(38, 22),
(41, 23),
(44, 24),
(48, 25);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `recherche_artiste`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `recherche_artiste` (
`nomArtiste` varchar(30)
,`prenomArtiste` varchar(30)
,`photo_prof` varchar(200)
,`nomFilm` varchar(50)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `recherche_artiste_j`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `recherche_artiste_j` (
`nomArtiste` varchar(30)
,`prenomArtiste` varchar(30)
,`photo_prof` varchar(200)
,`nomFilm` varchar(50)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `recherche_com`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `recherche_com` (
`commentaire` varchar(2000)
,`date` varchar(10)
,`prenom` varchar(30)
,`numFilm` int(11)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `recherche_genre`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `recherche_genre` (
`nomGenre` varchar(30)
,`nomFilm` varchar(50)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `recherche_pays`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `recherche_pays` (
`nomPays` varchar(50)
,`nomFilm` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `numUtilisateur` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `login` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL,
  `numFilm` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`numUtilisateur`, `nom`, `prenom`, `age`, `login`, `mdp`, `mail`, `role`, `numFilm`) VALUES
(1, 'AGNEZ', 'Sébastien', 20, 'seb', 'Toto78', 'sebastien.agnez@ens.uvsq.fr', 'Admin', 1),
(2, 'Ramaromananatoandro', 'Thomas', 21, 'toto', 'tata78', 'thomas.ramaromananatoandro@ens', 'Admin', NULL),
(8, 'toto', 'titi', 45, 'tete', 'Pooo78', 'toto.titi@orange.fr', 'Client', NULL),
(17, 'Dupont ', 'Jean', 34, 'jojo', 'Jean78', 'jean.dupont@gmail.com', 'Biographe', NULL);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_datecom_inf_30jours`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `v_datecom_inf_30jours` (
`commentaire` varchar(2000)
,`date` varchar(10)
,`numUtilisateur` int(11)
);

-- --------------------------------------------------------

--
-- Structure de la vue `genre_film`
--
DROP TABLE IF EXISTS `genre_film`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `genre_film`  AS  select `f`.`nomFilm` AS `nomFilm`,`f`.`photo_affiche` AS `photo_affiche`,`g`.`nomGenre` AS `nomGenre` from ((`film` `f` join `posseder` `p`) join `genre` `g`) where `f`.`numFilm` = `p`.`numFilm` and `p`.`numGenre` = `g`.`numGenre` ;

-- --------------------------------------------------------

--
-- Structure de la vue `recherche_artiste`
--
DROP TABLE IF EXISTS `recherche_artiste`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `recherche_artiste`  AS  select `a`.`nomArtiste` AS `nomArtiste`,`a`.`prenomArtiste` AS `prenomArtiste`,`a`.`photo_prof` AS `photo_prof`,`f`.`nomFilm` AS `nomFilm` from ((`artiste` `a` join `realiser` `r`) join `film` `f`) where `f`.`numFilm` = `r`.`numFilm` and `r`.`numArtiste` = `a`.`numArtiste` ;

-- --------------------------------------------------------

--
-- Structure de la vue `recherche_artiste_j`
--
DROP TABLE IF EXISTS `recherche_artiste_j`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `recherche_artiste_j`  AS  select `a`.`nomArtiste` AS `nomArtiste`,`a`.`prenomArtiste` AS `prenomArtiste`,`a`.`photo_prof` AS `photo_prof`,`f`.`nomFilm` AS `nomFilm` from ((`artiste` `a` join `jouer` `j`) join `film` `f`) where `f`.`numFilm` = `j`.`numFilm` and `j`.`numArtiste` = `a`.`numArtiste` ;

-- --------------------------------------------------------

--
-- Structure de la vue `recherche_com`
--
DROP TABLE IF EXISTS `recherche_com`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `recherche_com`  AS  select `c`.`commentaire` AS `commentaire`,`c`.`date` AS `date`,`u`.`prenom` AS `prenom`,`c`.`numFilm` AS `numFilm` from (`commentaire` `c` join `utilisateur` `u`) where `c`.`numUtilisateur` = `u`.`numUtilisateur` ;

-- --------------------------------------------------------

--
-- Structure de la vue `recherche_genre`
--
DROP TABLE IF EXISTS `recherche_genre`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `recherche_genre`  AS  select `g`.`nomGenre` AS `nomGenre`,`f`.`nomFilm` AS `nomFilm` from ((`genre` `g` join `posseder` `p`) join `film` `f`) where `f`.`numFilm` = `p`.`numFilm` and `p`.`numGenre` = `g`.`numGenre` ;

-- --------------------------------------------------------

--
-- Structure de la vue `recherche_pays`
--
DROP TABLE IF EXISTS `recherche_pays`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `recherche_pays`  AS  select `p`.`nomPays` AS `nomPays`,`f`.`nomFilm` AS `nomFilm` from ((`pays` `p` join `localiser` `l`) join `film` `f`) where `f`.`numFilm` = `l`.`numFilm` and `l`.`numPays` = `p`.`numPays` ;

-- --------------------------------------------------------

--
-- Structure de la vue `v_datecom_inf_30jours`
--
DROP TABLE IF EXISTS `v_datecom_inf_30jours`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_datecom_inf_30jours`  AS  select `commentaire`.`commentaire` AS `commentaire`,`commentaire`.`date` AS `date`,`commentaire`.`numUtilisateur` AS `numUtilisateur` from `commentaire` where to_days(current_timestamp()) - to_days(`commentaire`.`date`) <= 30 ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `aimer`
--
ALTER TABLE `aimer`
  ADD PRIMARY KEY (`numFilm`,`numUtilisateur`),
  ADD KEY `numUtilisateur` (`numUtilisateur`);

--
-- Index pour la table `artiste`
--
ALTER TABLE `artiste`
  ADD PRIMARY KEY (`numArtiste`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`numCommentaire`),
  ADD KEY `numUtilisateur` (`numUtilisateur`),
  ADD KEY `numFilm` (`numFilm`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`numFilm`),
  ADD KEY `numutilisateur` (`numutilisateur`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`numGenre`);

--
-- Index pour la table `jouer`
--
ALTER TABLE `jouer`
  ADD PRIMARY KEY (`numArtiste`,`numFilm`),
  ADD KEY `numFilm` (`numFilm`);

--
-- Index pour la table `localiser`
--
ALTER TABLE `localiser`
  ADD PRIMARY KEY (`numPays`,`numFilm`),
  ADD KEY `numFilm` (`numFilm`);

--
-- Index pour la table `noter`
--
ALTER TABLE `noter`
  ADD PRIMARY KEY (`numUtilisateur`,`numFilm`),
  ADD KEY `numFilm` (`numFilm`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`numPays`);

--
-- Index pour la table `posseder`
--
ALTER TABLE `posseder`
  ADD PRIMARY KEY (`numFilm`,`numGenre`),
  ADD KEY `numGenre` (`numGenre`);

--
-- Index pour la table `realiser`
--
ALTER TABLE `realiser`
  ADD PRIMARY KEY (`numArtiste`,`numFilm`),
  ADD KEY `numFilm` (`numFilm`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`numUtilisateur`),
  ADD KEY `numFilm` (`numFilm`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `artiste`
--
ALTER TABLE `artiste`
  MODIFY `numArtiste` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `numCommentaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `numFilm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `numGenre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `numPays` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `numUtilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `aimer`
--
ALTER TABLE `aimer`
  ADD CONSTRAINT `aimer_ibfk_1` FOREIGN KEY (`numFilm`) REFERENCES `film` (`numFilm`),
  ADD CONSTRAINT `aimer_ibfk_2` FOREIGN KEY (`numUtilisateur`) REFERENCES `utilisateur` (`numUtilisateur`);

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `commentaire_ibfk_1` FOREIGN KEY (`numUtilisateur`) REFERENCES `utilisateur` (`numUtilisateur`),
  ADD CONSTRAINT `commentaire_ibfk_2` FOREIGN KEY (`numFilm`) REFERENCES `film` (`numFilm`);

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`numutilisateur`) REFERENCES `utilisateur` (`numUtilisateur`);

--
-- Contraintes pour la table `jouer`
--
ALTER TABLE `jouer`
  ADD CONSTRAINT `jouer_ibfk_1` FOREIGN KEY (`numArtiste`) REFERENCES `artiste` (`numArtiste`),
  ADD CONSTRAINT `jouer_ibfk_2` FOREIGN KEY (`numFilm`) REFERENCES `film` (`numFilm`);

--
-- Contraintes pour la table `localiser`
--
ALTER TABLE `localiser`
  ADD CONSTRAINT `localiser_ibfk_1` FOREIGN KEY (`numPays`) REFERENCES `pays` (`numPays`),
  ADD CONSTRAINT `localiser_ibfk_2` FOREIGN KEY (`numFilm`) REFERENCES `film` (`numFilm`);

--
-- Contraintes pour la table `noter`
--
ALTER TABLE `noter`
  ADD CONSTRAINT `noter_ibfk_1` FOREIGN KEY (`numUtilisateur`) REFERENCES `utilisateur` (`numUtilisateur`),
  ADD CONSTRAINT `noter_ibfk_2` FOREIGN KEY (`numFilm`) REFERENCES `film` (`numFilm`);

--
-- Contraintes pour la table `posseder`
--
ALTER TABLE `posseder`
  ADD CONSTRAINT `posseder_ibfk_1` FOREIGN KEY (`numFilm`) REFERENCES `film` (`numFilm`),
  ADD CONSTRAINT `posseder_ibfk_2` FOREIGN KEY (`numGenre`) REFERENCES `genre` (`numGenre`);

--
-- Contraintes pour la table `realiser`
--
ALTER TABLE `realiser`
  ADD CONSTRAINT `realiser_ibfk_1` FOREIGN KEY (`numArtiste`) REFERENCES `artiste` (`numArtiste`),
  ADD CONSTRAINT `realiser_ibfk_2` FOREIGN KEY (`numFilm`) REFERENCES `film` (`numFilm`);

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`numFilm`) REFERENCES `film` (`numFilm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
