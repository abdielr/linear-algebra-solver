CREATE DATABASE  IF NOT EXISTS `linearalgebra` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `linearalgebra`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: linearalgebra
-- ------------------------------------------------------
-- Server version	5.7.32-log

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
-- Table structure for table `ejercicio`
--

DROP TABLE IF EXISTS `ejercicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ejercicio` (
  `id_ejercicio` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  `imagen` mediumblob,
  `a` mediumblob,
  `b` mediumblob,
  `c` mediumblob,
  `d` mediumblob,
  `respuesta` varchar(25) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `id_tema` int(11) DEFAULT NULL,
  `id_sub` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ejercicio`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejercicio`
--

LOCK TABLES `ejercicio` WRITE;
/*!40000 ALTER TABLE `ejercicio` DISABLE KEYS */;
INSERT INTO `ejercicio` VALUES (15,'Ejercicio de matriz inversa modificado',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0´\0\0\0?\0\0\0Iº\â)\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0t\0\0t\Þfx\0\0YIDATx^\íyPW\Çw·j@Ô°ž¥®Y«\â•UŒG#QB\Ô]]5šU6&›(xÄ ‰+‚\Çpx•+Þ‚\Å)TÀbDC\Éi(%\Ç*3;\Ýõ\ÝiT\Çt÷\ë1NÞ§jþxo ‡yý\é×¿÷Þ¯¿…bDP¡)FšbTP¡)FšbTP¡)FšbTP¡)FšbTP¡eG;ñQ\Èx\ÌòeJ+\ØJ$E^@)Ã—%B…–™úô/1{\åq< >w\0ƒ\âCK\à\ì{‹»ô¥C…–“º$|a½\á\åúØ¬A]q&B\ÝVbW–†¯3M¸\0‡\â\Î\"&\Äû\Îs‰DO{Žv\Øv­¯Z6\Zp\Ù\Í\n3U…\\\Ô,eE#$&›¦…K\"‰¾J?š®nýªS¨\Ó\ØjD4ž7µ\Ï\Þƒ\Ø\ãiò¶\Ãú¯žÈ—x-S¡eB{{¬-]p±ž¯\Ð¶*¥!…nB¢\Ë08®\á\Ë,Jýla¹.ƒ/E\Âñ\ØG8¾x•\ê\ÑtZj·l¬÷\Þvr-4[\n?›¾øÛ‰F¾‚‹ù\Ãa>+˜/	D\âñ49[0a\Ä\Z$=\å+D@…–¦tfž°‡G‚†Z{Û­úaq\ì¾s\ÂÓ½ù’@¤)A€rTp}»8¨\Ð\Ä\Ñ g\ËxX–¯\ÞZh\æ\'\ìž\Æõ¨\'_ø$œ\ëQ•|I ’\Ç\âþA{ô¶òÀ-‘a<š4š+p9K\ã„\Ï<¡k6¯\æ†\ÖòeA3\Ðo\áq¾,\é\Çc«Ž`n\ïñØš+\Îh*4a4Y1ª—\"óB\àbP•­!…fP\ìo‡)_\ß@³>\Zd¸N€Ã·÷Ÿ•„C\àxl9vô€\å—\×DMR¡‰¢ÁõÍ£\Ñ\ÃF…RA\à\Óüx\ì÷\Ý\0{‹Þ˜¸b\'\Ã\ÒPNhõ¬Sž^\Ã\î\åŸ\"øz	Š2TXµ\"\07›ø÷\Ä ùxZ\äoû\Ì&lC¾ˆNš\nM\æö¾k†ñ[[z¨\×¦%Ù©H¿y\r$V4%Oò,º\Û\"@¯©\ÖP¡IR…{õ\Æ\ßOJ_ñúUS}³»\ë\ÚQøüš \êô/0¬\Û$x\"V0b4\ßcýSŒÞœ-8Ž¦BC7¢WÂ´\ÏRÄ¿˜µ¢ˆ¢¡s\Í\Ð\Ý1Tð\Ô\'š\Zd®Ó±\î\Èy­\è_\"j$¯“Ñ›q]`M…&F\"\æw‡©\Ý~š**^\ï@a¾/­¢\ëš\Ú|l› @\ße§ eÖ‹\ÒL}ø<˜™XÃ·D\Øx\äÝ„\Ê	ˆ9v\n÷ž€m(Ci•\Ü]Zò\Î$ PÎ±šúþ5Xa_¤‹LTUù\Ð\Ü\'\×#3\Ô\r+we‰Z\Ìh\r™ü\ê¦3¡¿b6l‹v„\î¤a5u(\Î…\Û\Ê]\Õ\æl\r’=>Áö³wQS_…¼Ó\ØüÁ{p9\'oŸ¦¾±“ú:ã¨„,®.i<†=ÿõMsÐ¯.š}”…\è\ÄlšŠ¡.‰’Ÿ\Z!•_­NÿCñ\Ï\Â\Üh#t\'\r\Ë>BVtbb6a\êPˆisížP.Ž\Â¾¬‹•\î©\àS9…f\î!ò›¹\ß}:¼‹dì¢«ƒaoªÀt\ï\"a)£/cð\\ŽX”©”„&—_­\ÍÝŠqŠpŽ6§\ß~\È\ÑIÃ²e*(E\n­\É\\‡QV_\ã\ÆKþ2…Gž&\×	dQ\ï‡\Ð\ÜX,0ë¿—~C\í¦\Ø\ï)L0c_%÷©\"yÝ…&˜_\Íx\â…)f?¿8ôÃ B£\á2Ö\î‰A“—`£w\Î\çV´\Z@5\Æb\ç‚}\";¾Ü…K•:5X\Ô^?Ž\àˆ\ãˆ\nö\ÂúÍ‡S§§25I8x\r\rš«\Ød\Ùÿˆ“\ïNÀ\Üñ\ÂdNhûoñ5\"xÝ…&˜_\Í\îÁ4®=\íö?\àkôÃ°BshŠ\ÏÁc©\r,˜\áw¿\í†!óüqCwWi\ÌÀz«÷\áÏ‡\r‰kð\î\ês\\xRH\çþ°Q\én\å\îxM\Ç\ämùzÄ©\r¸z0)ºLF]\Ïa\Ývª\Ú\í=\Ùû\á½\Ñ\r®®®\í¿\Ü6\Â\'¡ó¤s\í­\í˜\Èõ(!-©“\" &4‹—ü°Ñ­\ï\ÂURÿ³:	M0¿š-õƒ5\'´_£úM¨¼v\ËFö…]P	\ZSÿ·,>„O\Üiœ>Í½\"]a;c7ns\æjk«PQ–‡\Ä\Ø8\æ6\r«ºlxM¾–-\Ýoøø\ìÄ²qfx[Ô€M?þwc+lGXbÁ\áÿò5\"x\Ý{h’ù\Õe¾˜;r\æ\ì¹\ÇW\è‡A…V§…\ãh›¹³Ú¨…¹\ê<\êWcÈ¸¯\Ý6\Ìekqy‡\ÝN¢ ž\åna`èª‹7<SŒc~\Ñ(~þQº•§?\áü[{\Éñqˆmÿ”\Ûu]ö\ÐV\\=G`\Ì\×\nƒ\çC·À\r\ÞT¶„&—_Í–û\Ã\Æ\Ä¶þ\å|~t t\Ç\rË–ª`\ÛVhM2N¥£¤‹\ÖP\'¬\Å\"\ï‚Vó’5‘K0\Çû.˜\Ú3øx”‚+Z´i@ö\ÅTTT„ý€E8þlÊ­¹\á-¸ \àT\\Ë¢ZEy\áð/¿©ÅVxc^xótR[ž#;-)))\í¿RÓ]\Òùœó\Ó.L\án‘3>\ìTüŽxuù\Ðùˆ\ß\ï‹\rö\è=qv†!M\ÊÊ¯\Ö\r²§“ˆ¡;nØ§È\ß\ß\rö°\è=+v\",­ü\ÙS\Èý¼¾]d™©>‡ýB7lò8Œ\Ä\Ü›°kW{#‹—õñ?|ö\é„ŸOÆ¹ˆ |w\å1Xuœ\ß\Ç\ê\Ã)H?‰#_aÞŒUð:’Œ¶\ë1lõ÷\Þ0£OÁš˜Ÿø^‚AQB\0\\g¾‰\Ã\æaKh¦,K\ÓL‰\ï³Ye\à}QBò«›\Ù\Â\Ç$\í÷\Ð2Á\Ö<@×‹³OJ‘|I×ŠPû³ VƒÚŠrT·¹ª™\'Pñ¸¹’mj„ú—f\r?=u·>\ËPº¢y\Ú‹&sTh£¦ñ™+0\Æ=G¶\ç¯	\Í\åµxK1«„EõThR¨“ðÉ›\nY“,q`E\Ñ\Ñtz9ú)\ÆÀ]`..š\Ú\áa¥@¯\Å1˜ñHi‡\Ú˜š(ô|’@?¨\ÐÄ¨C˜£Llü!\â\ÙNJ+th“a2ðcœ8CB…&†—×¾“n¸\"_\ÊÈ¯5]\Ãt’\'„>žI…&‹f\Â\Ô|Ž‰JS5–ý¡¹o\"9¿º\ZÁ³ºÁ|Á1mJ*4A4™®nú6¾œÿk<ûCÉ¯\Ödb\Ýðnx\ÇK\à\î­Th’\ÔE\ÂÙ¼\'œ\"D&(<—ƒôþ\Ð-H\Ë\ra«`f÷!X“,ü·©\Ð$aŠ\à=\Ýv\Íw«5´\Ðó—[#Mè¦‹«0\Ø\Ü	\"\Òb¨\ÐD\Ñ\"w\ËX˜Mö\Â1Ë…†šôþ\ÐÏ‘\"´9\îcñ†2e\"f‹¨Ð„\Ñ\\ÝˆQ=\í°ï¾ˆ³ah¡I\ïý	Bsw9Ÿ÷~U‰¨*4i´9p\×N\á\Õ\ÜiˆÁch\ÒûC· ^h¶,\Ê^\Öðùü\'š8Z\Üò˜„¾³ƒ!p‘‹;›¯ûþ\Ð-ˆÍ¯fP\Z8\çC\Ì\rNZ\Ø\ÊP\Ìÿƒ-üô2Æ³?´„üj\ímxNŠÏŠø\ï<ThYh@\ê\ç£0Á=[\Ô(\ß\à\ÞZ$\ék1z\ÂV\äHXÙ¡B\Ë[g\Ëˆ”}W(#­@ˆ\Ó,‹1öx	*´lhq{¯\ÓÜ¯·Úª\Ò>OR\×b²\Ã~Ü“fQ¡\åD½s°»\Õó”Ÿ¡¾‰³\æ#\è®ôG#¨\Ð2£-\Æ\â…*H?WFŠ\Zù»±4T\Âj/A…–sÒWKc\éva\"\'-5„š‡\nM1*¨\Ð£‚\nM1*¨\Ð£‚\nM1\"€ÿyk\Û#¡{‚\0\0\0\0IEND®B`‚',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0±\0\0\0?\0\0\0¯“)m\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0t\0\0t\Þfx\0\0WIDATx^\íœyPW\Ç÷ŸAe½R1\ë&®$«\â•\Å\Û5¬ *¢«&$\Þ\"	f=@Q\ZJƒŠ\\# \â¨FÅƒ\Ã\ÄD\ÔBÁƒCG# \å\0B)*%\Ç*3;\Ýõ\ÝhDR8\Ó\Ý\Ó30\ä}ª¦\Ê÷¤z¦g>ý{¿÷ú\×\ïO tD)Gˆ\Ë\ßS±„NQ\â‡Yó]¢f;º\"q\'¨Kep_$EQ\×ÿ>\Ý%\äÁnX§\0\Åöt%D\âN¡ñ¼ w\ëh¶M\è\0ý™wQ\ÛM¾\"1Á\ä!L\"1Á\ä!L\"1Á\ä!AYŒÔ“\Ùlƒ ú)Ò_@…ž\ëtDb\Þ4 k\ël¬<]Í¶	Â¡PvøK¸…ß‡’\í‘˜\'õ\é\ëa·8•d	Y\Ô%ˆtuD`n#\ÛÁ\"1\Z¯Ág‚¤¥bß§R¡¾,q>+±\ç¦1ow7£$õ §œGRlöÿR\Æ|=h.A\êÁ\ÃH9Ÿ„Øˆýø¥Œ\Û\ÑTwwÀ\î_A|s\"1g\Ôx°\×6žiLB!&4^\ÜLDlR¶L\ÏKú¬üh¾\0gs¨\×4\è\Z$.Ÿ B¡÷Ú›q+À\çZŽ\Æ.\Ëg\Ó\á\è8\í>®‡+\Ý\Æ&s¥.K­\íRl jú1¤Æ”¸—<­\ár¤–mÓ¨ˆ°‡\ÍF\Ö\æKð´vAû\á*aoƒ\Ù£qA\0l‡{!ý5\ÛÁ\"1\'(T\ìwÂùñxn¨\\\Ø\Øk$›1ŸŸib;˜)k¼+¬f\É\Ø?\èŠ\Ìø9\Ú×€xW+Ì’Õ°mP\åˆtø\0®GŸ0—?ˆ\Ä\\P `\ÜûX”\Øf€±%V\ßÇŽ	ƒ\àž\Ü.q\ã\Ðwz(\Û\â‡úþL\äŽö\Ã5\â\Ç}1=TÁ¶uA£*\Æý\'\ì\Ä}ž\r‘˜ª\ë>ñÁ¤ˆ›w\Ä\ØS<‰\Äg\Û%~•ÀDb‡(¶\Å\êa0¦1‘¸ýp¯ÀDb‡¨*¶­ú\ÙQ\Ì\í?\Ûnó³˜H¬núŽD¿\Çð’\í1FÏ‰k?o\0\æ\ÆÕ±m\ZO¢gbÐ¢\Ól›\'µñ˜7`.\Ú÷\Ñ3a\ÑiI.]É¤½a³5—\×*	‘Xª<ø\ê\Ò\nÞ¹\Z/˜UjoL‰)”\ísÄ”\íw\Ð\Z÷T\Èö¶…\Ë!î‘³Tö9NÁö;lUe\Ã\Û\Ö‡ªø|kj\Èÿ\Û@\Èyc\"±¨G!ø§3Äµý8\àµ<\Â7\ÃyhŒ_±Qñ™¨4\Æ#¯s¼l-dy\åPdK\á±\"…\Í\ìÿ	\àun0–­•!¯\\l©VD‚\ï\á”\ßb¨¥=\"y\ÜM\"\ë \á\ä¿Ñ¯ÿ8+ü†R÷†j@yþUdV¡Q„¡†j(Gþ\Õ,V5\n¹jŽ`¶e|q–{\ZB$ÖŠY\ë­\ÑkbŠŒ	L\Zr›†›c”_>ç¼˜H¬\r\Í\ä\ÄÁ–¤¢}O0,µˆ›kK\×8\æ_\Ü kC•ƒŸ˜cŒ;ù!%®x}³Q~\È\ãŠMVbª¾u†6«þ\æ[š\Ãñ@µaW&oA¡h\×$H¬¿u÷O;¦\'1U\ì\ÓG±nºö<4l¢ª–\ÂV2K\Ï\é1e\'ð¦!a,\Ì\ì^\Î\í÷\å-qSUR‡bg`¢N¤!OQ§Wù^\ãÝŸq‘wic\Î|\å„`K¬¼ü5†H¬±>\ËXk·\r\Í?/\Ç{’\á\ØÌ±,•»\Ä\ÊR$®Á\×\ßIq\"-Šg\Õ(¹qñ!¾ðôÚ´Jc»òvL·|K—Œ#qÓ©…\è#‡\í‚\Ë¹\ÒUõ\Ä\Ì;×—!\'\Î+÷\Ü\Ô+µ °žø÷(³\Öa˜d0V_\à6r“Xý	\ë<]\Ðyñ\0ý2!k|‘ü„O\æH\á\Ññ\ï1wœeK‘H›Ž”\â\"w!(¨\ãk÷Átö/4G\â\Z™3\Ì%\Óª0\äût]=1ý\â&c“´e*†y^\Ò\ë!½\ê‰‡úö6Œ•ô†\ÛIn‹ó$¦ ˆY¿ËµZ\'7tu2¼7ž\ÄSŽ\ÓOSw\É\Ë\ÞÇˆM7xFcHL¡,\ì3H\Ìfb?×“\Ò£\×N´A\ã±\ÔA‰õ¬\'~ª(“$\æ˜ý\æ`\Ú\Ñ-±\ê&\×\Ë8<SF¡$b=örª£«EzdrU¸µ\Å\ï}•\Âýö$ý¹)Gð\í´\ÑX|¥†štQ(\Þ5™‘\Ø‡^°]†\Ä\Ä%Ö»žø-¨Ò½˜&1kY\â‚N‰©¢½\ØUþf¸×†Z¾›bªt.G5ÞŠAt†¦\ÜIó4ú8\Ä3Qƒª´Pøúx\ÃÛ»ó—o.jMÔ¸¿c<$\æ.ˆm«\Ì2$&.±þõ\Ä\íh.;F\âû³=\Ú\Ñ)±2\Ã[’8.\Ø\Õ%`K`žö\Ô@%G\Ø\Ò%\rCXXv/‹O·Ê\Ëÿpg›=†\Û,Ä‘ÿ²]| «q9\Â>\\@­‘\éo_¹¢IL£úrÄ»/`_HÓŸ±«A‰Å¨\'~\Ã\ãp\Ì1sö>b;´£SbU^ |\ã¹\å&tE4|C‹µDm&\Ï<Ä²ö¿P^ñ\Â\ßþ\ê4QºWš’Œ\ä\ä\Î_)©xP¯+O`\"ñœö<Ï˜zN,F=1]¹3\Ì\Ì`¿¯’\íÑŽîœ¸!›¶¦1ƒƒn\ê\Ïn\Âw—ß£ª\'±\ëÈ½‘Zý\ÛNL\è;	­“Z\Ñx]–Ì«\È\È\èüu53\åZ¿_\n÷Larb\'\Ä\ìÁº·0z=qLJ\'µ\×_bQ\ê‰[¡\Ê\Â0]ÌœX“ _ô[‡]†*\Åþµ¸\ÞY\æA\×\à†l3\æ\Z‚)^IxÈž\'¥¸ˆHo\'|\Ø\Û\Zó\âSmY8C¡<\\³:\á€(?º®žXŽ\Ô\á\Ø\ì<ýÇ¯À\î¨xd\êñ\Æb\Ôk Šwa²\Ä.\'#$Ö„÷\Ó\ØøM~{\ç\'z…‚°5ðûõs]÷Z×‰§\"Xô\ÍRz.z\×3´®[a1\Ç\â	NkxU(\ÃVoCb\á\Ë]ªg¹ˆÛ²\Z›º\êº3Mg\ÃJ2\Zþ\Ýn\ÖÙ£Q]Û€%C°\æ\"·‡³\Ä-¼*\ÆO¡°\Ü})<¼¼°zÉ—Xµ9\n—\Ê8®^˜\Êôoð¡\ä#x]1vžúÇ¦ù§e\Ä#xð“øFË¤S\Ò\î\\—	¢P\ësf.Í±ŒH¬úx¸Zh\Ý+{T®ß½i½Sj6x~å˜Ÿ‰µ¡º†\r›a¸\Ïuý+¼Q\â’\ç˜óx®‘H¬\rº\Z\Ìaµðø/\Ù„QÙ¬^¼¾s\"±VT\Èñþ\æŸ~o\à\Û\â=db1Î£\å¹\Æ^˜´KÛßŽ‰uP\Ü\rV}\à˜ÁŠ€z\Êþ\Ä\âœý\ì œ,ù­‰u@)B1\Ý\â\ïð\Î1p„4z\í„\Èû·¡\çy4§y`ˆ4xÔ«‰u¡¾€1˜\Ìcx„±%y\â7\èujøA_‡(<\æ±D$Ö‰\n·|G¢\ã~´„\Â\Ø‹¼?ñô9J°\ÏþŒRnõ\ëm‰9 .ð\Ç\ØPc@‹-±\Èû¿Aó GÁ¡Ÿ\Âx>\ÓH$\æµvNˆ\Ù2þ[ñs\Æ\Ø‹½?q‚ÏƒBE\ÔLž#\ã=\â‰9A\ãi\Ü|ü\Å>{ð\Ù\Ô÷\'nC\èy¨ h\Ê0¬:\Ï;~\"1W\Z¯b\ÝH[ø\ç‹/YÙŸXóh\ÊÚ€Q¶\ÛP `ˆH\Ìf¸=\æ›…\ÇE~¨µ‹ybA\ÐO»`4–&\×J×ˆ\Ä|`†¼‡ið\Ï\ëi•\Ó]Ë««0\Ù\å\0	}ˆ\Ä<Q\ÊC\à2\'÷Œyw¸\'£,\Ä³\æ#ºDø}}\"1o\Ô(•¹c‘´ˆm„£„<\Ø\rK\âÚ·1‘Xôsd\ÞeÁ°\ßc­ž¹8‘˜`ò‰	&‘˜`ò‰	&‘˜`ò‰	&ð‰<Î¡x˜F\0\0\0\0IEND®B`‚',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0£\0\0\01\0\0\0¶\Â\È\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0t\0\0t\Þfx\0\0\nFIDATx^\íœyPW€÷Ÿ\àÁz¥’¬›du³F41K4\Z×¸€R¨xP®šuã•ˆ$˜õ\0\Å\ÔPº (*A\ÃaT<8’˜µ5\Ä\ãYr\å©¬b1³\Ó]\ß\Î\à(\ÌLw\Ï\0\nôW5Uô›\áu\ïú½_÷\ïP‘¦\æ;zsE0XA¼Í‰´$\ÒÓ—ðf/?ökM\åÍŽ\È\íi$¥§³\ä\Í^ø\ÙûÅµ\'Y\ê\å\ËU\Æ‘Š´™Œ+@_÷¦5tœ]1œ¿‡\Z~R†*£$zÎ¯Ž‹_6Õ¦9ˆ\×bðhQMˆ×ˆñ°_\Æ\Úý~ôö\Þ\ÂÓ±X\Z»\ËBŽ\É0L¼½‹©}Ç±¹TF\ãm€*£•™L\ï=œµ•\Ø\Ö-£Hi´\Ý\ß\Þ\Í}S	\Õ)ŒsEb…\é\Ø*:ò—º\Ò\Çÿ ÷L%rPe´Š@\éOzNH\ág\ÑT$“\Ö-£žs+\ÒcjF½Œ5Ÿ\ã\Óy‘Eò\Z¥P‹\Çs\ãø\ìºü§\Êh\r]>K<\Ãä´‡ƒ•|Z·Œ—#†\Zz\Æ=õ2\ÞM5ôŒÄ•Ë”K,\'Á«+Wž“1\Ï|€*£t\ßòòs\Ó\ÈT2Y4\Ñ\Ú\çŒwR\Æ\Óml2•¦cñz<#zLf—\ìqW\ä\Ögc\é:`gdÚ¨\Êh\'‚ú\Ò\Åg+¿˜J” –\Æ\àþXd,%\Æ\Ý~…\âõŒ²œL\"\éŽ\à\êý)r;F#b™a¨\î\è\ÂG§ä­«U-¡\Ë#¸_G\ÜbJ\rm\\	÷(\Ì\ÚÈº\Å^¼\Øõuf­Š#\åH™a\àk~\îf±q\Ýb¼^\ì\Ê\ë³V—r„2›¿ø§\"f071’¢c\Äø\Î\"¶ \ÖôžLô…„þ\Õ	\×\ÐBYCµ*£„«kù›\Ó\0–=\ì\Z\Ú%\Õ%§9|´€ò\Z…+¸:´\ä|ø\"\Üc)“ñëªŒ¨\Þñºtý\'{jL*6Q±e4Œ\çQ\Æ\\S•\Ñ,ZŽ\Î\ï\ÍSƒÂ¸\Ð\ãkFw|}û|ZzÞ¨\Êhñ:ñŽt›–U\ÚP±;ÉŒu\êÀ¸d\éð˜*£9t¹,|É‘WBòe\Ç\ÈT, =„ÿôÎ“Ü«nu2\nUT6·!U[™\ÐÁ‘‘o*\\I«ü\á\áohpž\Ò`k\Ñ²e¼_žG\Ö\æHV††·=›¼¢J\ÅY\r©9ûû\ädÁ<D(\åØ®Ï˜7ÌƒÕ—›w\"§/\ÅUÓ\é_(e¨˜¡š\ÔñN8_G‰\Äe“–Q{…Œ\Ð9¼ÿqÛ³ó(ºu“K\Ç÷’²6?ÿUd—\Ù\ÐMi`Å \îLÜ®d\Ý\È}v¿\ãID3Ë¨=ð>=5½™\Ô\ÆÀ±®Š\â\Üd\ß]\Í	{Z¬btT\ç’ø.«›\à‹k/e±is&{Ó“ˆ\Þð5\Å6ý\ÉZ¾šù4š>‹%Ï…uõWI\çG|¾ùý0ñ—\\\Ö\Î	\"CÁf¸1vuu\Û\'ŒÐa‘E\nƒÁ-#\ãý“\è¤Àò\ZZ»\Ïgü5ZŽ\Î\ë…\æ\Ù\Ù|+1\ÐX‘Q (a.Á\îX7‰73X¸ƒ2}od|†Œ\Ïðò¢ã†z¡\è[b\Ã\ÃküZµ\é \éFZFÆŠD/5ò3T\ÌÑžó£\çÌ²W\Ñtœ\È‰˜­eu\'Ÿ(#r.p)z>k\Î\Éi3w8›À©\Z\'—¸ðô;™†N\\	-!£@q\Ô[hF°An3Cû\ÎglˆÀ…°7\Ð8Žf‹DtÇ¢ŒÂ…5,Š+‘5Œ\êW±(¡\\r\åYs2øcˆ±²\Ã\é4r·\ä^oñ§2·ð\á\ÐþL‰\ØN\Îs\Z‹”gG@@€ùW`Pû¬N+.†6\È\èÅ§·ME6\Ð\Þó\ë¸²f¨\á|Žd\ãM\ëÛ¢ŒÚœ`–¤\ËùV¦²$T\"Ž¤+$jú4–FFÅª\é¯\âô\Úrl™–5/\Æñº¡%{“ô0\ÊšLFñ&¢ƒ4Ó°4®6l\ÑOJ>\ã#t<\Z7\Ö_³QF]^(A)ò’J\Å\Òx‚\"/Z\éE\rC\ß\ÎhÒŠ\ë?¡=\äÏŸþ\èKv“ö\"•\ç‘•™AF†ùWfVç«¬”ÿñ\Ã2wú¸Lb\ËME6 \æ3\Ösm\ÝX^\î3†5Wm”‘\ê}”œ<ª=‹øø€\åÙŸ¾h\á[~l\Ôs\êZ\ÉÀ\Î\ãI­[­5÷ŠOs\äp99\æ_‡œ¦\Ä\ê	}0Di\ÇH\Îq¬¡\æ3>D¤l½î¬—X€X–‘jö\Ï#U\êÛ…+l˜\Ê÷\æFt±‚ã‰‹™Ð¯\'CüÓ¹lª˜P´\Ø\0Ož\ïØ›ñK“É•˜K´,†!jõÃ°\âI‚\Ò_\êPóc\\³o\ÎhD,\Û\Å\Âø\É\âÿp—ü¨9s\Û\à[A dq5m\Ëü¨­ao>£Ó‚P\ÆÜªŒF\î$ò\ï\Ù\ËH+ø¥QÀSw\ë\ÉKf³x\ÛE…\á™\'Ÿq\Æ7‰P²]©bSœ\Ñy\n»%\ÖÃ’2\Öq÷\"_F.`\æ\Ô\éøúû3{Ú¿xoqû‹e®¶[÷wOÁYÓŸü\'n©\ß\n\ÑñÝ‚?£\é9‡}\ÓXy2¶3´?\ày\Íøj\é\ÕG[¤–/gô@\Ó?©¶­\Êh†º•¾¦S\å\ÆYU¬PI’·#ñH¥0¨2š£*…qN¸­/kC³Ç„p‘ðÁ<û\Þ7’kUFs\è¾cÁŸ\èø½õ]%i´ûñ\ë\éÈ °’\á-UFsˆ7\Ù\ä\éˆó¤Š\\ôˆÇ•\ÏX{‰¬M›\ÉÜ›NRô¾¶-±ž¦¨GE\"£žrf\ÒN\é3©\Êh¹/\áø\Ú\'\Ê÷\Î[>c-\'—z\áû ±\"™£\Ãl\ßûo¢z\èrò\ÒSo.\ã)nªŒ¨\Ú6\çN>lµ1Y¢\Å÷¦k\r\Ãao\ïú-L±”hw*O@l„}õ¹µÉ“/ø#\'0¡\Êh¡(’aN! ×¶‹\Ù\Ò2\Z“_Ýº¿\Ý °\\M\Ê8gF)O@l„}õ¨%Û·\'\Î>[%\éZC•\Ñú3,}Å‰Á\áÖ²‘,\Ó\Ò2\êÏ­``©d<’±†\Ï}:\×\Ý\Úav\ÕCŸO\È+ñˆ»&+*¡\Êh\'ƒú\Òi\ä2UZ^F\árC\r=\ãžG2\Þ%\Õ\Ð3zÄ•›ŽmÃžzEQ¼õ{7b¤n4¡\Êh}~¯vó!µB¹--#wR\ßm,\Éõ	ˆÄ\èÁd[`{=D®\Åy\Ðexr“\ÃU­¡?\Ç\ÊA\Ýx]qð»\Åó…bÖ\ÂòúD\\½ù\Ô\Î\Ì#›\ë!”7\âY\Æ$JßŽòUF«ˆ\ÜHžÀÜ£e·\îÇš\Ïx*‚s\É+)\âXŒ/³b\ìÈ¨²¯úóa\éõ{<õW•QŠš\Ã\Ì\ë\ëJ\È\é–\ê\â\ìC¨.\áô\á£”\×(\îÍ›Žû]\Ð\×eùŠv°T%¹¾u\".“¶É¿“±#^OÂ§ÿt2ÎµU\å ?\ÏZ¡„äµµ4\â\æ\à.‡\Æ{\ãU\ÅSUF™h\×\â=&‚\í\Ü\îm\ëhþÃ¨	ñ\\²aR•Q6z®$Ner\ÌÓ±\Êo\Ð1q\Z\É6>F•Q	\â\Ï\ä9k:Pù5\â\Ïù9ký\ÙL\ÖPeTybPeTybPeTyB€ÿ„ \Ðvx²to\0\0\0\0IEND®B`‚',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0¥\0\0\0<\0\0\0BzQ\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0t\0\0t\Þfx\0\0\n\ÚIDATx^\íœyPW€÷Ÿ\àÁz¥’¬›d5®M\Ì\Z\Æ5® *¢”«fM¼•³ \ãJA@%h8ŒŠG“ –\"Fâ˜Bb<K¡<©®b1³\Ó]\ß:ˆ\â\0\Ý=0\ä}US\Åk(z^÷\×\ïý\Þ{¿~@ ù\Ù§\ÌAM\ä\Ùdœº…l.[ƒR`w)v‡R`w)v‡R`w)•¢?G\ê¶\Ãæ‚ &ò\Õýlù¡\É\\¶!¥\"ns\è\Óa|°ãš¹,x)Ÿ\ïf\Íi½ù€v„”\n(\Û?‹\ã(jˆI¸fŒñ|^C9^n> !e}”ÿˆow\Â/*\ì˜e\äg\Æ\áÿÁJŽ\Z\Ì\ÇlA\ÅyR7l$ew±a\ëø.\ßÊ“kª‡SKò \\\ÓO\ÚRÖ‰‘3«\â\â“f\êÀ \ß\ähb,IIóy»“{­\ï\ÉRÁ±ELûº\ì~I.Idò° rŒ÷‹ê±¢ò\ÍŒ\ï\æ\Å\ÆB\íÑ¥².JS˜\Øy «Ï©»Àò\åp\Ül)e\Å^|:{²é–¹,\æ\êÂœ\ÃÖµ–\Ú\êa {Q/ºú\î\ç®ùˆZ„”µ\"Q¸ÎŽ£â¹¡2–´µ”raƒÚ¿\Ë\Î{\æ¦v=\ÞË™¡1%\æ²6´\ÖC*ˆÀ\í/¾¼¢-RÖ†!›E=ŸclbUó£[Ki<½”\ÞÆ“üP\Êr¾ònÍ€<sYš\ë!\íÑ–\Þ\ËN› õ)kÁð“?¯¾0EÁ\ä\ã\ØZJ\éB0ýM-å®‡R\Þ!Á\ÔRºE›\Ë\Ú\Ð^™\ë_Ž m\ÏÅœ\Ô`¥\Ò\"Žt£÷f~3Qƒ­¥\äV<#Û ®\Ô\\–¯5¸cwh\ê`M=\ä\"S\ÞÒ…O«k…”–0d± {K…j\Ê”\Ãqµ¥”R>k‡ôc\É\Ï\æf\Ép¿^ž|Ql\ÝÄªUõ0\æø7\'z\æª\îÂ…”.­\æ\ïN=Y\\u“s—\Ü\Ôõ¬™\çÁ\Ëm\ßdÊŠH\â3Š\Zd\é­>\îfÒŒ²\nò8>)9T˜§ž†¨‡žôO^¦…k„\êE!¥noû\'m\Úþ‹]V®L\Ø\Z\év\'\"§¸¼A2À­¥d\Ó0ZT^G•Q„ò	ôšÕ™gúq\ÖM\\3\Æpd.]»³\à„º¸RHY“\ÊA‚›#\í&¤òp0+\ÐÆ­8F8µÀ+NÝ´š²&†L\ætqäµ…Ùš\æ\Ø ?€\ïKt_¥j-¼II)••P\ÚØ¦”mfTG†¬¿fqY“F:\Ëò·t8Û©ª\×i\ZRJ…\Þñ%3¸±òB\ãz\Æ\Ü@z\é\Ú3ñk\ícWA·I\é„\ÃÀ5¨¸mŠ¤¼WœE\ê\Æ–¹5¬¼R«R“\ÊO}\Ë¥©`¹\Ç\Î÷\Ý	nd)õû>¢£®3³\Ùj’±9SÁ·“ŸE\×užª4¾º¥\Ô_$9p:}\ÎÖ´,ò®_\ãü‘\ÝÄ¯À\ÇwiE\ZúRý\Ï,\íÓž\Ñ[Õ®6\ØF\Ê{\Û\Ç\ÐJ×“%Zó¾žV>¥©™(\Ë\Ï$\ÎÿV6À‰+Î§²ac\n»“b	[÷\Ú\Ò3õš\Ù	\ÝóSùAE\ÇS»”\ÆK$\Ìô!*\Ûò\â¯ü[&«§¬*D\âÒ–\ÏÑ³\Åýd*½¤¼ˆXDP\Ð\ãŸö›ÿ¢\ÛHYã£n\0!y\Z\Îó\Ôò)enM$6)‰ùow\Â\Ç\ÚWc‘\Ç4¤gÊ”$NfXPŽ†Ÿ‘“‹_G\×r4\ÛT\Ìù\Ö\"¥D^ô\ì«{ùZ2~s¶qU¡—ò\ÕT\Â\âN’<\é9^{De`)%òC\ßA\ç0˜uJ+e›¯}W!_&\Ü\Íz)+öú\Ð\Ùs\Õ\é™a¸º\ÌA}z¦\ÄÙ ·\Ð9«\ÎõT€e)\rG	œ£`yH\â|\Ø,VVò\ÝbD4\Ç\Ë\r›\ïÂ³\ï§(_“¯r<eŸô\ïÁ¸à­¤_l¬AˆÄ¹\å}MRzð\ÅMó!\r4m)e\n\Ã\Ñþ\ÝGFÌ·\ãñrŠúôL‰‹«ú›®\ç\Ö_Sþ[”R:»Š¹‘¦Y?\Æ\ÜÌ.®wú¤üX4Q\é•i,••H«!¸®½1²€LqZþ~øùYþø„²§\Îp\Ã\È\é¥ošžlOb«2n4Ð´¥¬¼½\é0>¹Z\Êò¯ðn­%¤yp¯uƒX{\ÙJ)õ\é˜Ÿ¤pf©4ùõLŽ\Zr	8E!¡„††²b\â\ë8½±Dû;$\Æÿøy±+]]Æ°\é¿\æC\Zh0)\åk\ìÀ\ß\Âö\à!gÿ£OvƒH)q!¸¿©¥\ÜU-\åSK\éF¤†¬£\ËkFðj\×á¬ºd¥”†¬@\â•ra!\ç\êhUMq\Úö0ó«ÿBÀ—¿üy\Zi\rÚ’È”ž9@jJ2\ÉÉ–?)©\éœ)«¯¥\ìmj)‡«Šj\Ò\Ôc\Ê[ñ#i7\"Ž\êô\Ì(w‹úôL™¢µƒpppe­ŠT!\Ë1\å\íd\æ~š†’SÙ®¹|¶¯öÏ˜·\å›~y¬%5þºŒÞ­G’ð\à\å»\ãnþ	2¦“žnùs0\ãu^XS+±²Ÿ©»q\'Z\í‹9`ó|\Ê*\äB\Â]­—R\Ê_Ë~K¨N\Ïô£—\ç¨o(+Ž\Z&¦¬œ‰ß³`&	õ}\é\"\ëfò“¥ž^.\áH\Ì<Fu\ïH?\ß$.˜+(\å\í!\ÂÏ[vf\ä¢82U|\Ù\ÆG¢`M\å\è[[WõTó)sSY¿f/·\å\Í)+ˆŒÏ Hó‰\ïr<x3b²(\È;Lø´)D\äh\\šŽ*côZ¤49U´ƒ9Gók­\ß\åÙ¡\ÓYðýMS#\Ý|x0Où6ÁªWœš·NpðP\Å\åZ\ï°yž\Òy\Ü#oZ\ÖO­RVr\'\'†O]Lb\Îo¦_\áúq\â\æOeÞ–sVd7\Û\'÷vŽ\ÃY×ƒ…\Ùv7\nk‚øqö+\è:NgŠˆ¢N)\ïs\çß„\Ìfòø‰Lóõe\ê„÷øp^${óU¨ß„\Ð\ïÿ˜u/\á{À\Öas¤‚o&u@\×c!jžñú¥üq¦k\Ãx¥Sb‚:(%\Ö\Ó·(Ô¬F)kR—“ƒ\Ö5«Xù© cy_žÿð{Uaž²&†™ýŠ]ýR¹6/xý^|::\Ò\'è¬ª!eM\äklpw\Äy\Ìv\Í4	Ì”\Ä0ôg\ÆlWw%…”O` Ó¯Žo|®môw½?\å\ã2\ç\Ðå™·X®r\×:!¥Ê¶ŒÆ¹•7›\Õ&eˆý)A\æúwZ¼\ä‹Ú‰!¥¤¼8ý¿LmM„\Í×¾\íj\Ê**H›\Ög\ï\Íó2•\"¤´„ñ$‹^s¢\ïòºMj\Ç\ÖR\Ú\Ûþ”÷1f³ðµÖ¸E^V=‹!¤´ˆc\Ýh5d†$\ÛKiwûSšòByçƒWó\Z£!e-³òz;oJ\Ô[ik)\íq\ÊË‘n´Š–W„”µa<Í²>\ísEu÷ck)\ínJ©\ÈÁ\Ï3<¦þ7,!¤¬™«q£ø“k˜\ê§ý÷¾?¥ñLý:}\Èn\r» W\"¤¬‹òƒ\Ì\ìÖ‹…\'”\Þ±?e\å[§‡fw§\×\âl\Í+bB\Ê:‘¹²y4.c¶4ðKnƒ=\ìO)_‰Å»\ÇD’5\Ä\âU)\ë\Ãx†\ÕnýY˜\Õ\Ü2Gƒ;œ\Ý\Ïõ—¬\ê„”\n\Ð\ç®\Æsx0¿X¹r\×\Ü\Ñ\çü‡¡£¢8oe~´RF.ÆŒgløYsYðú\\‚GO N\ËP\r„”J‘oq\Ê\\\ÔD¾‘MÆ©º·ùQŠR`w)v‡R`w)v‡R`gÀÿ|_€B¨&3\0\0\0\0IEND®B`‚',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0A\0\0\0\'\0\0\0‘\Ôú\Â\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0t\0\0t\Þfx\0\0ðIDATx^íW”Õ¾\Ç\ïp\ï\í\Þs*]y’e–†i”º´t_*\ÍR\ìå¤–bŠ¯€Š˜\'4BIEEE\rDG<!/¾µ\Ô,EV(\ÈB/s\Î\Ìf\Ö\ç\îyQf`g°¼û³kñ<Ì³÷\ï÷Û¿ý}ö\Þó°ŸC\â­¥«ò§)(n,gœ\ÇP‰g¿/\È\ÕZNü\Îè¯†óúŸ?&­\År‚»(&ÿ\'ž\ÑÕ–\ã®\Ñu?TE{ò_\ÝD…\ÞrJ\"\é&Ht–\ÖK|=üÏ¼“P#º´k<j\ä\Î.\ÞûÓ»$©,Ç†\Zb\Æ>É‡)M–]£\Ë~\è+‰Û›‰	\Õ.\ÇN\"ù½‘\"\è4n&½\Ï3c6»<š1TF2\æQŠ þ\ZQ\ãFò÷[\ÍÇºø¿:‰m\Õ\'A]õ£õ—o\ÙoYj\Ë	‰¤!E\ÐšóYôâ«¬*qVš¸x0Žˆeo\áö\ßC™½.š]7x3Â¦s\á|\æ—@ñõ\nNDú0{\Ëy4–¿¹\Î\Ãø\ÑB\á’A¼ºº\åŒDÒ\"\èjv{\áþA2uÁ¼N¯¾NI~!ç«›ÿß¦¡†šLy\éSÒ»°–*‘<\n¤ºJ\ë/lð|U\Å]Wõî’¿d“\â~}$£_‰¤+H\ìÚ‹˜41œŸ\äü®S´\çCyûý\Ê,K“IwDŠ`—h¥<\á>Œ¼l9–t@{‘p¯™$\Égb$\Ý)‚]\Åp‹Ò‚–I{·J)¸pG>#\éöH”H$=\Z)‚‰¤G#EP\"‘ôh¤J$’A‰DÒ£\é’¶TspûF¾ù†\è½JŠ+TNüK”Ž»·oQWw‹\Ûj\ëO\ëhjT\Ó\Ô\ÜL“ZMócþL™¦¡Š²Ÿ\ÎS\Þ\à\Ú÷¢Z\Õ\r®^ú‘«õòûT‰\äQ\âšj\ËIñenp${•\ÅT\Ô\ÕRv:‹]–ó\Åüu(ot¢`†ZÎ¦&ô\î³ü{¯÷H¼ny~Lƒ\Â\í«˜4p½—sBtgCÿ\×@Ž\Þ5\äñAOeÁV|†ö\æomûX9›§“Xð\ÚS¼¯x\ìœþ\rÐ£º£\î&\Ó<œ-o\îv3ô*\î¨MF8/‚­¿¢Xô1¥ö·14œdƒ\ïr\Òk:3\\Gñ®(\Ö{?O\ïI	V»±h\ÉOH\ä’EC\rµE\ìˆ;Âµ\ÇrT¨%w®;Ÿ¸$‚Ftœô‰©=Qõe\ÄE\ÂÕˆý.<¤-w\îvôeqDz4\á¤ê©ˆ÷c\å±\Î~5Ô¦\ã¿t7~Hˆ BÁuJ\æ\è\Å\Û[\Ë-ÿSª¥`G?ÿ!GŠ «hÎ¯eü\ìôn!‚\ÝÉ–ž‹†ók\Ç3;½;‰ \î!‹¸ñÀÑ©ž²Í‹ùöÞ®füQªc\Øk1WŸµAC…\Ñ>Œ:—ŒfQ\âõ#¬Ÿ\íÉˆ\Å\n\n\Ó÷“ºoó\Ã)RYŒ\Ñ^%\í›\"“\ÙðÕ—D$&ò·¹\ì;¯$\ÜÛ“W\æ\ìçŽ°«úû|\ÆeFR\rýuŽ¬Ÿ\çˆ\Å(\n\ÓÙŸº-ó	/RYDÞ€ª8…„\Ý)\ìK#p\åvJ;qþ\î%öoXO|r\Z\éûEýS´‰ ¦œôukˆÙŸ\Ê\Î\Ð \Ö»\é\àFb+‚U1)	»IÙ—@X\àJ¶—6š¯\Ó_#k\ë6Ò²s8’•\È¿X\Ê;ügšž«™!Lc,ÁŠ\Ã$…\Íar@\Æ\åFMy:\ë\Ö\ÄŸw\Z´žcâŽ¥¿–\Å\Ömid\ç!+q	~±\å\è®f²fæ›Œðegl<Û¶~ËŠå‘œ¸%*ñS†{\ãù\Êö\ß‡\Õ\ß\á3ž¡3’0O4”§¯cMŒh¯¡­?fº1Ú«\ç/¥<±O÷aST4Š\"ã¦µŽ\ão¯Œ\îÅ¯³|j¶k‹ÀNþK\Ä\'dúŒ\rVp8)Œ9“Èª»i“»FZo\':,Š\ä\ÔöD®c\ë‰[\ÂÞ‡o{>\Û\Ï5=×²¶²--›œ#Y$.ñ#¶cÂ˜\Ð\×õ\åZ¶&\ïC»‘]g\ÌýÁy29“\á¼_¢F\ê\n£ør\íV’÷)ˆÝ¸‹3ª»\\J	fb¿\'î³‰¨hE¦¤r±Oº€S\"¨¿ü-\Ñ\×\í¾­\×\ïh\á6„FŽ/v\ç\é±Q\\im7\Ô±d\ÐT\î\rŠtEKp4Ó—b\ê¼\Ð]ˆ…q\ÛdUq\ïðJÀIQ²Ð¢´\éœ•É½ý“µ8qõ¦#g–\rÁ3²\Êl›±÷A\ÌË©7kó\â>Uy3f5\É^Oñfd…©±¯„fD\ÈE\ìJ»¾‚\í\ïbI¾\ÅXC-\Û\'>cYl\áD\à0&D\Ë4\ç2”/\Ùv{¶\"¨Nö\â©7#MKú+aŒ\ÂEa€®x5Ÿ±\ì\r\ØDN\\\"W\í÷²¼û34¸\0u¥’\Ø=%¨[N8lQ–uˆ\æ\ÜùŒò=Hþ\ê>c\Ù§)‡¸Ä«&{5Y³\é3òk.™¶O4Ð9›£\×q\ÑlmNd›9¸\â>¹Œ!ž‘T‰`¶œdØ„(\ËrG3¹óG\á›\Ý@±£z\Òg\à6ý€\Õ\è\ËQüEþ8(£=Ž\âg\Äq>Ù³\Åqj²¼\é?4˜u%\Ê\Ø=”WŠ¬sW÷k=§oŠý¯lž4ž\r¦Døö±Å\rÅ¬þ ˜¶\Ë\ãH´—0ú\ËDxeqQ½\Å`&|½¦‹±«>8\íW6—#ðºs•e„\ê\Åt\Ó\èOCú7¦hk—ú¤‹8%‚\Ú\ã+YacP\'¨¬)6‰RG¬EP . `ð\ÓxF\\\à{<‰ÿKV\"xÒŸA\ã¶`\ÞYÇ¹Œ\ÛbZ=—\ÃF\át\ÎTŸ1)_ø`¯E\È\Ì×½d%‚\Æ\ë\ÚDP\Ô1h[,»-\ëÎ­À\ã~B\ÌUu\ÔT] 7=•\ï^\Ç\Í÷¨\è.\Ñ_þ†}f“eI2cœ\éfAm>û»1mS‡?\ÉøKø/öš®\Ýt¸UE]Mr\ÓIý.€\×\Ý|9j4@uŒ¥\Ïðüh/\æ…$qº\ÎQ\ZhÈ™ó\ÓöZ\Ê…¾¿\Û46em?\ÉþŒ\Î\åR<žyž\Ñ^óI:Í½\"59spó\Ú\Û&š\Ã\Ì\ê=˜•\Å\"Ú¦6²AcüL\"h•þ¸M\ÛD†\É\çC$ûalø/\Ü>æ ž\Â\ã8þ*etÀQüŽóÉŽ-´¡1>\ÏM\ÛK[„V¹«;¹”«(½o£Ž¢%xeõ\â÷‡o\Úy›cK=x\æù\Ñx\Í!\ét]\áh½´–\á}¼É¾—Ç¢µ¦fv\Í\çý\n#ó«\áôñ\ÎW˜1hµ¢t#öD\Ðù>\é*N‰ ®8„\å»Ä¼\Ç	•1,\ßx\Å|7\ê@;\Ü=±œ—Ÿzi\Ë:AGb¦¯Ü‰\ï´e\Ä~·—M$ý\Ü–ö×]þ²­\Ú\í\Ä\âÀ ¢(tŠÊ§qY-¦I{¦\Ò\ÏGi7\àº\â »Yo9o-‚¹øöBp‰•\Ã±A1ô/\neŠ˜b¥]Vch\Þ\Ã\Ô~>(Eu=õª*\Îfˆiž\ß8xPh›+D2~\î\Îg™÷\ÕY˜\ãK\ß!ÁØšc@]_ª\ê,bš\á7n\0…&\è ‚Ú£ø>û<‹…!\í\ãwV´£Es}û2$¸Ä’\Ð÷è¤žûÂ£\çFY9M\ã\ï¸[\Ç\ÏHgù\ÔÁ–N\ÚP“ó9\îŸe\Þ\ï\Ä&¬rW£ô\áY\Õü`% \'ý0`q‘øý\á\Û\ÇGv\Z\Ô\Ô×«¨:›AB˜\ãx`\'at\Å+\Ü×·Ã«\\õÁy¿„¬L_\ß\\;ý\ÊJõ7(+s;ú¤«8·&¨N\'0H)&6¦1-\àc6ia…¢;)µ	F§Wzð¯¶MW¬\É|(\î\ÜÆ¤5«—H\Ú61\Ó ¢¸c£\Z1¾!n\Ø;ñ\Ü2]\×H\êÇ½\Åpº\Òt©ŽA\ÆNl:2‰ ¹‹x\×\ÆóV¯0¿—\È@e\ä\Ü|r¸œ™qdCK>‹%ª\Ò\\ŽqØ¾oZ\ËtX\Å\á9/2\É\ê\åL\Í%Jòk\ïYc%‚bJÿV/>²¼\Éôn7r.g’û%A\é÷Æº\ZŽø\Í$\Ö\î»C4d·OP\Õa\æ¼8‰„û\ß\à7S¢\Ì%\í\ïA´y¿™±¦Q’QûNNjYÿ¸š¡/\Ì\ã˜Ñ¬\ÖRV\r{‡xspiLý˜\Þbúiƒ\êð^œ”`Y4— Ì¯\äû¯\Ôsx6\Ï}”\":¶\å\Þb\ç(þ)\Ä~i¿:‰_†hÀNó©-õ¢ó9jCMv\ç\"È>ô!{\Ì\Âp“„w\ÝùBiü\ãÃ·-\ì¬üž¯‚\Òï·¡\æˆ3c\í¼u°¥%\î\Ã	¹\ß	[(\ÍÍ§ö\\ôÁi¿ò©\È_‚ûp«~\ßRJn~­°_\Ã\á\ÙÏ‰ö}H£d\ïzZ;\í“:ªNdRx½k’\èœŠŽ}t\å\"v;›úrbýB8eO“ôU\ä\Å.\ç]ww\Þ[±•üj«±bóY\ÖÎ‹À4KÊŸ\ï\Ç\è^\î|®#½<\â\æ\æ\éS	I)¥¬p;\ß\èMÿÉ«\Ù_ªBm+û\r`\ØÈ‘Œñ\ZžÓ–²½\Äò%‚\æk§zSP\Âi\å\â¼\Ó\Ç3€\Ýg/’7Ÿ\ÑO`jH\n¥e…l_ø½ûOfõþRq\ëºÀ¯	ø\î8NaV2;ƒyo¬a‰yv¶\Õ£Žs\Ñ,X°žE\ä(\"ðö/L]C\æ•V\r§Ø¼ÀPEyÙ»‰\ÙsŠŽ\ÏQ‹QG~<~£{\áþa(\é?\Ý\á\Â/&ø\î\àxa\É;	~o,>a‰(Ó–2n\ÆF\Òó‹)\ÎK&l\Ó!;BÏ¯\Ê\ÍÂŽ\'yyz(	y•–‘¹†S›Y\àŠ\"\'\ì\Ý1\ì9u“øc\Æ\Ætò‹‹\ÉKc\Ó!\Ë\ÔPˆ\à_†Šø\í?\Æ\É\ã\n‚g\Ï%N\ÄÖŒ†3k§\âS@\Éi%\â¼\ÜÇ“€\Ý%¢šNm^€_¨‚œ¼lv\Ç\ì\áT\Ã?\ÉsP\áv‹&\Ì \â»D,£\Õaü•¤-µ_†-Z‡ñ;VúNó©ƒ-¢4{mX_®d³÷0ž|y:¡	yT\Z\Ü.wñ®/Úˆß¢õ\ì\Ï\É&9\Üÿ\è3\Ü1ü6\í\Ó»¹ö\Ï<ü\Ç\Í`cz>\Å\Åy$‡mâƒ~\ÜX\Ë\ÜYA\ì\È\É%S‹¢È¸^\îŠ®ø\Õ \Î6R;—YA;\È\É\ÍD« \Ètg2p;gfDðÝŽh\Zw\å\í¬Oþ«œ\è·\ÜðŒ¸l©\Ï5œAaÖ–Î‹\çg›Ûž5w)\Ý\ä\ËJ\Ë\rýe¶\ÌZHF\í=\×õ\Üùq^o¯\áÂ½»‹¡…ú\ÊjT\Æ8Þ©¡º^\ÖIõwk©i0;lÐ´<\à:ªšj\îˆ5ÝºAmC:«\Ï\ëT5Ü¸\í0xö\Ñß¥¶¦AÈÀ ¡\Åh€¶…½˜\ÔUPQ\ÛÔ¥F7\Ûzƒ{\æh[\Ä\ä\Ï\ÐL]EµMm%Þ›7k\Z¨©U\ÛYK2\ÐR_Iµ9¸\ÔT×£¶’NEÍ\ÛfûŽ\ê1aü\ì\ÍF›:\ìÅ¿\Ó2\Úc/~\Î`\Ç#]jC\"\Þ7kQw œkG\ØÚ©¥¥E¡¹ŽŠŠZ|y+5UÔ·´•«>\Ø\ÃÖ¯û´6RSUOû*~\Ül´­Ðµ>\éN‹ ‘»\çXø¹¸cžo°I]\Ý9’V|Î²\ä+÷þ‘\ÐzžP¯ydZ¦dF7Sðùd3Wœ+’ 9<‹¿L\Ùm»ð/‘üÁpIMÜ½Â¡K˜õÉ§øÌŸ\Ï\ç3§3gY4¹\×\ì¯\Ëý\Þ\è…\0§$\ì 9õ\0R“ÙžJi½TÀ‡Eÿ\ëQb\Ö±ty‡~ùM %’\îˆ\ë\"(‘H$ ¤J$’A‰DÒ£‘\"(‘Hz4R%IFŠ D\"\é\ÑH”H$=\Z)‚‰¤G#EP\"‘ôh¤J$’A‰DÒ£‘\"(‘Hz0ðúµw\Ì\ß\ÉÃ¥\0\0\0\0IEND®B`‚','d','',2,7),(16,'Ejercicio bÃƒÂ¡sico de vectores',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\Ó\0\0\0 \0\0\0I’®\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0t\0\0t\Þfx\0\0\0IDATx^\íTT\å\Þÿ_\ÅÍ\á¥:Š·,IÍ¼Qš™\Í\ÓÑ¼¤˜I`\êh*^PóRÞ“”Í´4ôd\âµ\ÔP1VŠI\n±D	^QÀ¥ ¾¾\\\Ìf¯\Ïÿ™™\Ím:]\Îþ¬\ÅZ\ÎÌž½Ÿ\çûü~¿\ïó<{fü/TTTTTTT\ê…j¦******õD5S•z¢š©ŠŠŠŠŠJ=Q\ÍTEEEEE¥ž¨fª¢¢¢¢¢ROT3UQQQQQ©\'ª™ª¨¨¨¨¨\Ô\ÕLUTTTTT\ê‰j¦******õD5S•zR«™–dD°u\Î\"ö¥\ë•gr\ç·.\Äg\Î<Þ™Ê†³Y\èò¢\ÚÁJ‡YFON\ÔWø¾3Š\Ñc]q›¶’m\ß|Â’­—\Ð)G„/¤Ÿ‰U¾\æoˆ.#’ÝŸ.`\âÿdùO¥Ê³\Õy¨v\é2ˆ\Üý)&¾Á?—ÿ„\é¬„/\ìOŸ‰Aü›º¦¢ò\ä½a<C„Q¨<£b\ß1¯-Ö™ß‰†n‹þ6‚\Ö\á;a\î_^\ÎñÇ¦f3•\ï“\Ä\Ê\í°‘ú²6¹¬+2\Ùû\Ç\Óñ\Í@²d™\Ü#“hûô8öe\Ë_\ÞÁ‚•¡Ü–•C- _Cß–}Xx.Wœ	ŠSCXÐ¿-<B(1Bi\ÂN|¼ý‰Èµr¢†D\Öñ\àœ/Î’\Ó~¨¥\ä\ç+ÿ~\Øv\É\èœ\Ã\×Y\Âi\ÚJ`•’°\Óoÿþ]]ûO§4?ŸŠT©|¢>\Âs½\Þã‹˜<cŽªX 4ŸŠ\Òð{æµ¥:ó{QS[ª\ÖÑº£§4k/\ã[\Ú\ÒwmòŸ\ØLJB§ð”me3-\å\ì¬gx|\Ì\æ\ïb¤Cw>Š3¬+õ¤\åÁ\Û[¯¢5¼V\r—Wö\Â\Öi\Z•=K\ÎÚƒ›\Û6a\Î\Ê¿úT^\ÑT6S™û\á˜\äŸX¾b~hô©ø¿¢ùù&òýpLò\'ñ‘ð?R’÷\Ìgú\ÚS¤«[3b¡¾`þ”Àú#Õ™jm©g-=ÍŒöš¿ˆ™žð\ä\é*f*“<‘¶­Ç³_¬FK\â—Ó¯\Ï¢Ê–•ù™\Ðq$;2-9£ž\ë\ë_Ejü\Ã?¿B‘ò¬XŸsü‡J+Z=y\×bIºW³»\Ê7¸ðKº8²€›Q¡:\Ãm\ã\èi¹ŸržÐ0®\ä˜\Ú\\˜y…Ø˜b½m\\¥”=Ž‰K-ŸIš›iA\ÂVFµ±¥\Ëôo‰ŽK&\Û8;0o—L~j‰wu\âœq„9Nô\Í\å5¥ \×\çq-6‰ª]\çM=\Ïñ\ïq\âbz%]%·‰ÿ\á0û÷\ã\Â\ÍÊ¯\ÈÜ¸À/†}¥‚›D…\âX\Ìm\Óu´÷I9JH\Ø	\Ê\Ñ\æ¦LpX4\×\ï›My´Y\\:Â‘ðR\Ósx`Aþºhi\ìcTYúR²/‡s\ä\Ø\Òk˜˜\êsRˆ3¼_ü\Å]\Í2¶_Î¿Á¥Xqø4ò\Ê\ÎY|‹øð‚O^\äfY\Ã\ÄõR\Ï\ç»C\'¸˜®hTÀ\ÖQm°\í2o£\ãH6\r k\ZÈ…7ø%1]~\nßŸåº¥v\Ëù¤\Æ$rWWHf\\GŽG‹6)¯•¡\Í%5:Œ\à\à0¢¯ß¯:¹”¹ñK\"Ùº|R\"¾\ç¬\ÙE\ZZc#VŽ¯\Óõ\än\\øÅ¸Yp3Š\ÐCÇˆ1%œ·Î‡†v%GDrUŠo\Å\ÌÉ‹7©<l5\êlM7sê¢µ¸\å=\ç\×39ô=‘Iw\Ëw\ÆÊ±˜{$lE\Û.Lÿ6š¸\älS\rm)\Ëk})q¦˜Ž‰»J–)¨¹q)–˜\Øx\ÒÊƒZKnj4aÁÁ„E_\Ç<«SÌ­øpB‚OrQ\\yo\ê`¦5\ê]£>Z².\"\äH81©\é\äŠAa&WD^\Æ\Äþ\ÊmS ˜\ÇÄ‘ZQH«´\År\ÔX\×(5üp(1i\',˜i\é&\Ðf]\âT\È\ÂcRI\ÏyPþš6;žŸ\â\î˜Æ¶Ž<‚™\Z\È\çò¾\åLŸ6‡K·púV¥KÊ™l\â@ï•—-\ÎD\ä[û\ßÚ†F6-pñ\ÞN\ÔÝª\é§\Ë8\ËV¯>4“œ™\ÞRW´¤…¯elG	\Ík3øt‘>³½\ÜÖŽŽS¾\âÀz_fÎšË”mpè¾˜ó\"Cô’ùbDs¤žË¹$\Z¥½ŸÊ‰9/\"i\Þb2ŽUÍ´ˆ”ýù7‰Nn9p(‚¤kU\Û%\çÆ±\ëý—q”œ1kc†\àõn­\ì»25\ä–iPª–ŽŒ³[ñ\ê\Ó\Éy>\å]\Ó\Ý x¡\Ó7%:\á‹_r\äY÷}\Ü²\è\Óö2±Ï›¬½x‹;¿|Æ›\\XqQ´O›FøÚ±t”4¼6\ãSùø0\Ûk0m\í:2\å«¬÷É¬¹S\ÐÆ\î‹\Ï+EBËµ\ÝSâºš£±—ˆ\Ü=›~m_`r\Ð5SÀh;ž\r±Y\ä$À«·\Ì“ 6-‹¯}Ï‡CžDzúM|—O\Å\Óó=wxŒV#wûT¢T‚\Ü\Úb#õai¬Ì¥·\Ù\ï\Þ××Å½(~;ó\çm`ÿñPv\Ît¡e{Wv¦˜N¦»\ÌB\él8\ZMÂ©Å¼\äø,\îûnò)?\â7òoH\Ü\Øx\à)†3Õ¬A\Ð\Õ\Û\Ä}\ã\Ã+-mi;~Fõ¦]sÜƒ+‹ “·‹÷_vDr\ZÁ¬c>\âuºµ’°\ï:•[¦T\Ô^\ÛÍ”!®¬>\ZË¥\È\Ý\Ì\î×–&qM+s/\î|^i‰m\Ûñ,Z0Š\Þm\ìh\îl\ìg\r­qm\Ç\×v=mZ8k\Çv_cÆ§‹ðñ™\×\à¶\Øuœ\ÂW\Ö\ã;ss§ Cw\ÎHñ\Û\ç3o\Ã~Ž‡\îd¦KKÚ»\î$\åÿÝ«Q\çšuSNY‰ºh`-n¦x~\Í0F,9Nü\Åý\Ì\èñ8mû2\Ê\ãö§\êkÎ½¢~ô\Éß¤N¸m<À¡ˆ$®U\Ë\ë\"Rƒ\Ühk#\Ñgi¬2)-\åö~wz\n\rŒF¦½\Æ\î)Cp]}”\ØK‘\ìžÝ¶/L&\ÈRg\rÅ³}þ<6\ì?N\èÎ™¸´l/ò#\Åd0\Ö\ÌT®Y\ïšõÑ’0–ñb\É\ÊI\â€Wo\Ü\Å@ÿ€\ä/F\Ð\\\ê\ÉrS zb/Š:ôVE!­Ô–\êuÔ†5jk@¾MØ’·p]zˆ‹—£Ø¿\ä\r:<&U˜i\ê¦M`\ìø\r\Äf\åtÀ‹\Þn”<,\â»wž ±ƒ+{Û¯u\ã\Í\Ô\Z%„y·\á±Á›\É(³y3\nƒ˜\ÞW$B£F4iõSw]¡]6\êœmk2S…\ç€ô²IbL\Åð¶a\0’\Ôÿ\Ó{tIkp±+;‡–óó\Ñ(\Å\Â@a\Ð[hj4Sös:iè³ªb{Â¼]º¸\è.µ\ÄuO¶\ÉJñ\è@“g\çr\ÎPSª¹–¨œ±-O:=\Éƒ\é\â}Ü´e.Î’up]{\Ì\ãt‰øw\àpšuô\áŒ\á\Ír:›>F·%±&ó+<À8‰—ý’L\íÓ§±a€„\Ô\ß“:’Ö¸`§\\Km#ƒ_a]y1Ñ“ºq M \ÆVwe.&q$\×ðš¸ö\Þ@‚\ÍW[Fj\ÓR&}\Ó l\í_\çó¦òŒ\Ã\Ñ\î\r¶ßµúT\Ñ6GF\ïRt\Ô\'\á?eÑ†~\è\âY\Ño[\Êv:\nCðh\ÕÄ¨i‰>™€Á]ð>®D¼œ\ÅÁI]\é1ï´ˆB-\ç\ætB\ÓgUù6¯5\r\\z‰\å=$o\"E¼§8û6¹\Ê{+\Ð÷Qw¤–®\ì\É6µ©$ÑŸMxv\î9Ñ¦kl\ä\È+\ë”B\'0ôo`S\n‚ŽK\Ë{ 9f“\é\"Ü®v‘†Ö¸¶\ãkÏBq¼ƒô2~¦„á¶’DÿS<\ê’X\ãb‡óüó\ÆÇºøô¶…Šaó UC~‰\Ä\ÐYÐ¹´6\ÝÌ©¥O\Ö\âF<\Ô_\ç~Ü…\ÕJp\Ü?0ž\r\ás\ãñ\ÖsO{n4}XU¾\Íkž\×‘û9\à8z¦0Ñ“\ä?…eÆ \Ösm\ã _YGE(Š\ã65\Åaµ\Î\êˆ_Ña[2Mù!\ê_ˆG+šn—Y¬3fXÒ»ÄŠ>º+¬r\éÀ$S1iµ—@¥h\Ï\Ï\ÇY£˜©\Â \Þ\Ò\Ôd¦‚juÔš¶2·w»\â\ÔW\Ë4(:\Â\Äò{¦\r©›Ž+«\\\è0\é¦’—\Å\ÞÀ\àr*H>\ÉþW•º\\7~35–\æùˆ*,K\è\ï³c\Z/·«\Ô\Æ-¸6V\ÌL\è.-§§Æš™–\ì\îˆf\è6%PE\çw\É?†½\Ê_\Î\Þ\Æ?4\Íñ8bˆ¶\êÅ¢h\ÏÃ›©y»t¿~Œ‹\æfWúp\î®QØ‹U–1I«¹¡öDS–tº_ùØ¥£¾\É3¾ZŠŠ„\îE\éD\\›³-|Î˜\ÎUŒ»£†¡\Ûa°{´Í˜½\Ê\ìJ&{\Û?\Ð4÷\àH‰i²¡yj\n¡9\ä[Ÿ3\ÄÖ–\×n \Ï?ŽW{	\Ç\Ùtö¶±hX¦6-\r\×Š\ÆÑ`\åZ¥§g\ÐNc-†r9øÎ“\Ø\Ú\Äuqˆ.nÞŸ&¨.a½Z¸\à±øC>ü\Ðð·˜y³f2;\à4YW„þ\ÍFaY>s3µ®­\íküÏ¯¬\í«¡ýŒÓ–‹’¿~\ì‚\æ™\ÙT{.»F\Ù#õYMBŠ0\ÍSL©z>\"®ñZ\07ôz’\×öE\Ó~§k¼HCk\\\Ûñµ\çGI°;Žš¡l«H8F‹\":¦\"\á\Øö\r\Í=Žˆ¨Õ‘°¢-\\<Xl3ñ·x³f\Î&\àô=d1	2\×\Ùh\ÎVuSž+\ÇzŸ¬Åa+\Ö41~†YgM-\Ð_[Kß¦/±&©\ìB5\ç^u35\Ëk…Üƒ\ïð¤ý 6™‚šUÞŸb<½q\â«\á©)¡Fc7!s\ëó!¦84\ï¬.½Z\à\â±X\éË‡,ž7‹™³8m\èLmfjAo\ëú\äsÜ«=’c&n:\Ë\íJ}ªf¦E{\ÒL\rÔ ­ï­¯\Û\Óiv¥OW¾g\ÚÀº\å÷¢½\äH‰›8[¹“\Èob¦u­XF\ä<\î\æT}²8)±NMhôøp•›¦\rb¦w·ó†Æ‘wžø÷™ié™™´\×ôbe‚xWmfZr¯\ÖöŒ\ÜUƒ™\ê³9÷\Ùf¬\ÜCL\Ö\r6¶£\ÃÌº›\é\Ý\íoˆbó.‡‹Mc\"=1\ï”þ\Z)9Æ¤V/.‹7ö±ðò\×xönŽ#½¼‚HªT\×*x´B\ßÞª™Š88=“Ž\"IW\\*\ä\Ü\Ò*3æ’“^´v|›ƒ¾£a|\Í~$–\å37S\ë\Z´’^dYl\â#ši)gf¶G\Ók%q\ç\ÑUz‚	U/Â±I­^\\F¼\î·3Óš5®\íø†0Ó»lCƒã»‡Eü•pÒ«5Žo´ü\Õ\Z\Å]{±6Ý”§Ê±\Þ\'kqc¤ø\Ëú4£\Ã\Ä\Ã\Ü]\Ê?\îM!V³’{u5S\Ô\Ìì¨¡\çŠKž[ÊŒ@e…¤½È¢®OLø®|a \ä\Ø$Sšw\ÖX\'y»¦\Î<‚™ÖªO\áe¾ö\ìMs{y¤ƒ1Óš´\Ç\Î}Ö–\Îó~©P\ÙLZ7—¿ö¤wsl{\á”TÉ¤ž\ßÀLKÛ¼v7V¿Sz†%\Þ_™=/–\â\Ëz IeŸ\ÏüÌ´\îÛ¼WÊƒ .fZ\âN‹\'=1\ì\Ôf¦\Ú–t“xò\í}\åý0 g%’˜­\åÊºþ[\Zrf=\ÌT&\ë«a4•º°Ð¸Í¤P°—±öŽŒÛ—\'ôJ&9GœI{‡\È\Íntiú6¤\ZW‡U©M\ËG3S!®˜E\Ú\Ñ\É{s}¿5m½+ˆ\ç%\'&­\ì˜2y1?óK\äºIOòö¾2\rˆ¾&&\n=+\ÌôŠ±\Ö5°wÇ¾ÿ­^tªc\ÉL‹	qoÁ“!<\ÈúŠaM%º,Œ®(blöŽµ\Çq\Ü>ò„¢b¦õ\Óø\á\Í\Ô<?\ÎL\r»S\Ï#9M¦\ê°\åóóe\ãö¼¹\Îr­º™c½O\Ö\â\æ²r¼>%¯±ž,úx·‡’R^¡uVs¯\ÜLM%¨ÁL\rÏ‹º]\'o–\Íõ\åÛ² –³øjXS¤.M·2\nöŽ5Å¡ygµQ|ð¼„\Ó\ä£Utóbø\ÙÐ™G0S«ú\ß%99G<\Òr\'r3n]šòØ€\r¤\n-}›·¬ŽZ\Ñ\ÖPzJ8\ßQñÍŽ\ÊfÚ ºs79SÉ‹d³[š>6€\r†N>\"µ›\é\Ñ÷hiû2Ÿ\Ô\ÕL\åvœ>T\î\íUFƒ€A\í¨|\è\ÅH>Ç¦8!=3“\Ó\Êx\ïEjž\Ã7²\ÚŠ9\ìf0\Ó/\ËEð\Í(‘ü£Ù­lz¶y‡jžÀ\Íh¦z’Ö¼„\í\Ón|g\Ø\Ñ\Ý\á¤\Ï\ØjþI\à=\Óñ†mž~\ÂL§žR\Â\Íht¶\Æû`Z¹€ûyºj\í2š©­Þ§”\ì}	õ\ìÄ‹6šþ\Zkû‰ÀšzJ	b\Óý6\Ís¾˜N¡%fi4\"¨‡ù…‘r¿˜¼«Á¬ü`Iºûü\ëM\rRŸ•$ˆ7\ë\îž\äý\Î­½NšfOÅ‡q3˜\é—Y\"\è\r<\à›Q\ÂLG\ï%È€Rlžpf*\Ý;\Ê\äv¢?>g\Êgu…aSy¶›/bâ¦]Ã¼e÷Š96¹\r=•kUj\ÓR\æ\Î¯›ŠœRgK˜†“F\ÄPùK\è¹ùù\ì¥¼Vi&Y|–9\Ï5¡‰\Ó6EfP(—¾¿\Ó<c´´‡\Ð\Èi~a)\Ü/\Î\ãjðJ>\Øa¸,´]\Ò\r[\Ãýk­LÁý<´V4\è\æA¡þ*~/[)JFLfj\ë\äMÅ°‡\â\Ù\éEþlš£“Û‰\ëúp¦\â\"L}¶¾¡E?¯ú½Œ\Æ\ì\ëaUihk;¾öü(>\ìf4\Ó/+ŽQ¢ˆŽ®H8¶\r\Õð„›ÁL\r\Ã6‡\çš4Ái\Ì&\"3\n‘K2_\çƒ\ß\é\ârt®U7sjé“µ¸1\\ðK†{s £\ÈBŒ[\Ï=mŒ˜\Ä\Ù>\Ë\ÜsZ\ä‚û\ä\é\Ìóºý\Í\Ïb/\Ñ\áý\Ê?€!s\ï\èdÚ‰søTt–°©Ïš\âPy¦‚b\Î\ÎyŽ&Mœ³)’ŒB™’Œp\Öùøa³z1Ã’\ÞVó*–5óv”\ß\ï.>6™6=M»ú¤5¼dû4n\ß\Ý½\Ðq\ç¤/\ØjøgE!­Ú–ju4ÇŠ¶¥D/î†¤\éÁ¼3†ó¥²v3¦¹D÷¥¿ˆ«5¤nZb\×Ì«ø\ÖIñ1&·é©¬n\Å\Äû\ìVn>mõ7Ì±b¦\ÅÜŒ:Ìº·\ÚcÓ¸%C>\Ü\ÏW\î*¯Y¡\à0\î\íþ\Î\Æò;Ä•)\á˜gW^0”·}V²\é\Ë-¬™6ˆ.½\ße\ËE\Ó\ÄKnF²k¦ö\í\è5\ík\Îg˜j	7\Ï}‰G\ç&Ø´w%\à\Ç\î¥E°Ñµ66NŒ^wŠkÙ©ü\à7\'‰\ç\'\ï\àB¦}\Ú7Œ\ï`‡}›®¼2bÿ\Úü\ÛõcÒ§¤ßºÈžù¯\â\ØØ–<9›f¨B\Î\ÌuÆ®™3C=ý8z>¢Z»Lf\êH1\Þ\Ì[€ÿü	Œ›w˜4C\é\ïpq\Ï|^ulŒ\ížž½\Ê\Í\È]\Ìt±§±]/¦}}c×Š\Ùõß½h.5¢Q#„ƒñ}†©À¥ý\Ë\'É†f\ÏôeÔœ@6¹·¦‰c7\Æùs\îK:7±¡½k\0?¦\Ü#-b#®l°q\ZÍºS\×\ÈNý¿‘N\ØH\Ï3y\Ç„\ä\Ç~Á\Ä~ýp]²•]k˜\æ>‡½WMŽ ]Nÿ\îcXtŠˆ\Ð-Lw[Ä‰\Ê\Ë\åJX\Ó2MŒ\Å\'o¶\×\í\Ê\äÀ(nÝ\ç›)]1´,\ÌòWM\ä{qÿû‡\\¬2\äb¶-ú\Ö\Ù›F‘š¶¡\ï\Ô\Ý\å[\ÐE‰»ø\ï^Ífk$&Cƒ}Q>Aá™¹8\Û5\Ãy¨\'~\'3ŒE³&\r®\ç»\Ç\×8^’ó»l½l¼·V\ÅL{0\Æ{«ü™?aó§UªüX¾˜Ø~®KØº+PÄ¸;sö^‘+“»\ßWi,9ó\î\æP.[¾Hƒj¬M¯ýxk\×ûŸ\ë\çøÒ£3Ml\Ú\ã\Zð#)÷Òˆ\Ø\èJœF¯\ãÔµlRðc¤“\r\Òó“\Ùq!S\Î<¢\Å1\í\rŸ‰hÚ¦/Sw\'Q\"&\Û5\ê\\£nÕ©½O\Ö\ãF\Î:Œw\ç¦4ú/7¢N<öxsZ;¿†\ç\Î+\âzVroc”!°˜\ëlG3\ç¡xú\å|„…¼.CLºÿ«µ Ÿ\Ø/&Ò¯Ÿ+K¶\î\"p\Í4\Ü\ç\ìEI\Çj\ÈyÑ¢\Æu\ÆÞ¦‘ˆ¦´\é;•Ý†\ÎT«3i\Ê;j\ÔÛŠ>\ÂL—÷\ïÎ˜AœŠe\Ët7(ûp`\ZßŒï€}º¾2‚9ÿ\Ú\Ì{\Û\ÑoÒ§D¤ß²Ð–ªuôdF©um~\á\Ë	]hfßš\rg‚¯\Ã\Ûÿo-`W¬ai\ß@º‰\Év\ìòþt³‚ S„n™ŽÛ¢\ÊaG\ßk…M7•}\"©Ôº2}8d2¿žÀ°U±\ÆÙ©%\n³³M+\'¹˜\ì\äK$\\\Ï	f|\é·G{Ÿ\Ì\åz%E\î[E.\ân\æ\Ý\ZûR¾\Í{¶ü[\Ü	ü¨\èîžU(Ò¸22\Å9™d(Ï–\Þ#óö³cž\Ò{™\Ü\Ê3Kn½Xy\Ëbæ–›Njz®\åneV\Ë:!STX6\ã4GK^\æM\îT_Gˆ\ÆSp\'¬BóFˆó\Ý\Í\ã¢<¬„E\r\êD\Å6\ï\Ù\Â|neˆø¨i\Ø\r\ãuK¬ˆ•‡\Ío¢±~‹\ëióÈ¼y‹\ÃVõÕ­\n–\ãF›z•kBø5=™K\æ§3?r2x\Þò\áq‰c=÷ä¢»dZ\n,\ÈE…U\îñU¥”{™·¨k(jó2¹y§À81l,\é£G§“‘KrIOM\'·Z1\Ðr?3ƒS ˜>Ldju´öºf\è\çõ\Ì<Q“J((´\Ô\Ûú\ë¦×‰µ®8nz*\é\æ¹SûX«Ð fZœ\È\ì¾Eù¤ú_K÷LUþ\êXºgªò§BMƒ\Û\á~\Øl\Ù!\ç¶þ‹*÷\ãTT\êJƒ™©|?†ƒ{Î‘U\Ë$\å¯Di¤/¥V\")\æ\ÛH*nJ‰ô\íŒ\Ô\Êu\Øÿ¤\ÈY|÷^\ìZõ\Äu\æG¬Yû	+û\à=}9û.[º?«¢R;\r¼\ÍûŸƒœ\Ãþ\ÏüX½j5¯$8ö5\íö©üUÉŽ\Ù\Ïg~«Yµúc\Ökø^…ÊŸù)§÷²\Åÿ\Öo\Û\Çñ¨U~\îPE\åaQ\ÍTEEEEE¥ž¨fª¢¢¢¢¢ROT3UQQQQQ©\'ª™ª¨¨¨¨¨Ô“\ß\ÝL\å¼(‚vFp§Ÿ~xŒ\Ï>š—§\'ž^3Yúùq®–}±« ‘£\ë2\Í\Ë/Ÿ\ål?›©¼ðÛ‘½ñCPù‡|Tj¦ |!ýûL$\ÈðŸeª¨¨¨ü	ùC¬L‹/\ï`Á\ÊÐ‡ú\é&sô\×\×óª\Ô\Èøƒ\Õ>`©ý•û¶g\Òóolxò£>a\Ès½xï‹˜Šÿ\ØZ¥*¥ù\äWú¾{i\ÂN|¼ý‰(ÿŸ¨UTTTþLÀÿš¼\ÆK9¾\0\0\0\0IEND®B`‚',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0®\0\0\0\0\0\0\å´(\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0t\0\0t\Þfx\0\0jIDATx^\í›	PTWº\ÇÇ¥ib\Èh&OQ1‹D\Íb\"\ÆIt$>ÇhŒOƒ 	\×`\â£¢AAFƒšˆ\"’\ÜŒV#Q6¥\\Q`¡)öð5Pt¿\î[¿w»û6 ´@KÌ„gÿª¨¢\Ï=}¿óó?\ßùÎ¹}ÿ„DÝµ\æ.ú<Tðÿ\Íõ/q–?\Í\Ü_TR‰…Î„^¸Be\Z1û\ÎR¢Õ—=¨’‚,\ëƒG\ì]©\ÄBg¢!\â>J¥iDoZÃª/Vñehq\é\Å\Ò5ƒGR¸:?\áZ\è”X„k¡Sb®…NI‡„+T%³wW\"\Å8¸{\í›>ó\Ã\Ç\Ûo>\ßrœµ\ÒE\å5‡.fŽ7>\Ë\ÙqF!]xxT§l`Š\ëBj¤­¢<¹˜QN3Ø›ÿûIu8\â\Ö]\Ù\ÉÂ•\Ç(\êÀ¶\\›\Ê\ßd]û†\â\æ÷Q_\çK—\Ì:T%<<ª“\×\âú\Ü+\ÌÜ–F•\å˜Á4ªjª\ë¤ÿET—wà»ž\Ä;¿o‡ý©‚–üo§óÁ\Ö¨¥³QF2I\Þ»i±4\é‰zzM`\ÝÍ‡;£U7÷±\à\ãþ™oy q_„JN.œ\Åúkÿþ§T\ín}Q\'b£‰>rž\ÛÆ¥\ÜHuS½\ÃN\Å\Î:£p?4-Ü£¾\ï±!\×(\\-UY\É\\.Ñ¢*½\Â\ÉCG8Ÿ\ßò[´R¿FÁ\Õô4\ÒÒ¯S¤+2~N»@NCP\æ\ç¢n)T\Þ&ù\ØOI+B/ou%\Ù\çŽq0\á*\å\Í\çU]!\'Ÿ\Ême“~jÈ»xRM5Ù‰G9“+µE}‡œ”\â\âHÉ­l=h«\ÈJ¾L‰VEé•“Ç¤E\ÜÏ¾\r\å\×Osè§£$e–‰=ÜŒú\"2N\Ä-öU\Ã`+¹¼u\"ý¬†ðñ)\\¸Y*µQ×¿\édVˆ6´\åd_\ÐõŸøw\á%ºNªÉ»”.öq·\Z–15wrRHˆ‹#!%—\Êˆx\í®–[Q3pr!µ°˜‹›\Üpp^Aj\ÓÀ$(ø\ÚÕ–¿®¼\"v\É\Ð^\á\Öeqt©+OÊž\Â-h9³Å¼x\æXzô\'\Ím¹­úÚ»\Ü\Üö6OÈ†³ü’\ØrQˆ9ÿ\ÈK29\ï\îL}‹“!\ï3Hüü†\ßW,	`®\ÏXú[\Â\ë\Û„ùó\É</^\ïgË‹Ÿžk@m\Æ\Ì\ß@ôñc\ìòw¦÷@wveÿ/öðZo¬úOa\ÉÂ‰üµŸ5Ox\ÄQ‰—«;«§s))’¹#ûó‚\ç^²Lh]\ÖQ–º>‰\ì)7‚–\Ï\Æ\Û{&cz\Ðç»À´}cÿ(9·zo\'#5\Z¿—Ã¶¿§/\":G‹öV3œ\ÜI-¤ø\â&\ÜœY¡\ì\Úl~^óÿ!{†iaø)1›ÿ)8\ÃV\'z\ÉYpN\×\ØZröN£7NŸ§sW¯SE\Ñwß…~Žª³ˆôr\Å}\Õa\Ò/%9w$ý_ðd¯)g[¡m\á\n%D¼Õ‹A§õQF\Ègta§75TO‚o?zŒ\ÝLAó\É\ÝÌˆ¸:ûc¬lxsKža’T`²5\ãw”™|ú\ÕV}õ¹8\Ê%\á\ê¨\ÙË»rI¸ú\Ïb}[#\Öd\Z¾¯½Å†\×e\ÈF­\'[\ß\Z2W;c\í¸\0ý\Øi2X1r_WŸšƒL\ï\Óû9\'DO4\\Zþ22Û±„g‹w«+¥¨ü:ac\ìxm]¶\"hs\Â\ÝÓ–\Ño6”5\">+›7\Ù\"ý°¤úÀd\ì¬Ç³£L´Ùª}ñÞ¹\â½sf•´\ÜW˜ÂŸ{¸²E__ $\â-z\r\n\à´a°	ÝƒaÁ\éú\èª>\È3r\'¾h’*¨“\áhe®ˆ6Gô\Ç»I\ßSªo‚–\Ìõ^,K\Ñ]×’6»\×\Ö\Ñ0tõG÷\ÄvôF\Ì\ÉÛ—*\Ô\×R+Þ´6?‰˜\ÐibC\Ð{fDMò\"G\ä\Ï/\"Yj¿Y˜#\Ü\ÒíŒ“\Û\á\'\Å7\Õ)ü\Èq	15\Èm\×o!\Ü\Ú}÷\n·>;9ã¶—JCI\ä$9ò÷¢¤¶\n”nÿO\äOL\çhBsy¯üÙ™\éŸ.e\éR\Ýß§\ÌÿÄŸ¹OQ!h¹\â‚| §¤\î\Ó\Þ\ÚÀ\ëò¿\àu\Ì¯E„B¶¸Zaõ\ÆFòZ8¥³7¹.ù1@\îBˆ8ò­\Û7\n\íi>9ch€6+—ž¯²:\Óh¨žZ\Ã`“\Ê4G+¤ eJ¸šK\Ë.o\"\\‘;1ÿÅ“6c×™\æ_ø~…þöúI/\ç/^\Çô“È€@\áW¬¬\Þ`cKg\ïK»„«-=Ë¦@?V\îK£$o3c­ðo&\Ü\Ô%C‘£Ž¹Ô‰QÍ¦¶Ä˜n±ž“\Ù^bI!4S¸M\êÿ\Â-\Û1^Ò‡ÄŠõñ>ôµû€“\Çi-…«N]\ÂP\Ù\ãLýQ²§§ž#³ú {i\Z‘0-Ü’p[·/RwžeN½p˜«?Á©>\î\ËË®iÐ¢¶”³›ñ[¹´’<6µ\ÆÁ\ß<\áRw\nÿAr†¯¸D\Í\Ù\Ïñ‹PúNÊ’¡2Ÿú£˜T4Rd}d/±¬¥³÷¥m\áj®²nT\ãR&(L	W¥O¬G‡5\äYf¡þ•ùƒ»#N¾Alq÷æ°¤\è‡.\Üæ©‚™\Â\ÕE´\çeöxnz|\'P•ö+W\ê[\nW(ù–	=eYœ\"mvt(‰z\ß»\ÉûiyØºp[·oø¤ÍŽÀ\ç}o–|¹°\Ç\ÈnP‘†«\ëF5.\å\â\ÞÅ¤p¯¶!\\]J´\â¬ŸñeÙ¼ ~¸#‹i\ç·z\"²}\æ ¡Œz»\É\ì7\ãÄ³m\áV\î\ÆM.&\Û+/‹\×Pÿƒe}ñ‰—zA‡P\ÎÎ·ã…¥†\\\È|T¤¿ˆ¼Ç«¬Ho:\îœ	\Æ}^\ÕÆ’\âm¼©¢¤d\Õ	\æ\Ø\Ë±ö†i\á¶Q_›¹šW­žbÚ¢5\r\Åñ¼`%\ç†úu±L\Ó	÷›ñºŽ»\ì™(\nwR¤(/’Ÿ¦.ug|®;\Ý\í\ß#<©€\Z¡ž‚“\ëXsJü¦–kF ·Ÿ\Ã	\ã¼*8\ì9\0«gÅ¼\Ò\èzM³ŸFP¢©°)P¼\íMƒp\\šƒ½|koˆµj_DùÁoùr  Vô¶9•\ìv“#sZ\Ée±}š²x>\Z,£¯O¼~iW§3\Ì\êY\æU#(+©o ¹ð/ÊŸ#(\éÞ‘\×\ÞÞ‚«‡hôB \â°\'\Ä{4:K\Â\ìg”Ø¤^Û´-\\1/\Ù\ín¬[/žv™H`D8}»c7l2aÉ’)e,þNXC\Æý\0\Ô^\ã;gž\ê\í\Èx\Ï@–,™\ïT7&ú\î\à¢ñ\'³\ê|×º\ÑWÜµõŒ ¹°ŒŒ=^‘u¥·\ë2ŒGKF\ÚS_ôo\Ï¬mú1ôµ·	Ü½™™ƒ0r\ÖW$þ+—³\ßLgp÷nt\ß\È\Ï\Ù\ÜJ\ÃÝ¡\Ý\ì\'±\îŸY”\æœ`\Í;öt“=\ç\Îó(\ÔbtK\ë¶¡[—®\Èzö\Ãev$™õ\å\éûú›]\Å]ø‡›qE—t\ê¨NgÛŒ‘Œtf\ë÷¬ž\ãA`Ô&y`#\êüDÖºõ\í\r\Å3\"™Â²öx\rAÖµ7®\ËÄûý\ì¾/”\Ä\â;¸\']þÔ….b¿ôx\ì	ú:¾÷®«¢=-·v»c/\ëF¯§]˜A¸G_º\Û\rcrX²¨±\Ó\Ìs´¦—\ã8¼\×Ä“ý¯$¾÷wÆ¦«5¯\ÌùŽsM\Ä+N\È¿³4µy(«&}\ÛFŽt\'x\ë÷D¬žƒG`7L9\Û\n\íÛœ	u”+JPJºTU((ºk©€â»©Lø\"\ÝD~j>š\ê|®¥%“r1EuûsžŽ¡¦RQ@¹(.]~©ßœt5UŠ\Û+\ÍðAU¢°\êW­æ˜¶¯Î‰a\å\êƒ\\Ï¿É¥\Ô_ù\åô\Ï\Ä\Ç\íd\á»ü¤Cu\å\nJ\ZE‘n­0 Ô–¡(k\ßHµ5÷\ä²÷¢¢BQH\Õ:\Û>\á¶Â£ö\ÊO§F›Kø\Øx\Ä\Z’œ„;$„n»\'\ïü£\Ó!\á>Š¯ütj\Ä\ÍÑ3Å´¨\Ïp\Üý?cu\ÈZV~\Z€\ï\Ç\Ë\ÙÅœó\ßO‡#®…N†p—\ìSQ|½~-¡\Û÷s<9O„;\áZ\è”X„k¡Sb®…NI\Â(M&tþT\\?\ÜFŽ‰MXGß‚ø£½ñ‡B[\Äù½\ëš\êŠ\Ç7¹&°\ÜMI‘_±p\Æxþ±üý“¯‡Žò$‹G91co¾ym}\0ÚŒ¸‚ª„ýSzc5b\rº3¦\è\è[”7 Ì¦\Ù\Û\0¿=ZT%QL\ému\ßG\Ú÷G@s÷,AŽ2ý/\Ã~\áª.³+À—õ‰wD\ëø?\á\ÌGi\\(–\0\0\0\0IEND®B`‚',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0„\0\0\0\0\0\0\ÝaÛ—\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0t\0\0t\Þfx\0\0\ÏIDATx^\í›	PTWºÇŸÂ¥Qƒc2Åˆ—¨1j Ñ˜DGôù„Š‰Á8t‚O\Ô\\1n™qÁ¸£5Š\Z5qF\Ô\Z\ÅHMxnqÁ\'²X\Ð(…\à40\Ð\Õ}\ë÷\î\ín\è¦\é…&\Ñq\êõ¯\Ê\î…s\Ïù¾ÿwþ\çœ\ÛüNœ8q\âÄ‰„\Óœ8q\âÄ‰† R’¾—•\ÑÁøø%·µ†\Ë&ˆ\å©\ìÚ–D±…{M\áÑµc¬û4œ°‰™Áü\rÇ¹Qe¸©º\ÆÑ•³™6‘°È…l9Wh¸ñÿmv\Å\ìOÈ¦;8bM\ÉñŸ3süpþk\á\Ô\Z.?VT§™=Ð—ñ»ò\ë\ëcEKÑ…]\ÄFI\Z\Ù\Ä]\ÇTœž=\ßñ»\È\Òµ£\n\ÒVÁf\"•†+Om\Ñv\ÅF\ì\Â&}°žJT§g3\Ðw<»,%ð—\ÔÍ¿5¿®®-\î\ÄZ%ßŒi‡\Û\ëK¹a\å!\ÕW¶2sqE¢á‚ƒh\ï¬\äM¡Ša›(6oCý3\ëß‰Ž”.<E\ÔVPQmøú± ¥V¹‡1\í\Ü\è¿ü¦ƒ\Â\Ñ<:OTw\ï)§žŒ!\Ô^f[\ä$V$•IOz\ÐJ\Z\Þ#k¸ÿrn\ê‚X\Ë\åm‘LZ‘DÙ“\î¨\ÍUºÌŸ®ýþÌ—\åÿšjkQ\îC;·þ,\×\ë\éÀ¬\Öj/o#r\Ò\n’,&ð—\Ô\Í\â±\Ì¿®®­\Õr6\Â…\rCÿ\Õ8>\Øxµ\áŠC¨\âyW\Ñ¯±i£\ZOA\ì\Ó$Nñ!§g~ÄŠk\ZÃ…\ÇD\í\Â;)š\'l\ímV¼¡xr†ð\ÔRË™ðN(\ê\r\ái¤–›»gð\Éò“\äÿ‹“U{&œNŠ§\ÈšSk¿¤n7Oj\îø…\Ø7„ªb.þp€\Ãgæ¾¹h+ö\Üù¶6Ãš\ê\áCË†ðý¤Q¬ªß¾j)¿•\Êe¥´\n(¹\Â\é#Ç¸o\ÅjµÈ¹˜AF†ô\ï\â\r”rŸ\Å\n\î^\Ê$#3›\Üòº¾Vs/û4‡ =Oe¶2“žw;…\ã\ß\à‡ô|ô§Y*.oI·|òm\Zo–P]\Æ\í´DJ$\í\ÎÃ†)Vr7\ë\Z%š\nr’¾\ç\ÜkK5sRH8˜@F\î„m«¿&X1„š¢lN\Ü\Ë\ÞcÈ«;ž³„¨\â\î…,\ÝöS•—JÂcd\é[R?\Ì!%\á0‰W4(8mù-2¯—šôIò\ÒI9M\Æ\í|<2\ÜiFÛ²Š²Oqp\ï^Ž]\È3\ä\Â:úv’‘\Ëæ† -\çV\æuJ\ë:j57Žj£\ë÷\Z\ÇHÂ–nä¾¦^F)­\ÞK®œæˆ”7k’§F\ÉõLƒ\æ3¯R(Ÿ;‰È¿,kþw+\ZŽ õCrR8˜A\î¡úÙ§s\èD:y*+mè°’o\Öbi«¦­Õšü;™\\¯O Œ½ºQSv;\ÄC‡HL»\ÃC»«W[ùµ\ÕV3\ÆcM5EdŸ:\ÈÞ½R\rŠU¤òn\×J4T\ä$ñý¹;ú¹\Ó\\\×2¶´e›†\à\Öó]B\ßõg˜ÿ«x·v\å¹A‹ùñ¡\ÉS\ÅB¾ðoÃ«‹¯\à°\ï5\Õªoñý<ž~O`\ÔB&OœÈŸ‡ø\Ð\êYÉˆò\ZNzª¸½k,]|\çg¢\×f-E{C\è´\r]Ì«²\Ù2#šU{“°-¿vÚ–£‘\æ.‡f\ã“UGI»|’¹¯y\Ñ%\äòþ‘\Ãß—¾\ÃóÂ‹Œ]³I9º~«o\Å3Á?ˆ¿\Í\äRr<St\ä\å\Ð]\ÜR‹”^\ÜI\ä\íp\ë8†93GòjwÚ†j<^±ˆÄ˜÷š€ô+©\ìŽO+Á(l[ý5§‘!h\É\Ý3\ßÀ\å¤\ß+&k] >~‹H7u\ê\Ü\Ó,¿3‚\âm\Â?ŸCd\äTÂ†tÄ½ó¾Ú·’¨ˆ¿0}\Â[thÓ›¹)5ºw\ç6†\á\ë)\Ð}FŠAtj.¯~Ÿ1«2Q>¸Î¾°W»¯\Úñ¶e´¹\ì\ïK\àòt\îg±.\Ð¿E\é\rŒÎˆHQb\ï\Í\ç@úR÷\Æ0Ü§‚\Î4œ\ÛH˜¯\'B÷¤\Ø\ÊMs´!ß´v¯\ÖRŒl\éF–ü÷\Ìó\á÷D-œ\ÌÄ‰fˆ4–g\ßÙª–9Ò„½z8¿mÙš\á\ëo£\Òw–²„É¼ô·,¸¨X”H\Ì{A\Ì?Î•Ô½\Ä—jJ0\ZBUöfD¯b\ïñ¶EøÑ®S\Ûr,=\Ür¾uX‹¥½š®j\\kÿ(8\Ç\Æ0_<…\î\ÌH1D\Ñ^Ý¨o?ÁŸ ¿%óR2ñS\Ðñ\åPv\ÉA¶„­ü\Új\Ë\áñÜ¤ÀŠþT¹{\ï\Èòô{g­#\ÐÇER±Š¥\Ùù\í\Ü:2f\ÎLF¾\Ú÷¶c\Ùr\ÒT\×úa\ØÒ–=l\Z‚\Ðq\ÇtS\"N…ó’ \ÐgA–\É\ä_C\â¤´\Z²žSwj\n\ì\Äüµvó`è†»úgW\ìc´—;Ã·\Üo¸\âªCš\×nƒ×»;(\Ñý€–\ë+&° MŽˆ†\ìEñE¡\áw+9<\îY\\½§pªF\Ë\Í\ÕC\è1\é8t÷D”û?¢gŸh\ÎHs”úü4^TøòYÝ¶O{KzŽo\Ä\Z\'g\í\í5jÝ†A«eQj¸´°B›!¬Í‘~§º„¢2s\ë”&²ø ¼\Æ\ZçªŽ0¾þ,\ÔVu\Zbn¢’¸\0O:Gž\Õ}/\ÇrP«^\ÄdZVG\å¾Ñ´^g\éu}?µ¹«xK\ÊûÀ9ú\ÉLs%~\î\Æ\ÉMÊ¬\în\Æ\ï5Wù\ÌÏ‡Ž”\É\ßI\ßC\Ü!•\îkG\Û•qxv&ò¬®\ç\ä¯D«^1X\êºXO÷@bA\ä\Èx\ÓwjRguÇ­¾p,å¦¦™Ú°­›F1²«y¬ƒqóÊ†»úXUH±órÎ–û/•L\n3_\èzý›7\rW—|@t’‘Hi|7co\Ô?¿\ê\Èx\ã;M6‹Œ\à‹º\åa\Æ=\ëª\ÓT£Ö¬\æÛ¶n\í\Õt£Z“P§Î¢»[!Ø«-·\Ö\Æ\ëX\ê}Lžµ¦Í \ÕŽm\ç\×^[ŽÇ’þ¤V\\\0ž#\ÑK>ŸµƒZ\Ñ+&S§Í¥…ô\Ú0dmŽô\ÛÕ”•Iÿ›\éÚ®¶l\ÓôwÒƒbo¯\æn}«ú\Î(^šEªN\é\àˆ!”lf˜Â‹C9\Êg…/\Ø>+,\Ûÿ\'žó\ÌZ¹\r\ÍE>›ô9\×\å\Ö\\fQ¿\ß\â7n.ó\æ\Í\Óý›ý\"¦®\æŒò*óód\äN\Ë/³Í“ª›\Ð¿cB‚I™ˆ÷\Ø\àï†›.N’È–÷G\Ñ)œ3–—µºŸ\ß8Ôƒ§š|*\Èô,\ÔV\ì\r4\Ú!H\ÔTQ%½*?™ý+\ÇJE\åc˜dSs(/\Å06\ëÔ\'£ö²$–°ù?´wD?9h.±°¯\Âdõ[Áñ°N^}¿öE&ºp¸m‰šª*)\ÇU\ä\'\ïg\åXIø>†bi€È½Cñxq*?\ZƒhöA.À¾(\ê\rÁBnš«\r\Í\Ï6uc#ûº)\Ù<…WFÉ‡ó‚\Í3~-w¥<óŒ?_\È*M\ê‹?\\@†…º\ïmd¨Ç‹L5K\×~Ý‘‘\æò\"úýÖqsõ1˜7o.\Ñ‰`\ê\ê3\r%tXÉ·\ÝÚ«iK† Oˆ}C°W7\Ò\îr\Õ[\n~7!Á\Ä\Ä$lð\Ç\Í\ímV\'1=¶rØ„¶µ¹¡†*}±’¼%c¥…„a1§½¹œþŠN„7ø…†º¶¯-\Ã5+8ðR¹šCzI+®e&\îª&}NO“\"s€j\ÉA=Z\Ð\æƒý¡šƒ¡£Ù¬Ô«\Ïb°\í½<ª>CDg}]¢òü|\Â\ã+•š„µ÷\âƒý>à§»\çÁ;;šf\êô9ô~Cðw¦{ò\ZŽ}ô,\Â+\È\Ö4Á\Ô\ç™\ÞÅn\Ñ?&T	\Óñ\Ù\ê¯%,‚¶\ä<ë¦…³xwÊ»\ë\â\îCD³\r\á>[†+ŒF\Þ\È$*¯ðõ\ÄWi\ë\â‚W¿0v]\×\ç\Íá¶¥ì–œ_Ç´ð\Å\ì\ÎPrwý\Ü}\",‚šóÓ»\à\Ö-šŸŒAt\Üš«\r;º1‘}\ÝX6»/}\'¬£=f] 2s1–ÿ,º1\êó\Ó\é\âÖhc°\Z´_s\"Œö^\ÐT\ÉYÌ·\ÝÚ«i»†`¯n\Ô\é\Ì\é)ð›\à\ï\Z¼¨9ö\Ï\n¯° \Û,2¶rØ„¶•¹A[\Âùu\Ó_¼›\å]\Öq\Ç\'¢\é†`_[†KVpÀT\ì~ÿ¼\'Ÿ4™ÀkuGF\îƒ\ÖX>Û´…ú\'¢»¹\"ZK¾ùªC,`C\ÐDŽ\Ö\Í\Í19P‹ú\áþ\â$L\â[ýŽVz®´}—¶\Ö\Þõ[k=by?e%\ÓK\à¹¾15\é•×¸&]¨O\êU}TE\åWŒh-\ÐcvšQ”Rœö¼\ï\×\èo¤ö›`\Òd±¨¯@›€­ü\ÏL\Ø6ú{\ÅS\Ì\rA\Ú\Ò\Ç4n!\Å\Â\Çl\Òý›7Hæ«¦8y=c{´¦\Õ[«t\Ï\âhÛš«±ôzƒX\Ý>]¤Ðª!È¹\î+m¿\Øj¢\ã†\Ð\\m¦\ÙÔyŒ\ìë¦™† ñ\Ê_ýpÿ]s¦NfC®\åŸ\Õ\\ZD_¡\r[•úE’„iûò\Ñ\ÌK‚7¡GDòŒŸh$9kùþ§m\Ý6y5ÔšLC°W7¢’¯F´F\è1\ÝI±Õž÷ñð\Z\Í7¦’QgX\Ïaq‘Ý¶¥¹A\Ã\ÕØÆ£)±\ÐaC°¯-\Û\Ø6„×–\èYdÊú\Ò`>7I\â¶<\Ã\Ëóôg\\ŽQKZLo­^cQ¦©›‰”‹!hz¢´5\\)þ’¡º`&Ž\ÚSLñVðú2\ã¨%´yð÷ðù\Øô~ª97­+®®ÞŒZ›LA¥HMÁib#—ræ‘šŒù}PH\Å0bi\"9«)¿qˆÅ³¶\"{«3b\è\åÖ…\é\çÕˆª‡”«K9\Zún]\"9[7„\ÊD&w\éET’üD-7–¾ŽB>7m4‰\Õ!\Åan/E¢\Ï\ê?…\"*\ã\ÕV ÷|ù}­þ\ê[h€ö\ËH† ·\î‘·¨ð]|Yú^\Ãý\ÓMhO\Ø	f\"Q}p¬n\Ò\ÞTWev2Rš´ß×¿”\Ï\æa\n~S÷qa\ÍE>\í­ kT²^\êL–Do¥\îø¹úX(ú\êW&Ž¶ýp{ ”__–F¢¹Ï‰»!´\ÃR\×k\Ó\æ\ÒKP\Ð\'ú¬þXCš\âGµE\è=Ÿ,d5\\üT\Ò[\×(’uµ”›\æjÃ¶n\Z\ÅH´§‘\â/‡\ê\r¡^òSðV¼\Î2\ã\n\Í\"b\éBžw\Å30\Îú\ßÕ¦1Wšü}¢9«\ÊøQ´z3_Võ9¦uu\Å\Õ{k“¨k(8K\ä\Ò3†óu¬\æÛ¶n\í\Õt£Z“º¥¹ø)½]‰\Ò%\Ð^Ýˆ”\r\å©HcIœÜ…^QI&óA¶rh¿-\Ç\ÇcI\Ù¨@ð]Œ^ò\'ø¸›@û°º£*í¥¼®ðfJƒ\É\ÄL\×vµ%\å\è\çý,Y²ku÷M°b\"÷ŽDñv\×W9k5›7®d\î¤I,;c\\Q\èP$\ä…?²\Æ\â§š@\Õ5¾ó\ã÷\íº3<t\Zs\æD3)8‘“¶U§<u>I\Ëi\ï\"\Ð34Ž\Ô{÷\É\Þ9BK\Úù/ \Ñ\ê\Ç8%¤\à\ìù#ó\ÒueXXžÆš nx¸´ ¥Ðšý\'o8Öû´\ã¿ûI\ÅÑ‚-¤‰u\È¾/0Œ¯ò,Ó»»\ã\Ù}—ž @.öŠL¾?€A1l\ÜÇ’)!L\ÛsCJ Èƒ\Ì\ÝD½\é%=£;®O\àŠ¥3U›‚{\à\éÑžWI@§\ç\éó\ÞLvd–\Ù\î¯)\Úb\Òw\Ï\àM¯–¸½<‘¸s¹Òµ\\¶y#¸xò‡þ#™·–ö®xõ\ZÍšÔ†eQ“wžM\ãº\á\êÒ‰ \Õ\'§4—¤5Aø¸¸\àýn,\'o•pû\ÔR\ÞñvAx)”­I)œ\ÝŸGK\ÜûM\á\ë”\Ý±p`oF-\Ú\ÅÉ¤¾ød,s~(¡\ÚÑ¶/ò\Ï\Ü\íy¸xþþ#§·6„ö®^ô\Z½³®K¨\È\ÚLOÚ¿2˜€\à(\":ñ|Ÿ÷˜¹\ã\'þ\ç\ÇDøy\ÐÒ½S¾N&û‚\å\Ü4[\Ö\î\Õ\ä‘l#«º‘%ŸÄ²Àö¸=	K\å\ÞýlvN\èÐ²þõŸ”³J-IS}ù\Ó7fq5C•µ‰\àžx´…ÁÁDE\Ð\éù>¼7s™e\Z\Ê\Ó\Ö\Ô\Í—-Zw ÿ\äx,I\ÎZ¾u´µX6¥¦\Íj-\ç“\Ù\á‡GKwúMùš”©¦\íÔü~#ó\ËñD\Ì\Æ\Ä-™BÈ´=Ü°4[ùµÕ–\Ã\ã9Nvª%ýi\É\Ý„·\à‚\çú3rZkC\Ú\ã\êÕ‹ Ï¶³;\êM¼Z\ntÿp=	W\äüÖ—lª\ë\ä°\ØÒ–l ?/ë»\â5þfº¸7`\Åê¨¡¬\ày\ä\é\Íiÿu0#>\ËÔ¯šŠ|®e¤’–uÂŠÆü%ˆU•\r\ÎýLQ—’W¬’B\Ô­ª˜|e¥\Î\ÝM«\îSx\ßÂˆkK)¼WÞŒ’¹?w\n\Ë\ÑH+2Ue\ã^\Ù\ê¯M\Äj*\rG”»ZH\Ñ#ó‘ýZh\ÑH+*±¦Œü\Ûù”™.fšXý€B¥Ê‡ZJ‹°\Ùuu9…w\n¥˜T.ªJ\Çce 9Ú±u\Ï\"¿‚n\Z °e\ÂTŽ6]¶QS^x‡Biù-Ö¨h,9ù~\Å*[Q´Ÿ\ï\æ\ê\Öj­™a¯nôº¹\'\í\è\r\ß\ÚÁvkË”¦G¤úA!Jc±RXô¨\éz2Åš¶\ÄJJK«,\Ì\év\rÁ:\Õ\×\â˜:\ë[ŸŠs\â\ÄÉ¿­ª”²\Z-\çf¼¸9G¸Nœ4\ÓÄ‡\ì\ß}e³lË‰\'¿*\Ú[¬\èFK·gh\×;œ¦<\êÄ‰4{‡\àÄ‰“§‘’;Yµ&ž”\"\ç–\ÝIsÿ\0»žºF“\í\å\0\0\0\0IEND®B`‚',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0¨\0\0\0\0\0\0T‹×±\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0t\0\0t\Þfx\0\0\n0IDAThC\í˜\rP”\Õ\ZÇ£\\A\rS\ë**•Ij…&¦\ÕMƒš†¼\Ú-´«¡	šJ¢&\"\æ\å÷U Lo†–i¢¤b¨å„˜d|)ƒŠ pG@>l\Ýw~÷\ì\î\Ë÷²ò\á\Ý\Ù\ß\Ì\Î\ìž}÷=\Ïÿ9ÿóœ\ç\Ýû0c¦c6¨™.Ù fº4fƒš\é\ÒtØ Ry\"{w\ÅS¤•:ÀŒ£|ú\Ñ<¼½¼ðòžÏŠ­\ÑdU\É_ª2ˆÚ¼”9\Þ^xû®bÇ©Bù3ªKyaôLö\æwb\ïª \Õv²$\è87$y h¯l\æE…\ÊWÿCQóû¨/±f\ì`f}_.t!j+¨¨–\ßÿ?\ÐLO\íù]øúl\"¾´‹{\è\ä¯%ÿ\ËLÝ–…Zi7ª=¼¡´ÀvúaZ®w\rG<]\Ùxù\Ï\Ý\Å-\Ê8±d›24òÀ_œ.¬§mÕ–“{&šƒ‡~ 9¿\î–©ˆ`Ú£“\ØY\ØÁVg\ÐwŒô˜Ï›l¹RgP-\åÙ‰œ/\ÖR[r\ß\å·üVÊ˜ö9gSHI¯³Y×Š1©‚¼ôTRRÓ¸Z^o5\×\ÓNp$2†\äk*šªó\åž!ú\à!~H\ÎÇ \\\Åùm“`9Œ¹\ß%qörI\Ã\æT—’›Kdd,IWÊšnZ©’¼s”h*È‰?Æ©+\Æ\ân‹>Sñj¸u\é$\ß:FB\æM‘½f\Ô\Ü \í§\Ã\ì\ß/\î{­¾—jE.–T2o‹ÚœK5¥¹I\ÄFF›t…²W­\îjPM^$Kg\ÌeKT\ç\\\Æ\Û!¸‡_\á\ËH…|\îÒƒgƒ.ˆôt€¶\Z´:›c\Ë]\è§x„‰‹V1[ô­\ï:\ÛÓ½¯\Ø×ŒU\Ø*r÷Ng\à\nF¯H\åŽ>‡µ\Ü\Ø\ï\ÎH·]\èýQ•ÆŽ³e4\Çw\ÍÇ©\Ï`\Üv\å´iòˆ\\:ƒ¹[¢H:ÿ#\Ë\Æ\Ø2\Ä=œk¿\çðóºIüMñ8\ÓCp(>G·:{ž.n|•Jz\ÂŒ\ÈS{\ÉVK\Ü>û\r¾\Ï÷Ár\à\Û,™Ì³¬\è\í\ÙTo[ô™ŠW\í\ÌZWþMZò~\æ9ö¤\ÇÀ±Lž\á\Ïþ\\-Ú«û˜9z\"’¯St\îS&\Ú;±:Y8­ª¥ž\ßN±\Í{4½|xF\ç²6\äR\ÍO\Ü>‰\"5==\Æ1ð)öfwÎ¥¦\rª½L°ó0|¢\ï>K\ÅD\Ì\ZŽ\ã\â¸F»³†XŸtwþŒ‚¦Û¹m´£‚Jù¡L°´á•­y†\ÍPq€)¶V¼¶\ãf³J\"£\Í%dBl\ß\ØM‰þ-™›<Y™¤Kš†´\Õ\ãpý¼Pþm%Gfô¥›\Ý~ª\Ñr9Ø™a>\Ñ”KG\Ìb¸\ãb\â„põi?WŽ\æ\ãº#Q›-\æ±\åùuf\ÑM\Âx\ëŒ¾,\Æ4¤¯rD\ÑÃ™\Ðñ›\ên”¶\ÜÎ¦õ™ŠW\ÌwE\Ì\×Ó‰O\ä˜\Ê¼\ÍC\Ý]Øª?\ÙDüa¯\Ó\ëQ_N\ê«_>¡\ã»3\"0U_-[\è¨ýq°¬3¨Àd.µd‡LÀöù\ä4$€ñ\ÖôLg:4“\Õ\\ZƒS¯\É|còEM¢¿\Ê\'ýI\ì\ÈfiAK¾\àU¥-\î‘òö¨c\Þ %c7\èL`œÒˆ\Ñ\Ïf¡º{h\Îò±Ï¿\É\Ô]¬9\Ï\êQ\á4cË—/×¿–-þ€ù‚‰+¾\È\Z§^LnExó\Õ^\Ý\Âß•\ãy¼Ñ¡*]g«‹%–/“§†\ß0\å\ày\Ä\é\Ò\n&õ™ŠW\ÃC=\Æ§h³70\Özkõbu\ÔPU%\ÞW\å“±™\é–\ØûžuÐ¸A5\é«©ldPA«¹\Ô^e\Ëß•<\ìy¼Qá’¸¾\ÕKË—Î«‹¡ý˜4hMŒ7ým&±û.MŽ\Ò\áC\Zii;Õ¢J\ØX\Ðcj„ƒVs\Øc\n_j†\ÑlÚ T\Ç1ÿQ%#W§Syzó\Â\ä\nTƒw[¦FT\ê/k‚þ;&µ\"¼ù‚ª“®xi÷\ç5\Õ\Å3+I\ÓtÂ uúLÅ«£ú7VŽ\î…ý\Ì\ÃúC*¢}pt	¦\Þs\ÚN\êÇ¼ oI)\Î\ã3g+\ì\ç·Ï ­\æRLÀpN;(÷\éjŽÎ¢¯\âV¦5Ü·½˜4¨:%Š~L\r/‘\â¸\È\Í~ý@­þˆ·\Z‚\ÑVðn¨eñ\Ðn(Æ‡’\ß0‰©€­n^D\É\Î\íAu\Ç\ë\êQX=\î\ÃÊ…‹ø®TV\'\âÿ¤;(\Z\ÛP*O\á\×s	ŽP\Ðojx#\â»\â2\Ä@ý‚^4$^*þWkÃ–&\É:T\ì{\Ë\Û)\á\âþ÷À ¦\â½`¸^›†÷[^¬\ÙBÈŽ\ã\äÔ»E\ÃÅ/4Á\â¹Á¨Ae=:Œ\Z´µ\\Š\Ö\ïKWkÃ–¢?ñeTû\Þ\Â\Æv\n\á&œiL÷ \êV8*QØ¹².6‡²\êr²\"ƒðß™i\è‘tH·\ØùzOžZn\èg\ÚO-IO£\ì>†Õ©÷ŸD\é©@\Ü\ÆRQ7R´Wô(;¶ö\'\æ\Ø)yn}–	ƒŠ…»¶ö\ïÇŠÎ­ŽjNù=A·nv¼š@A¥DMÁ	6ú®#îŽš”Ž(v¸®‹%§¬šò¬H‚üw’)„\ë7®\åžV#©\Ê(W\ß&\Êc–CDW\'¡2–\ÙCF°(^7£–¬uÏ¡\Ôõ‹¦jRŸ©xÅµª_|Ý‡U\rkSO_M\ë8:ˆób~\Í\Í\Þª ¿wŒþHn¡G\Ü@sö#žV>Á¢„¦«j<—\âA0ÊƒA\â¾\r	 vöF,Šot]û1mPAU\Æn\Þ\Õ……J;œŽQ\Ð\Ø\rªÃ¸z™ú\î¸Teðµ·ôq\à5?\ã3m\"“}vpN~>COüú‰ôO’\Ã=\ÂH¼~“´o<¦¸Ÿ>.+‰5ú·Œt›÷—Yž\Ü4\ÙRy!nC±yÀ‚û\Ö;›=™rõ1\í~o½B·…;\ç\0Ž\Õ	¯<\ÉB+z9¼Š×º\ntŽ¨Heû\ÌqŒsd\Û\î0\Ö\Îq\Ço_–0€Ä­\ÔoYô¢­˜Ãw>;\Î\Ý_7\Íiƒ>SñJÅ‡ñj\Å}\"^q\î={\Ó\ß\á%¼v]1h¹ú•vŠ\èõ˜x²÷#Ô½?\ÝlG0%$±…žœÿ&°{¾6÷[1j\Î×œ)h”·Vr)@\êö™Œ\çF\à¶Ý„­ƒ»\ß>²\ätv”»\ZÔ€UQ>Å•\ÍM(Qøõ4\\?N5\Ò?¶ME>)‰$Ë¤°¢e\èRUe“þ¨1\êòB®©ŒT¡\\UD~qe‹\n-UÝ¤ð¦Õµ·)¼^\ÞÁÓ¤m‹WA\Ð\Ú#\\Ê¿Lzò¯ürògb\"w²äŸ¾Ò—0‰\ê[…«d%º8oÜ©\×Õª#˜Ê¥\îD¼]x]œ*ò\ÇN\ÒFƒ\Z§:#Œþß‘wo½d¦½h¯\ê<÷\Ã*y@F*%vóö&}\á_T*K!\â\Û\Ó7/-fþx\ÄC\ÊÁw\í±\ê;·ù±v\Ãz‚–ù\â3w\á:\Óþùtª‚š\éBHwÈ‰\Û\Ç\ç›Ö³ù‹p¢óPiuÿj˜\rj¦Kc6¨™.Ù fº0ð?QLƒ‘5’SA\0\0\0\0IEND®B`‚',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0¯\0\0\0\0\0\0Œ]­¸\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0t\0\0t\Þfx\0\0IDATx^\í›PTõ\Ç%=,Š\×Ö«\ÖUT,o¤X¾{hXSF\Ú\íJh`‚¦r#Ÿˆ\×V¦%Šš\Þ5\ßF&Š/P\ç\Z^\Í\ä¡*\Â.8°\Ã\ë{ag÷\Ì\çþw9\Äk—„j®\Î\ìgfg\Øÿ9\çþ¿\ïùþÿ\ß\ÙmG\èR\Âùp\Ñwd”6\î#¬šW.I b\ß´F¥Á†ûŒ3¯\r÷36ó\Úx`±™\×\Æ‹Í¼6X,šW.½\Ì\Þ±\äÿ†\ÍZy\Ê16þc~3f0\Ão.\Ë6Ÿ$­J9X‘BÔº\Å\Ìò›_À\n¶\ÏU\Øxð1sq_,œ\Æ+¯®\à\ß5Jó€\ÕÌ«»¾…!\'È“•†6`¼µŽ\ç$;T/ÿ“ü¦ý\è\æ“Q}ñ9Zª4\ÜGÔ”Q¦Sþ¶\ÑjdC9\æ¹ 9\Í\â\ÌÿÃ¼\Âzh¾ž\Ê\ä-iè•–VS±‡7Tv¨½\Ó\Ü\Õ™>žµ\é÷\Ùgqr	gúðyŠ\í\Ã\í¶c$óóÑ¨þpó\ZKÉ¼t’CßŸ\"^S·®+”E0¥\ß¶\ç¶1ýÖ™÷]\Ë\æ=\îÿ¡·\ê\Ìk¤ô\æe®i\Ô\\\ç\ì\Ñcü¤±’þŒ…d\\I !A¼®¤¡5	$—‘œHBbY¥u\ã\Õq\'\é,G\"£‰¿]A\ã(\Äý2/qò\Ð÷œŠ\×Py×¶L¤—ý\0fÇ•ô‚ú‰«/&3.†\È\È\ân•4ž\Ðr%\ÙWS(0”‘{œó·¬¥m=Å™q\ÄDFw‹kY¡2—‰\"¶ÄŸ\É3uU÷>\á\n™\ÅuQ´B¯_°®‡^›\Ì\é#G9›‰¦°¼\Ñ1ci&—N\âûSñ4¶H5yIg8|ð \Ç~º­hhÂŠy«óH:s˜ƒ\ÅXo7\ìH¦2û*)\Ê2b9~þ–¿4§\Ýâ©³	Š\ã\Ú\é%ŒT÷\ÇûÀmqk9—/\ÇufX\ÈuQÉ´{5¯\î&Ç—Ž£‡ô(óV0S\Ô\É\ï¹;Ó±»˜8·-e\æ*2÷zÑ»½\Äðe‰”›•®!\ï 7C<w`öNU\Û\Ì\'ô\àIN\ì˜Ëˆn}ñÜ‘Q›!›\È\ÅS™\ZEÜµ\Ó,©¦¿÷nÿ\'ƒ­žÀ_¤\Çñ\Úð-\ß\Çf˜Ç­¿¹‡\é\ã<ù8*‘dQ\Ï}\èÖ›A¾{¹©—)º²›€\ÑÝ°\ïýA\'2¬—]½#›Ç«¿Éž\é\ãðü8Š\Ä\ä‹\ìùÐÞƒ|\Ù{Ó‚ƒ\å¤o}®\ÒV$\åõ%dž\n\äiIÅ›û\ÄCoµ^‚ô\Ð_[\Ï\Ûï„’¨-$õ[?†y}«Œ\ß@v\äb¦\Î%*\î\Z§—ŒD\Ýß›¦{³\Ø?m8kâ¹“•ÎŒX/ž‚‰\æ\æ5f\íg\Úp\Ö\Ä\ß!ÿ\êF<œG°2¾¹\è\n»F\ÓÍ¾7\ï-d\â°^8tõ&²¹aš\Ñ\Îÿdy\í_²–ŸžNØªŽjbü{\Ñ\Ñ}9\ÓÖ½ÑŠ\Ì+k\Âk\ï\ÈK›³k\'JÙ·LR;ðÊ¶»M2¦‚1“\rc;£~c\æŒ¤~>\åq&3HZ\é\Æø/s•k+92µ;LbVI_\ï\Î\0ÿ“\ÔF.£ða\à\àùœ\ë/ò¸j8«\ê\Ê\ãMq5£\×*\Æ75en`L§ÎŒYŸ.\Ú$¯Œ\ÔÙ°q®€¼\â¦S\Ý\È\Í\rcQ^KF}\'lÓ‰\Îc\Öc©r\Ò_Z€‹J1¯‰Ê½¼©R\Ì+h^-\éa\àÆª8û¥\ØtHø`x¤Xƒ\Ä\Ó\×\ã>ÀŸz‹D\à3p0ó…P²6œ×ºô#\àó²‡&l]ƒI4\ÏÅ¦\æ\Z‡¿F—~Ôž®!lLG\\ƒ\Í+˜!yƒ¥Î¸‡eˆ‘\ê(\È+®\éWh·»\Åý’žË‹\\P=¹ˆ\ËÖ–¸–hy¾\âe•\Z\ïHe\êÔœcN£Ö˜b™âˆ¿\Ñ\Ãq,a¦>WX\åÿ©¦“\r\×X9ôÏŒ˜º„¥K—š_K\æÿ¹®\çœöŸŒ\è\ÂD+75¯1+”\çU0ýDý”F¾\Ã\æqöØ¿°žl£˜kF¡\ê;‡sJ–i†\ÈR¡Ï«xdú‰‰A\æ\Î\æq\ØÛ¿Àú\ì\æ63oÕ¾\Æ\æm^-\éQ$SvÒ¾’šÁ\Ó\Â8ŸW÷ \rüü\ÉºLÜ5‹TWU‰{U¡¹Á:/\ìs63¯‰jªª\ÄÈª4\\ŒX‡—‹=\Î?˜3µ1}\r£T}™cU@Ë´\Ûõ+\æ\Zˆ\Êe—\Úb^\ÈŽvtžaÁ¼:ûN\â+mm.°ø0ú¶l^t\ç˜\ÛOÅ•\ÉT^XÆœp%³TG\ã\×S\Í\äˆJói0sd‚•À›šW\Ä@\éa¦jX£UsÌ§;\Ò\Ó\ËI2Üƒyõñ\r”xxÊ¡u¡\è\å˜Ý¥§Yž\Ô<Ï´É¼\ÖôjI3•\\ÿfÃº¶§½z(~{SE„\ÕDûõ\Äq\Â.+\æ5Rpa#sBØ— %{“;\Îs­›\×XÀ…\Ì	\ÙG‚6›M\î8\Ïý\æ| @YJLˆôž\"6¿4Ô˜\Ë‡1°VJµˆþG\æ?\ÑiLšú›\Ô\"\ç°\ÙsQŠ«\Ûd^‘’W\Å\áq–4\ï\Ì\ëž@™EOJ8ùF5^.M\àÇ«	v•\è1ù@ƒ8\Å1mŠ\Ø0\Èõ\æ½Qk\ZYû5\ã;IX\×`“VÁþ·QO: ú¿óŠ¥ø\ëñ,\Æ\\\Õ(T\ìGõ$XpÇ¯–\r­Ñ«%=®ë¸›žN¡\ÐBŸ‘M^\è\ÔñyB3ÿKB°+R\Éh,))b#{c-ÏªG³\Ö\\\É\ä¶h^Qš¬}¶¾l{©\ßÅ¼’\ÓxV\ÇdP¢+%-2„E\ÛS\ë\ë\r¹\í¯ý‰AKkk“\ÖSC\\ðS¨:ŽdebÃœ#S|>Ïb(«k\É\ß\ÊKæ‡¡¸¹\æ³œT<óYZ\æ\ß\Þ\Ì8G	\çbDþ¨C\ÇùÀ¿Ò¡ƒo…]$§R¦:\ç,kVs®\\OÂ²Á¨$\'Æ¯Ž!£DGiZ$!‹¶“*\×\'\ãjßŸ.\è‘+J(\Õ\å\ÛûþbI¬¡2†™ý]™kº£‘´\Õ\Ï4Y\"›\"6vQ¾ôý\ÔwB\Ì\Ìþ¸Î‹m0\îzŒ©Ÿ2\ÒþQ¼‰«\r\äG0\È^Å«\áE\æ\ã­Ó«e=?_ÿ‰’\î¾½†˜W}\Â2«„\éÇ¯&&£]i\Z‘!‹\Ø.„*\Ù\é!4N\È5´\á.\Ñ<\ÔÓhó\\5þ\Z7¡\ÉLN›5)a§‡\nixµ§GóÁ=ý¢\Íe”1m5Ï¨œ˜e]@‹´{hW$;;\ì\Ä\Å\îA\Ç\Éiy\Åa¼û¼È†_vm *…oüFðh7^ñ\r$(h>þS<˜è¿«\ÊF\0½†\Ø\Ï<\è\Ù^b o8—\ï\Ü%i÷tH\Ñm\Ürb¬~ô$‹ˆð~‘¥ñ§—\\\Z\Ç\Ï\'plo\ÇCR\'zšÉžT%K‰1\íz¨\ØÍ‹¸\íT8¹q¼.ð\Êø\ÈÅ../3cu49¦™\\–\È\Öin¸y³eW8Ÿ\Îò&pš^¦0qóžS‹{¸ð\î¦\\5¤e\ÊH\Ü:\r77O‚·\ì\"ü\ÓYx\î\'MR3D¼ûg{1pô\ë\î\Ü\Ä{ýú\à\æó±YY­\ÖËºÂ¼+žå©·V²÷t,\'¾œW\Ð)eUª\"e\×û\í*	\ì„\Ý	:žcžÆ¬x:I´\ïò£&\æM\Ïj\\\'…r<vLš\ØbFøy²D­›µ\Ó\'©=]\Å\ÄÀpÂ¼{\ÒA\íŠçª\ì›÷\ê‡$\\\Þ\ÝÄ‰\ë¦\Ézo´3Í’Š|\r\ÚÊ¦KÁ7S¿*\ÑB½\Úze\ZR.w5•Ü²_rû\ï‚\\UÙ¨–lˆ¾4—\Ûùõ«IŒùh´•\Í2•\\u—Ü»¢®)\"÷NiW¡:j(Ê½#2ºò¶Eô”\ä\æPXmzœÊ†\ç7bI£Á€,WS¬\ÉDSl!û+\È\×hijYWH®¶B\Ñ\ÏW\åV‡(£+\ÌE[¡œ`\Ò2¯¼™ö­Áú¿‡m¿¢°qŸcù‹9¶_Q\Øx\0h\á»\r6l\Ü\ß\Ø\Ìk\ã\Åf^,6ó\Úx@ÿ\æm$Z5&z\0\0\0\0IEND®B`‚','a','Ejercicio basico de vectores',1,3);
/*!40000 ALTER TABLE `ejercicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scoreboard`
--

DROP TABLE IF EXISTS `scoreboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scoreboard` (
  `id_scoreboard` int(11) NOT NULL AUTO_INCREMENT,
  `evaluacion` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_ejercicio` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_scoreboard`),
  KEY `id_usr_idx` (`id_scoreboard`),
  KEY `id_user_idx` (`id_usuario`),
  KEY `id_ejercicio_idx` (`id_ejercicio`),
  CONSTRAINT `id_ejercicio` FOREIGN KEY (`id_ejercicio`) REFERENCES `ejercicio` (`id_ejercicio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_user` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scoreboard`
--

LOCK TABLES `scoreboard` WRITE;
/*!40000 ALTER TABLE `scoreboard` DISABLE KEYS */;
INSERT INTO `scoreboard` VALUES (3,1,'2021-01-21 21:33:14',15,5);
/*!40000 ALTER TABLE `scoreboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subtema`
--

DROP TABLE IF EXISTS `subtema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subtema` (
  `id_subtema` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) DEFAULT NULL,
  `descripcion` text NOT NULL,
  `id_tema` int(11) NOT NULL,
  PRIMARY KEY (`id_subtema`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subtema`
--

LOCK TABLES `subtema` WRITE;
/*!40000 ALTER TABLE `subtema` DISABLE KEYS */;
INSERT INTO `subtema` VALUES (1,'Magnitud de Vectores','La magnitud de un vector es la distancia entre el punto inicial P y el punto final Q ',1),(2,'Diferencia de Vectores','Resultado de la resta de dos vectores dados.',1),(3,'Producto Punto','El producto punto o producto escalar de dos vectores es una operaciÃ³n que da como resultado un numero real. ',1),(4,'Angulo entre dos vectores','Podemos definir el angulo entre dos vectores en terminos del producto punto de estos.',1),(5,'Producto cruz','Es una operacion binaria entre dos vectores en un espacio tridimensional',1),(6,'Vector linealmente independiete','Varios vectores libres son linealmente independientes si ninguno de ellos puede ser escrito con una combinaciÃ³n lineal de los restantes',1),(7,'Matriz inversa','El producto de una matriz por su inversa es igual a la matriz identidad.',2),(8,'Determinante','El determinante de una matriz de dimension mxn es el resultado de restar la multiplicacion de los elementos de la diagonal principal con la multiplicacion de los elementos de la diagonal secundaria.',2),(9,'Rango','El rango de una matriz es el numero de filas (o columnas) linealmente independientes.',2),(10,'Eigenvalores y eigenvectores','.',2),(11,'Polinomio caracteristico','.',2),(12,'Suma de Matrices','Sean A y B matrices del mismo orden, entonces la matriz resultante suma los correjpondientes elementos (i,j) de A con los (i,j) de B',2),(13,'Resta de Matrices','Sean A y B matrices del mismo orden, entonces la matriz resultante resta los correjpondientes elementos (i,j) de A con los (i,j) de B',2),(14,'Multiplicacion de Matrices','Es la operacion de composiciÃ³n efectuada entre dos matrices, o bien la multiplicacion entre una matriz y un escalar ',2);
/*!40000 ALTER TABLE `subtema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tema`
--

DROP TABLE IF EXISTS `tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tema` (
  `id_tema` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(30) NOT NULL,
  `video` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_tema`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tema`
--

LOCK TABLES `tema` WRITE;
/*!40000 ALTER TABLE `tema` DISABLE KEYS */;
INSERT INTO `tema` VALUES (1,'Vectores','https://youtu.be/aYlICOhaO1g'),(2,'Matrices','https://youtu.be/4YX9YmRE62c');
/*!40000 ALTER TABLE `tema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `paterno` varchar(45) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `username` varchar(15) NOT NULL,
  `materno` varchar(45) DEFAULT NULL,
  `nivel` int(11) DEFAULT '0',
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Jessica','Castro','1234','jssx',NULL,0),(2,'Abdiel','Reyes','2345','abykings','Rodriguez',1),(3,'Luis ','Zuniga','5678','lxxs',NULL,0),(4,'root','root','7777','root','root',1),(5,'Shinji','Ikari','1234','shinji','Ikari',0);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-21 21:53:46
