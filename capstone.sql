-- MySQL dump 10.13  Distrib 8.0.42, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: order_db
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `added_at` datetime(6) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_qty` double DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'2025-05-24 20:12:04.481689',5798,2,1),(2,NULL,0,0,4),(3,NULL,0,0,5),(4,NULL,134990,1,6);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_product_details`
--

DROP TABLE IF EXISTS `cart_product_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_product_details` (
  `cart_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`cart_id`,`product_id`),
  CONSTRAINT `FKkk2b8o9toog2km09se73h3c14` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_product_details`
--

LOCK TABLES `cart_product_details` WRITE;
/*!40000 ALTER TABLE `cart_product_details` DISABLE KEYS */;
INSERT INTO `cart_product_details` VALUES (1,2,18),(4,1,17);
/*!40000 ALTER TABLE `cart_product_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product_quantity_map`
--

DROP TABLE IF EXISTS `order_product_quantity_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_product_quantity_map` (
  `order_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  CONSTRAINT `FK33j434wq9ep0gtthu1s1yxsu3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product_quantity_map`
--

LOCK TABLES `order_product_quantity_map` WRITE;
/*!40000 ALTER TABLE `order_product_quantity_map` DISABLE KEYS */;
INSERT INTO `order_product_quantity_map` VALUES (3,2,17),(3,2,18),(3,2,101),(4,1,17),(4,1,19),(5,1,17),(6,1,17),(6,1,19),(7,1,6),(7,1,17),(7,1,19),(8,1,6),(8,1,17),(8,1,19),(9,1,19),(10,1,17),(10,1,19),(11,1,17),(11,1,19),(12,1,17),(12,1,19),(13,1,6),(13,1,17),(14,1,17),(14,1,19),(15,1,6),(15,1,19),(16,1,17),(17,1,6),(17,1,19),(18,1,17),(18,1,19),(19,1,17),(20,1,6),(21,1,6),(21,1,19),(22,1,6),(22,1,17),(22,1,18),(22,1,19),(23,1,6),(23,1,17),(23,1,19),(24,1,6),(24,1,17),(25,1,6),(25,3,17),(26,1,6),(26,1,17);
/*!40000 ALTER TABLE `order_product_quantity_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_date` datetime(6) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (3,'2025-05-25 14:53:54.527053','CONFIRMED',NULL,NULL,269980,1),(4,'2025-05-26 02:21:25.831639','CONFIRMED',NULL,NULL,134990,4),(5,'2025-05-26 02:26:03.008562','CONFIRMED',NULL,NULL,134990,4),(6,'2025-05-26 03:04:19.544972','CONFIRMED',NULL,NULL,134990,4),(7,'2025-05-26 03:05:26.327972','CONFIRMED',NULL,NULL,29999.99,4),(8,'2025-05-26 03:09:25.577806','CONFIRMED',NULL,NULL,29999.99,4),(9,'2025-05-26 03:12:33.106106','CONFIRMED',NULL,NULL,94999.99,4),(10,'2025-05-26 03:35:38.731364','CONFIRMED',NULL,NULL,134990,4),(11,'2025-05-26 03:39:34.463923','CONFIRMED',NULL,NULL,134990,4),(12,'2025-05-26 03:49:26.010872','CONFIRMED',NULL,NULL,134990,4),(13,'2025-05-26 03:57:00.740334','CONFIRMED',NULL,NULL,29999.99,4),(14,'2025-05-26 04:06:38.987155','CONFIRMED',NULL,NULL,134990,4),(15,'2025-05-26 04:11:51.378966','CONFIRMED',NULL,NULL,29999.99,4),(16,'2025-05-26 04:16:57.488723','CONFIRMED',NULL,NULL,134990,4),(17,'2025-05-26 04:27:53.910635','CONFIRMED',NULL,NULL,29999.99,4),(18,'2025-05-26 04:35:50.588036','CONFIRMED',NULL,NULL,134990,4),(19,'2025-05-26 04:40:21.534819','CONFIRMED',NULL,NULL,134990,4),(20,'2025-05-26 04:43:54.809653','CONFIRMED',NULL,NULL,29999.99,4),(21,'2025-05-26 05:01:37.089749','CONFIRMED',NULL,NULL,29999.99,4),(22,'2025-05-26 05:04:01.151319','CONFIRMED',NULL,NULL,2899,5),(23,'2025-05-26 06:29:50.465536','CONFIRMED',NULL,NULL,134990,4),(24,'2025-05-26 11:58:46.840525','CONFIRMED',NULL,NULL,134990,4),(25,'2025-05-26 12:42:51.305430','CONFIRMED',NULL,NULL,719969.96,4),(26,'2025-05-27 08:10:29.062524','CONFIRMED',NULL,NULL,134990,4);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-27  9:22:04
-- MySQL dump 10.13  Distrib 8.0.42, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: product_db
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `prod_name` varchar(255) DEFAULT NULL,
  `prod_desc` varchar(255) DEFAULT NULL,
  `prod_cat` varchar(255) DEFAULT NULL,
  `make` varchar(255) DEFAULT NULL,
  `available_qty` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `wom` varchar(255) DEFAULT NULL,
  `prod_rating` double DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `date_of_manufacture` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (6,'Sony WH-1000XM5','Industry Leading Noise Cancellation Headphones','Electronics','Sony',20,29999.99,NULL,4.8,'https://m.media-amazon.com/images/I/71o8Q5XJS5L._SX679_.jpg','2024-11-01'),(17,'LG 55 inch OLED 4K TV','Smart TV with Alexa and WebOS','Electronics','LG',15,134990,NULL,4.8,'https://m.media-amazon.com/images/I/71hRcRIq5HL._AC_SR292,236_CB1169409_QL70_.jpg','2024-02-05'),(18,'Prestige Induction Cooktop','1900-Watt glass induction with soft-touch buttons','Kitchen','Prestige',40,2899,NULL,4.2,'https://m.media-amazon.com/images/I/71LBY5HSQfL._AC_UY436_FMwebp_QL65_.jpg','2024-01-22'),(19,'HP Victus Gaming Laptop','Intel i7, RTX 4060, 16GB RAM, 1TB SSD','Electronics','HP',25,94999.99,NULL,4.6,'https://m.media-amazon.com/images/I/71RXOnGBA5L._AC_UY436_FMwebp_QL65_.jpg','2024-04-15'),(20,'Nike Air Max 270','Men’s Running Shoes, Size 9','Fashion','Nike',0,9499.99,NULL,4.7,'https://m.media-amazon.com/images/I/31Wl08tyAFL._AC_UL640_FMwebp_QL65_.jpg','2024-02-25'),(22,'Samsung 183 L','4 Star, Digital Inverter, Direct-Cool Single Door Refrigerator','Kitchen','Samsung',0,1500,NULL,0,'https://m.media-amazon.com/images/I/71BJfGh0aRL._AC_UY436_FMwebp_QL65_.jpg','2025-08-10'),(23,'Pigeon by Stovekraft 5 Litre','Anodised Inner Lid Induction Base Pressure Cooker (Black) BIS Certified','Kitchen','Pigeon',0,1400,NULL,0,'https://m.media-amazon.com/images/I/81mpa8Qh5OL._SX679_.jpg','2025-08-10'),(24,'Butterfly Smart Wet Grinder, 2L (White)','Coconut Scrapper Attachment, Output - 150 W, Input 260 W','Kitchen','Butterfly',0,4000,NULL,0,'https://m.media-amazon.com/images/I/414JLnTlLnL._SS100_.jpg','2025-08-10'),(25,'Cookwell Air Fryer - 5L','Window - 1400W (Grey & Black)','Kitchen','CookWell',0,4000,NULL,0,'https://m.media-amazon.com/images/I/61+7QH6GMfL._SX679_.jpg','2025-08-10'),(26,'iPhone 16 Pro 256 GB','5G Mobile Phone with Camera Control, 4K 120 fps Dolby Vision and a Huge Leap in Battery Life. Works with AirPods; Black Titanium','Electronics','Apple',0,100000,NULL,0,'https://m.media-amazon.com/images/I/61Ony8rgwEL._SX679_.jpg','2025-08-10');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-27  9:22:04
-- MySQL dump 10.13  Distrib 8.0.42, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: user_db
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_type` int DEFAULT NULL,
  `is_logged_in` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Kunal','Winner','reagon@example.com','reagon123','password123','Mumbai, India',1,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_table`
--

DROP TABLE IF EXISTS `user_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `is_logged_in` bit(1) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_type` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_table`
--

LOCK TABLES `user_table` WRITE;
/*!40000 ALTER TABLE `user_table` DISABLE KEYS */;
INSERT INTO `user_table` VALUES (1,'Chennai','reagon@example.com','Reagon',_binary '','Kumar','secret123','reagon123',1),(2,'Ranchi','msd@gmail.com','MS',_binary '\0','Dhoni','msd07','12',0),(3,'Mumbai','sachin@gmail.com','Sachin',_binary '','Tendulkar','tendulkar123','sachin123',0),(4,'Bangalore','rahul@gmail.com','Rahul',_binary '','Dravid','rahul123','rahul123',1),(5,'England','sam@123','Sam',_binary '','Son','sam123','sam123',1),(6,'Kolkata','saurav@gmail.com','Saurav',_binary '','Ganguly','saurav123','saurav123',0),(7,'Mysore','mohan@gmail.com','Mohan',_binary '','Mohan','mohan123','mohan123',1);
/*!40000 ALTER TABLE `user_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-27  9:22:04
