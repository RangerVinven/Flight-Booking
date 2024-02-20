-- MySQL dump 10.13  Distrib 8.2.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: FlightBooking
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `Booking`
--

DROP TABLE IF EXISTS `Booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Booking` (
  `bookingNo` int NOT NULL,
  `adultTicket` int DEFAULT NULL,
  `childTicket` int DEFAULT NULL,
  `concessionTicket` int DEFAULT NULL,
  `customerID` varchar(15) DEFAULT NULL,
  `flightID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`bookingNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Booking`
--

LOCK TABLES `Booking` WRITE;
/*!40000 ALTER TABLE `Booking` DISABLE KEYS */;
INSERT INTO `Booking` VALUES (109273,2,1,0,'GR01927','GD845\r'),(109274,0,1,2,'GR01930','DQ583\r'),(109275,1,3,0,'GR01933','QL015\r'),(109276,4,2,0,'GR01936','TY531\r'),(109277,2,0,0,'GR01939','JS391\r'),(109278,0,0,2,'GR01942','DC439\r'),(109279,3,1,1,'GR01945','YH827\r'),(109280,2,5,0,'GR01948','IK209\r'),(109281,5,8,2,'GR01951','KJ292\r'),(109282,1,2,1,'GR01954','HJ983\r'),(109283,3,3,1,'GR01958','LK001\r'),(109284,6,6,0,'GR01960','WS101\r'),(109285,0,0,2,'GR01963','DG199\r'),(109286,2,1,0,'GR01966','QH199\r'),(109287,0,0,4,'GR01969','SJ938\r'),(109288,0,3,2,'GR01972','KL720\r'),(109289,4,0,0,'GR01975','QV100\r'),(109290,3,6,0,'GR01976','UP984\r'),(109291,2,4,0,'GR01947','QZ583\r'),(109292,0,0,6,'GR01931','QH128\r'),(109293,12,8,0,'GR01934','QY171\r'),(109294,2,0,0,'GR01937','QS739\r'),(109295,1,0,2,'GR01940','DP198\r'),(109296,0,2,4,'GR01943','SA981\r'),(109297,8,0,0,'GR01946','JS177\r'),(109298,2,3,0,'GR01949','TY753\r'),(109299,2,1,0,'GR01952','CV981\r'),(109300,1,5,0,'GR01955','DQ182\r'),(109301,5,6,0,'GR01957','QV102\r'),(109302,2,7,2,'GR01961','QH199\r'),(109303,6,5,0,'GR01964','KK919\r'),(109304,2,0,0,'GR01967','NK923\r'),(109305,0,0,8,'GR01970','SW126\r'),(109306,0,0,4,'GR01973','DP198\r'),(109307,2,4,0,'GR01974','SD026\r'),(109308,1,3,0,'GR01971','GS740\r'),(109309,2,2,0,'GR01968','WS192\r'),(109310,4,5,0,'GR01965','KL118\r'),(109311,2,2,0,'GR01962','GR738\r'),(109312,0,3,1,'GR01959','QH128\r'),(109313,1,4,0,'GR01956','UP984\r'),(109314,1,1,0,'GR01953','SK000\r'),(109315,0,2,4,'GR01947','GD845\r'),(109316,0,4,2,'GR01947','IK209\r'),(109317,6,0,0,'GR01944','AY478\r'),(109318,2,5,0,'GR01941','RS403\r'),(109319,1,2,0,'GR01938','QH199\r'),(109320,3,3,0,'GR01935','WS101\r'),(109321,0,0,8,'GR01932','GS740\r'),(109322,1,1,0,'GR01929','LK001\r'),(109323,2,3,0,'GR01930','KJ292\r'),(109324,3,2,0,'GR01956','YH827\r'),(109325,1,5,2,'GR01974','DC439\r'),(109326,4,0,0,'GR01970','GS740\r'),(109327,4,3,0,'GR01927','JS391\r'),(109328,1,0,0,'GR01970','TY531\r'),(109329,2,2,0,'GR01971','QL015\r'),(109330,3,0,0,'GR01952','DQ583\r'),(109331,5,0,1,'GR01953','GD845\r'),(109332,2,1,0,'GR01963','GR737\r'),(109333,0,0,0,'GR01960','KL720\r'),(109334,4,0,4,'GR01973','DS126\r'),(109335,1,2,2,'GR01928','DG182\r'),(109336,2,0,0,'GR01935','QS730\r'),(109337,3,1,0,'GR01969','CV981\r'),(109338,0,0,0,'GR01966','HJ983\r'),(109339,5,3,0,'GR01963','JV902\r'),(109340,8,2,8,'GR01960','KL989\r'),(109341,4,3,0,'GR01957','QH182\r'),(109342,2,6,0,'GR01942','WS101\r'),(109343,1,5,0,'GR01934','DS129\r'),(109344,2,0,0,'GR01936','DG199\r'),(109345,0,0,2,'GR01933','SJ938\r'),(109346,3,1,1,'GR01930','GD845\r'),(109347,2,5,0,'GR01954','QV100\r'),(109348,5,3,2,'GR01951','UP984\r'),(109349,1,2,1,'GR01948','QZ583\r'),(109350,3,3,1,'GR01945','QH128\r'),(109351,1,0,0,'GR01969','TY531\r'),(109352,3,0,0,'GR01966','JS391\r'),(109353,2,0,6,'GR01963','DC439\r'),(109354,5,0,2,'GR01949','YH827\r'),(109355,0,1,1,'GR01946','WS101\r'),(109356,0,0,3,'GR01943','KJ292\r'),(109357,3,0,0,'GR01940','DQ182\r'),(109358,6,4,4,'GR01937','LK001\r'),(109359,2,2,0,'GR01934','AY478\r'),(109360,0,0,8,'GR01976','RS403\r'),(109361,3,1,0,'GR01928','QH199\r'),(109362,0,5,2,'GR01931','WS101\r'),(109363,4,2,2,'GR01972','GS740\r'),(109364,2,6,0,'GR01972','LK001\r'),(109365,8,2,3,'GR01932','QH182\r'),(109366,0,0,1,'GR01929','YH827\r'),(109367,0,0,5,'GR01930','DC439\r'),(109368,2,2,0,'GR01973','GS740\r'),(109369,8,1,0,'GR01931','HJ983\r'),(109370,2,2,0,'GR01974','TY531\r'),(109371,3,4,0,'GR01936','QL015\r'),(109372,4,2,0,'GR01964','DQ583\r'),(109373,1,0,0,'GR01955','GD845\r'),(109374,2,1,0,'GR01968','GR737\r'),(109375,4,1,1,'GR01971','KL720\r'),(109376,2,0,2,'GR01960','DS126\r'),(109377,5,0,0,'GR01949','QL015\r'),(109378,2,6,0,'GR01938','DQ583\r'),(109379,3,3,0,'GR01929','GD845\r'),(109380,0,0,6,'GR01950','GR737\r'),(109381,1,0,0,'GR01939','KL720\r'),(109382,3,2,0,'GR01940','DS126\r'),(109383,4,3,0,'GR01951','DG182\r'),(109384,1,2,0,'GR01962','QS739\r'),(109385,2,3,0,'GR01975','CV981\r'),(109386,0,4,2,'GR01928','IK209\r'),(109387,2,1,0,'GR01927','JV902\r'),(109388,8,2,0,'GR01974','KL989\r'),(109389,2,4,2,'GR01971','QH199\r'),(109390,1,2,0,'GR01959','WS101\r'),(109391,1,5,0,'GR01973','DS129\r'),(109392,4,6,0,'GR01928','DG199\r'),(109393,0,1,1,'GR01948','SJ938\r'),(109394,10,0,0,'GR01945','KJ292\r'),(109395,0,2,3,'GR01939','QV100\r'),(109396,0,1,2,'GR01936','UP984\r'),(109397,1,1,0,'GR01968','QZ583\r'),(109398,2,0,0,'GR01956','KK919\r'),(109399,4,0,0,'GR01950','TY531\r'),(109400,0,2,1,'GR01958','JS391\r'),(109401,2,1,0,'GR01965','DC439\r'),(109402,2,3,0,'GR01952','KL989\r'),(109403,0,0,2,'GR01944','WS101\r'),(109404,4,4,0,'GR01927','KJ292\r'),(109405,0,0,2,'GR01933','HJ983\r'),(109406,4,3,0,'GR01976','QH182\r'),(109407,9,0,0,'GR01930','AY478\r'),(109408,1,2,0,'GR01952','RS403\r'),(109409,0,0,2,'GR01974','QH199\r'),(109410,4,0,0,'GR01962','WS101\r'),(109411,3,0,0,'GR01929','GS740\r'),(109412,2,1,0,'GR01976','QH128\r'),(109413,8,0,0,'GR01955','QV102\r'),(109414,2,1,0,'GR01975','GD845\r'),(109415,3,2,0,'GR01968','KK919\r'),(109416,4,0,2,'GR01933','SK000\r'),(109417,0,2,2,'GR01935','KL720\r'),(109418,2,3,0,'GR01974','CV981\r'),(109419,4,4,0,'GR01970','QH199\r'),(109420,0,2,1,'GR01938','JV902\r'),(109421,5,0,0,'GR01940','KL989\r'),(109422,2,0,0,'GR01967','DB191\r');
/*!40000 ALTER TABLE `Booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `customerID` varchar(8) NOT NULL,
  `forename` varchar(20) DEFAULT NULL,
  `surname` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `town` varchar(25) DEFAULT NULL,
  `postcode` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES ('GR01927','Grant','Reid','12 Dover Heights','Dunfermline','KY7 8HQ\r'),('GR01928','Teressa','Jones','20 High Street','Glasgow','G50 9BH\r'),('GR01929','Jim','Kerr','126 George Street','Manchester','M18 7AP\r'),('GR01930','Steven','Johnstone','24 Dundas Street','Lerwick','ZE2 8QP\r'),('GR01931','Tisa','Sullivan','11 Edinburgh Road','Edinburgh','EH2 9XC\r'),('GR01932','John','Smith','12 Perth Street','London','SE1 2RE\r'),('GR01933','Shane','Brown','7 McLeod Street','Glasgow','G44 2SD\r'),('GR01934','Kim','Pettigrew','2b McArthur Grove','Leven','KY12 8DS'),('GR01935','Martin','Daly','17 St. John Street','Prestwick','KA9 1ZA\r'),('GR01936','Pamela','Nowak','8 Halo Avenue','Edinburgh','EH4 8MN\r'),('GR01937','Rudo','Hyper','16 Hay Drive','Birmingham','B1 1AA\r'),('GR01938','Wendy','Russell','72 Sutherland Way','Belfast','BT1 1BT\r'),('GR01939','Lesley','Wallace','144 Western Way','Liverpool','L1 0BG\r'),('GR01940','Ian','Hunter','90a Main Street','Dalkeith','EH1 8LM\r'),('GR01941','Ali','Hussain','12/6 Salisbury Heights','Edinburgh','EH2 8BC\r'),('GR01942','Hasan','Abbas','88 Sighthill Drive','Glasgow','G42 9RS\r'),('GR01943','Jacek','Anderson','16/5 Argyle Place','Motherwell','ML1 2BX\r'),('GR01944','Robbie','Durkin','22 Henderson Row','Aberdeen','AB10 2AP'),('GR01945','Greg','Watson','64 Bleeker Street','Inverness','IV1 8HN\r'),('GR01946','Mirka','Kowalski','91 Fillian Way','Glasgow','G30 2KM\r'),('GR01947','Paul','Scrimgeour','2 Napier Way','Cambridge','CB1 2LS\r'),('GR01948','Steven','Coyle','99 Mosley Street','Leeds','LS3 3EX\r'),('GR01949','Kevin','Mckay','12 Sackville Street','Glasgow','G54 9SD\r'),('GR01950','Stephen','McIntyre','18 Connaught Close','Forfar','DD8 2SK\r'),('GR01951','Tahir','Baqri','45 Cheetham Hill Road','Edinburgh','EH3 9UJ\r'),('GR01952','Linda','Wanecki','1 Balfe Street','Inverness','IV1 9KA\r'),('GR01953','Ewan','Greally','109/1 Harecourt Road','Devon','EX10 9MN'),('GR01954','Alison','Valette','2/2 Penley Court','Kilmarnock','KA1 1AL\r'),('GR01955','Anja','Cessford','10b Chichester Street','Aberdeen','AB10 7TH'),('GR01956','Ayesha','Modha','211 Priestley Street','London','W3 8GS\r'),('GR01957','Cerdiwen','Cattanach-Chell','3/2 Collingwood Place','Edinburgh','EH1 5ND\r'),('GR01958','Paul','Lewoski','19/4 Plender Street','Falkirk','FK2 9LQ\r'),('GR01959','Daniel','Singarajah','26 Skelladale','Stirling','FK7 4EF\r'),('GR01960','Desislava','Grozdanic','18 Plender Place','Manchester','M1 9JD\r'),('GR01961','Jules','Metcalf','87 Murphy Hill Rd','Liverpool','L1 8YH\r'),('GR01962','Krisztina','Freise','21 Smithy Street','Ely','CB6 7WG\r'),('GR01963','Liz','Hamadi','123 Shetland Road','Bolton','BL1 2BT\r'),('GR01964','Layla','Zaborszky','2/1 Orkney Street','Glasgow','G14 0CH\r'),('GR01965','Matthew','Somerville','10 Bearsden Road','Edinburgh','EH1 3GB\r'),('GR01966','Nicola','Clyma','3 Dalcross Lane','Kirkcaldy','KY12 5GD'),('GR01967','Sosanna','Manassian','45/1 Canning Street','Belfast','BT1 2FA\r'),('GR01968','Emma','Dickson','65/3 Clydeview Terrace','Birmingham','B1 7KK\r'),('GR01969','Craig','Jarvie','1/1 Kilbirnie Street','London','SW16 9LA'),('GR01970','Dermot','Simpson','76 Botanic Crescent','Stirling','FK7 7XZ\r'),('GR01971','Aiden','MacMahon','3/4 Francis Street','Edinburgh','EH1 0IS\r'),('GR01972','Joe','O\'Rourke','32/2 Struan Gardens','Glasgow','G10 7HB\r'),('GR01973','Riikka','Karlsson','74/2 Doune Gardens','Manchester','M1 7YH\r'),('GR01974','Michael','Gates','3 Doune Gardens','London','NW10 8HS'),('GR01975','Louise','Dunn','7 Strachur Street','Kent','CT16 8NB'),('GR01976','Julianna','Sousa','56 Sandy Road','Liverpool','L1 9UJ\r');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Flight`
--

DROP TABLE IF EXISTS `Flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Flight` (
  `flightID` varchar(10) NOT NULL,
  `departureDate` varchar(10) DEFAULT NULL,
  `departureTime` time DEFAULT NULL,
  `arrivalDate` varchar(10) DEFAULT NULL,
  `arrivalTime` time DEFAULT NULL,
  `capacity` varchar(15) DEFAULT NULL,
  `routeID` int DEFAULT NULL,
  PRIMARY KEY (`flightID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Flight`
--

LOCK TABLES `Flight` WRITE;
/*!40000 ALTER TABLE `Flight` DISABLE KEYS */;
INSERT INTO `Flight` VALUES ('AY478','27/03/2018','17:00:00','27/03/2018','22:00:00','310',6982),('CV981','30/03/2018','04:45:00','30/03/2018','08:10:00','326',1329),('DB191','05/04/2018','15:00:00','05/04/2018','15:55:00','220',9214),('DC439','31/03/2018','22:45:00','01/04/2018','06:50:00','378',4551),('DG182','27/03/2018','16:00:00','27/03/2018','23:00:00','320',5281),('DG199','26/03/2018','16:00:00','26/03/2018','23:00:00','320',5281),('DP198','28/03/2018','16:00:00','28/03/2018','23:00:00','320',5281),('DQ182','03/04/2018','13:00:00','03/04/2018','15:30:00','250',7120),('DQ583','25/03/2018','13:00:00','25/03/2018','15:30:00','250',7120),('DS126','27/03/2018','12:30:00','27/03/2018','13:20:00','60',6232),('DS129','29/03/2018','12:30:00','29/03/2018','13:20:00','60',6232),('GD845','23/03/2018','10:35:00','23/03/2018','14:49:00','350',1279),('GR737','01/04/2018','07:14:00','01/04/2018','10:55:00','396',1924),('GR738','25/03/2018','07:14:00','25/03/2018','10:55:00','396',1924),('GS740','30/03/2018','12:15:00','30/03/2018','20:50:00','312',1902),('HJ983','02/04/2018','11:45:00','02/04/2018','15:10:00','298',3187),('IK209','30/03/2018','16:35:00','30/03/2018','19:15:00','224',2716),('JK201','29/03/2018','16:35:00','29/03/2018','19:15:00','224',2716),('JS177','26/03/2018','05:25:00','26/03/2018','12:15:00','286',3976),('JS391','29/03/2018','05:25:00','29/03/2018','12:15:00','286',3976),('JV902','27/03/2018','08:50:00','27/03/2018','11:44:00','312',4153),('KJ292','28/03/2018','16:35:00','28/03/2018','19:15:00','224',2716),('KK919','28/03/2018','06:18:00','28/03/2018','09:48:00','376',1902),('KL118','27/03/2018','15:05:00','27/03/2018','17:10:00','270',4871),('KL720','23/03/2018','15:05:00','23/03/2018','17:10:00','270',4871),('KL989','29/03/2018','06:18:00','29/03/2018','09:48:00','376',4871),('LK001','24/03/2018','14:12:00','24/03/2018','17:24:00','240',7625),('MK990','31/03/2018','07:14:00','31/03/2018','10:55:00','396',1924),('NK923','30/03/2018','06:18:00','30/03/2018','09:48:00','376',4871),('QH128','30/03/2018','09:50:00','30/03/2018','14:55:00','288',3187),('QH182','24/03/2018','09:50:00','24/03/2018','14:55:00','288',2847),('QH199','01/04/2018','09:50:00','01/04/2018','14:55:00','288',2847),('QL015','01/04/2018','07:50:00','01/04/2018','11:30:00','240',7625),('QS730','26/03/2018','21:30:00','26/03/2018','01:00:00','244',5765),('QS739','24/03/2018','21:30:00','24/03/2018','01:00:00','244',5765),('QV100','28/03/2018','07:20:00','28/03/2018','08:50:00','178',3651),('QV102','30/03/2018','07:20:00','30/03/2018','08:50:00','178',3651),('QY171','31/03/2018','09:50:00','31/03/2018','14:55:00','288',2847),('QZ583','02/04/2018','13:00:00','02/04/2018','15:30:00','250',7120),('RS403','24/03/2018','12:15:00','24/03/2018','20:50:00','312',1902),('SA981','04/04/2018','04:45:00','04/04/2018','08:10:00','326',1329),('SD026','29/03/2018','22:45:00','20/03/2018','06:50:00','378',4551),('SJ938','25/03/2018','08:50:00','25/03/2018','11:44:00','312',4153),('SK000','28/03/2018','14:12:00','28/03/2018','17:24:00','240',7625),('SW126','03/04/2018','12:30:00','03/04/2018','13:20:00','60',6232),('TY531','23/03/2018','17:00:00','23/03/2018','22:00:00','310',6982),('TY753','30/03/2018','17:00:00','30/03/2018','22:00:00','310',6982),('UP984','26/03/2018','10:35:00','26/03/2018','14:49:00','350',1279),('WS101','29/03/2018','07:20:00','29/03/2018','08:50:00','178',3651),('WS192','26/03/2018','07:20:00','26/03/2018','08:50:00','178',3651),('YH827','25/03/2018','09:25:00','25/03/2018','14:35:00','268',3976);
/*!40000 ALTER TABLE `Flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Route`
--

DROP TABLE IF EXISTS `Route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Route` (
  `routeID` int NOT NULL,
  `departFrom` varchar(10) DEFAULT NULL,
  `arriveAt` varchar(10) DEFAULT NULL,
  `midStopOne` varchar(10) DEFAULT NULL,
  `midStopTwo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`routeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Route`
--

LOCK TABLES `Route` WRITE;
/*!40000 ALTER TABLE `Route` DISABLE KEYS */;
INSERT INTO `Route` VALUES (1279,'GLA','IBZ','BRU',''),(1329,'MMX','LHR','',''),(1902,'VNO','EDI','BER','LHR'),(1924,'SAW','LHR','',''),(2716,'NAP','MAN','',''),(2847,'LPL','ARN','AMS',''),(3187,'ATH','EDI','',''),(3651,'MAN','FRA','',''),(3976,'STN','CHQ','VIE',''),(4153,'BFS','BCN','',''),(4551,'LGW','LAX','JFK','DEN'),(4871,'STN','MUC','',''),(5172,'BHX','FCO','',''),(5281,'HEL','LPL','AMS',''),(5765,'BHX','BUD','',''),(6232,'ABZ','LSI','',''),(6982,'SVQ','GLA','MAD',''),(7120,'EDI','SVQ','',''),(7625,'BRS','LIS','',''),(9214,'EDI','DUB','','');
/*!40000 ALTER TABLE `Route` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-20 11:17:42
