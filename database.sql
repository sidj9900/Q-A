/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.5.56 : Database - qa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`qa` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `qa`;

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `email` varchar(50) NOT NULL,
  `articleid` varchar(30) NOT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `article` blob,
  `sub_date` varchar(50) DEFAULT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `QLike` int(10) DEFAULT NULL,
  `QDislike` int(10) DEFAULT NULL,
  `rejected` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`email`,`articleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `article` */

insert  into `article`(`email`,`articleid`,`subject`,`article`,`sub_date`,`approved`,`QLike`,`QDislike`,`rejected`) values ('siddharthjain.cse19@jecrc.ac.in','12659','What is the most embarrassing moment in the history of cricket?','Huge number of answers come under this question. But I particularly think that this moment was pretty much embarrassing in the history of cricket.\r\n\r\nAustralia versus West Indies, 5th ODI, Georgetown, April 21 1999.\r\n\r\nDue to rain interruption target was shortened up to 174 in 30 overs.\r\n\r\nThe game went up to the last over.\r\n\r\n6 runs needed of the last over. Steve Waugh on strike.\r\n\r\nFirst 5 balls of the over went like 2,0,0,0,0.','2018.06.29 04:01',0,0,0,0),('siddharthjain.cse19@jecrc.ac.in','36246','Who are some great Indians that most people have not heard of?','Sports\r\n\r\nJankidas Mehra - Cyclist (Kamalesh Padmanaban\'s answer)\r\nR.Umadevi - World Ladies Billiards Champion (Aakash Dhama\'s answer)\r\nMakhan Singh - Athlete (Taheer Rehman\'s answer, Gurpreet Singh\'s answer)\r\nSita Sahu - Bronz medalist in 2011 Athens Olympics (Niranjan Goru\'s answer)\r\nArunima Sinha - 1st amputee to climb Mt.Everest and National Volleyball player (Niranjan Goru\'s answer)\r\nKhashaba Dadasaheb Jadhav - Wrestler\r\nShiva Keshavan - Olympian (Luge)\r\nNeville D\'Souza - Olympian (Indian Football Team)\r\nChitresh Tatha - youngest Asian game participant (Sathvik Ashok M\'s answer)\r\nBhudia Singh- Youngest marathon runner (Dibyesh Satpathy\'s answer)','2018.06.29 03:59',0,0,0,0),('siddharthjain.cse19@jecrc.ac.in','36587','What are some of the best technical hacks?','Here are few of my favourite technical hacks:\r\n1. If you accidentally close a tab, Ctrl +shift+T opens it.\r\n\r\n2. If you lost an android phone in your house and it?s on vibration, you can find it by going to Google Play > Android device manager > ?Ring?\r\n\r\n3. An iPad charger will charge your iPhone must faster.\r\n\r\n4. If you want to buy the cheapest airline tickets, use your browser\'s incognito mode. Prices go up if you visit a site multiple times.\r\n\r\n5. If you?re at a hotel and run out of charges, the TV usually has USB plugin.\r\n\r\n6. Putiing your phone on airplane mode will stop ads while playing games.\r\n\r\n7. The program DeTune will transfer all of the songs from iPod/iPhone and put them into your computer.','2018.06.29 03:56',1,1,0,0),('siddharthjain.cse19@jecrc.ac.in','65211','What are some of the best technical hacks?','Here are few of my favourite technical hacks:\r\n1. If you accidentally close a tab, Ctrl +shift+T opens it.\r\n\r\n2. If you lost an android phone in your house and it?s on vibration, you can find it by going to Google Play > Android device manager > ?Ring?\r\n\r\n3. An iPad charger will charge your iPhone must faster.\r\n\r\n4. If you want to buy the cheapest airline tickets, use your browser\'s incognito mode. Prices go up if you visit a site multiple times.\r\n\r\n5. If you?re at a hotel and run out of charges, the TV usually has USB plugin.\r\n\r\n6. Putiing your phone on airplane mode will stop ads while playing games.','2018.06.29 03:56',1,0,0,0),('siddharthjain.cse19@jecrc.ac.in','69977',' are some great Indians that most people have not heard of?','Edit: Kindly update the wiki for answers having more than 100 votes within appropriate categories. If the category doesn\'t exist, feel free to create one and move any existing ones into it, if appropriate.','2018.06.29 03:58',0,0,0,1),('siddharthjain.cse19@jecrc.ac.in','73188','Cricket Germany offers hilarious suggestion to FIFA after World Cup exit','The ongoing football World Cup in Russia saw its biggest upset on Wednesday after the defending champions Germany were knocked out of the tournament in the group stages. The 2014 World Champions suffered a 2-0 defeat at the hands of South Korea in their final group stage match and bowed out of the tournament. After the dramatic turn of events, Cricket Germany came up with a hilarious solution to ensure such upsets do not take place in football?s biggest tournament.\r\n\r\nIn a tweet, Cricket Germany appeared to take a dig at ICC?s decision to allow only 10 teams to participate in a World Cup. ?We hereby ask #FIFA to make the next #WorldCup open only to ten teams,? the tweet read.','2018.06.29 03:59',1,1,1,0),('siddharthjain.cse19@jecrc.ac.in','84535','What?s the future of mechanical engineers in India?','I am not sure about my eligibility to write an answer for this question. But I want to share my point of view.\r\n\r\nThere are no. of colleges are there to make us engineers but we don?t have enough companies or industries to offer the job.\r\n\r\nHere I am writing my story, which may help in understanding the present future of engineers.\r\n\r\nI came to Hyderabad to complete my graduation as mechanical engineer. The biggest problem is I belongs to Telugu (local language) medium. The first month of my college I didn?t understood what the lecturers are teaching. I scored only 65% in graduation.\r\n\r\nAfter by graduation, No companies came for campus-drive. The people who have the incredible subject knowledge, they prepared for different govt. jobs by attending GATE, IES, EIL, SSC?etc. and some people got job. Some people tried to get ranks in the above examinations they failed any join in different jobs, which are not at all related to mechanical stream. Who have the enough money they gone to abroad.','2018.06.29 03:57',0,0,0,0),('sidj9900@gmail.com','17696','What\'s Behind the Employee Revolts at Amazon, Microsoft and Google?','What do you get when you cross advanced technology with war and government surveillance? Hundreds of unsettled employees, hundreds of thousands of distressed individuals and an incalculable amount of bad PR.\r\n\r\nAt Amazon, employees are up in arms about the company?s decision to sell its Rekognition facial recognition software to police departments and government agencies. The technology uses artificial intelligence (AI) to identify, track and analyze faces in real time, and Amazon claims it can recognize up to 100 people in one image and identify ?people of interest? for purposes like government surveillance. In May, an investigation by the American Civil Liberties Union (ACLU) showed Amazon was actively marketing and selling the facial recognition software to government agencies.\r\n\r\nAmazon workers weren?t having it. In an internal letter to CEO Jeff Bezos last week, employees mentioned the ACLU report and their fears that the software will be used to harm the most marginalized.','2018.06.29 03:39',1,50,0,0),('sidj9900@gmail.com','64422','What are some dark truths about Bollywood?','Well as the saying goes power corrupts and absolute power corrupts absolutely. This suits Bollywood perfectly, Bollywood is a deadly combination of Power, fame and money. It has such magnetic pull that almost everyone associated with it is hit by it?s venomous side once. Some of this venom spill for everyone to see, while some remain hidden and grow to be a cancer slowly consuming the victim. Bollywood does has it?s share of dark secrets which we as normal humans sometime find intimidating and heinous, yet for people in Bollywood it;s quite normal.\r\n\r\nBollywood cougars: Bollywood is place of beauty and abundant skin always at display, young blood for making it big in Bollywood is always ready to compromise and go to any extent, for male we have heard numerous stories of casting couch. But there are Bollywood star wives who are Cougars and are always preying on young aspiring models and actors. Ayesha Sharof : Well she is a well known cougar in Bollywood, she had a very long affair with Sahil khan with full knowledge of her husband. it is only after the success of her son Tiger that she broke up with him, and that created a truffle between two, so much that she has even filed a court case of 5 crore against him.','2018.06.29 03:37',1,0,0,0),('sidj9900@gmail.com','68586','What topic(s) or subject(s) interest you the most and why? ','There are so many, the list could go on! But some in particular are as follows:\r\n\r\n*Art?I have always had an interest in the world of art, from random streaks of paint to the most detailed Da Vinci collections. I am often fascinated in the stories BEHIND the actual artwork, what had motivated the person to produce such work and if it had any correlation to their feelings. This is because I personally practice art in many forms, from painting to henna and even art in its written form. I am often inspired from personal experiences, so it is sometimes calming to know that there are others who express themselves the same way.\r\n\r\n*Religion?I know this is an absolute taboo topic for many people get offended when one doesn\'t agree with their religious beliefs. However, I believe it is important to talk and intellectually debate about one?s personal religion. I find it even more important to question religion, even if I am religious myself. As long as one doesn\'t impose their beliefs on someone else (including myself) I don\'t see why two or more individuals can?t have a decent conversation on such a fascinating subject.','2018.06.29 03:35',1,0,0,0),('sidj9900@yahoo.in','28223','What are your tech predictions for the next 20 years?','When it comes to technology the Future is going to be really awesome.\r\n\r\nThere are lots of amazing technology Prediction that can be made as per the current situation..\r\n\r\nTech is not about just unboxing smartphones or there review which is the current trend of so called Tech youtubers.\r\n\r\nHere are my tech predictions-\r\n\r\n1- The phone in everyones hand will be complete Bezel less(100% screen to body ratio).','2018.06.29 03:48',1,0,0,0),('sidj9900@yahoo.in','44739','What are the most naughty things you did with your cousin?','When my cousin and I were both younger (we are both females), I was into a guy. She offered to help me practice to kiss even though she was younger than me.\r\n\r\nIn my bedroom, while my dad and younger brothers were downstairs, we practiced kissing and different types of kissing. It went on for a while and when my dad didn?t hear anything from my room, he called us down.\r\n\r\nWe then went into the kitchen, hidden from sight, and continued for another minute before ceasing as my brothers came and got my cousin to leave.\r\n\r\nIt never happened again. It was never spoken about ever.\r\n\r\nAnd I think it was the first time I ever questioned whether I liked girls or boys.\r\n\r\nI was eight.','2018.06.29 03:40',1,1,1,0),('sidj9900@yahoo.in','48777','What are the things that Indians are unaware of that will happen in the next 10 years?','Let me elaborate. Whenever we buy a new phone, our single most motive should be an upgrade over our existing device. The new phone must be smooth to use, should be able to handle exhaustive tasks and should not slow down after a couple of months. The companies selling their phones just on the USP, will cut corners from everywhere else to actuate that USP.\r\n\r\nTake example of two Chinese companies - Oppo and Vivo. These two phones have over-glorified the cameras we use everyday. They bring fancy terms like Moonlight Camera, Selfie Camera, AI camera etc to grab your attention. Let us say that camera is the most important thing for you. You need the best camera in that given price range. I cannot deny that these cameras work as mentioned. But will you like it if everytime you try to snap a picture, your phone starts lagging. Will you like it when you are trying to take a selfie with your friends and the camera button won\'t respond while you are awkwardly holding the phone in mid-air? Will you like it when your camera is good but the phone in everyday use lags and heats up and the battery won\'t last more than 3 hours? This is because in their aim to give you a good camera, these phones will give sub-standard MediaTek chips, low capacity battery and buggy softwares. We tend to overlook this but it will come back to bite in your ass.','2018.06.29 03:45',1,0,0,0),('sidj9900@yahoo.in','74113','What?s the future of mechanical engineers in India?','I am not sure about my eligibility to write an answer for this question. But I want to share my point of view.\r\n\r\nThere are no. of colleges are there to make us engineers but we don?t have enough companies or industries to offer the job.\r\n\r\nHere I am writing my story, which may help in understanding the present future of engineers.\r\n\r\nI came to Hyderabad to complete my graduation as mechanical engineer. The biggest problem is I belongs to Telugu (local language) medium. The first month of my college I didn?t understood what the lecturers are teaching. I scored only 65% in graduation.\r\n\r\nAfter by graduation, No companies came for campus-drive. The people who have the incredible subject knowledge, they prepared for different govt. jobs by attending GATE, IES, EIL, SSC?etc. and some people got job. Some people tried to get ranks in the above examinations they failed any join in different jobs, which are not at all related to mechanical stream. Who have the enough money they gone to abroad.\r\n\r\nI belongs to middle class family, so I can?t spend 30K-40K for coaching. And I don?t have any contacts of people who is working in industries and companies.','2018.06.29 03:47',1,0,0,0),('sidj9900@yahoo.in','76194','What phone should I never buy?','People have given some suggestions here but I want to give a completely different viewpoints.\r\n\r\nI have one simple rule whenever I am buying a new phone : Don\'t just buy a phone just for its USP.','2018.06.29 03:44',1,0,0,0),('sidj9900@yahoo.in','88977','What are some high tech weapons?','2017-2018 Speaking in general, according to prominent experts in the field of weapons and politicians, in the coming years, Russia\'s armed forces should enroll:\r\n\r\n? More than 600 aircraft of different types: fighters, long-range aircraft, strategic bombers, e.\r\n\r\n? More than 1000 newest helicopters; ? More than 300 new super-air defense systems;\r\n\r\n? New generation ballistic missiles with nuclear charges; ? New nuclear weapons;\r\n\r\n? New high-precision weapons (bombs, missiles, etc.), as well as the latest systems for targeting such weapons, designed for high-precision shooting;\r\n\r\n? New weapons for the destruction of tanks and other ground equipment;','2018.06.29 03:46',1,0,0,0),('sidj9900@yahoo.in','99414','What are some of the best technical hacks?','Here are few of my favourite technical hacks:\r\n1. If you accidentally close a tab, Ctrl +shift+T opens it.\r\n\r\n2. If you lost an android phone in your house and it?s on vibration, you can find it by going to Google Play > Android device manager > ?Ring?\r\n\r\n3. An iPad charger will charge your iPhone must faster.\r\n\r\n4. If you want to buy the cheapest airline tickets, use your browser\'s incognito mode. Prices go up if you visit a site multiple times.\r\n\r\n5. If you?re at a hotel and run out of charges, the TV usually has USB plugin.\r\n\r\n6. Putiing your phone on airplane mode will stop ads while playing games.\r\n\r\n7. The program DeTune will transfer all of the songs from iPod/iPhone and put them into your computer.','2018.06.29 03:49',1,0,0,0);

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `email` varchar(50) DEFAULT NULL,
  `articleid` varchar(30) DEFAULT NULL,
  `commentid` varchar(30) DEFAULT NULL,
  `comment` blob,
  `date` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `comment` */

insert  into `comment`(`email`,`articleid`,`commentid`,`comment`,`date`) values ('sidj9900@gmail.com','42534','sid42658',' public abstract class RichPerson{\r\n    public string name;\r\n    public BigInteger money;','Wed Jun 27 16:21:36 IST 2018'),('sidj9900@gmail.com','42534','sid37928',' public abstract class RichPerson{\r\n    public string name;\r\n    public BigInteger money;','Wed Jun 27 16:21:39 IST 2018'),('sidj9900@yahoo.in','81939','sid11156','s','Wed Jun 27 16:29:14 IST 2018'),('siddharthjain.cse19@jecrc.ac.in','81939','sid11886','s','Wed Jun 27 16:33:58 IST 2018'),('siddharthjain.cse19@jecrc.ac.in','81939','sid58419','s','Wed Jun 27 16:36:01 IST 2018'),('siddharthjain.cse19@jecrc.ac.in','81939','sid41996','s','Wed Jun 27 16:38:04 IST 2018'),('siddharthjain.cse19@jecrc.ac.in','81939','sid28725','s','Wed Jun 27 16:38:08 IST 2018'),('sidj9900@gmail.com','12798','sid66682','q','Thu Jun 28 23:24:03 IST 2018'),('siddharthjain.cse19@jecrc.ac.in','95888','sid62425','11','Fri Jun 29 12:33:24 IST 2018'),('sidj9900@gmail.com','12798','sid44426','a','Fri Jun 29 13:57:40 IST 2018'),('sidj9900@yahoo.in','44739','sid66311','When my cousin and I were both younger (we are both females), I was into a guy. She offered to help me practice to kiss even though she was younger than me.\r\n\r\nIn my bedroom, while my dad and younger brothers were downstairs, we practiced kissing and different types of kissing. It went on for a while and when my dad didn?t hear anything from my room, he called us down.\r\n\r\nWe then went into the kitchen, hidden from sight, and continued for another minute before ceasing as my brothers came and got my cousin to leave.\r\n\r\nIt never happened again. It was never spoken about ever.\r\n\r\nAnd I think it was the first time I ever questioned whether I liked girls or boys.\r\n\r\nI was eight.','Fri Jun 29 15:41:14 IST 2018'),('sidj9900@gmail.com','36587','sid37646','testing','Fri Jun 29 16:53:56 IST 2018'),('sidj9900@gmail.com','36587','sid87729','testing1','Fri Jun 29 16:54:10 IST 2018'),('sidj9900@gmail.com','73188','sid56227','Good','Sat Jul 14 02:24:36 IST 2018');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `usertype` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`email`,`password`,`usertype`) values ('Abhi1996@gmail.com','ab1234','User'),('siddharthjain.cse19@jecrc.ac.in','sid1234','User'),('sidj9900@gmail.com','sid1234','Admin'),('sidj9900@yahoo.in','sid1234','Moderator'),('somesh@gmail.com','sg1234','Moderator'),('Vikash1998@gmail.com','vikas1234','Moderator');

/*Table structure for table `qdislike` */

DROP TABLE IF EXISTS `qdislike`;

CREATE TABLE `qdislike` (
  `email` varchar(50) NOT NULL,
  `articleid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `qdislike` */

insert  into `qdislike`(`email`,`articleid`) values ('sidj9900@yahoo.in','81377'),('sidj9900@yahoo.in','81939'),('siddharthjain.cse19@jecrc.ac.in','81939'),('sidj9900@gmail.com','95496'),('sidj9900@gmail.com','14324'),('sidj9900@gmail.com','27421'),('sidj9900@gmail.com','63526'),('siddharthjain.cse19@jecrc.ac.in','95888'),('sidj9900@yahoo.in','44739'),('siddharthjain.cse19@jecrc.ac.in','67922'),('sidj9900@gmail.com','73188');

/*Table structure for table `qlike` */

DROP TABLE IF EXISTS `qlike`;

CREATE TABLE `qlike` (
  `email` varchar(50) NOT NULL,
  `articleid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `qlike` */

insert  into `qlike`(`email`,`articleid`) values ('sidj9900@yahoo.in','44739'),('sidj9900@gmail.com','36587'),('sidj9900@gmail.com','36587'),('siddharthjain.cse19@jecrc.ac.in','67922'),('sidj9900@gmail.com','73188');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`id`,`name`,`mobile`,`email`) values (1,'Siddharth Jain','123456789','sidj9900@gmail.com'),(2,'Sid','8112281713','sidj9900@yahoo.in'),(3,'Siddharth Jain','1234567890','siddharthjain.cse19@jecrc.ac.in'),(4,'Vikas','8058406306','Vikash1998@gmail.com'),(5,'Abhishek','9413560426','Abhi1996@gmail.com'),(6,'Somesh','9887878765','somesh@gmail.com'),(9,'Siddharth','24234234','sidj9900@gmail.com');

/*Table structure for table `usertype` */

DROP TABLE IF EXISTS `usertype`;

CREATE TABLE `usertype` (
  `id` varchar(10) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usertype` */

insert  into `usertype`(`id`,`name`) values ('1','Moderator'),('2','User');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
