-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: techhive
-- ------------------------------------------------------
-- Server version	8.0.40

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
  `idcart` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`idcart`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'GravaStar Keyboard and Mouse Combo',1200.00,'https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/gravastar.jpg'),(2,'Kumara RGB Mechanical Gaming Keyboard',1799.00,'https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/Kamura.jpg'),(3,'Steelseries 64871 Apex Pro TKL Wireless gen 3 ARGB',800.00,'https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/Steelseries1.jpg'),(4,'Gaming Laptop X1',16000.00,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop1%20main.webp'),(5,'Victus by HP Laptop',15000.00,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop2%20main.webp'),(6,'MSI Sword 17',32000.00,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop3.1.webp'),(7,'ViewSonic 19” VA1903H-2 Monitor',1399.00,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_1.1.webp'),(8,'AOC 20E1H 19.5\" HD Monitor',1499.00,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_2.1.webp'),(9,'Discover the Targus 24-Inch USB-C Monitor',2099.00,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_3.1.webp'),(10,'Logitech G402 Hyperion Fury Ultra-Fast Gaming Mouse',949.00,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_1.1.webp'),(11,' Razer DeathAdder Essential Gaming Mouse',1199.00,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_2.1.webp'),(12,'Corsair M65 RGB Ultra Wireless',2499.00,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_3.1.webp');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyboard_img`
--

DROP TABLE IF EXISTS `keyboard_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keyboard_img` (
  `id` int NOT NULL,
  `keyboard_img_id` int NOT NULL,
  `keyboard_img_url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyboard_img`
--

LOCK TABLES `keyboard_img` WRITE;
/*!40000 ALTER TABLE `keyboard_img` DISABLE KEYS */;
INSERT INTO `keyboard_img` VALUES (1,1,'https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/gravastar.jpg'),(2,1,'https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/gravastar2.jpg'),(3,1,'https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/gravastar3.jpg'),(4,2,'https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/Kamura.jpg'),(5,2,'https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/kamura2.jpg'),(6,2,'https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/kamura3.jpg'),(7,3,'https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/Steelseries1.jpg'),(8,3,'https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/Steelseries2.jpg'),(9,3,'https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/Steelseries3.jpg');
/*!40000 ALTER TABLE `keyboard_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyboards`
--

DROP TABLE IF EXISTS `keyboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keyboards` (
  `keyboards_id` int NOT NULL AUTO_INCREMENT,
  `keyboards_name` varchar(50) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `keyboard_rice` decimal(10,2) NOT NULL,
  `keyboard_img_id` int NOT NULL,
  PRIMARY KEY (`keyboards_id`),
  KEY `fk_keyboard_img_id_idx` (`keyboard_img_id`),
  CONSTRAINT `fk_keyboard_img_id` FOREIGN KEY (`keyboard_img_id`) REFERENCES `keyboard_img` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyboards`
--

LOCK TABLES `keyboards` WRITE;
/*!40000 ALTER TABLE `keyboards` DISABLE KEYS */;
INSERT INTO `keyboards` VALUES (1,'GravaStar Keyboard and Mouse Combo','[Membrane Gaming Keyboard]: 87-key wired keyboard with double-shot keycaps, 3 color backlight, 25 anti-ghosting keys for simultaneous presses, F1-F12 multimedia keys, and durability tested through over 10 million clicks for long-lasting use.\n[High-performance Wired Gaming Mouse]: Ambidextrous ergonomic design, 7 programmable buttons, 7 different RGB lighting modes, 1000HZ poll rate, DPI adjustable: 800/1200/2400/3200.\n[Non-Slip Gaming Mouse Pad]: High density & ultra-smooth fabric surface, non-slip rubber base, durable stitched edge, water-resistant & easy to clean',1200.00,1),(2,'Kumara RGB Mechanical Gaming Keyboard','High-quality mechanical switches.\nRGB full-color LED backlit keys\n Spill-proof design.\n Durable and sturdy construction for lasting durability.\n Ideal for gamers and typists who appreciate mechanical key switches.',1799.00,2),(3,'Steelseries 64871 Apex Pro TKL Wireless gen 3 ARGB',' SteelSeries HyperMagnetic Mechanical Hall Effect Switches. OmniPoint 3.0 Technology with Per-Key Customisable Actuation Points.\nPer-Key Prism RGB LED Lighting\n2 Year Limited Warranty',800.00,3);
/*!40000 ALTER TABLE `keyboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laptop_images`
--

DROP TABLE IF EXISTS `laptop_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laptop_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `laptop_image_id` int NOT NULL,
  `laptop_image_link` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laptop_images`
--

LOCK TABLES `laptop_images` WRITE;
/*!40000 ALTER TABLE `laptop_images` DISABLE KEYS */;
INSERT INTO `laptop_images` VALUES (1,1,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop1%20main.webp'),(2,1,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop1.2.webp'),(3,1,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop1.3.webp'),(4,1,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop1.4.webp'),(5,1,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop1.5.webp'),(6,1,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop1.6.webp'),(7,1,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop1.7.webp'),(8,1,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop1.8.webp'),(9,1,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop1.9.webp'),(10,2,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop2%20main.webp'),(11,2,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop2.1.webp'),(12,2,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop2.2.webp'),(13,2,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop2.3.webp'),(14,2,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop2.4.webp'),(15,2,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop2.5.webp'),(16,2,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop2.6.webp'),(17,3,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop3.1.webp'),(18,3,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop3.2.webp'),(19,3,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop3.3.webp'),(20,3,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop3.4.webp'),(21,3,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop3.5.webp'),(22,3,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop3.main.webp');
/*!40000 ALTER TABLE `laptop_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laptops`
--

DROP TABLE IF EXISTS `laptops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laptops` (
  `laptops_id` int NOT NULL AUTO_INCREMENT,
  `laptop_name` varchar(100) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `feature_1` varchar(50) NOT NULL,
  `feature_2` varchar(45) NOT NULL,
  `feature_3` varchar(45) NOT NULL,
  `feature_4` varchar(45) NOT NULL,
  `feature_5` varchar(45) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `laptop_image_id` int NOT NULL,
  PRIMARY KEY (`laptops_id`),
  KEY `in_laptop_image_id_idx` (`laptop_image_id`),
  KEY `fk_laptop_image_id_idx` (`laptop_image_id`),
  CONSTRAINT `fk_laptop_image_id` FOREIGN KEY (`laptop_image_id`) REFERENCES `laptop_images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laptops`
--

LOCK TABLES `laptops` WRITE;
/*!40000 ALTER TABLE `laptops` DISABLE KEYS */;
INSERT INTO `laptops` VALUES (1,'Gaming Laptop X1',' The Gaming Laptop X1 features high performance, powerful graphics, and a sleek design perfect for gamers. Equipped with the latest hardware and a stunning display, it\'s the ideal machine for your gaming needs.','16GB RAM','Intel i9 Processor','RTX 3070 GPU','1TB SSD','144Hz Display',15000.00,1),(2,'Victus by HP Laptop','Victus by HP Laptop 15-fb0017ni AMD Ryzen 5 5600H up to 4.20GHz Processor, 16MB Cache, 6x Cores, 12x Threads / 12GB DDR4 RAM / 256GB Ultra-Fast NVME SSD / 15.6\" Full HD 1920x1080 144Hz Anti-glare IPS-Level micro-edge Display / AMD Radeon™ RX 6500M 4GB GDDR6 Dedicated Graphics / Windows 11 Home 64bit / Dual Band Wi-Fi 6E Wireless LAN / Bluetooth 5.2 / HP Wide Vision 720p HD camera with temporal noise reduction and integrated dual array digital microphones / 2x SuperSpeed USB Type-A / 1x SuperSpeed USB Type-C / 1x HDMI 2.1 / 1x Headphone and Microphone Combo Jack / Integrated GbE LAN / 1x Multi-format SD Card Reader / No DVD Drive Included / White Backlit Keyboard / Bang & Olufsen, dual speakers, HP Audio Boost / Up to 8 hours Battery Life / Supports battery fast charge: approximately 50% in 45 minutes / 3 years HP warranty / HP Victus Ryzen 5 RX 6500M Gaming Laptop 7B1H2EA Deal [7B1H2EA/12GB]','12GB RAM','AMD Ryzen 5','AMD Ryzen 5 5600H up to 4.2GHz Processor','256GB Ultra-Fast NVME SSD','15.6\" FHD 144Hz Anti-glare IPS',15000.00,2),(3,'MSI Sword 17','MSI Sword 17 HX B14VFKG 14th Gen Intel® Core™ i7-14650HX up to 5.20GHz Processor, 30MB Cache, 16x Cores, 24x Threads / 16GB DDR5 RAM / 1TB Ultra-Fast NVMe SSD / 17\" QHD+ (2560x1600) 240Hz IPS-Level Display / NVIDIA® GeForce RTX™ 4060 8GB GDDR6 Dedicated Graphics / Windows 11 Home (64bit) / Intel® Wi-Fi 6E Wireless LAN / Bluetooth v5.3 / 720p HD Web Camera / 24-Zone RGB Backlit Gaming Keyboard / 3x USB Type-A / 1x USB Type-C (USB3.2 Gen2 / DisplayPort™/ Power Delivery 3.0) / 1x HDMI™ 2.1 / 1 x Headphone and Microphone Combo Jack / 1x RJ-45 / 2x 2W Speakers / 2 Years Warranty / MSI Sword 17 HX B14VFKG Intel® Core™ i7 RTX 4060 Gaming Laptop Deal [SWORD-17-HX-B14VFKG-260ZA] ','16GB DDR5 RAM ','Intel i7 Processor','14th Gen Intel® Core™ i7-14650HX','1TB Ultra-Fast NVMe SSD','17\" QHD+ (2560x1600) 240Hz IPS Display',32000.00,3);
/*!40000 ALTER TABLE `laptops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitors`
--

DROP TABLE IF EXISTS `monitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monitors` (
  `monitors_id` int NOT NULL AUTO_INCREMENT,
  `monitors_name` varchar(100) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `monitors_price` decimal(10,2) NOT NULL,
  `monitors_img_id` int NOT NULL,
  PRIMARY KEY (`monitors_id`),
  KEY `fk_monitors_img_id_idx` (`monitors_img_id`),
  CONSTRAINT `fk_monitors_img_id` FOREIGN KEY (`monitors_img_id`) REFERENCES `monitors_images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitors`
--

LOCK TABLES `monitors` WRITE;
/*!40000 ALTER TABLE `monitors` DISABLE KEYS */;
INSERT INTO `monitors` VALUES (1,'ViewSonic 19” VA1903H-2 Monitor','The ViewSonic® VA1903H-2 is a 19” (18.5” viewable) widescreen monitor that delivers value and performance for both home offices and small businesses. Equipped with HDMI inputs, a fast 5ms response time, and a 50M:1 Dynamic Contrast Ratio, the VA1903H-2 is great for a variety of applications ranging from viewing office documents to surfing the web. Featuring a hairline surface finish, this monitor looks great on any desktop. ViewSonic’s exclusive ViewMode™ feature provides intuitive presets for optimised screen performance in different applications. In addition, Flicker-Free technology and a Blue Light Filter help to eliminate eyestrain from extended viewing periods for improved productivity. An energy-saving Eco-mode reduces cost of ownership, making the VA1903H-2 a great choice for both government and education.',1399.00,1),(2,'AOC 20E1H 19.5\" HD Monitor','The budget-friendly monitor AOC 20E1H offers a high-quality display at an affordable price. With a 19.5-inch HD screen and 1600 x 900 resolution, it delivers clear and sharp images, making it ideal for everyday tasks like browsing, watching videos, or working on school projects.',1499.00,2),(3,'Discover the Targus 24-Inch USB-C Monitor','The Targus 24-Inch USB-C Monitor is an adaptable and lightweight display solution that connects effortlessly to your laptop or desktop. Featuring a high-speed USB-C connection, this monitor offers a convenient way to present stunning visuals while charging your device simultaneously with its 100W Power Delivery functionality.',2099.00,3);
/*!40000 ALTER TABLE `monitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitors_images`
--

DROP TABLE IF EXISTS `monitors_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monitors_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `monitors_img_id` int NOT NULL,
  `monitors_images_url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitors_images`
--

LOCK TABLES `monitors_images` WRITE;
/*!40000 ALTER TABLE `monitors_images` DISABLE KEYS */;
INSERT INTO `monitors_images` VALUES (1,1,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_1.1.webp'),(2,1,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_1.2.webp'),(3,1,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_1.3.webp'),(4,1,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_1.4.webp'),(5,1,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_1.5.webp'),(6,1,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_1.6.webp'),(7,1,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_1.7.webp'),(8,1,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_1.8.webp'),(9,1,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_1.9.webp'),(10,1,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_1.10.webp'),(11,2,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_2.1.webp'),(12,2,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_2.2.webp'),(13,2,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_2.3.webp'),(14,2,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_2.4.webp'),(15,2,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_2.5.webp'),(16,3,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_3.1.webp'),(17,3,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_3.2.webp'),(18,3,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_3.3.webp'),(19,3,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_3.4.webp'),(20,3,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_3.5.webp'),(21,3,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_3.6.webp'),(22,3,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_3.7.webp');
/*!40000 ALTER TABLE `monitors_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mouses`
--

DROP TABLE IF EXISTS `mouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mouses` (
  `mouse_id` int NOT NULL AUTO_INCREMENT,
  `mouse_name` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `mouse_price` decimal(10,2) NOT NULL,
  `mouse_images` int NOT NULL,
  PRIMARY KEY (`mouse_id`),
  KEY `in_mouse_images_id_idx` (`mouse_images`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk_mouse_images_id` FOREIGN KEY (`mouse_images`) REFERENCES `mouses_images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mouses`
--

LOCK TABLES `mouses` WRITE;
/*!40000 ALTER TABLE `mouses` DISABLE KEYS */;
INSERT INTO `mouses` VALUES (1,'Logitech G402 Hyperion Fury Ultra-Fast Gaming Mouse',' High-Speed Tracking: Fusion engine delivers one of the highest gaming mouse tracking speeds of up to 500 IPS. High-Speed Tracking: Fusion engine delivers one of the highest gaming mouse tracking speeds of up to 500 IPS.',949.00,1),(2,' Razer DeathAdder Essential Gaming Mouse','6400 DPI Optical Sensor - 5 Programmable Buttons - Mechanical Switches - Rubber Side Grips - Mercury White / RZ01-03850200-R3M1',1199.00,2),(3,'Corsair M65 RGB Ultra Wireless','Tunable FPS Wireless Gaming Mouse - Sub-1ms Slipstream Wireless Technology, 26,000 DPI Optical Sensor, Up to 120 Hours of Battery Life, 8 Programmable Buttons - White / CH-9319511-AP2',2499.00,3),(4,' dsefdfntgukjs','Tunable FPS Wireless Gaming Mouse - Sub-1ms Slipstream Wireless Technology, 26,000 DPI Optical Sensor, Up to 120 Hours of Battery Life, 8 Programmable Buttons - White / CH-9319511-AP2',899.00,2);
/*!40000 ALTER TABLE `mouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mouses_images`
--

DROP TABLE IF EXISTS `mouses_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mouses_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mouses_img_id` int NOT NULL,
  `mouses_img_url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mouses_images`
--

LOCK TABLES `mouses_images` WRITE;
/*!40000 ALTER TABLE `mouses_images` DISABLE KEYS */;
INSERT INTO `mouses_images` VALUES (1,1,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_1.1.webp'),(2,1,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_1.2.webp'),(3,1,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_1.3.webp'),(4,1,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_1.4.webp'),(5,1,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_1.5.webp'),(6,1,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_1.6.webp'),(7,2,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_2.1.webp'),(8,2,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_2.2.webp'),(9,2,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_2.3.webp'),(10,2,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_2.4.webp'),(11,2,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_2.5.webp'),(12,2,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_2.6.webp'),(13,3,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_3.1.webp'),(14,3,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_3.2.webp'),(15,3,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_3.3.webp'),(16,3,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_3.4.webp'),(17,3,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_3.5.webp'),(18,3,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_3.6.webp'),(19,3,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_3.7.webp');
/*!40000 ALTER TABLE `mouses_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `idproducts` int NOT NULL AUTO_INCREMENT,
  `products_name` varchar(200) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img_1` varchar(200) NOT NULL,
  `img_2` varchar(200) NOT NULL,
  `img_3` varchar(200) NOT NULL,
  PRIMARY KEY (`idproducts`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'GravaStar Keyboard and Mouse Combo','[Membrane Gaming Keyboard]: 87-key wired keyboard with double-shot keycaps, 3 color backlight, 25 anti-ghosting keys for simultaneous presses, F1-F12 multimedia keys, and durability tested through over 10 million clicks for long-lasting use.',1500.00,'https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/gravastar.jpg','https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/gravastar2.jpg','https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/gravastar3.jpg'),(2,'Kumara RGB Mechanical Gaming Keyboard','High-quality mechanical switches.',1799.00,'https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/Kamura.jpg','https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/kamura2.jpg','https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/kamura3.jpg'),(3,'Steelseries 64871 Apex Pro TKL Wireless gen 3 ARGB',' SteelSeries HyperMagnetic Mechanical Hall Effect Switches. OmniPoint 3.0 Technology with Per-Key Customisable Actuation Points.',800.00,'https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/Steelseries1.jpg','https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/Steelseries2.jpg','https://raw.githubusercontent.com/Abdulfelton/keyboards/refs/heads/main/Steelseries3.jpg'),(4,'Gaming Laptop X1',' The Gaming Laptop X1 features high performance, powerful graphics, and a sleek design perfect for gamers. Equipped with the latest hardware and a stunning display, it\'s the ideal machine for your gaming needs.',15000.00,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop1%20main.webp','https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop1.2.webp','https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop1.3.webp'),(5,'Victus by HP Laptop','Victus by HP Laptop 15-fb0017ni AMD Ryzen 5 5600H up to 4.20GHz Processor, 16MB Cache, 6x Cores, 12x Threads / 12GB DDR4 RAM / 256GB Ultra-Fast NVME SSD / 15.6\" Full HD 1920x1080 144Hz Anti-glare IPS-Level micro-edge Display / AMD Radeon™ RX 6500M 4GB GDDR6 Dedicated Graphics / Windows 11 Home 64bit / Dual Band Wi-Fi 6E Wireless LAN / Bluetooth 5.2 / HP Wide Vision 720p HD camera with temporal noise reduction and integrated dual array digital microphones / 2x SuperSpeed USB Type-A / 1x SuperSpeed USB Type-C / 1x HDMI 2.1 / 1x Headphone and Microphone Combo Jack / Integrated GbE LAN / 1x Multi-format SD Card Reader / No DVD Drive Included / White Backlit Keyboard / Bang & Olufsen, dual speakers, HP Audio Boost / Up to 8 hours Battery Life / Supports battery fast charge: approximately 50% in 45 minutes / 3 years HP warranty / HP Victus Ryzen 5 RX 6500M Gaming Laptop 7B1H2EA Deal [7B1H2EA/12GB]',15000.00,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop2%20main.webp','https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop2.1.webp','https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop2.2.webp'),(6,'MSI Sword 17','MSI Sword 17 HX B14VFKG 14th Gen Intel® Core™ i7-14650HX up to 5.20GHz Processor, 30MB Cache, 16x Cores, 24x Threads / 16GB DDR5 RAM / 1TB Ultra-Fast NVMe SSD / 17\" QHD+ (2560x1600) 240Hz IPS-Level Display / NVIDIA® GeForce RTX™ 4060 8GB GDDR6 Dedicated Graphics / Windows 11 Home (64bit) / Intel® Wi-Fi 6E Wireless LAN / Bluetooth v5.3 / 720p HD Web Camera / 24-Zone RGB Backlit Gaming Keyboard / 3x USB Type-A / 1x USB Type-C (USB3.2 Gen2 / DisplayPort™/ Power Delivery 3.0) / 1x HDMI™ 2.1 / 1 x Headphone and Microphone Combo Jack / 1x RJ-45 / 2x 2W Speakers / 2 Years Warranty / MSI Sword 17 HX B14VFKG Intel® Core™ i7 RTX 4060 Gaming Laptop Deal [SWORD-17-HX-B14VFKG-260ZA] ',32000.00,'https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop3.1.webp','https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop3.2.webp','https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop3.3.webp'),(7,'ViewSonic 19” VA1903H-2 Monitor','The ViewSonic® VA1903H-2 is a 19” (18.5” viewable) widescreen monitor that delivers value and performance for both home offices and small businesses. Equipped with HDMI inputs, a fast 5ms response time, and a 50M:1 Dynamic Contrast Ratio, the VA1903H-2 is great for a variety of applications ranging from viewing office documents to surfing the web. Featuring a hairline surface finish, this monitor looks great on any desktop. ViewSonic’s exclusive ViewMode™ feature provides intuitive presets for optimised screen performance in different applications. In addition, Flicker-Free technology and a Blue Light Filter help to eliminate eyestrain from extended viewing periods for improved productivity. An energy-saving Eco-mode reduces cost of ownership, making the VA1903H-2 a great choice for both government and education',1399.00,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_1.1.webp','https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_1.2.webp','https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_1.3.webp'),(8,'AOC 20E1H 19.5\" HD Monitor','The budget-friendly monitor AOC 20E1H offers a high-quality display at an affordable price. With a 19.5-inch HD screen and 1600 x 900 resolution, it delivers clear and sharp images, making it ideal for everyday tasks like browsing, watching videos, or working on school projects.',1499.00,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_2.1.webp','https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_2.2.webp','https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_2.3.webp'),(9,'Discover the Targus 24-Inch USB-C Monitor','The Targus 24-Inch USB-C Monitor is an adaptable and lightweight display solution that connects effortlessly to your laptop or desktop. Featuring a high-speed USB-C connection, this monitor offers a convenient way to present stunning visuals while charging your device simultaneously with its 100W Power Delivery functionality.',2099.00,'https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_3.1.webp','https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_3.2.webp','https://raw.githubusercontent.com/Abdulfelton/monitors/refs/heads/main/monitor_3.3.webp'),(10,'Logitech G402 Hyperion Fury Ultra-Fast Gaming Mouse',' High-Speed Tracking: Fusion engine delivers one of the highest gaming mouse tracking speeds of up to 500 IPS. High-Speed Tracking: Fusion engine delivers one of the highest gaming mouse tracking speeds of up to 500 IPS.',949.00,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_1.1.webp','https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_1.2.webp','https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_1.3.webp'),(11,' Razer DeathAdder Essential Gaming Mouse','6400 DPI Optical Sensor - 5 Programmable Buttons - Mechanical Switches - Rubber Side Grips - Mercury White / RZ01-03850200-R3M1',1199.00,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_2.1.webp','https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_2.2.webp','https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_2.3.webp'),(12,'Corsair M65 RGB Ultra Wireless','Tunable FPS Wireless Gaming Mouse - Sub-1ms Slipstream Wireless Technology, 26,000 DPI Optical Sensor, Up to 120 Hours of Battery Life, 8 Programmable Buttons - White / CH-9319511-AP2',2499.00,'https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_3.1.webp','https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_3.2.webp','https://raw.githubusercontent.com/Abdulfelton/mouses/refs/heads/main/img_3.3.webp');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idusers` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Matthew','Brown','trunkiemaster@gmail.com','$2b$10$0/jz8vhVangDUwnACJUDee1HJUgP/tSVRAEVrOCcnFn7J9alM0vOK'),(2,'Abdul','Felton','abdulfelton@gmail.com','$2b$10$MlkyYrh8fhM5z2H9CaVez.W/G3Z3sZpMCHRlylk5W/2s/bKRvTuM6'),(3,'surur','samaai','surursamai@gmail.com','$2b$10$SZmgHfNL5W.YEIiEdH2PQ.R85UGXIgePC3lAfX8uEOEcoOlr7uG76');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-06 16:15:22
