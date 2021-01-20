/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.4.6-MariaDB : Database - textBoard
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`textBoard` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `textBoard`;

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `title` char(200) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  `boardId` int(10) unsigned NOT NULL,
  `likesCount` int(10) unsigned NOT NULL,
  `commentsCount` int(10) unsigned NOT NULL,
  `hitCount` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `article` */

insert  into `article`(`id`,`regDate`,`updateDate`,`title`,`body`,`memberId`,`boardId`) values 
(1,'2021-01-04 04:31:20','2021-01-04 04:31:20','공지사항','# 공지사항\r\n- 개발자 블로그\r\n```\r\n환영합니다\r\n```',3,1),
(2,'2021-01-04 04:31:20','2021-01-04 04:31:20','자유1','# 자유게시판\r\n\r\n```\r\n자유게시판입니다.\r\n```',3,2),
(3,'2021-01-04 04:31:20','2021-01-04 04:31:20','자유2','# 자유게시판\r\n- 개발자 블로그\r\n```\r\n환영합니다.\r\n```',3,2),
(4,'2021-01-04 04:31:20','2021-01-04 04:31:20','1강. JAVA란?','# 자바란 ?\r\n\r\n- 자바 소개\r\n```\r\n미국의 썬마이크로시스템즈(썬)에서 개발한 언어이다.\r\n2010년 오라클에서 썬을 인수하여 JAVA의 개발, 관리, 배포를 주관하고 있다.\r\n```\r\n\r\n- 자바 특징\r\n```\r\n1. 운영체제에 독립적\r\n2. 객제지향언어\r\n3. 배우기 쉬움\r\n4. 멀티쓰레드 지원\r\n5. 자동메모리 관리\r\n6. 네트워크와 분산처리 지원\r\n```\r\n',3,3),
(5,'2021-01-06 15:51:01','2021-01-06 15:51:01','2강. JAVA / 변수','# 변수란\r\n```\r\n데이터를 저장하기 위해 프로그램에 의해 이름을 할당받은 메모리 공간을 의미한다.\r\n```\r\n\r\n# 변수의 이름 생성 규칙\r\n```\r\n1. 변수의 이름은 영문자(대소문자), 숫자, 언더바(_),달러($)로만 구성할 수 있다.\r\n2. 변수의 이름은 숫자로 시작할 수 없다.\r\n3. 변수의 이름 사이에는 공백을 포함할 수 없다.\r\n4. 변수의 이름으로 자바에서 미리 정의된 키워드는 사용할 수 없다\r\n```\r\n\r\n# 변수의 종류\r\n```\r\n1. 기본형 변수\r\n\r\n- 정수형 : byte, short, int, long\r\n- 실수형 : float, double\r\n- 문자형 : char\r\n- 논리형 : boolean\r\n\r\n2. 참조형 변수\r\n\r\n참조형 변수는 8개의 기본형 변수를 사용하여 사용자가 직접 만들어 사용하는 변수를 의미한다\r\n```\r\n\r\n# 변수의 선언\r\n```\r\n1. 변수의 선언만 하는 방법\r\n\r\n- 문법 : 타입 변수이름;\r\n\r\nint num; // 변수의 선언\r\nSystem.out.println(num); // 오류 발생\r\nnum = 20;\r\nSystem.out.println(num); // 20\r\n\r\n2. 변수의 선언과 동시에 초기화\r\n\r\n- 문법 : \r\n1. 타입 변수이름[변수이름];\r\n2. 타입 변수이름 = 초깃값[변수이름 = 초깃값];\r\n\r\nint num1, num2; // 같은 타입의 변수를 동시에 선언\r\ndouble num3 = 3.14; // 선언과 동시에 초기화\r\ndouble num4 = 1.23, num5 = 4.56 // 같은 타입의 변수를 동시에 선언하면서 초기화\r\n```\r\n\r\n\r\n\r\n# 잘못된 예 \r\n```\r\ndouble num1, num2; // 같은 타입의 변수를 동시에 선언\r\nnum1 = 1.23, num2 = 4.56; // 이미 선언된 여러 변수를 동시에 초기화할 수는 없다.\r\n```\r\n\r\n\r\n\r\n',3,3),
(6,'2021-01-11 13:35:15','2021-01-11 13:35:15','3강. JAVA / 상수','# 상수란\r\n```\r\n변수와 마찬가지로 데이터를 저장할 수 있는 메모리 공간을 의미한다.\r\n```\r\n\r\n# 상수\r\n```\r\n상수는 변수와 마찬가지로 이름을 가지고 있는 메모리 공간으로 이러한 상수는 선언과 동시에 초기화 해야한다\r\n\r\n- 상수를 만드는 일반적인 방식\r\n- final int AGES = 30;\r\n\r\n```\r\n\r\n# 리터럴\r\n```\r\n리터럴이란 그 자체로 값을 의미한다\r\n즉, 변수와 상수와는 달리 데이터가 저장된 메모리 공간을 가리키는 이름을 가지고 있지 않다.\r\n\r\nex )\r\n\r\nint var = 30; // 30이 리터럴이다\r\nfinal int AGES = 100; // 100이 리터럴이다.\r\n```\r\n',3,3),
(7,'2021-01-13 18:09:55','2021-01-13 18:09:55','4강. JAVA / 기본 타입','# 기본 타입\r\n```\r\n타입은 해당 데이터가 메모리에 어떻게 저장되고, 프로그램에세 어떻게 처리되어야 하는지를 명시적으로 알려주는 역할을 한다.\r\n자바의 기본타입은 모두 8종류가 제공되며, 정수 실수 문자 그리고 논리형 타입으로 나눌 수 있다.\r\n```\r\n\r\n# 정수형 타입\r\n```\r\n- 자바에서 정수란 부호를 가지고 있으며, 소수 부분이 없는 수\r\n\r\n정수형 타입 / 할당 메모리 크기 / 데이터 표현 범위\r\n \r\n1. byte / 1바이트 / -128 ~ 127\r\n2. short / 2바이트 / -2(15) ~ (2(15) - 1)\r\n3. int / 4바이트 / -2(31) ~ (2(31) - 1)\r\n4. long / 8 바이트 / -2(63) ~ (2(63) - 1)\r\n\r\n정수형 데이터의 타입을 결정할 때에는 반드시 자신이 사용하고자 하는 데이터의 최대 크기를 고려해야한다.\r\n```\r\n\r\n# 실수형 타입\r\n```\r\n- 자바에서 실수란 소수부나 지수부가 없는 수를 가리키며, 정수보다 훨씬 더 넓은 표현범위를 가진다.\r\n\r\n실수형 타입 / 할당 메모리 크기 / 데이터 표현 범위\r\n\r\n1. float / 4바이트 / (3.4 X 10(-38)) ~ (3.4 X 10(38))\r\n2. double / 8바이트 / (1.7 X 10(-308) ~ (1.7 X 10(308))\r\n\r\n컴퓨터에서 실수를 표현하는 방식은 오차가 발생할 수 밖에 없는 태생적 한계를 지니고 있다.\r\n```\r\n\r\n# 문자형 타입\r\n```\r\n- 자바에서 문자형 데이터란 작은 정수나 문자 하나를 표현할 수 있는 타입을 의미한다.\r\n\r\n\r\n컴퓨터는 2진수밖에 인식하지 못하므로 문자도 숫자로 표현해야 인식할 수 있습니다.\r\n\r\n따라서 어떤 문자를 어떤 숫자에 대응시킬 것인가에 대한 약속이 필요해집니다. \r\n\r\nC언어와 C++에서는 아스키코드(ASCII)를 사용하여 문자를 표현합니다.\r\n\r\n아스키코드(ASCII)는 영문 대소문자를 사용하는 7비트의 문자 인코딩 방식입니다.\r\n\r\n아스키코드는 문자 하나를 7비트로 표현하므로, 총 128개의 문자를 표현할 수 있습니다. \r\n\r\n하지만 자바에서는 유니코드(unicode)를 사용하여 문자를 표현합니다.\r\n\r\n아스키코드는 영문자와 숫자밖에 표현 못 하지만, 유니코드는 각 나라의 모든 언어를 표현할 수 있습니다.\r\n\r\n유니코드는 문자 하나를 16비트로 표현하므로, 총 65,536개의 문자를 표현할 수 있습니다.\r\n\r\n\r\n\r\n문자형 타입 / 할당 메모리 크기 / 데이터 표현 범위\r\n\r\n1. char / 2바이트 / 0 ~ 2(16)\r\n\r\n```\r\n\r\n\r\n# 논리형 타입\r\n```\r\n- 논리형은 참(true)이나 거짓(false) 중 한 가지 값만을 가질 수 있는 불리언 타입을 의미한다.\r\n\r\nboolean형의 기본값은 false이며, 기본 타입 중 가장 작은 크기인 1바이트의 크기를 가집니다\r\n\r\n문자형 타입 / 할당 메모리 크기 / 데이터 표현 범위\r\n\r\n1. boolean / 1바이트 / true 또는 false\r\n```\r\n',3,3),
(8,'2021-01-18 15:33:40','2021-01-18 15:33:40','5강. JAVA / 연산자','# 산술 연산자 \r\n\r\n```\r\n산술 연산자는 사칙연산을 다루는 연산자로, 가장 기본적이면서도 가장 많이 사용되는 연산자 중 하나입니다.\r\n산술 연산자는 모두 두 개의 피연산자를 가지는 이항 연산자이며, 피연산자들의 결합 방향은 왼쪽에서 오른쪽입니다.\r\n```\r\n\r\n- 산술연산\r\n```\r\n+ : 왼쪽의 피연산자에 오른쪽의 피연산자를 더함.\r\n- : 왼쪽의 피연산자에서 오른쪽의 피연산자를 뺌.\r\n* : 왼쪽의 피연산자에 오른쪽의 피연산자를 곱함.\r\n/ : 왼쪽의 피연산자를 오른쪽의 피연산자로 나눔.\r\n% : 왼쪽의 피연산자를 오른쪽의 피연산자로 나눈 후, 그 나머지를 반환함.\r\n```\r\n',3,3),
(9,'2021-01-20 17:04:05','2021-01-20 17:04:05','6강. JAVA / 조건문','# 제어문 \r\n```\r\n자바 프로그램이 원하는 결과를 얻기 위해서는 프로그램의 순차적인 흐름을 제어해야만 할 경우가 생깁니다.\r\n이때 사용하는 명령문을 제어문이라고 하며, 이러한 제어문에는 조건문, 반복문 등이 있습니다.\r\n```\r\n\r\n# 조건문\r\n```\r\n조건문은 주어진 조건식의 결과에 따라 별도의 명령을 수행하도록 제어하는 명령문입니다.\r\n조건문 중에서도 가장 기본이 되는 명령문은 바로 if 문입니다.\r\n\r\n- 조건문 종류\r\n1. if 문\r\n2. if / else 문\r\n3. if / else if / else 문\r\n4. switch 문\r\n```\r\n\r\n# 1. if 문\r\n```\r\nif 문은 조건식의 결과가 참(true)이면 주어진 명령문을 실행하며, 거짓(false)이면 아무것도 실행하지 않습니다.\r\n\r\n- 문법\r\nif (조건식) {\r\n 조건식의 결과가 참일 때 실행하고자 하는 명령문;\r\n}\r\n```\r\n\r\n# 2. if / else 문\r\n```\r\nif 문과 함께 사용하는 else 문은 if 문과는 반대로 주어진 조건식의 결과가 거짓(false)이면 주어진 명령문을 실행합니다.\r\n\r\n- 문법\r\nif (조건식) {\r\n 조건식의 결과가 참일 때 실행하고자 하는 명령문;\r\n} else {\r\n 조건식의 결과가 거짓일 때 실행하고자 하는 명령문;\r\n}\r\n```\r\n\r\n# 3. if / else if / else 문\r\n```\r\nif / else if / else 문은 마치 새로운 구문처럼 보이지만, 사실은 두 개의 if / else 문이 연달아 나온 것뿐입니다.\r\n이러한 if / else if / else 문은 조건식을 여러 개 명시할 수 있으므로 중첩된 if 문을 좀 더 간결하게 표현할 수 있습니다.\r\n\r\n- 문법\r\nif (조건식1) {\r\n 조건식1의 결과가 참일 때 실행하고자 하는 명령문;\r\n} else if (조건식2) {\r\n 조건식2의 결과가 참일 때 실행하고자 하는 명령문;\r\n} else {\r\n 조건식1의 결과도 거짓이고, 조건식2의 결과도 거짓일 때 실행하고자 하는 명령문;\r\n}\r\n```\r\n\r\n# 4. 삼항 연산자에 의한 조건문\r\n```\r\n자바에서는 간단한 if / else 문은 삼항 연산자를 이용하여 간결하게 표현할 수 있습니다.\r\n\r\n- 문법\r\n조건식 ? 반환값1 : 반환값2\r\n```\r\n\r\n# 5. switch 문\r\n```\r\nswitch 문은 if / else 문과 마찬가지로 주어진 조건 값의 결과에 따라 프로그램이 다른 명령을 수행하도록 하는 조건문입니다.\r\n이러한 switch 문은 if / else 문보다 가독성이 더 좋으며, 컴파일러가 최적화를 쉽게 할 수 있어 속도 또한 빠른 편입니다.\r\n\r\n- 문법\r\nswitch (조건 값) {\r\n case 값1:\r\n 조건 값이 값1일 때 실행하고자 하는 명령문;\r\n break;\r\n case 값2:\r\n 조건 값이 값2일 때 실행하고자 하는 명령문;\r\n break;\r\n ...\r\n default:\r\n 조건 값이 어떠한 case 절에도 해당하지 않을 때 실행하고자 하는 명령문;\r\n break;\r\n}\r\n```\r\n\r\n',3,3);
=======
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `article` */

insert  into `article`(`id`,`regDate`,`updateDate`,`title`,`body`,`memberId`,`boardId`,`likesCount`,`commentsCount`,`hitCount`) values 
(1,'2021-01-04 04:31:20','2021-01-04 04:31:20','공지사항','# 공지사항\r\n- 개발자 블로그\r\n```\r\n환영합니다\r\n```',3,1,1,2,1),
(2,'2021-01-04 04:31:20','2021-01-04 04:31:20','자유1','# 자유게시판\r\n\r\n```\r\n자유게시판입니다.\r\n```',3,2,1,2,1),
(3,'2021-01-04 04:31:20','2021-01-04 04:31:20','자유2','# 자유게시판\r\n- 개발자 블로그\r\n```\r\n환영합니다.\r\n```',3,2,1,2,1),
(4,'2021-01-04 04:31:20','2021-01-15 04:31:20','1강. JAVA란?','# 자바란 ?\r\n\r\n- 자바 소개\r\n```\r\n미국의 썬마이크로시스템즈(썬)에서 개발한 언어이다.\r\n2010년 오라클에서 썬을 인수하여 JAVA의 개발, 관리, 배포를 주관하고 있다.\r\n```\r\n\r\n- 자바 특징\r\n```\r\n1. 운영체제에 독립적\r\n2. 객제지향언어\r\n3. 배우기 쉬움\r\n4. 멀티쓰레드 지원\r\n5. 자동메모리 관리\r\n6. 네트워크와 분산처리 지원\r\n```\r\n',3,3,1,2,1),
(5,'2021-01-06 15:51:01','2021-01-06 15:51:01','2강. JAVA / 변수','# 변수란\r\n```\r\n데이터를 저장하기 위해 프로그램에 의해 이름을 할당받은 메모리 공간을 의미한다.\r\n```\r\n\r\n# 변수의 이름 생성 규칙\r\n```\r\n1. 변수의 이름은 영문자(대소문자), 숫자, 언더바(_),달러($)로만 구성할 수 있다.\r\n2. 변수의 이름은 숫자로 시작할 수 없다.\r\n3. 변수의 이름 사이에는 공백을 포함할 수 없다.\r\n4. 변수의 이름으로 자바에서 미리 정의된 키워드는 사용할 수 없다\r\n```\r\n\r\n# 변수의 종류\r\n```\r\n1. 기본형 변수\r\n\r\n- 정수형 : byte, short, int, long\r\n- 실수형 : float, double\r\n- 문자형 : char\r\n- 논리형 : boolean\r\n\r\n2. 참조형 변수\r\n\r\n참조형 변수는 8개의 기본형 변수를 사용하여 사용자가 직접 만들어 사용하는 변수를 의미한다\r\n```\r\n\r\n# 변수의 선언\r\n```\r\n1. 변수의 선언만 하는 방법\r\n\r\n- 문법 : 타입 변수이름;\r\n\r\nint num; // 변수의 선언\r\nSystem.out.println(num); // 오류 발생\r\nnum = 20;\r\nSystem.out.println(num); // 20\r\n\r\n2. 변수의 선언과 동시에 초기화\r\n\r\n- 문법 : \r\n1. 타입 변수이름[변수이름];\r\n2. 타입 변수이름 = 초깃값[변수이름 = 초깃값];\r\n\r\nint num1, num2; // 같은 타입의 변수를 동시에 선언\r\ndouble num3 = 3.14; // 선언과 동시에 초기화\r\ndouble num4 = 1.23, num5 = 4.56 // 같은 타입의 변수를 동시에 선언하면서 초기화\r\n```\r\n\r\n\r\n\r\n# 잘못된 예 \r\n```\r\ndouble num1, num2; // 같은 타입의 변수를 동시에 선언\r\nnum1 = 1.23, num2 = 4.56; // 이미 선언된 여러 변수를 동시에 초기화할 수는 없다.\r\n```\r\n\r\n\r\n\r\n',3,3,1,2,1),
(6,'2021-01-11 13:35:15','2021-01-11 13:35:15','3강. JAVA / 상수','# 상수란\r\n```\r\n변수와 마찬가지로 데이터를 저장할 수 있는 메모리 공간을 의미한다.\r\n```\r\n\r\n# 상수\r\n```\r\n상수는 변수와 마찬가지로 이름을 가지고 있는 메모리 공간으로 이러한 상수는 선언과 동시에 초기화 해야한다\r\n\r\n- 상수를 만드는 일반적인 방식\r\n- final int AGES = 30;\r\n\r\n```\r\n\r\n# 리터럴\r\n```\r\n리터럴이란 그 자체로 값을 의미한다\r\n즉, 변수와 상수와는 달리 데이터가 저장된 메모리 공간을 가리키는 이름을 가지고 있지 않다.\r\n\r\nex )\r\n\r\nint var = 30; // 30이 리터럴이다\r\nfinal int AGES = 100; // 100이 리터럴이다.\r\n```\r\n',3,3,1,2,1),
(7,'2021-01-13 18:09:55','2021-01-13 18:09:55','4강. JAVA / 기본 타입','# 기본 타입\r\n```\r\n타입은 해당 데이터가 메모리에 어떻게 저장되고, 프로그램에세 어떻게 처리되어야 하는지를 명시적으로 알려주는 역할을 한다.\r\n자바의 기본타입은 모두 8종류가 제공되며, 정수 실수 문자 그리고 논리형 타입으로 나눌 수 있다.\r\n```\r\n\r\n# 정수형 타입\r\n```\r\n- 자바에서 정수란 부호를 가지고 있으며, 소수 부분이 없는 수\r\n\r\n정수형 타입 / 할당 메모리 크기 / 데이터 표현 범위\r\n \r\n1. byte / 1바이트 / -128 ~ 127\r\n2. short / 2바이트 / -2(15) ~ (2(15) - 1)\r\n3. int / 4바이트 / -2(31) ~ (2(31) - 1)\r\n4. long / 8 바이트 / -2(63) ~ (2(63) - 1)\r\n\r\n정수형 데이터의 타입을 결정할 때에는 반드시 자신이 사용하고자 하는 데이터의 최대 크기를 고려해야한다.\r\n```\r\n\r\n# 실수형 타입\r\n```\r\n- 자바에서 실수란 소수부나 지수부가 없는 수를 가리키며, 정수보다 훨씬 더 넓은 표현범위를 가진다.\r\n\r\n실수형 타입 / 할당 메모리 크기 / 데이터 표현 범위\r\n\r\n1. float / 4바이트 / (3.4 X 10(-38)) ~ (3.4 X 10(38))\r\n2. double / 8바이트 / (1.7 X 10(-308) ~ (1.7 X 10(308))\r\n\r\n컴퓨터에서 실수를 표현하는 방식은 오차가 발생할 수 밖에 없는 태생적 한계를 지니고 있다.\r\n```\r\n\r\n# 문자형 타입\r\n```\r\n- 자바에서 문자형 데이터란 작은 정수나 문자 하나를 표현할 수 있는 타입을 의미한다.\r\n\r\n\r\n컴퓨터는 2진수밖에 인식하지 못하므로 문자도 숫자로 표현해야 인식할 수 있습니다.\r\n\r\n따라서 어떤 문자를 어떤 숫자에 대응시킬 것인가에 대한 약속이 필요해집니다. \r\n\r\nC언어와 C++에서는 아스키코드(ASCII)를 사용하여 문자를 표현합니다.\r\n\r\n아스키코드(ASCII)는 영문 대소문자를 사용하는 7비트의 문자 인코딩 방식입니다.\r\n\r\n아스키코드는 문자 하나를 7비트로 표현하므로, 총 128개의 문자를 표현할 수 있습니다. \r\n\r\n하지만 자바에서는 유니코드(unicode)를 사용하여 문자를 표현합니다.\r\n\r\n아스키코드는 영문자와 숫자밖에 표현 못 하지만, 유니코드는 각 나라의 모든 언어를 표현할 수 있습니다.\r\n\r\n유니코드는 문자 하나를 16비트로 표현하므로, 총 65,536개의 문자를 표현할 수 있습니다.\r\n\r\n\r\n\r\n문자형 타입 / 할당 메모리 크기 / 데이터 표현 범위\r\n\r\n1. char / 2바이트 / 0 ~ 2(16)\r\n\r\n```\r\n\r\n\r\n# 논리형 타입\r\n```\r\n- 논리형은 참(true)이나 거짓(false) 중 한 가지 값만을 가질 수 있는 불리언 타입을 의미한다.\r\n\r\nboolean형의 기본값은 false이며, 기본 타입 중 가장 작은 크기인 1바이트의 크기를 가집니다\r\n\r\n문자형 타입 / 할당 메모리 크기 / 데이터 표현 범위\r\n\r\n1. boolean / 1바이트 / true 또는 false\r\n```\r\n',3,3,1,2,1);
>>>>>>> d18433585aef0d0dc9d38d0375a3cf88c5eda686

/*Table structure for table `board` */

DROP TABLE IF EXISTS `board`;

CREATE TABLE `board` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `name` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `board` */

insert  into `board`(`id`,`regDate`,`updateDate`,`name`,`code`) values 
(1,'2021-01-15 10:44:25','2021-01-15 10:44:25','공지사항','notice'),
(2,'2021-01-15 10:44:25','2021-01-15 10:44:25','자유','free'),
(3,'2021-01-15 10:44:25','2021-01-15 10:44:25','JAVA','it');

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `loginId` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `loginPw` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` char(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `member` */

insert  into `member`(`id`,`regDate`,`updateDate`,`loginId`,`loginPw`,`name`) values 
(1,'2021-01-15 10:44:25','2021-01-15 10:44:25','test1','test1','테스터1'),
(2,'2021-01-15 10:44:25','2021-01-15 10:44:25','test2','test2','테스터2'),
(3,'2021-01-15 10:44:25','2021-01-15 10:44:25','admin','admin','김규범');

/*Table structure for table `tag` */

DROP TABLE IF EXISTS `tag`;

CREATE TABLE `tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `relTypeCode` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `relId` int(10) unsigned NOT NULL,
  `body` char(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `relTypeCode_2` (`relTypeCode`,`relId`,`body`),
  KEY `relTypeCode` (`relTypeCode`,`body`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tag` */

insert  into `tag`(`id`,`regDate`,`updateDate`,`relTypeCode`,`relId`,`body`) values 
(1,'2021-01-13 13:24:56','2021-01-13 13:24:56','article',2,'SQL'),
(2,'2021-01-13 13:24:56','2021-01-13 13:24:56','article',2,'INSERT'),
(3,'2021-01-13 13:24:56','2021-01-13 13:24:56','article',2,'DB');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
