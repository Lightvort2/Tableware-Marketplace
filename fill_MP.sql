USE tableware_MP;

-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_23
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `buyers`
--

DROP TABLE IF EXISTS `buyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `buyers_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyers`
--

LOCK TABLES `buyers` WRITE;
/*!40000 ALTER TABLE `buyers` DISABLE KEYS */;
INSERT INTO `buyers` VALUES (1,'Bernardo','Romaguera','ghand@hotmail.com','4cf536a0936b14fee369234bc5827b38119ea980',1,''),(2,'Rafael','Greenholt','mohr.axel@gmail.com','970adac99ad0aa967c33382a5eb39d2f1a378a56',0,'\0'),(3,'Foster','Goyette','nienow.veronica@hotmail.com','69c5748f2aa0e080819ff8233288bd6d44bdb3c8',0,''),(4,'Florence','Fisher','bailey.dejah@yahoo.com','570fd67f3ea58dfd5b677ebbfebab10411768c90',1,''),(5,'Vallie','Brakus','hhackett@gmail.com','215fd3ff959770b9fd8b16da6ed8f4c0ad8fbc65',504,'\0'),(6,'Tressie','Hammes','moen.joany@gmail.com','981fe2c3450fea0ee2e81f687a82e17d9f2f804f',0,'\0'),(7,'Elise','Hyatt','kjerde@gmail.com','2c258437b2a092e7171082c5a72defc99aa72f74',88659,'\0'),(8,'Maurice','Lang','claud.wisoky@hotmail.com','85e70873abe29e2656ca94fb57ee9ea7f43e4bd4',25,'\0'),(9,'Edythe','Larson','klocko.ashtyn@yahoo.com','10f7084497c56b96f88f3762805fb981b7872514',0,'\0'),(10,'Santino','Langworth','wreynolds@brown.org','50c765dba8f1fb101bc2369621ad138d2238432c',57,'\0'),(11,'Hazle','Gerlach','reggie.stehr@yahoo.com','38238badef69554b17c9dc75a1dfe23b6bfbe1d7',57,'\0'),(12,'Jasen','King','acrona@jakubowski.com','537607f1e210eab95f215fff07f1c4dfaddc68d9',158,'\0'),(13,'Elias','Herzog','clarissa.stoltenberg@wolf.com','d6f11b4045c84e9b541bdca0bd83e91b16ea5321',504400,'\0'),(14,'Mariela','McKenzie','alysha.blick@pourosmurray.com','acccd8843678765b6b322f6046d8745d5f9c33f7',884,'\0'),(15,'Martine','Rempel','isaac22@roweweissnat.com','b1ff74c91784c09111771c35ef9c0b73be121524',792,'\0'),(16,'Emmett','Mayer','dbechtelar@ankundingwilderman.net','d7ec35200d9e2ca8be8a2d88e4869b26ebadfc3b',974407,'\0'),(17,'Lenna','Murphy','isobel.christiansen@yahoo.com','20f5a5cb5dfaa84d1f3ef659448512c67a126722',271,''),(18,'Zoey','Shields','nora.smitham@witting.net','ab5bcef11a2ad15e8f9cb09b3f2e410ca0e0cdea',0,'\0'),(19,'Dillan','Wyman','zack89@gmail.com','5a32e5107fb5d66cf0164f40d425b18513d90bb0',0,''),(20,'Leopold','Von','krystel52@hotmail.com','4918fb4b15329b75550f14310d7f345b377288e9',7605002937,'\0'),(21,'Germaine','Moen','qwaters@conn.net','57c2e76917e3f58408f9d429e5c8bf0477faa147',81,''),(22,'Adele','Rutherford','windler.guido@hotmail.com','782aef528872dd1805d20c11a119a2ae4f90365f',757,'\0'),(23,'Evalyn','Reilly','willms.myah@champlinlittle.info','6d0c09ca32a45f7f0256a45a96c6a3f7449b4e69',1,''),(24,'Sally','Breitenberg','alexandrea62@reinger.com','19afcf683a7a1bae058167d3b655c0c82b39db64',997146,''),(25,'Gaetano','Williamson','lquitzon@yahoo.com','40eab4896532395a81af53ecfd4a8576b5b473a7',36,'\0'),(26,'Carrie','Borer','ccruickshank@townekrajcik.info','2f504cbe7bb8ec56e91de41e782e431bcbc4d0df',0,'\0'),(27,'Madeline','Marks','jaclyn98@hotmail.com','d7714d09f1c4b7a5c94910878cc47f94949371d1',1,''),(28,'Jaydon','Kunze','ellen.huel@hotmail.com','f12c75970843137bcf30b33014bad2c87ad927e2',17,''),(29,'Rachael','Bernhard','nina99@cummerata.biz','922ebb17c417e37e47d52157939ad4093faa50a1',5592677511,'\0'),(30,'Francesco','Kuhlman','lblick@hotmail.com','334909162089dde69f4d8d69f99bd1743da04995',1,'\0'),(31,'Dandre','Schroeder','stanley.hamill@rueckerswift.org','af8aeaf18a7360dae185e7020a99a5501178f7c8',275,'\0'),(32,'Shane','Collins','corrine.altenwerth@reichel.com','1e4673d757807619cba328ff1679424601482499',6089685295,''),(33,'Lucie','Bode','maud.hamill@gmail.com','2cf20acc7c1c4be74efb4f4a9a8bfdf6696e13e1',748151566,''),(34,'Elvis','Gleason','darryl.kozey@gmail.com','5a86ef5e08a44eb7003a1ecfa2535bbd2c150ca9',492,'\0'),(35,'Gaetano','Bradtke','boehm.hattie@weimann.info','e0158c52f6be8836680811a95d88b537792d332b',1,'\0'),(36,'Tamara','Ryan','elta.hermann@fisher.info','8008763f5c06e488b7869cd78bc0490dcc614cc0',49,'\0'),(37,'Josefa','Wisoky','wcartwright@kiehn.com','2491a41fd0b3209e2ee156c05312126eb039e51e',1,'\0'),(38,'Deion','Pfannerstill','bud71@bosco.com','af0bff448100e59a993a72e96db8d83ae03aabd9',0,''),(39,'Davon','Borer','boyle.leo@pollich.com','9080844eda8a0eae7dd480ade95509e587961872',345232,'\0'),(40,'Sigurd','Turner','misael04@mayert.biz','a298b0e5d994224d47f417c0e833d4786db24433',39,''),(41,'Rose','Walker','chloe.pacocha@yahoo.com','89849835e01926731a07cce603da20e48bcb826d',0,'\0'),(42,'Tatyana','Krajcik','kertzmann.dejuan@yahoo.com','21906982c0940c1fce4a928a98f05e48ed0f37f8',1,'\0'),(43,'Lauryn','Tillman','erdman.porter@grimes.info','98f89f55a74bdde79aa290759454cfcac99af143',9,''),(44,'Aaron','Willms','harrison40@gmail.com','2d72c7a030c8d83a8850a97b7a3af56896001ae6',342848756,'\0'),(45,'Pinkie','Olson','lia.schinner@wiza.com','76c1a0e6e7f8c36c87fc95944f93ca86d364d780',1,''),(46,'Violet','Bartoletti','mturner@hotmail.com','178650d88c742df79c2b088a7fdc4bba45b659eb',758016,''),(47,'America','Schamberger','santiago31@mosciskiheaney.com','836db6c45f410a56bfe11e0164374aed45c8f0e2',45,'\0'),(48,'Sheila','Berge','walsh.carrie@hotmail.com','7eb7f810430c24799a08ce3a0d153602c0898fe2',0,''),(49,'Renee','Hills','gregoria.wolf@hotmail.com','19cd287c491e42f729a3530420bc6f7ba1f914c9',0,''),(50,'Kelli','Koelpin','lkling@murazik.com','2c233b0e62bcfb7d6020bfe28f70189e0f889090',498,'\0'),(51,'Ruth','Oberbrunner','winona.ondricka@marvinturcotte.info','57e56ca33b36d6cf580f11a67feb86de7463b328',1,''),(52,'Pierce','Jaskolski','fjerde@yahoo.com','13497962fdc1f8c72cbf4c390177d253505ac97e',0,'\0'),(53,'Jena','Heidenreich','tomas.friesen@murray.org','ff31b90dcb340ed8dc15ddd20896d6fd6ca048eb',7730139574,''),(54,'Adelia','Torphy','evalyn06@gmail.com','72519911aecc5861b398af0aef97be6b0f91e547',189162,''),(55,'Lulu','McCullough','carter.lucinda@pfannerstill.com','a417566e5be6062664d07adde463c4bef1d8620a',432667,''),(56,'Andres','Hand','fritsch.mikel@stiedemann.org','ce533572a2936835c28bd3b3fff22be40f6d9d68',847,'\0'),(57,'Carroll','Pfeffer','greta32@yahoo.com','fdce1aca1261f0eb69006036d7e5cdb19f1548d0',1096415359,''),(58,'Tess','Herman','gutmann.ross@kuvalis.net','a935a743b81a6cf45d11d5a6c65f6df9fd7277b5',507,''),(59,'Gabriella','Wilderman','golden60@hotmail.com','0962e03a0437c751c3c574f98b4743dd47edae07',1335156602,''),(60,'Enos','Gislason','ureichert@yahoo.com','debb27ea18df61164261c794f1964d680d101b44',1,'\0'),(61,'Ramiro','Fisher','beer.jeremy@pollichgrimes.org','ab1d54aa1ae7bd758793af42439d3a4abc7a36e0',0,''),(62,'Magnolia','Lockman','nkautzer@hotmail.com','5c4d571fb4cd6d17a19837ecfafca10a470cc248',835,''),(63,'Thalia','Hegmann','jaden.lakin@hotmail.com','de1406698556bde8939ca43525c038c1c4009998',160652,''),(64,'Talon','Bogan','layne.casper@hotmail.com','769b41353037bc348e0acacc89ac8ddffcda8fee',789,'\0'),(65,'Domenico','Fay','arvilla05@yahoo.com','5e95838f7ce7942f36cc37fd26611609cd7a6e21',3543658481,'\0'),(66,'Shad','Effertz','hickle.jackeline@ernser.com','2dcd5022efb10f6a528041703cb3472928a76658',434540,'\0'),(67,'Titus','Heathcote','adolph38@gmail.com','9576d11bd2972321a6d724a51c0a8ebc8c5570ae',548971,''),(68,'Vita','Von','larson.ezra@ziemann.com','c0a50f62957f5fbfe4dd2fb7991e8fc1bff8eb2d',0,'\0'),(69,'Ola','Morar','herman.nelda@yahoo.com','feb8e1b403a5aa487d07bded1b828b6c094a35ed',142404,'\0'),(70,'Sandrine','Schoen','vsauer@yahoo.com','dcf64d99afe7b8b52d1a8a9538a0fbdc8ef7e6a3',0,'\0'),(71,'Miller','Eichmann','leanna.brekke@hermann.org','fbfe0bb4b0581009964d08ca8b935301b3ea2846',44,''),(72,'Elyse','Olson','kathryn04@gmail.com','5bf5e7c8d6d5938b96fe14a25c456e9d1a08c2fa',0,''),(73,'Lee','Ernser','antoinette.welch@gmail.com','b59fa1063f7c6e68f04663a95cd69776bf359d2d',1,'\0'),(74,'Reanna','Koch','smitham.geo@yahoo.com','d7b69f1fc5cefb3d54958acedb7323851fa10445',1,'\0'),(75,'Karlee','Runolfsdottir','keven99@hotmail.com','c86db5b980dd48b053eca01043acf5b9f1a04768',35,''),(76,'Crawford','O\'Keefe','tfritsch@pfannerstillmoore.com','0515bf75b435e9d12d958c210c39d2c0bc73c689',0,''),(77,'Chanelle','Medhurst','ratke.elisha@hettinger.com','1bd1587bf8a2e7851b814b5c5d4341414b6ae1ab',4753465674,'\0'),(78,'Fausto','DuBuque','boyd.rosenbaum@gmail.com','9a819a17a8c38d429b176d760e772096972457b2',1,''),(79,'Laverne','McCullough','noemy.jones@gmail.com','e05a1a3fac5089eebc032cf38ab5672b63bd705d',1,''),(80,'Izabella','Thiel','yflatley@hotmail.com','058b5f83f1356815acd81fdb65cb371c7a815478',107368,'\0'),(81,'Savannah','Wuckert','deven67@gmail.com','edbfea804fd8de2073d2ae116785857fb5bd8315',357250,''),(82,'Marietta','Koch','reagan.bailey@hotmail.com','f0ac8dcb3f69c7e9ef2782026eb16134caa29eb3',617569,''),(83,'Dolly','Johnson','armando86@yahoo.com','ace84cc15eaa1e2f90221a43573eba388637aae1',72,'\0'),(84,'Mathilde','Swift','shayna85@stromangottlieb.com','1d7bc6afee92b4cb10c49a1a0e4aab7d2306b4ec',290557,''),(85,'Malachi','Green','nhoeger@swaniawski.com','7e09d6fb427f59d45a490186e6bee4f7ca8230bb',961,'\0'),(86,'Brook','McClure','karl22@stiedemann.com','68a6702d05d6dd00029218640f4cc57ac36b38d1',0,''),(87,'Della','Pollich','dorris.kutch@swift.biz','2447b47a2113e18340feb04b92ff0ba957ef7947',9865242992,''),(88,'Sydnie','Jones','kuhlman.magnus@nolan.biz','4a56867511ec655696c4ba3e13c5b70b740187a4',0,''),(89,'Darwin','Kirlin','stracke.brandi@hotmail.com','6a8d906200291e9badc439fa5173d5911a453cb8',10,'\0'),(90,'Bethany','Stark','samara.legros@hotmail.com','cc087977be071c9e6d059aaf27b4ad2c29e85afb',499389,'\0'),(91,'Loma','Hagenes','ali.barrows@pacocha.com','c907cd05c6e1c6ff72ccba997d98d652d4ee0e48',162807,'\0'),(92,'Janie','Stracke','flo09@gerlachschulist.com','e5d7a5a3ba41afd3e11928b32a918805a173e35b',261408,'\0'),(93,'Adrain','Ankunding','arturo.collins@hirtheritchie.org','944baa3640e0eba24d3d9fc6e1dd99a48dcb056a',1,'\0'),(94,'Sister','Stoltenberg','jking@jacobidouglas.info','aff460581f018a3884cf66e3e7e68be3adbdfd66',9030782958,''),(95,'Vaughn','Koelpin','gladys.grady@conroy.com','a4b874bb4a1115064e8b64e5b02b126785c838c4',1,'\0'),(96,'Gertrude','Pacocha','rhea.russel@yahoo.com','1a8749df5c8785ba46725697933a7363bcd3623f',4093084926,'\0'),(97,'Autumn','Ondricka','hschoen@hotmail.com','65cc652b300cfafb75ff2780f3659ebdff135ffa',518719,'\0'),(98,'Foster','Reichert','pstrosin@yahoo.com','4537d3be60ed5546b520d3e539e3709ed8536c79',1,'\0'),(99,'Britney','Doyle','carli62@yahoo.com','3dc58039be760bfa891efd224db04433809110af',641,''),(100,'Elian','Goldner','elnora.klein@macejkovic.com','c57cc8d504bfb4059697e5f166950054ac764f42',0,'');
/*!40000 ALTER TABLE `buyers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_form` enum('АО','ООО','ЗАО') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Организационная форма',
  `ITN` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ИНН',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `companies_name_ITN_idx` (`name`,`ITN`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Murphy-Keebler','ЗАО','','bart31@example.com','b73a62d8dfe69c7b0df0583c02edc87d39f41e01',0,'\0'),(2,'Haley-Stracke','ЗАО','8','gerlach.zackary@example.org','31a79172e00a20c03088eb90730e586799dd5595',306084,''),(3,'Shields Ltd','ООО','3','uquitzon@example.org','894bcf30c7db788f719106ec1e93dd98c573ee58',0,''),(4,'Lesch-Muller','ЗАО','3','johanna.braun@example.com','0c11865af6293c673ead7b756f61a5d3bfb5888c',0,'\0'),(5,'Williamson, Donnelly and Homenick','АО','3','brady58@example.org','72208a26338552a8cbe4fd00665df439c72f2ffb',0,'\0'),(6,'Hintz, Sanford and Reichel','АО','6','fward@example.net','d3e2dadf0bdc84f17c635009f583b373301adf22',1,''),(7,'Schultz, Blanda and Cremin','ООО','5','mariah64@example.com','7d5b47d98ac7e663823f23cff01802fd8282277b',1,'\0'),(8,'Wyman Ltd','ЗАО','2','gwiza@example.org','645e646d36cadfee42b7e659068c72b5296f2c86',298,''),(9,'Bartell, Klein and Trantow','ЗАО','5','gleichner.michale@example.org','dbfcb5cf966f6ed6b1d43a3c2716a4c45e157415',14,'\0'),(10,'Kuhic, Miller and O\'Connell','ООО','1','tod.davis@example.net','9c8453e40e6f1c55d7b0c98736c5ddeec9239747',700,'');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordered_products`
--

DROP TABLE IF EXISTS `ordered_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordered_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned DEFAULT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `total` int(10) unsigned DEFAULT 1 COMMENT 'Количество позиций посуды в заказе',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `ordered_products_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ordered_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Содержание заказа';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordered_products`
--

LOCK TABLES `ordered_products` WRITE;
/*!40000 ALTER TABLE `ordered_products` DISABLE KEYS */;
INSERT INTO `ordered_products` VALUES (1,91,100,8,'2018-09-06 12:23:50','1991-05-29 02:00:58'),(2,17,59,2,'1974-07-12 10:51:54','1987-05-29 23:56:27'),(3,75,77,4,'1974-07-02 02:55:10','1981-01-17 08:05:59'),(4,5,32,1,'1972-06-17 23:25:19','2021-07-28 06:46:33'),(5,53,33,6,'1981-08-30 11:05:59','1995-11-05 15:25:08'),(6,99,25,9,'2015-06-21 08:19:29','2009-01-28 06:54:02'),(7,70,92,5,'1999-12-23 21:50:49','1988-03-05 00:15:46'),(8,4,71,7,'1971-06-11 19:29:39','2008-01-02 04:25:35'),(9,8,100,9,'2017-07-02 06:09:32','2003-11-27 02:41:44'),(10,5,81,3,'1991-02-01 06:21:13','2006-07-29 22:16:30'),(11,55,85,3,'1970-05-31 23:05:56','2018-02-11 00:59:13'),(12,17,17,1,'2005-08-20 10:06:24','1998-04-02 04:58:51'),(13,7,64,1,'2016-12-26 01:07:19','2009-07-15 05:05:30'),(14,74,20,7,'2008-01-09 08:24:05','1983-09-06 04:07:51'),(15,63,42,5,'1973-07-27 16:39:02','2008-01-02 12:40:21'),(16,38,54,9,'1984-11-04 16:22:05','1976-07-31 15:23:27'),(17,42,54,3,'2002-08-26 21:50:04','2006-12-22 07:57:52'),(18,13,16,3,'1990-12-17 07:33:17','2015-02-17 16:33:44'),(19,30,18,1,'1993-01-19 09:06:45','2011-11-05 00:42:33'),(20,48,82,4,'1976-01-04 12:46:02','2003-08-10 11:45:50'),(21,50,46,1,'2011-09-01 18:01:18','1991-11-16 17:33:03'),(22,7,19,2,'1999-05-04 23:32:06','1988-10-17 22:39:23'),(23,38,10,4,'1971-06-03 00:07:51','2022-03-11 23:53:15'),(24,90,45,7,'1991-03-26 22:51:25','2016-07-20 19:55:37'),(25,10,94,4,'2020-11-13 21:45:43','1986-03-29 08:27:13'),(26,25,65,5,'2001-08-24 20:11:22','2009-06-27 17:04:52'),(27,79,42,2,'2006-03-20 14:35:10','1978-02-05 10:12:34'),(28,82,85,7,'1981-03-20 17:04:04','1992-12-01 20:43:52'),(29,5,55,7,'1982-06-12 12:58:14','1997-05-29 22:26:36'),(30,5,68,6,'1990-02-14 12:56:09','1996-10-10 22:02:58'),(31,96,43,3,'2017-03-23 00:25:22','1996-12-16 16:44:37'),(32,21,37,4,'2004-04-08 04:31:04','1994-12-02 23:12:00'),(33,96,33,2,'2012-09-06 06:42:13','1980-04-22 15:54:35'),(34,53,26,1,'1985-07-09 08:47:48','1975-10-10 18:15:13'),(35,50,100,6,'2006-01-03 22:11:43','1990-12-27 00:12:16'),(36,8,100,1,'1986-04-07 13:10:19','1980-10-29 16:49:46'),(37,46,14,9,'1971-10-25 08:43:38','2015-12-11 17:21:29'),(38,18,83,5,'1989-07-12 19:47:35','2005-07-26 06:42:36'),(39,24,7,1,'1980-05-14 12:32:09','1982-05-15 23:32:59'),(40,28,34,3,'1988-07-14 20:38:21','2002-10-17 20:26:15'),(41,1,53,6,'1988-07-12 13:34:35','2014-02-01 12:21:49'),(42,98,79,3,'1990-03-16 21:39:57','1989-12-07 07:38:28'),(43,94,79,1,'1972-05-14 20:34:36','1996-10-03 05:27:52'),(44,64,98,3,'2017-07-03 19:56:50','2000-05-13 14:51:11'),(45,34,69,3,'1971-05-27 19:25:50','2011-05-17 01:36:50'),(46,66,29,4,'2008-09-08 07:40:07','1970-07-17 04:38:51'),(47,11,86,2,'2001-05-17 00:48:18','1998-04-10 15:50:31'),(48,66,7,8,'2016-09-21 09:44:47','1989-03-06 16:59:37'),(49,19,19,9,'2021-06-27 20:29:15','2000-03-27 13:56:12'),(50,32,69,4,'2010-09-24 16:38:29','1999-05-24 16:18:48'),(51,19,40,8,'1984-10-18 00:27:31','1987-12-05 19:58:21'),(52,68,64,5,'1975-02-08 20:12:19','1980-11-20 00:01:28'),(53,53,86,1,'1982-05-20 17:03:10','1988-09-09 17:24:42'),(54,47,77,2,'1995-12-30 16:05:42','1990-11-20 23:51:36'),(55,93,75,3,'1985-02-21 13:50:09','1980-06-24 22:57:50'),(56,10,93,4,'2006-11-15 04:09:31','2022-04-11 10:34:24'),(57,27,8,6,'2013-05-23 17:28:15','1974-08-04 19:29:23'),(58,72,20,8,'1984-07-26 23:48:03','1971-12-15 19:59:11'),(59,87,36,5,'1973-12-12 07:02:02','1979-10-26 14:16:33'),(60,18,20,6,'1992-10-25 14:46:54','1978-01-03 22:05:02'),(61,4,84,5,'2022-03-03 04:56:28','1988-02-21 04:57:43'),(62,49,15,2,'2020-11-08 16:16:37','1996-05-25 09:58:18'),(63,69,15,9,'2012-05-09 02:15:28','1972-03-11 21:09:26'),(64,21,88,5,'1976-02-03 20:10:49','2008-11-30 23:37:34'),(65,33,53,6,'2008-04-25 01:50:11','2016-05-29 15:58:13'),(66,56,51,3,'1994-12-12 18:15:07','1982-10-21 22:10:46'),(67,92,23,9,'2003-02-03 19:39:53','1999-04-10 15:57:30'),(68,14,45,4,'1996-04-13 12:09:03','2010-10-23 14:44:22'),(69,8,61,6,'1993-09-29 12:12:05','1973-01-29 16:26:48'),(70,21,100,5,'1973-03-21 17:54:09','1972-05-17 16:06:36'),(71,35,31,6,'1973-06-01 06:13:46','1970-11-08 05:41:29'),(72,93,62,6,'1995-07-25 13:01:59','1970-03-07 15:27:33'),(73,38,64,9,'1983-03-28 14:41:25','1995-02-25 11:05:50'),(74,82,24,4,'1976-08-04 01:53:18','2016-06-23 11:05:28'),(75,99,99,2,'1972-05-23 03:47:52','1991-03-16 14:25:42'),(76,43,3,9,'2001-10-22 11:26:24','2011-01-26 08:46:43'),(77,83,91,2,'2013-04-10 15:11:35','2002-01-25 22:01:15'),(78,17,51,1,'2018-03-02 06:52:16','2009-06-02 08:28:01'),(79,5,37,8,'2021-10-05 12:09:13','1986-04-13 02:02:10'),(80,38,38,4,'1986-10-31 04:00:42','2005-04-25 10:28:28'),(81,89,94,8,'1979-04-17 07:26:21','1973-07-07 14:25:32'),(82,88,80,8,'1989-07-30 05:37:36','1970-12-20 14:49:32'),(83,16,2,6,'1983-01-08 11:27:49','1981-05-15 19:40:23'),(84,25,24,6,'1971-12-12 01:37:09','1975-01-03 20:37:23'),(85,63,45,3,'1990-09-10 21:24:46','2014-02-12 00:14:31'),(86,23,97,5,'2019-10-26 01:32:08','2004-06-23 04:20:59'),(87,75,16,6,'1991-10-19 23:18:08','2005-02-05 14:37:19'),(88,58,13,4,'1999-12-26 14:24:22','2012-08-15 14:13:35'),(89,79,39,9,'2010-06-06 01:58:45','1980-07-06 16:56:48'),(90,36,78,8,'1992-01-24 09:20:08','2020-02-14 21:03:11'),(91,38,79,6,'2004-10-02 14:22:17','2008-08-09 10:03:57'),(92,80,20,4,'1972-04-13 09:47:15','2003-10-31 05:21:38'),(93,70,96,2,'2002-03-11 16:17:41','1971-05-31 10:14:33'),(94,71,74,9,'2012-05-10 14:15:34','2019-08-11 18:04:56'),(95,32,9,6,'1979-09-13 13:38:52','1992-04-21 04:38:46'),(96,12,21,6,'2017-01-21 07:59:48','2014-07-04 05:39:07'),(97,2,99,3,'2015-11-15 10:20:01','2019-12-07 16:59:03'),(98,1,18,8,'1984-01-06 11:51:55','1977-06-30 00:55:52'),(99,1,25,1,'1993-11-15 16:31:40','2020-06-23 20:54:02'),(100,41,63,5,'2017-03-18 01:48:08','2005-04-13 03:10:39');
/*!40000 ALTER TABLE `ordered_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `buyer_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `index_of_buyer_id` (`buyer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Заказы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,85,'1980-12-19 02:03:56','2012-05-29 15:29:03'),(2,23,'2010-04-10 12:08:29','1998-02-07 11:13:47'),(3,2,'1994-05-19 00:27:13','2009-07-24 08:08:42'),(4,68,'1974-12-12 08:24:07','2013-10-03 13:39:13'),(5,91,'1994-02-07 22:28:47','1989-10-20 08:35:52'),(6,58,'1988-12-18 12:12:39','1985-08-04 10:34:11'),(7,21,'2019-07-31 03:40:15','1995-07-04 20:49:23'),(8,35,'2001-10-25 09:25:56','1971-09-26 03:28:30'),(9,53,'2009-08-07 08:28:29','1989-03-02 00:28:37'),(10,33,'2020-03-10 13:05:46','1976-04-19 15:46:00'),(11,9,'1978-03-26 00:44:09','1980-05-11 06:03:44'),(12,15,'2017-07-20 09:10:23','2011-06-01 13:45:37'),(13,20,'2003-02-19 08:26:27','2019-01-04 21:45:35'),(14,72,'1980-06-16 18:30:17','1994-07-25 16:47:32'),(15,25,'1998-12-05 18:44:02','2019-02-15 05:21:00'),(16,52,'2021-07-09 01:37:46','1972-12-08 23:05:49'),(17,88,'1992-01-03 03:55:41','2000-04-01 05:11:43'),(18,65,'1977-05-21 16:24:10','1981-05-09 04:24:40'),(19,52,'2001-02-15 00:48:24','2004-04-08 20:59:09'),(20,18,'1995-11-25 00:21:04','1982-09-22 16:55:05'),(21,61,'2008-05-14 13:11:25','2004-03-23 09:19:15'),(22,92,'2019-09-03 03:19:13','1978-10-29 21:00:03'),(23,61,'2004-01-23 03:36:44','1976-03-11 05:57:55'),(24,7,'1993-01-31 14:31:49','1983-05-31 10:56:21'),(25,76,'2002-12-07 13:39:48','2004-06-27 00:20:48'),(26,90,'1984-06-03 21:01:21','2018-09-10 20:53:17'),(27,26,'1994-02-25 08:05:46','1984-08-28 13:35:20'),(28,91,'1993-05-10 03:52:15','1974-07-08 20:52:43'),(29,83,'1986-02-01 09:38:36','2000-10-30 22:45:24'),(30,37,'1970-05-18 09:00:17','1975-05-28 00:47:55'),(31,31,'1981-11-14 12:48:15','1991-02-23 13:22:11'),(32,67,'2010-03-09 14:49:58','1998-04-30 13:47:36'),(33,59,'2021-08-21 23:49:57','2010-05-31 01:47:59'),(34,32,'2006-12-07 21:44:27','1974-01-12 04:07:57'),(35,35,'1981-03-18 16:45:13','2018-05-22 12:51:22'),(36,49,'2014-08-21 21:58:49','1983-10-05 14:35:37'),(37,90,'2011-08-24 22:32:28','1978-03-31 00:19:18'),(38,56,'2014-10-07 13:45:26','2007-01-19 02:59:25'),(39,84,'2020-10-26 22:39:52','2021-03-09 11:20:43'),(40,42,'2003-06-25 07:42:58','2011-07-18 11:42:02'),(41,89,'1987-09-26 22:55:29','1989-07-13 20:10:27'),(42,93,'1991-05-05 19:46:06','1997-06-08 03:32:14'),(43,57,'2020-12-26 10:44:01','1998-02-01 08:01:15'),(44,8,'1974-09-06 13:26:54','2013-09-10 20:12:16'),(45,64,'1999-12-08 00:06:02','2013-11-15 03:42:24'),(46,81,'1972-10-21 14:41:47','1979-04-16 07:58:17'),(47,59,'1986-04-25 01:15:41','2004-04-19 15:42:04'),(48,52,'1992-11-01 15:42:11','2012-12-03 03:08:36'),(49,46,'2016-07-09 21:40:18','1983-03-01 18:03:14'),(50,11,'2011-06-16 15:08:23','2005-08-01 09:33:04'),(51,70,'1974-01-22 04:55:54','2012-11-18 04:48:17'),(52,6,'1972-04-22 11:06:57','1978-07-29 20:13:00'),(53,2,'2009-08-25 01:28:25','1987-09-20 03:24:00'),(54,31,'1978-10-08 07:38:29','1974-09-14 03:15:34'),(55,13,'1983-04-04 14:28:11','2015-02-10 09:41:45'),(56,78,'1977-05-19 21:00:52','2002-10-19 04:43:48'),(57,21,'1978-06-07 06:24:10','2014-07-23 22:08:58'),(58,38,'1983-06-11 14:22:52','1987-04-11 03:05:13'),(59,69,'1972-09-10 07:11:58','1975-03-20 22:30:27'),(60,3,'1982-05-06 18:02:21','1994-06-04 07:55:25'),(61,74,'2015-06-08 17:33:46','2006-10-13 12:51:58'),(62,99,'1973-03-29 11:44:18','1986-02-16 19:20:06'),(63,70,'1973-07-18 14:18:38','2020-08-01 11:35:29'),(64,32,'2021-04-04 06:10:47','2016-11-14 10:32:57'),(65,30,'2014-03-23 07:24:17','2018-04-08 22:54:59'),(66,5,'1977-01-20 00:26:12','2001-12-31 08:42:45'),(67,81,'1973-10-02 15:38:29','2002-04-06 17:16:08'),(68,20,'1995-03-05 14:51:18','2019-11-21 18:31:03'),(69,61,'2017-08-03 12:45:00','1973-11-11 00:33:49'),(70,65,'1974-01-14 21:42:47','1992-01-22 20:47:01'),(71,61,'2018-06-05 23:20:10','1972-03-12 18:58:22'),(72,49,'2015-11-17 20:38:23','1991-06-21 11:58:01'),(73,57,'1987-05-11 17:11:28','2002-01-30 19:29:56'),(74,17,'1988-07-05 05:12:19','1978-08-28 06:53:18'),(75,56,'2004-09-26 09:47:42','2003-12-26 22:41:00'),(76,20,'1976-09-12 22:33:34','1986-09-06 14:59:08'),(77,98,'1997-02-17 09:57:30','1998-09-02 18:35:17'),(78,15,'2020-08-25 05:09:35','1981-08-20 21:54:43'),(79,72,'1981-08-13 23:00:10','1973-04-22 06:05:48'),(80,44,'1979-02-14 06:18:27','1979-04-14 17:30:33'),(81,25,'2019-12-26 16:25:48','1975-09-02 20:17:15'),(82,41,'1972-11-25 12:57:28','1985-10-30 17:30:36'),(83,50,'1981-10-15 11:48:35','2019-03-03 11:19:30'),(84,27,'2014-02-08 03:29:33','1982-10-03 08:33:38'),(85,71,'1990-08-08 23:29:05','1985-08-16 07:35:02'),(86,62,'1995-05-12 19:26:50','1995-05-17 17:21:50'),(87,4,'1993-03-28 03:27:04','1987-10-21 06:54:04'),(88,91,'2013-07-02 21:42:53','1981-01-31 06:12:09'),(89,100,'1981-11-22 04:15:01','1997-08-02 22:38:05'),(90,72,'1978-02-06 05:53:55','1976-09-16 17:23:09'),(91,94,'1998-06-20 21:27:06','2001-10-29 11:22:03'),(92,74,'2009-03-27 15:33:23','2012-07-16 17:08:52'),(93,71,'2011-02-04 07:37:18','2004-10-31 09:27:30'),(94,64,'1991-09-23 01:52:49','1978-04-21 15:05:18'),(95,6,'2011-07-21 01:01:04','2011-05-09 01:58:16'),(96,1,'2009-07-08 23:11:50','2010-12-19 05:09:21'),(97,69,'1980-08-12 23:58:57','1978-08-16 22:59:04'),(98,86,'2000-02-27 19:07:56','1984-06-26 17:57:34'),(99,20,'2002-02-24 17:34:24','2007-08-20 18:55:22'),(100,29,'1990-03-01 04:14:25','2005-02-12 18:01:46');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_characteristics`
--

DROP TABLE IF EXISTS `product_characteristics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_characteristics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material` enum('Фарфор','Стекло','Фаянс','Пластик','Металл','Дерево') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shape_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decor_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer_id` bigint(20) unsigned DEFAULT NULL,
  `manufacturer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity_ml` int(11) DEFAULT NULL,
  `diameter_mm` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `manufacturer_id` (`manufacturer_id`),
  CONSTRAINT `product_characteristics_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_characteristics_ibfk_2` FOREIGN KEY (`manufacturer_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_characteristics`
--

LOCK TABLES `product_characteristics` WRITE;
/*!40000 ALTER TABLE `product_characteristics` DISABLE KEYS */;
INSERT INTO `product_characteristics` VALUES (1,1,'ducimus','Фаянс','eos','tenetur',5,'Williamson, Donnelly and Homenick','dignissimos',4,7,'2021-01-02 13:21:09','1996-04-26 22:02:41'),(2,2,'rem','Стекло','ut','doloremque',4,'Wyman Ltd','et',3,7,'1973-11-20 06:49:58','2016-02-23 09:16:54'),(3,3,'rerum','Фаянс','in','libero',5,'Kuhic, Miller and O\'Connell','debitis',6,4,'2019-12-26 04:59:16','2012-04-10 18:48:14'),(4,4,'laborum','Дерево','molestiae','voluptatem',9,'Murphy-Keebler','id',6,7,'2016-11-18 10:25:23','1989-10-23 04:40:45'),(5,5,'aspernatur','Стекло','ut','qui',2,'Murphy-Keebler','omnis',5,1,'1989-10-24 20:55:47','1983-03-05 15:45:45'),(6,6,'non','Фаянс','fugit','in',4,'Hintz, Sanford and Reichel','rerum',9,8,'1977-05-25 11:34:55','2020-12-14 13:10:50'),(7,7,'suscipit','Металл','molestias','quos',2,'Schultz, Blanda and Cremin','rerum',8,7,'2020-08-24 04:44:03','1998-07-10 04:00:18'),(8,8,'aliquam','Стекло','nihil','temporibus',1,'Hintz, Sanford and Reichel','quod',9,2,'2003-05-28 23:52:00','2020-12-15 18:02:56'),(9,9,'et','Фаянс','ab','illum',4,'Haley-Stracke','id',1,9,'1985-02-03 04:22:17','1977-12-14 15:47:42'),(10,10,'ducimus','Стекло','dolorem','reprehenderit',9,'Lesch-Muller','incidunt',8,9,'1979-11-10 22:33:21','1993-04-25 20:13:21'),(11,11,'rerum','Стекло','quos','sit',1,'Williamson, Donnelly and Homenick','in',6,2,'2019-12-11 14:52:25','2021-08-08 04:16:39'),(12,12,'quia','Фаянс','maxime','amet',8,'Hintz, Sanford and Reichel','ratione',4,5,'2007-05-06 18:45:01','1992-11-05 03:47:40'),(13,13,'quaerat','Дерево','in','beatae',6,'Shields Ltd','voluptatem',7,8,'1976-03-24 02:43:19','1978-03-19 06:25:30'),(14,14,'veritatis','Пластик','eius','nihil',10,'Murphy-Keebler','distinctio',6,6,'2013-03-14 00:22:17','1977-03-18 01:03:09'),(15,15,'neque','Металл','est','rerum',1,'Shields Ltd','laboriosam',5,1,'2001-03-02 05:33:19','1972-04-30 13:33:23'),(16,16,'aliquam','Стекло','qui','accusantium',6,'Haley-Stracke','repellendus',3,9,'1971-10-07 23:21:48','2019-03-19 21:34:46'),(17,17,'et','Стекло','rerum','qui',5,'Hintz, Sanford and Reichel','at',4,1,'1993-03-02 09:56:13','1989-04-16 19:34:54'),(18,18,'veritatis','Стекло','aut','quibusdam',5,'Kuhic, Miller and O\'Connell','quam',3,9,'2007-12-06 18:57:21','2021-07-31 17:07:45'),(19,19,'deserunt','Дерево','sint','eum',8,'Shields Ltd','expedita',9,2,'1999-01-24 20:05:37','2003-02-16 19:41:00'),(20,20,'error','Пластик','consequatur','veritatis',10,'Schultz, Blanda and Cremin','omnis',1,6,'1988-11-08 04:55:52','2014-08-20 05:04:21'),(21,21,'repellendus','Стекло','delectus','nulla',7,'Schultz, Blanda and Cremin','officiis',6,5,'2018-10-11 07:20:19','1976-11-02 00:48:26'),(22,22,'quae','Фаянс','numquam','odit',3,'Lesch-Muller','fugit',4,7,'2016-10-21 16:50:08','2000-06-02 07:25:41'),(23,23,'similique','Пластик','ea','alias',9,'Wyman Ltd','deleniti',9,1,'1993-07-03 17:27:09','1980-07-19 11:29:55'),(24,24,'nam','Дерево','fugit','facilis',8,'Wyman Ltd','nulla',3,4,'2016-05-15 22:27:07','1978-11-12 02:31:27'),(25,25,'accusantium','Пластик','ratione','eum',3,'Wyman Ltd','ipsum',1,7,'1977-01-25 04:53:32','1975-09-17 20:31:28');
/*!40000 ALTER TABLE `product_characteristics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_types`
--

DROP TABLE IF EXISTS `product_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` enum('Комплекты плоские','Комплекты трехпредметные','Комплекты 4-хпредметные','Вазы декоравторативные','Сервизы чайные','Сервизы кофейные','Сервизы столовые','Бокалы с блюдцем','Бокалы без блюдца','Кружки','Чашки с блюдцем','Тарелки столовые','Вазы для конфет и варенья','Вазы для фруктов и морожного','Кофейники','Розетки','Сахарницы','Сливочники','Сухарницы','Чайники доливочные','Чайники заварные','Чайницы','Блюда столовые','Вазы для салфеток','Масленки','Салатники','Соусники') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Название товарной категории',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_types`
--

LOCK TABLES `product_types` WRITE;
/*!40000 ALTER TABLE `product_types` DISABLE KEYS */;
INSERT INTO `product_types` VALUES (1,'Салатники'),(2,'Сухарницы'),(3,'Чайники заварные'),(4,'Сервизы кофейные'),(5,'Вазы декоравторативные'),(6,'Комплекты 4-хпредметные'),(7,'Салатники'),(8,'Чайницы'),(9,'Сервизы столовые'),(10,'Блюда столовые'),(11,'Бокалы с блюдцем'),(12,'Вазы для фруктов и морожного'),(13,'Салатники'),(14,'Сервизы кофейные'),(15,'Соусники'),(16,'Вазы для салфеток'),(17,'Бокалы с блюдцем'),(18,'Тарелки столовые'),(19,'Комплекты плоские'),(20,'Чашки с блюдцем'),(21,'Бокалы без блюдца'),(22,'Соусники'),(23,'Кофейники'),(24,'Кружки'),(25,'Вазы декоравторативные');
/*!40000 ALTER TABLE `product_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Название',
  `desription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Описание',
  `price` decimal(10,2) DEFAULT NULL COMMENT 'Цена',
  `product_type_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `index_of_product_type_id` (`product_type_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Позиции посуды';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'saepe','Quod fugit amet numquam molestias et cumque recusandae quia.',159.28,1,'1996-06-11 09:49:30','1996-04-10 05:24:40'),(2,'voluptatibus','Eos aliquid voluptas ex ducimus qui laborum.',3890.34,2,'1977-06-26 19:11:21','2007-04-25 21:20:28'),(3,'laborum','Voluptate et sit rerum labore rem.',5003.53,3,'2021-03-13 11:14:38','1973-02-09 12:36:15'),(4,'autem','Voluptas non amet fuga enim temporibus.',3560.10,4,'1996-11-11 04:19:29','2020-09-01 07:04:54'),(5,'accusamus','Voluptatibus accusantium explicabo deleniti accusantium ad.',0.00,5,'2006-09-18 22:53:09','1998-12-24 11:02:33'),(6,'voluptatem','Ut nisi fuga quia veniam placeat mollitia ut.',525.63,6,'1984-08-05 16:38:50','2020-07-05 21:22:48'),(7,'voluptatibus','Rem voluptatem vitae debitis eius.',33772.80,7,'1999-03-03 19:05:31','1989-04-11 20:10:24'),(8,'et','Quae quod accusantium quibusdam.',5032224.35,8,'2020-12-25 19:07:41','1992-06-12 09:47:35'),(9,'error','Omnis similique sunt repellendus.',12388.71,9,'2001-09-15 10:45:26','1984-03-10 15:43:25'),(10,'laboriosam','Sit repellendus laboriosam sunt beatae vitae consequuntur libero laboriosam.',436974.46,10,'1991-04-06 13:06:19','2000-01-29 04:37:44'),(11,'porro','Quaerat corrupti rerum blanditiis omnis.',22620.00,11,'1986-09-27 01:49:19','1975-02-22 11:33:47'),(12,'non','Eum eum aut qui consectetur alias commodi hic.',6434030.76,12,'1973-02-20 04:17:50','2017-12-09 16:33:26'),(13,'quidem','Perferendis sed aut et possimus.',0.00,13,'2008-06-01 12:51:57','2008-03-16 20:55:03'),(14,'ab','Quis quia velit rem dolores perferendis non velit.',0.00,14,'1972-03-08 12:09:45','1991-10-30 21:01:27'),(15,'rem','Recusandae magnam non doloribus fugit saepe.',8.80,15,'1990-10-17 18:39:09','2001-02-10 16:04:47'),(16,'enim','Suscipit odit est maxime laudantium rem est et.',8251910.10,16,'2016-08-07 19:29:37','2002-04-24 12:51:02'),(17,'nam','Exercitationem eos quaerat hic nam.',99999999.99,17,'2017-10-11 14:37:01','2000-06-22 07:25:58'),(18,'hic','Iure voluptatibus rerum aut ut ad atque.',0.00,18,'1993-04-29 00:52:32','1986-09-16 19:57:15'),(19,'dolores','Dolorem autem voluptatibus voluptates voluptatem quia tempora ducimus non.',3.88,19,'1998-12-15 19:25:57','2011-02-26 05:23:04'),(20,'similique','Temporibus repellendus sit corporis est nihil.',3719891.68,20,'1985-06-19 19:26:58','2017-08-02 17:33:47'),(21,'tempora','Est alias eum sint ipsam porro saepe inventore.',1336776.23,21,'1989-03-01 10:31:21','1999-07-31 06:58:13'),(22,'dignissimos','Voluptatem deserunt harum consequuntur est quia.',49145.00,22,'2008-06-20 16:51:30','2006-06-24 11:14:03'),(23,'officia','Quibusdam exercitationem voluptatem natus nam ducimus.',73517099.00,23,'1994-08-22 04:51:04','2022-06-21 17:40:16'),(24,'rem','Aut aliquam impedit ipsum et aut similique amet.',2.00,24,'1999-04-03 11:11:26','1992-03-01 15:26:03'),(25,'quam','Illo accusantium consequuntur omnis libero nisi nisi.',13200.97,25,'2012-08-01 22:55:16','2019-03-04 12:05:41'),(26,'quis','Delectus exercitationem et totam et quisquam aut.',31970.96,1,'2009-06-01 09:16:17','1993-04-22 11:42:26'),(27,'repudiandae','Ad ea nostrum a cupiditate.',204.28,2,'1983-09-27 12:07:33','2006-12-10 15:56:43'),(28,'voluptatem','Aut omnis distinctio ut repellat et ipsam suscipit.',13638.18,3,'1994-07-25 02:17:16','1999-08-22 11:14:48'),(29,'nihil','Cupiditate excepturi illum eos neque consequatur minus.',0.20,4,'1988-05-27 21:25:40','2020-02-23 23:52:51'),(30,'repellat','Tenetur voluptatibus totam quis neque.',99999999.99,5,'1973-04-30 18:45:23','1998-04-02 08:55:39'),(31,'et','A aut facere sapiente veritatis beatae sit.',2867.32,6,'1976-11-16 20:28:01','1982-07-08 23:11:09'),(32,'iste','Quia enim dolores et quibusdam rerum.',0.00,7,'2007-12-01 02:04:55','1999-09-25 12:47:32'),(33,'possimus','Esse vel accusantium animi laborum corporis minima.',99999999.99,8,'1999-09-04 20:12:06','1984-05-24 05:40:15'),(34,'alias','Nihil ut et iusto iusto.',24081177.52,9,'1976-10-15 21:41:14','2011-01-02 10:26:01'),(35,'autem','Minus et nesciunt illo blanditiis ut deserunt qui architecto.',0.00,10,'2004-01-03 06:40:50','2011-12-03 02:13:16'),(36,'molestias','Fugiat laboriosam nobis praesentium animi voluptates.',31.85,11,'2020-11-19 04:33:19','2005-01-23 04:18:00'),(37,'quis','Aut facilis consequuntur vero eum magni.',1945535.00,12,'1982-10-26 00:03:31','1973-06-05 03:02:05'),(38,'aliquam','Explicabo commodi sit est at maiores qui.',3.00,13,'1983-03-02 06:37:29','2019-10-13 05:28:03'),(39,'reprehenderit','Neque excepturi quasi nobis soluta qui.',4.82,14,'2005-03-22 09:51:56','1995-09-16 23:05:31'),(40,'similique','Officia est minus enim minus et.',99999999.99,15,'1977-06-13 00:30:02','1986-08-03 16:18:19'),(41,'ea','Sit et facilis ut nihil.',162.47,16,'1977-07-11 09:13:11','1970-01-05 18:22:41'),(42,'error','Dolor odit quos consequatur eos.',12601.90,17,'2007-03-14 13:02:13','1983-03-27 09:49:13'),(43,'accusantium','Eligendi quae omnis aut consequatur.',5162.83,18,'2014-06-19 01:54:25','1972-12-09 10:24:33'),(44,'ea','Sint tempore et maxime ratione quaerat aut.',192490.58,19,'1989-06-10 10:19:55','1998-03-06 02:19:03'),(45,'aspernatur','Et consequatur totam quia.',1.00,20,'1978-01-10 20:35:51','1979-12-15 05:38:24'),(46,'rerum','Unde eveniet omnis corrupti blanditiis quo velit.',18735.15,21,'1980-07-07 20:56:42','1993-10-05 07:36:50'),(47,'sit','Voluptatem qui magnam et nostrum.',2678.00,22,'1977-11-20 17:27:36','1999-11-27 14:29:59'),(48,'illum','Sed dignissimos quis dolor sint fugiat magnam.',3478121.76,23,'2013-01-22 21:49:30','2017-01-21 06:55:44'),(49,'quos','Deserunt hic omnis consequatur.',0.00,24,'2001-06-25 08:17:48','2002-08-01 21:11:56'),(50,'facilis','Suscipit ut voluptatem corrupti ea sapiente eius ipsa.',7859403.00,25,'1987-12-24 01:52:12','2005-05-01 19:05:48'),(51,'ducimus','Accusantium ea et cumque.',5832983.67,1,'1970-05-29 13:15:02','2020-11-04 05:07:17'),(52,'at','In quis quasi qui ea corporis.',2962364.62,2,'2012-05-14 10:00:39','2007-12-28 10:10:54'),(53,'soluta','Quo quia maiores dolor error.',61152.33,3,'1992-01-16 18:00:51','1978-07-16 12:27:26'),(54,'consequatur','Molestias laborum tempore animi dolores ipsum quia.',1867009.50,4,'1976-03-04 09:19:41','1988-10-03 12:54:32'),(55,'suscipit','Et sunt et molestiae dolor ab voluptatem.',4215965.94,5,'1994-06-07 12:30:02','1976-09-02 01:25:30'),(56,'recusandae','Fuga culpa culpa quos ea.',0.00,6,'1977-12-11 18:28:53','1981-06-18 13:36:25'),(57,'sint','Explicabo quod vitae blanditiis quis.',346.55,7,'1993-07-06 11:03:45','1985-01-20 22:54:04'),(58,'neque','Accusamus rerum et hic praesentium expedita delectus odio.',0.00,8,'1998-03-31 04:31:24','1988-06-01 23:19:00'),(59,'nam','Et et repellat repellendus officiis aut animi veritatis ut.',18950.77,9,'1981-06-04 07:37:26','2014-11-23 14:26:22'),(60,'omnis','Totam dignissimos quaerat et aut voluptate.',7512594.86,10,'2020-09-30 04:40:44','1999-12-24 17:28:28'),(61,'voluptatem','Excepturi enim asperiores tempora consequatur.',0.05,11,'2005-10-05 05:22:06','1984-03-04 06:43:56'),(62,'deserunt','Et velit iure blanditiis vel voluptas ipsa.',0.78,12,'2001-08-21 22:58:00','1975-08-05 03:36:13'),(63,'et','Iste aspernatur deleniti eos vero sed.',366.15,13,'1976-08-03 04:40:01','2003-06-08 16:17:15'),(64,'doloribus','Quo eaque voluptatibus eveniet odio.',184.76,14,'2018-02-16 13:50:26','1974-11-09 06:28:12'),(65,'quaerat','Aspernatur minima qui vitae modi perferendis.',5893676.36,15,'2020-12-11 04:21:24','1975-09-11 03:55:23'),(66,'ut','Aliquid incidunt ratione quia.',376.55,16,'2005-04-18 00:21:05','2006-06-25 14:18:20'),(67,'dolores','Qui sunt voluptatibus quam nostrum nobis molestias.',0.86,17,'2018-04-24 17:58:52','1978-11-29 01:15:33'),(68,'iusto','Voluptatem asperiores veniam fugiat dolor consequatur voluptas ad nisi.',807723.70,18,'1981-08-28 09:07:48','1998-02-28 22:39:36'),(69,'rem','Cupiditate ut exercitationem dolor voluptatem.',41863709.93,19,'2009-05-13 07:39:40','2010-02-28 06:46:58'),(70,'et','Voluptas id dolor et ad dolorum.',24.90,20,'2022-08-10 23:03:40','1985-03-01 04:11:58'),(71,'veniam','Et dignissimos rerum ut rem.',9473201.42,21,'1984-08-18 01:50:03','2011-09-29 16:49:04'),(72,'facere','Beatae fuga ab dolores cupiditate odit quae aut.',1.00,22,'1974-03-17 10:44:41','2018-04-16 09:47:06'),(73,'excepturi','Animi eos repudiandae neque nobis.',0.00,23,'1986-03-08 09:24:52','1983-09-30 11:22:15'),(74,'in','Voluptatum praesentium eos accusamus suscipit doloribus quia.',99999999.99,24,'2020-11-30 14:12:48','1995-06-24 21:12:09'),(75,'quae','Maxime tenetur aliquam aliquam velit neque accusantium error.',64062097.06,25,'1974-02-22 23:04:18','1972-11-18 06:34:42'),(76,'unde','Velit quo aliquid voluptas iusto mollitia non.',15.25,1,'2017-08-07 14:18:43','1986-10-12 21:44:07'),(77,'iste','Ratione aperiam unde vel non omnis.',61419943.66,2,'1991-05-04 13:57:24','2014-12-13 13:40:00'),(78,'aliquam','Maxime omnis atque occaecati dicta dolor sit voluptatibus.',70989.25,3,'2011-09-25 01:47:09','1991-05-15 06:49:54'),(79,'eaque','Modi voluptates consectetur itaque possimus excepturi sed dignissimos eos.',150.68,4,'2015-03-25 03:05:59','2006-11-29 02:04:17'),(80,'sapiente','Quasi esse temporibus minus magnam eligendi commodi amet.',0.66,5,'1981-01-05 15:20:26','2017-03-30 06:19:33'),(81,'et','Saepe aut nostrum animi aut.',385.00,6,'1992-01-17 03:50:01','1989-02-14 05:29:07'),(82,'suscipit','Voluptatem exercitationem ipsam minus exercitationem.',0.03,7,'2003-07-21 06:07:25','1991-02-21 10:25:09'),(83,'id','Iste et molestiae veniam esse repellat quaerat.',13.00,8,'1988-01-04 07:57:02','2021-03-16 07:56:27'),(84,'voluptates','Similique labore nam voluptatum ad quibusdam.',0.00,9,'2005-07-07 06:13:38','1998-07-05 05:17:51'),(85,'ea','Tempore qui dicta numquam sit voluptatibus et.',102.44,10,'1988-08-09 05:09:11','1970-05-20 04:32:29'),(86,'quia','Voluptatibus quo ratione at deserunt dolor.',1.46,11,'1986-05-13 18:04:12','2006-09-04 06:36:23'),(87,'cum','Ratione accusantium saepe laudantium.',25393213.98,12,'1989-09-08 06:02:35','1984-01-22 16:25:43'),(88,'veritatis','Odio totam ea molestias ipsum sunt autem fugiat.',99999999.99,13,'2009-04-04 17:24:19','1994-12-14 04:16:05'),(89,'alias','Dolores facere sit qui voluptas possimus odit necessitatibus.',532.65,14,'1982-02-28 19:14:31','1993-03-26 07:19:40'),(90,'pariatur','Animi dolore laudantium molestiae voluptas soluta natus ut.',6.32,15,'1991-05-10 07:21:18','1972-11-11 20:25:17'),(91,'tempora','Fugiat amet quo commodi sit placeat quod.',3768421.12,16,'2015-08-24 01:57:33','2019-03-18 12:02:13'),(92,'sit','Quia quis voluptas repellat aliquam.',99999999.99,17,'2019-06-29 18:12:04','1999-04-10 18:33:16'),(93,'vero','Rerum ad sapiente excepturi dolores odit.',502324.77,18,'1999-04-21 03:29:11','2009-07-21 05:56:54'),(94,'modi','Assumenda ullam non consectetur neque.',59773.33,19,'1976-02-03 21:36:01','1970-01-07 00:21:51'),(95,'quod','Nesciunt velit architecto ducimus distinctio et laudantium quasi.',1118726.45,20,'2020-05-22 05:21:10','1982-07-04 16:40:41'),(96,'rerum','Voluptatem mollitia ut illo sed animi tempora.',4997250.98,21,'1982-08-19 04:55:43','1981-07-04 01:20:25'),(97,'maiores','Eaque quia error voluptatum beatae.',24149.01,22,'2020-11-04 11:58:56','2021-08-02 16:44:31'),(98,'corporis','Vel aut voluptatem illum adipisci repudiandae.',1491662.22,23,'1984-08-26 16:29:09','2020-02-29 00:53:39'),(99,'repellendus','Eligendi aut voluptatem ab recusandae sequi est.',180.19,24,'2016-06-12 02:18:52','1997-01-18 04:34:42'),(100,'ut','Occaecati totam autem eligendi nemo.',1610.57,25,'1982-02-20 21:42:51','1978-10-05 11:58:28');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `buyer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`buyer_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Название раздела сайта маркет-плейса',
  `product_section_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`(10)),
  KEY `product_section_id` (`product_section_id`),
  CONSTRAINT `sections_ibfk_1` FOREIGN KEY (`product_section_id`) REFERENCES `product_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-28 19:19:56

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'f','1975-12-29',1,'1981-04-26 22:44:33','Saint-Petersburg'),(2,'m','2005-11-22',2,'1989-09-03 09:08:22','Saint-Petersburg'),(3,'f','1974-03-11',3,'1973-11-15 21:03:20','Saint-Petersburg'),(4,'f','2018-11-01',4,'2021-05-06 22:15:44','Saint-Petersburg'),(5,'m','1991-07-12',5,'1996-07-30 20:37:07','Saint-Petersburg'),(6,'f','1983-10-07',6,'1991-05-27 20:02:09','Saint-Petersburg'),(7,'f','1972-08-20',7,'2013-01-31 21:51:34','Saint-Petersburg'),(8,'m','2001-02-02',8,'1984-08-16 17:53:19','Saint-Petersburg'),(9,'f','2002-06-18',9,'2002-02-14 00:22:01','Saint-Petersburg'),(10,'m','1977-07-31',10,'2012-06-10 18:13:58','Saint-Petersburg'),(11,'f','2001-02-05',11,'2013-09-10 00:40:14','Saint-Petersburg'),(12,'m','2003-06-08',12,'2015-06-30 10:42:36','Saint-Petersburg'),(13,'f','1987-09-17',13,'1983-02-07 10:31:52','Saint-Petersburg'),(14,'m','1995-04-14',14,'1972-03-08 22:40:59','Saint-Petersburg'),(15,'f','1993-08-31',15,'1987-12-05 06:10:19',NULL),(16,'m','2009-02-13',16,'2018-09-10 15:25:48',NULL),(17,'f','1981-11-14',17,'2002-09-11 00:34:59',NULL),(18,'m','2010-11-09',18,'1996-11-19 10:27:09',NULL),(19,'f','2020-01-19',19,'2007-08-22 11:14:14',NULL),(20,'m','1973-12-29',20,'1971-12-11 10:53:48',NULL),(21,'f','1999-05-01',21,'1990-07-23 01:23:22',NULL),(22,'m','1999-02-02',22,'2000-07-31 06:44:32',NULL),(23,'m','1970-12-08',23,'2018-09-14 13:24:04',NULL),(24,'m','1983-08-07',24,'1988-04-30 22:02:37',NULL),(25,'f','2021-09-09',25,'1988-02-25 12:44:01',NULL),(26,'m','1996-03-06',26,'1995-02-18 13:40:51',NULL),(27,'f','2004-08-07',27,'2016-01-25 12:04:40',NULL),(28,'f','2007-09-08',28,'1986-04-11 23:13:54',NULL),(29,'m','1998-06-08',29,'1999-01-11 06:53:38',NULL),(30,'m','2007-09-22',30,'2005-06-12 02:45:18',NULL),(31,'f','1984-03-23',31,'1980-02-15 05:28:39',NULL),(32,'f','1984-01-25',32,'1980-11-30 21:38:11',NULL),(33,'f','2020-05-15',33,'1992-10-30 12:24:31',NULL),(34,'f','1990-10-07',34,'1982-10-17 11:17:17',NULL),(35,'m','1991-01-02',35,'2001-08-07 22:19:31',NULL),(36,'f','1974-04-10',36,'1986-01-09 16:32:55',NULL),(37,'f','2011-06-14',37,'1984-11-19 06:58:07',NULL),(38,'f','1972-02-18',38,'1980-11-17 20:55:36',NULL),(39,'f','1995-09-24',39,'1981-08-26 05:40:39',NULL),(40,'m','1999-08-16',40,'2016-08-23 12:57:45',NULL),(41,'f','2006-07-11',41,'2015-01-24 00:16:21',NULL),(42,'f','1983-05-20',42,'2004-02-14 09:19:00',NULL),(43,'f','1984-09-26',43,'2004-08-11 03:31:55',NULL),(44,'f','2020-07-07',44,'2017-06-14 10:48:17',NULL),(45,'m','1994-08-02',45,'1999-10-19 12:50:35',NULL),(46,'m','2011-04-01',1,'2018-11-10 19:23:36',NULL),(47,'m','1987-02-12',2,'1992-03-01 03:39:08',NULL),(48,'m','2019-10-07',3,'1995-05-22 17:37:02',NULL),(49,'f','1977-06-05',4,'2005-01-08 20:51:23',NULL),(50,'f','2002-06-08',5,'1991-12-28 15:11:47',NULL),(51,'m','1995-08-19',6,'1985-03-17 15:26:17',NULL),(52,'m','2016-05-03',7,'2007-12-05 12:27:18',NULL),(53,'f','1978-10-10',8,'1973-11-16 22:14:57',NULL),(54,'f','2018-09-05',9,'2001-02-20 09:25:00',NULL),(55,'m','1983-03-05',10,'1971-06-10 07:22:12',NULL),(56,'f','1971-12-30',11,'2004-04-21 08:35:25',NULL),(57,'f','1971-03-14',12,'2003-08-18 17:07:55',NULL),(58,'m','2022-04-06',13,'2021-04-29 05:39:18',NULL),(59,'f','1985-06-10',14,'2020-07-14 10:18:57',NULL),(60,'m','2022-01-04',15,'2008-10-17 03:43:13',NULL),(61,'m','1976-06-03',16,'2019-09-17 13:09:39',NULL),(62,'m','2008-01-13',17,'1974-03-20 10:32:51','Moscow'),(63,'f','2015-02-21',18,'1985-11-10 16:56:36',NULL),(64,'m','1980-06-30',19,'1985-04-08 15:55:33',NULL),(65,'m','1989-03-19',20,'1989-11-14 00:49:32',NULL),(66,'m','1992-01-26',21,'1977-02-23 06:55:12',NULL),(67,'m','2012-07-13',22,'1970-06-24 14:07:56',NULL),(68,'m','2009-11-22',23,'1976-05-02 15:34:35',NULL),(69,'f','1977-03-31',24,'1977-10-22 07:39:00',NULL),(70,'f','1980-11-08',25,'1979-10-16 11:21:47',NULL),(71,'m','1988-10-08',26,'1983-05-09 08:18:25',NULL),(72,'m','1981-10-13',27,'1974-08-11 12:05:39',NULL),(73,'m','2019-03-13',28,'1970-05-05 01:31:28',NULL),(74,'f','2022-03-22',29,'1983-08-14 17:15:40',NULL),(75,'f','2010-05-15',30,'1998-07-21 20:55:12',NULL),(76,'m','2020-10-22',31,'2004-11-04 08:36:38',NULL),(77,'f','1979-09-25',32,'2006-01-13 09:28:44',NULL),(78,'f','1983-09-07',33,'2005-03-26 12:20:13',NULL),(79,'f','1999-07-31',34,'2005-06-26 13:47:43',NULL),(80,'m','1992-11-11',35,'1991-10-02 09:46:18',NULL),(81,'f','2010-07-08',36,'1989-06-12 13:27:42',NULL),(82,'f','2020-05-24',37,'2003-11-25 13:57:54',NULL),(83,'m','2005-05-03',38,'2008-09-05 22:34:52',NULL),(84,'f','1974-10-03',39,'1976-04-22 05:05:36','Moscow'),(85,'m','1995-02-13',40,'1972-08-28 14:12:42','Moscow'),(86,'m','1990-08-22',41,'2005-06-27 22:09:57','Moscow'),(87,'f','2021-07-21',42,'1975-09-14 18:23:53',NULL),(88,'m','1993-09-24',43,'1970-03-29 15:28:21',NULL),(89,'m','1984-10-23',44,'1996-06-19 17:45:59',NULL),(90,'f','2000-06-28',45,'2015-02-17 18:44:26','Moscow'),(91,'m','2006-01-30',1,'1995-09-04 10:02:03','Moscow'),(92,'m','2013-05-08',2,'1986-12-07 11:37:10','Moscow'),(93,'f','1993-05-13',3,'2014-08-30 17:13:05','Moscow'),(94,'f','1979-03-14',4,'1982-09-12 04:22:28',NULL),(95,'m','2006-06-19',5,'1993-10-31 23:24:50',NULL),(96,'f','2021-09-24',6,'1998-02-20 22:00:38',NULL),(97,'m','1986-02-21',7,'1999-11-29 13:13:30',NULL),(98,'m','1987-09-29',8,'2013-07-11 20:14:28',NULL),(99,'m','2019-11-27',9,'2009-04-01 02:26:39',NULL),(100,'f','1979-11-17',10,'1972-04-13 12:06:06',NULL);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

INSERT INTO sections VALUES (1,'Салатники', 1),(2,'Сухарницы', 2),(3,'Чайники заварные', 3),(4,'Сервизы кофейные ВХИ', 4),(5,'Вазы декоравторативные ВХИ', 5),(6,'Комплекты 4-хпредметные', 6),(7,'Салатники большие', 7),(8,'Чайницы', 8),(9,'Сервизы столовые', 9),(10,'Блюда столовые', 10),(11,'Бокалы с блюдцем ВХИ', 11),(12,'Вазы для фруктов и морожного', 12),(13,'Салатники малые', 13),(14,'Сервизы кофейные', 14),(15,'Соусники ВХИ', 15),(16,'Вазы для салфеток', 16),(17,'Бокалы с блюдцем', 17),(18,'Тарелки столовые', 18),(19,'Комплекты плоские', 19),(20,'Чашки с блюдцем', 20),(21,'Бокалы без блюдца', 21),(22,'Соусники', 22),(23,'Кофейники', 23),(24,'Кружки', 24),(25,'Вазы декоравторативные', 25);

INSERT INTO stores VALUES (1, 'Склад Murphy-Keebler', 1,'1980-12-19 02:03:56','2012-05-29 15:29:03'),
						(2,'Склад Haley-Stracke', 2,'1981-12-19 02:03:56','2012-05-29 15:29:03'),
						(3,'Склад Shields Ltd',3,'1981-12-19 02:03:56','2012-05-29 15:29:03'),
						(4,'Склад Lesch-Muller',4,'1981-12-19 02:03:56','2013-05-29 15:29:03'),
						(5,'Склад Williamson', 5, '1981-12-19 02:03:56','2014-05-29 15:29:03'),
						(6,'Склад Hintz, Sanford and Reichel',6,'1981-12-19 02:03:56','2022-05-29 15:29:03'),
						(7,'Склад Schultz, Blanda and Cremin', 7,'1981-12-19 02:03:56','2012-05-29 15:29:03'),
						(8,'Склад Wyman Ltd', 8,'1991-12-19 02:03:56','2012-05-29 15:29:03'),
						(9,'Склад Bartell, Klein and Trantow',9,'2001-12-19 02:03:56','2012-05-29 15:29:03'),
						(10,'Склад Kuhic, Miller and O\'Connell',10,'1981-12-19 02:03:56','2019-05-29 15:29:03');
						
INSERT INTO products_in_stores VALUES (1,5,98,419,'1992-01-04 09:33:08','2018-03-25 11:03:57'),(2,1,67,3194165,'1993-10-19 18:00:47','2014-03-07 11:25:03'),(3,2,43,662076,'1994-06-23 15:16:30','1988-12-14 20:38:03'),(4,3,36,8,'2011-02-16 10:41:02','2001-11-24 18:48:43'),(5,6,54,7,'2017-08-23 01:18:27','2012-09-18 05:16:58'),(6,10,41,0,'1974-11-08 13:27:10','1979-07-07 20:52:05'),(7,2,57,0,'1998-01-28 21:02:23','1972-11-15 17:28:19'),(8,8,94,0,'1979-10-14 13:28:22','2010-06-07 22:48:47'),(9,7,88,431,'1999-12-27 18:50:03','2022-05-14 07:34:49'),(10,9,27,0,'2017-05-25 00:12:30','1995-04-11 14:15:55'),(11,9,10,806,'2012-12-31 11:45:43','2010-10-22 03:42:33'),(12,8,37,0,'1971-06-17 13:06:24','2009-09-04 21:25:43'),(13,1,8,120532,'2004-11-10 21:29:47','1981-05-31 06:19:04'),(14,3,57,8132,'2009-06-21 23:02:15','2016-03-18 01:12:13'),(15,8,40,1,'2010-07-23 10:56:56','1999-11-05 08:12:41'),(16,10,15,1062760,'1972-11-18 13:18:30','2014-01-18 06:25:26'),(17,9,22,0,'2019-08-10 05:00:16','2006-10-09 07:08:12'),(18,10,59,906027770,'1975-03-21 06:46:02','2000-09-29 04:55:57'),(19,1,56,2,'1990-01-07 01:19:56','2021-08-06 23:17:42'),(20,8,15,519575174,'2020-09-21 00:20:55','2019-06-13 09:26:39'),(21,3,19,575784166,'1976-11-21 13:46:56','2021-07-11 11:16:36'),(22,3,65,4229,'1983-01-28 02:41:41','2002-08-01 17:04:00'),(23,1,66,23822,'1972-05-16 05:31:49','1992-05-29 19:40:10'),(24,5,33,259,'1983-07-23 03:45:40','1982-12-26 07:08:52'),(25,5,61,8,'2019-06-30 17:47:58','1980-02-01 14:18:36'),(26,6,49,0,'2000-12-30 02:26:43','1992-09-28 07:56:39'),(27,7,100,92,'2011-08-24 08:01:51','2000-12-27 06:06:30'),(28,7,81,809,'2018-05-24 13:18:44','2020-04-17 13:54:00'),(29,9,22,0,'1998-03-16 20:10:07','1985-08-27 19:09:29'),(30,8,51,18609226,'2001-07-17 08:49:37','1997-09-17 20:42:44'),(31,2,62,25,'1972-06-18 03:32:18','1979-12-27 11:12:32'),(32,10,76,872374751,'1984-10-21 06:54:46','2017-05-25 05:37:07'),(33,5,94,1876379,'2018-03-24 14:00:45','2001-10-18 19:14:46'),(34,6,16,45,'2012-07-08 03:47:32','1975-06-25 19:56:40'),(35,1,28,4241211,'2019-02-07 12:32:13','2008-02-29 19:03:52'),(36,1,30,986,'2009-06-13 21:37:34','1988-08-23 22:34:38'),(37,1,8,344141109,'2014-02-13 17:40:49','1978-12-21 19:51:36'),(38,2,16,847992,'1991-11-28 10:47:26','1981-04-17 23:43:01'),(39,1,18,7276215,'1982-07-20 02:13:43','1973-09-01 21:27:48'),(40,6,82,351,'1990-01-13 07:22:52','2011-09-22 04:10:26'),(41,6,79,9,'1986-05-10 05:24:10','2022-09-01 13:44:08'),(42,9,17,0,'1981-08-22 00:13:54','2016-11-30 19:10:50'),(43,10,45,345382,'1977-12-11 20:44:00','1993-02-12 11:03:13'),(44,3,72,9034,'2018-03-15 16:46:22','1978-01-21 18:49:27'),(45,8,19,570826,'2003-10-14 06:47:00','1971-04-05 11:18:42'),(46,7,52,1618098,'1992-06-27 19:32:59','2017-05-06 09:06:40'),(47,7,28,90105,'2012-04-16 21:42:20','1970-01-15 12:03:23'),(48,6,100,1343,'1995-07-11 01:13:45','2010-08-29 14:36:08'),(49,3,59,5264,'1997-08-25 03:11:26','1970-09-23 08:46:30'),(50,3,11,674,'2006-10-29 14:32:42','2000-02-24 02:44:59'),(51,7,99,380135,'1998-06-24 04:45:42','2016-02-22 09:55:53'),(52,5,31,38,'1988-05-21 22:21:46','2010-08-14 16:51:37'),(53,1,63,0,'2014-02-02 16:52:42','1993-05-28 21:55:01'),(54,5,25,425,'1993-08-11 03:46:17','2002-08-02 02:19:19'),(55,1,47,8,'2003-10-15 04:31:18','1981-03-23 21:18:17'),(56,1,44,774309658,'1990-10-15 05:20:05','1994-09-11 00:24:30'),(57,9,48,8331,'1998-11-15 12:47:49','1993-01-09 07:52:01'),(58,6,90,816602070,'1979-04-27 21:19:41','1992-09-11 20:45:06'),(59,9,13,645546,'1979-04-27 08:52:51','2009-05-19 16:34:29'),(60,5,60,369921,'2018-01-13 17:20:40','1985-08-12 11:59:19'),(61,9,21,3189675,'2008-02-06 04:50:06','2021-11-01 19:21:46'),(62,5,4,108381880,'1989-09-22 04:22:46','1993-09-13 20:20:10'),(63,7,38,3,'1989-09-22 04:58:51','1984-10-09 05:50:13'),(64,2,8,4,'1992-08-17 07:05:24','1976-07-16 18:44:36'),(65,1,48,6,'2005-03-18 03:57:31','2000-06-24 01:16:58'),(66,7,13,4073,'2013-07-26 23:06:35','1975-02-08 16:49:29'),(67,5,59,93276,'1991-02-16 00:24:02','2017-06-28 03:40:53'),(68,6,49,0,'1992-12-25 13:25:34','1980-03-06 21:50:24'),(69,5,28,65,'1975-09-11 21:38:56','2009-12-10 17:15:23'),(70,7,76,686266,'1979-11-19 06:10:23','1992-06-20 03:25:08'),(71,5,68,138054702,'2014-06-26 19:50:46','2017-03-24 01:08:19'),(72,1,62,61745,'1985-04-08 13:39:46','1991-12-13 23:43:55'),(73,8,99,955062526,'1997-04-30 08:10:47','2012-05-25 06:27:47'),(74,3,49,1703,'1976-06-28 11:40:49','2014-06-06 19:48:44'),(75,3,47,927585897,'2010-04-20 13:22:31','2017-07-09 05:42:15'),(76,5,38,17936,'1977-08-08 20:44:58','2011-10-13 03:24:32'),(77,8,5,8,'1988-10-30 02:50:13','1996-01-03 00:36:52'),(78,4,3,12,'1979-04-08 11:48:50','1991-05-26 17:09:51'),(79,9,44,7600077,'1970-10-20 00:02:26','2009-06-22 20:26:57'),(80,3,91,3,'1985-05-05 18:12:57','2005-10-13 01:05:37');

INSERT INTO discounts VALUES (1,17,39,0.50,'1984-12-07 08:01:12','2002-05-30 18:48:23','1986-03-16 21:06:02','1975-04-08 17:06:07'),(2,35,9,0.19,'1984-08-12 12:09:23','1981-01-14 01:27:12','1983-09-13 05:54:31','2015-12-18 21:25:02'),(3,92,80,0.22,'1992-02-12 00:45:49','1988-10-27 17:54:43','1975-06-03 00:14:27','2010-11-13 18:29:37'),(4,89,50,0.05,'1982-07-02 05:33:07','1998-02-21 20:50:19','2010-05-20 09:59:11','1998-07-04 18:04:19'),(5,35,11,0.05,'1992-04-05 23:23:20','2020-05-25 03:10:27','1999-07-09 17:27:36','1989-01-29 12:28:26'),(6,49,100,0.28,'1971-10-15 00:06:26','2000-03-12 05:27:36','2022-01-07 13:10:41','1978-03-29 13:05:47'),(7,38,34,0.26,'1976-01-03 07:59:52','1985-07-11 07:17:23','2020-06-06 18:35:30','2011-05-20 16:16:48'),(8,28,19,0.18,'2009-12-09 15:56:11','1972-01-19 11:11:10','1973-07-17 05:38:44','1975-06-15 10:08:59'),(9,78,90,0.26,'1976-01-04 00:52:15','1984-07-08 17:05:49','2019-09-07 07:28:57','1972-08-03 02:26:01'),(10,52,46,0.41,'1993-04-26 18:58:07','1975-05-27 19:28:15','2018-01-14 18:32:21','1971-08-08 10:10:13'),(11,25,44,0.32,'2008-03-30 15:42:26','1972-03-12 16:11:54','2005-03-07 13:25:48','1999-11-17 23:12:33'),(12,45,64,0.23,'2022-03-16 12:23:31','2007-07-04 05:16:27','2012-05-04 07:15:10','1990-10-30 09:32:54'),(13,21,71,0.08,'2017-04-17 06:41:31','2014-01-21 07:49:02','1999-03-11 22:55:14','1981-02-04 06:42:57'),(14,93,80,0.26,'1995-06-10 09:07:36','1975-12-26 00:08:21','1974-08-24 22:31:39','1996-07-21 15:24:02'),(15,11,32,0.15,'1983-09-03 21:32:17','1995-12-07 05:39:02','2005-11-22 03:27:43','2020-09-25 13:56:33'),(16,72,10,0.05,'1998-06-13 08:14:01','2006-02-07 20:49:22','2002-07-11 11:53:59','1999-03-30 13:47:04'),(17,81,56,0.06,'1970-09-23 06:07:53','2011-10-01 20:16:00','1985-04-21 14:23:52','1975-02-28 05:47:15'),(18,7,66,0.48,'1996-08-26 08:07:48','2004-01-27 02:03:43','2019-01-21 20:14:32','2020-07-24 17:06:36'),(19,63,19,0.21,'2022-01-06 01:04:12','2018-11-07 21:12:56','2015-07-08 18:26:12','1994-10-09 10:45:02'),(20,17,61,0.07,'2022-07-04 20:14:22','2008-08-08 10:28:57','2022-05-18 10:57:52','1976-08-05 00:31:45'),(21,95,82,0.22,'2022-08-20 10:14:42','2005-12-28 16:08:50','2009-01-04 00:39:12','1994-09-09 16:32:35'),(22,67,66,0.05,'1981-02-03 06:45:35','1973-01-15 10:04:47','2019-08-20 09:30:34','2015-06-05 21:35:51'),(23,52,93,0.41,'2010-07-07 12:10:37','1995-02-16 07:27:09','1997-09-08 12:00:05','2004-06-02 05:03:32'),(24,22,68,0.14,'1972-11-23 20:55:42','1974-05-20 23:08:32','1992-01-07 18:45:56','1976-05-09 19:35:42'),(25,23,56,0.05,'2009-03-29 10:13:42','1998-03-20 10:37:01','2011-01-11 11:14:32','1990-07-26 21:53:52'),(26,63,34,0.16,'1990-06-12 07:47:53','2012-02-26 07:17:57','1973-09-19 07:05:32','1975-09-26 09:27:17'),(27,25,18,0.12,'1981-10-07 11:34:00','1998-01-26 04:42:41','1970-03-21 08:48:34','1988-08-12 08:26:36'),(28,2,1,0.19,'1991-12-18 02:15:23','1978-08-30 01:25:51','2022-04-22 22:10:59','1978-10-15 12:38:07'),(29,59,34,0.15,'1992-02-06 05:09:38','1976-07-15 20:25:26','2018-07-10 22:38:04','2016-01-25 01:54:15'),(30,13,4,0.23,'1990-11-14 03:21:04','1970-09-13 10:04:14','1991-01-07 19:54:34','1997-12-20 23:49:58'),(31,37,78,0.17,'1978-03-19 17:23:51','1986-06-23 10:27:46','1996-08-22 10:13:35','2002-04-14 23:40:17'),(32,88,34,0.48,'2003-07-06 03:32:00','2012-01-03 23:10:35','2022-09-08 09:59:59','1986-07-02 07:34:31'),(33,22,54,0.09,'2017-05-12 20:04:27','1995-04-02 01:21:49','1997-10-18 11:34:59','1993-05-21 20:59:41'),(34,15,92,0.49,'1985-06-06 06:00:15','2006-01-19 02:46:55','2013-11-10 23:28:01','2006-08-28 01:54:12'),(35,26,52,0.34,'1993-11-17 12:27:35','2003-04-10 19:34:00','2008-03-21 03:45:30','1991-11-02 13:12:20');