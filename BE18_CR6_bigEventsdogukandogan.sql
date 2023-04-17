-- MySQL dump 10.13  Distrib 8.0.32, for macos12.6 (x86_64)
--
-- Host: 127.0.0.1    Database: BE18_CR6_bigEventsdogukandogan
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event_type_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `physical_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3BAE0AA7401B253C` (`event_type_id`),
  CONSTRAINT `FK_3BAE0AA7401B253C` FOREIGN KEY (`event_type_id`) REFERENCES `type_of_event` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,2,'Test Event 1','2022-03-04 06:06:00','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','https://images.unsplash.com/photo-1540575467063-178a50c2df87?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZXZlbnR8ZW58MHx8MHx8&w=1000&q=80',100,'jone.doe@mail.com','+4364923094','Eybnerstrasse 27','2620','Raglitz','https://www.wien.info/en/sightseeing/vision'),(3,3,'Test Event 2','2023-05-01 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet lorem vehicula, viverra urna lobortis, suscipit neque. Vestibulum dignissim mollis libero et rutrum. Nullam vestibulum sit amet lectus at placerat. Nunc consequat imperdiet congue. Fusce consectetur eros ipsum, a vehicula nisi pulvinar at. Sed in varius neque, a interdum dui. In sed nisl nec lorem fringilla lacinia a vel sapien. Pellentesque at commodo felis. Integer id tristique dolor. Vestibulum nec neque mauris. Aliquam congue sed massa non pulvinar.','https://img.freepik.com/premium-photo/business-entrepreneurship-symposium-speaker-giving-talk-business-meeting_386094-31.jpg',300,'bonbi@mail.com','0680 934 03 29','Spielerstrasse 78','8931','Mooslandl','https://www.wien.info/en/sightseeing/vision/worlds-fair-kunsthistorisches-museum-447360'),(4,4,'Test Event 3','2023-08-01 00:00:00','Fusce gravida porta neque eget convallis. Praesent cursus orci quis purus porttitor sagittis. Vivamus non massa eu elit aliquet gravida. Duis aliquam urna in enim scelerisque, in faucibus magna dapibus. Praesent quis consequat nulla, ac semper quam. Donec nec iaculis dolor. Mauris est lacus, fringilla sed risus eget, condimentum cursus nibh. Etiam a fermentum est. Nulla est orci, bibendum nec urna ac, iaculis pharetra arcu. Vivamus convallis ante nisi, id vestibulum sem feugiat eget. Vivamus nec aliquet justo. Curabitur at nisl gravida libero ullamcorper malesuada. Sed sed placerat sem. Integer a pulvinar nisi.','https://highlight.id/wp-content/uploads/2019/02/Highlight_tips-agar-event-sukses-kerja-sama-media-partnership-sponsorhip-persiapan-organizer-kegiatan_02-640x384.jpg',120,'event@mail.com','0680 659 79 41','Brixentaler Strasse 72','8966','GÖssenberg','https://symfony.com/doc/current/form/bootstrap5.html'),(5,2,'Test Event 3','2023-05-09 03:00:00','Integer tempus interdum felis, in finibus lectus finibus vel. Integer quis lorem ut nisl iaculis lacinia non quis felis. Ut facilisis quam sit amet efficitur scelerisque. Pellentesque eros nisi, interdum sed imperdiet in, aliquet vel metus. Donec nec purus diam. Nunc vel aliquam neque. Aenean malesuada blandit magna, sed egestas odio rutrum eget. Proin viverra nulla ligula, sit amet ornare magna tincidunt auctor. Fusce quis lectus consectetur ex sagittis sollicitudin.','https://www.parisevent-center.com/sites/default/files/2019-12/MEA1.jpg',234,'event3@mail.com','0688 500 80 97','Rosenstrasse 39','8750','WÖllmerdorf','https://www.wien.info/en/sightseeing/vision/worlds-fair-kunsthistorisches-museum-447360');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_of_event`
--

DROP TABLE IF EXISTS `type_of_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_of_event` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_of_event`
--

LOCK TABLES `type_of_event` WRITE;
/*!40000 ALTER TABLE `type_of_event` DISABLE KEYS */;
INSERT INTO `type_of_event` VALUES (1,'Music'),(2,'Sport'),(3,'Movie'),(4,'Theater');
/*!40000 ALTER TABLE `type_of_event` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-17 11:03:10
