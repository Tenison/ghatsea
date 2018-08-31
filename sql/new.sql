-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2018 at 02:32 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL COMMENT 'Album ID',
  `featured` varchar(50) NOT NULL DEFAULT '0' COMMENT 'Featured Image',
  `title` varchar(50) NOT NULL DEFAULT '0' COMMENT 'Album Title',
  `created_on` date NOT NULL COMMENT 'Created Date'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `album_pictures`
--

CREATE TABLE `album_pictures` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Image ID',
  `album_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Album ID',
  `image` varchar(50) NOT NULL DEFAULT '0' COMMENT 'Image Name',
  `title` varchar(50) NOT NULL DEFAULT '0' COMMENT 'Image Title'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `title`, `description`) VALUES
(1, 'politics', 'politics News'),
(2, 'sports news', 'sports news'),
(3, 'Tech News', 'Tech News'),
(4, 'world news', 'world news');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commnt_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `poster_name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commnt_id`, `news_id`, `poster_name`, `comment`, `date`) VALUES
(1, 4, 'ahmed', 'you are right', '2016-01-17 07:28:52'),
(2, 4, 'alert(\'hello\');', 'alert(\'hello\');', '2016-01-17 07:29:54'),
(3, 2, 'd;lfNW', 'kdfn :L', '2018-07-26 16:47:40');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ins` varchar(255) NOT NULL,
  `twitterbox` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`fb`, `tw`, `ins`, `twitterbox`) VALUES
('https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.facebook.com/', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `youtube_video` text NOT NULL,
  `dateposted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `visits` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `content`, `user_id`, `cat_id`, `image`, `youtube_video`, `dateposted`, `visits`) VALUES
(1, 'Messi bags fifth Ballon d\'Or award', '<p>Argentina and Barcelona footballer Lionel Messi was named world player of the year 2015 at a FIFA gala in Zurich and claimed the Ballon d\'Or trophy for the fifth time overall.</p>\r\n<p>Messi reclaimed the award after watching his great rival Cristiano Ronaldo walk off with the prize for the previous two years.</p>\r\n<p>The Argentine, who finished ahead of Ronaldo and Brazil forward Neymar, had previously won it four years in a row from 2009 to 2012.</p>\r\n<div id="article-body" class="article-body">\r\n<p>Messi helped Barcelona to win a Spanish league title, cup and Champions League treble plus the Club World Cup and also led Argentina to the Copa America final, where they lost to Chile on penalties.</p>\r\n<p>"It\'s incredible, much more than anything I dreamed of as a kid," said Messi as he received the award.</p>\r\n<p>"I want to thank my team mates. Without them none of this would have been possible."</p>\r\n<p>Barcelona\'s Luis Enrique was voted coach of the year.</p>\r\n<p>US World Cup winner Carli Lloyd, who scored a hat-trick in the final against Japan, was named women\'s player of the year.</p>\r\n<p>Ronaldo ended last season without a trophy with Real Madrid, although he helped Portugal to qualify for Euro 2016.</p>\r\n<p>Neymar won a treble alongside Messi at Barcelona but had a less happy time with Brazil, receiving a four-match international ban after he was sent off during the Copa America.</p>\r\n<div>\r\n<div class="imagecontainer item" data-image-url="/mritems/Images/2016/1/11/1537e3e8beaf49999b6f3771f7c36c4e_18.jpg">\r\n<p>The ceremony, at the Zurich Kongresshaus theatre, was held against the backdrop of FIFA going through the worst corruption crisis since it was founded in 1904.</p>\r\n<p>Footballing organisations are facing&nbsp;<a href="http://www.aljazeera.com/news/2015/12/millions-frozen-fifa-bank-accounts-151217143107782.html" target="_self">criminal investigations&nbsp;</a>in both Switzerland and the United States, where some leading FIFA officials are among 41 individuals and sports entities who have been indicted on corruption charges.</p>\r\n<div>&nbsp;</div>\r\n<p>Outgoing FIFA president Sepp Blatter, normally a central figure at the ceremony, was not involved after being <a href="http://www.aljazeera.com/news/2015/12/blatter-platini-banned-fifa-years-151221084315403.html" target="_self">banned for eight years </a>by the FIFA\'s ethics committee in December.</p>\r\n<p>There was no President\'s Award, traditionally awarded for outstanding services to the game.</p>\r\n</div>\r\n</div>\r\n<p>Blatter was replaced by acting president Issa Hayatou who played a low-key role, reading a brief speech before the start of the ceremony and appearing on stage when the awards for best player and women\'s player were presented.</p>\r\n<p><strong>2015 winners</strong></p>\r\n<p><strong>FIFA Ballon d\'Or: </strong>Lionel Messi</p>\r\n<p><strong>FIFA Women\'s World Player of the Year: </strong>Carli Lloyd</p>\r\n<p><strong>FIFA Pusk&aacute;s Award: </strong>Wendell Lira</p>\r\n<p><strong>FIFA World Coach of the Year (Men\'s): </strong>Luis Enrique</p>\r\n<p><strong>FIFA World Coach of the Year (Women\'s): </strong>Jill Ellis</p>\r\n<p><strong>FIFA FIFPro World XI: </strong>Neuer, Silva, Marcelo, Ramos, Alves, Iniesta, Modric, Pogba, Messi, Neymar, Ronaldo</p>\r\n<p><strong>FIFA Fair Play Award: </strong>All football organisations supporting refugees</p>\r\n</div>', 1, 2, '1e7a3fd6323e44f996d48d553207d4f9_18.jpg', '', '2016-01-17 06:59:47', 1),
(2, 'UK Athletics wants world records to be scrubbed clean', '<div id="article-body" class="article-body">\r\n<p>UK Athletics has called for world records to be wiped clean and drug cheats to be banned for at least eight years in radical proposals aimed at heralding a new unblemished era for the sport.</p>\r\n<p>Its&nbsp;document "A Manifesto for Clean Athletics" was <a href="http://www.britishathletics.org.uk/media/news/2016-news-page/january-2016/11-01-16-manifesto/" target="_blank">published on Monday</a>, three days before the World Anti-Doping Agency (WADA) is due to reveal the second half of its independent report into widespread doping in the sport.</p>\r\n<p>UK Athletics (UKA), the ruling body of British athletics, made nine key recommendations, including resetting the record books and banning drug cheats for two Olympic cycles.</p>\r\n<p>It also proposed publishing a public global register of drug tests, the criminalisation of the supply or procurement of performance-enhancing drugs and called for WADA to keep a register of all missed tests.</p>\r\n<p>Athletics, the showpiece sport of the Olympic Games, experienced a traumatic year in 2015 with life bans for officials after allegations of doping, cover-ups, bribery and corruption.</p>\r\n<p>Russia was suspended from international competition for what WADA described as "state-sponsored doping".</p>\r\n<p>Ed Warner, the UKA chairman,&nbsp;said it was time for "radical reform", adding that "the integrity of athletics was challenged as never before" in 2015.</p>\r\n<p>"Trust in the sport is at its lowest point for decades, and clean athletes have been let down," he said.</p>\r\n<p>"Greater transparency, tougher sanctions, longer bans - and even resetting the clock on world records for a new era - we should be open to do whatever it takes to restore credibility in the sport."</p>\r\n</div>', 1, 1, '1e766941b72d445ea1a05fb17cbda4de_18.jpg', '', '2016-01-17 07:04:38', 3),
(3, 'Cricket: Hashim Amla quits as South Africa Test captain', '<p>Hashim Amla has quit as South Africa\'s Test captain in a surprise move in the middle of the four-test series against England.</p>\r\n<p>Amla, 32, said after the drawn second test at Newlands on Wednesday that he was stepping down immediately.</p>\r\n<p>He took over the captaincy from Graeme Smith but had been under pressure after a lean run of results for the top-ranked Proteas and struggles with his own batting form.</p>\r\n<p>He made a double-century at Newlands and appeared to have turned his form around. Amla said he made the decision two weeks ago.</p>\r\n<p>Cricket South Africa chief executive Haroon Lorgat said vice captain AB de Villiers would take over as captain for the rest of the series. England leads 1-0.</p>', 1, 2, '69720b96a0694fdfa4e62dd668fc0d19_18.jpg', '', '2016-01-17 07:06:19', 1),
(4, 'Zidane replaces sacked Benitez as Real Madrid coach', '<p>Real Madrid have sacked coach Rafa Benitez after only seven months&nbsp;in charge and promoted former France and Real great Zinedine Zidane from the B team to replace him, president Florentino Perez said.</p>\r\n<p>Perez announced the decision at the Santiago Bernabeu stadium on Monday, a day after Madrid\'s 2-2 draw at Valencia deepened a crisis that started with an embarrassing 4-0 home loss to Barcelona in November.</p>\r\n<p>Madrid won seven of nine matches since that demoralising defeat but fans continued to demand the departure of Benitez, whose Liverpool side won the Champions League in 2005.</p>\r\n<p>Real Madrid are third in the Spanish league, four points behind leader Atletico Madrid and two behind Barcelona, who have a game in hand.</p>\r\n<p>France great Zidane, who was Carlo Ancelotti\'s assistant in 2014 when Real Madrid won the Champions League, has been coaching Madrid\'s "B\'\' team in the third division.</p>\r\n<div>\r\n<div class="imagecontainer item" data-image-url="/mritems/Images/2016/1/4/3b2c6595d0f34e4dacb841e02e368ff8_18.jpg">\r\n<table class="image" border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="http://www.aljazeera.com/mritems/Images/2016/1/4/3b2c6595d0f34e4dacb841e02e368ff8_18.jpg" alt="" border="0" /></td>\r\n</tr>\r\n<tr>\r\n<td class="caption">Zidance had been coaching Real Madrid\'s "B" team in the third division [EPA]</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<p>Zidane is the 11th coach Perez has installed during two terms in charge.</p>\r\n<p>He played for Real for five seasons after joining from Juventus in August 2001 and helped them win their ninth European crown with a stunning volley against Bayer Leverkusen in the 2002 Champions League final.</p>\r\n<p>"Firstly I would like to thank the club and the president for giving me the chance to coach this team," said Zidane, who ended his career at Real Madrid.</p>\r\n<p>"We have the best club in the world and the best fans in the world. I\'m more emotional now than when I signed as a player."</p>\r\n<p>It will be the first major coaching job for the former playmaker, whose career was marked by greatness on the field but also by his head-butting of an Italian defender in the 2006 World Cup final.</p>\r\n<p>There had been speculation about former Chelsea coach Jose Mourinho taking over at Madrid, but Perez said the Portuguese coach\'s return was not in the team\'s plans for now.</p>\r\n<p>Madrid\'s next match is at Granada on Sunday in the 22nd round of the Spanish league.</p>', 1, 2, '164866f4543d4c22a184f05a6208f538_18.jpg', '', '2016-01-17 07:10:04', 0),
(5, 'The dawn of a new Iran', '<div class="article-body">\r\n<p>In a sudden though well choreographed and yet much expected dramatic succession of news releases, Iran has emerged from years of economic isolation when the heavy shadow of crippling economic sanctions were lifted in exchange for a drastic curb in its nuclear programme.&nbsp;</p>\r\n<p>"Iran has carried out all measures required under the [July deal]," according to<a class="internallink" href="http://www.reuters.com/article/us-iran-nuclear-zarif-idUSKCN0UU0C7" target="_blank">reports</a>, "to enable Implementation Day [of the deal] to occur," the Vienna-based International Atomic Energy Agency has said in a statement," paving the way for the lifting of these crippling economic sanctions. &nbsp;</p>\r\n<p>In a no less dramatic announcement, deliberately designed to coincide with the lifting of these sanctions, Iran was also reported to have <a class="internallink" href="http://www.aljazeera.com/news/2016/01/iran-frees-washington-post-reporter-swap-deal-160116151402201.html" target="_self">released five US citizens</a>, including the much publicised case of Washington Post reporter Jason Rezaian, as part of a prisoner exchange with the United States.</p>\r\n<div data-embed-type="Brightcove" data-embed-id="4708598601001">\r\n<table class="in-article-item video" border="0">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class="mceVideoBox">\r\n<div id="bcvid_4708598601001"><object id="myExperience4708598601001" class="BrightcoveExperience" data="http://c.brightcove.com/services/viewer/federated_f9?&amp;width=330&amp;height=186&amp;flashID=myExperience4708598601001&amp;bgcolor=%23FFFFFF&amp;playerID=1659202292001&amp;playerKey=AQ~~%2CAAAAmtVJIFk~%2CTVGOQ5ZTwJbsT0Mq3k9H8GCa4jV3vL4M&amp;isVid=true&amp;isUI=true&amp;htmlFallback=true&amp;dynamicStreaming=false&amp;videoSmoothing=true&amp;wmode=transparent&amp;%40videoPlayer=4708598601001&amp;ConvivaConfig.events=%20%3CConvivaEventsMap%3E%20%3Cevent%20name%3D%22mediaPlay%22%20module%3D%22videoPlayer%22%20eventType%3D%22mediaPlay%22%3E%20%3C%2Fevent%3E%20%3Cevent%20name%3D%22mediaError%22%20module%3D%22videoPlayer%22%20eventType%3D%22mediaError%22%3E%20%3Cattr%20key%3D%22errorCode%22%20type%3D%22eventField%22%20value%3D%22code%22%2F%3E%20%3C%2Fevent%3E%20%3C%2FConvivaEventsMap%3E%20&amp;localizedErrorXML=http%3A%2F%2Fwebapps.aljazeera.net%2Fbrightcove%2Fplayer%2Fbc-georestrict-msgs.xml&amp;autoStart=&amp;debuggerID=&amp;startTime=1453014754762" type="application/x-shockwave-flash" width="330" height="186"></object></div>\r\n</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<div class="meta">Iran frees Washington Post reporter in US swap deal</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>The combined announcements in conjunction with the <a class="internallink" href="http://www.aljazeera.com/indepth/opinion/2016/01/personal-touch-zarif-kerry-10-sailors-160113073931498.html" target="_self">recent</a>swift release of US sailors caught off the Iranian coast declare a seismic change in the emergence of Iran from its global isolation almost intact as a regional power.</p>\r\n<h2>Lucrative contracts</h2>\r\n<p>The release of billions of dollars of frozen Iranian assets will open a floodgate of European and international conglomerates to rush to Iran for lucrative contracts.</p>\r\n<p>At a time when a dramatic drop in the price of crude oil has plunged all oil producing countries (and with them the world economy) in deep despair, the release of these funds amounts to a bonanza for Iranian economy - as if the world had created a safe deposit account for Iran to give it back in its time of need.</p>\r\n<hr />\r\n<p><a class="internallink" href="http://www.aljazeera.com/indepth/features/2016/01/iran-sanctions-explained-160111121543996.html" target="_self">ALSO READ:&nbsp;Iran sanctions explained: What so far and what next?</a></p>\r\n<hr />\r\n<p>What would be the implication of the dawn of this new Iran in its internal and external affairs?</p>\r\n<div class="QuoteContainer">\r\n<table class="Skyscrapper_Body in-article-item quote" border="0">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>Internally the ruling regime in Iran faces a robust, young, energetic, ambitious and restless civil society that will miss not a single ... opportunity to assert its rightful place among nations.</p>\r\n<p class="quoted-author">&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>The working of two parallel paradoxes will boost Iran both as a nation and as a state to achieve towering significance in its region. &nbsp;</p>\r\n<p>Internally the ruling regime in Iran faces a robust, young, energetic, ambitious and restless civil society that will miss not a single social, cultural, economic, or political opportunity to assert its rightful place among nations.</p>\r\n<p>The porous boundaries of the nation are going to be opened even more fluidly. With anticipated increase in global commerce comes unanticipated organic growth of the culture: the widening highways of transnational interchange will make the Iranian civil society even more robust and rambunctious. &nbsp;</p>\r\n<p>Almost 80 million strong with official policy to boast the population, Iran as a nation will continue to test the survival instincts of the state that lays a claim on it.</p>\r\n<p>What its democratic weakling neighbours don\'t understand is that the ruling regime in Iran is strong not despite its restless population but precisely because of it. Iranians resist tyranny not by blowing up buildings or murdering innocent people but by going to polls and voting in elections they know are already rigged. &nbsp;</p>\r\n<p>Theirs is a vastly different exercise in the democratic will of a nation.</p>\r\n<p>They have forced even their so-called Supreme Leader Ayatollah Khamenei public and repeatedly to admit that when they vote they vote for their country, for the safety, security, and future prosperity of their homeland and never to legitimise the rule of a band of octogenarian theocrats who are delusional enough to think they are actually ruling this nation\'s dreams and aspirations.</p>\r\n<div>\r\n<div class="imagecontainer" data-image-url="/mritems/imagecache/mbdresplarge/mritems/Images/2016/1/17/98712efce57943948f372c823c650ec3_19.jpg">\r\n<table class="in-article-item image" border="0">\r\n<tbody>\r\n<tr>\r\n<td><img src="http://www.aljazeera.com/mritems/imagecache/mbdresplarge/mritems/Images/2016/1/17/98712efce57943948f372c823c650ec3_19.jpg" alt="" border="0" /></td>\r\n</tr>\r\n<tr>\r\n<td class="caption">Supreme Leader Ayatollah Ali Khamenei [AP]&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<h2>Regional adversaries</h2>\r\n<p>Externally the warring position of the ruling state of the Islamic Republic strengthens it not despite its regional adversaries but in fact because of them. None of its regional adversaries - from Turkey to Israel to Saudi Arabia - are a match for the Iranian version of soft and smart power.&nbsp;</p>\r\n<p>The military budget of Iran is nowhere near the military budget of any of its regional adversaries. But they have never and will never choose to fight any conventional warfare they can never win.</p>\r\n<p>Over the last three decades and more they have out-Joseph Nyed Joseph Nye\'s notion of soft and smart power. They are regionally powerful not despite their adversaries military power but because of their conventionally flawed calculus of power.</p>\r\n<hr />\r\n<p><a class="internallink" href="http://www.aljazeera.com/indepth/opinion/2016/01/personal-touch-zarif-kerry-10-sailors-160113073931498.html" target="_self">ALSO READ:&nbsp; <span class="l Search-Title"><strong>The personal touch: Zarif, Kerry and 10 US sailors</strong></span></a></p>\r\n<hr />\r\n<p>The Achilles Heel of the ruling regime in Iran its external affairs, and where it has failed to follow its own logic of soft power, is its continuous support for the murderous Assad regime in Syria.</p>\r\n<div>\r\n<div class="imagecontainer" data-image-url="/mritems/Images/2015/9/20/445ed4f604cc49698f3836f370e3bd83_6.png">\r\n<table class="in-article-item image width330" border="0">\r\n<tbody>\r\n<tr>\r\n<td><a href="http://www.aljazeera.com/curated/" target="_self"><img src="http://www.aljazeera.com/mritems/Images/2015/9/20/445ed4f604cc49698f3836f370e3bd83_6.png" alt="" border="0" /></a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<p>This is costing the ruling regime not just the hearts and minds of Syrian people but in fact of the entirety of the Arab World.&nbsp;</p>\r\n<p>Yes in the quagmire of Syria there are no innocent parties except the peaceful and democratic aspirations of the Syrian people. Every single other country involved in Syria on both sides of the conflict is implicated in and responsible for the bloody mayhem that is the scene in Syria today. &nbsp;</p>\r\n<p>But each one of these countries will bear the consequences of their bloody involvements in Syria slightly differently. The dawn of a new Iran will never be fully materialised unless and until the democratic will and emancipatory politics of Iranians and Arabs, Sunnis and Shias, see and sow their future liberation on a common field and as integral to each other. &nbsp;</p>\r\n<p class="story-body-text"><em><strong>Hamid Dabashi is Hagop Kevorkian Professor of Iranian Studies and Comparative Literature at Columbia University in New York.&nbsp;</strong></em></p>\r\n<p class="story-body-text"><em><strong>The views expressed in this article are the author\'s own and do not necessarily reflect Al Jazeera\'s editorial policy.</strong></em></p>\r\n<p>Source:&nbsp;Al Jazeera</p>\r\n</div>\r\n<div id="Article-Bottom-Toolbar" class="ArticleBottomToolbar">&nbsp;</div>', 1, 1, '014124a28d4f47849f31f6cc40d53400_18.jpg', '', '2016-01-17 07:13:55', 0),
(6, 'Abdullah: Taliban are receiving support within Pakistan', '<p>Afghanistan was supposed to get a new start one year ago.&nbsp;After 13 years in power, President&nbsp;Hamid Karzai,&nbsp;who had led the country since the Taliban government was defeated after the 9/11 attacks,&nbsp;finally stood down.</p>\r\n<div class="QuoteContainer">\r\n<table class="Skyscrapper_Body in-article-item quote" border="0">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>The biggest mistake [in the past 14 years]? Pakistan\'s policy towards Afghanistan. From one side, being in the frontline of the \'war against terror\' ... from the other side allowing Taliban to regroup, reestablish themselves. And on top of this, the international community\'s focus on Afghanistan was shifted towards Iraq soon after... Had that focus maintained in Afghanistan at that time... that would have made a big change.</p>\r\n<p class="quoted-author">Abdullah Abdullah, Afghan chief executive</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>After a contentious election in 2014, with widespread claims of ballot rigging, the two main candidates were persuaded to share power. Dr Ashraf Ghani became president and his opponent, Dr Abdullah Abdullah, the chief executive.</p>\r\n<p>All this happened to coinicide with the departure of many of the international forces in the country, leaving&nbsp;the Afghan army and police in charge of security.</p>\r\n<p>At the peak of the US-led Afghanistan combat mission there had been about 130,000 US and NATO troops in the country. Now there are about 16,000.</p>\r\n<p>This has led to an increase in insecurity and a very negative effect on the country\'s economy. Corruption is rife and jobs are few and far between.&nbsp;</p>\r\n<p>Civilian casualties have soared to a record high in the first half of 2015 according to a UN report, and many Afghans are leaving the country to escape increasing violence.&nbsp;Afghans are the second-largest group of refugees seeking asylum in Europe.</p>\r\n<p>"The current security situation is challenging. Perhaps people don\'t have confidence in the future of security.That is the main issue [why people are leaving Afghanistan] and it is something we have to address....&nbsp;It has turned into a crisis for Europe," says Abdullah Abdullah.</p>\r\n<p>So how are the two rivals managing working together? How will they cope with the country\'s deteriorating security situation? How do they deal with the Taliban? And what is Pakistan\'s role in Afghanistan?</p>\r\n<p>Afghan Chief Executive Abdullah Abdullah joins&nbsp;<em>Talk to Al Jazeera</em> to discuss the political and economic challenges facing Afghanistan; the threat of ISIL and the Taliban; and why so many Afghans are fleeing to Europe.</p>\r\n<p><em>Editor\'s note:&nbsp;The conversation was conducted just before the recent Taliban takeover in the city of Kunduz.&nbsp;</em></p>\r\n<p><em>You can talk to Al Jazeera&nbsp;too. Join our&nbsp;<strong><a class="internallink" href="https://twitter.com/TalktoAlJazeera" target="_blank">Twitter conversation&nbsp;</a></strong>as we talk to world leaders and alternative voices shaping our times. You can also share your views and keep up to date with our latest interviews on&nbsp;&nbsp;<strong><a class="internallink" href="https://www.facebook.com/talktoaj?fref=ts" target="_blank">Facebook</a></strong>.&nbsp;</em></p>\r\n<p>Source:&nbsp;Al Jazeera</p>', 1, 4, 'Capture.PNG', '', '2016-01-17 07:16:52', 0),
(7, 'New app lets users \'share meals\' with Syrian children', '<p>If you own a smartphone you can now help nourish refugee children who have been forced to flee their homes during Syria&rsquo;s prolonged confict.</p>\r\n<p>A new app launched by the UN World Food Programme (WFP) on Thursday&nbsp;enables smartphone users to help provide vulnerable children in refugee camps in Jordan with vital nutrition.</p>\r\n<p>With just a simple tap on their phones, users of ShareTheMeal can choose how much they want to contribute. Developers said that a donation of $0.50 can provide one child with enough nutrition for a day.</p>\r\n<div>\r\n<div class="imagecontainer" data-image-url="/mritems/Images/2015/9/20/445ed4f604cc49698f3836f370e3bd83_6.png">\r\n<table class="in-article-item image width330" border="0">\r\n<tbody>\r\n<tr>\r\n<td><a href="http://www.aljazeera.com/curated/" target="_self"><img src="http://www.aljazeera.com/mritems/Images/2015/9/20/445ed4f604cc49698f3836f370e3bd83_6.png" alt="" border="0" /></a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<p>The concept is to allow people around the world to digitally "share" their meals while having dinner or lunch in a fast and easy way.</p>\r\n<p>"This is the fifth year away from home for many Syrian children and their families, who are in dire need," Sebastian Stricker, founder of ShareTheMeal, told Al Jazeera.</p>\r\n<p>"Our current goal is to provide school snacks to 20,000 Syrian children in refugee camps in Jordan for a full year.</p>\r\n<p>"School meals provide vital nutrition and help keep kids in school."</p>\r\n<div>\r\n<div class="imagecontainer" data-image-url="/mritems/Images/2015/9/20/445ed4f604cc49698f3836f370e3bd83_6.png"><strong>Engaging people</strong></div>\r\n</div>\r\n<p>The free-to-download app, which allows contributors to follow the impact of their donations, is available globally for iOS and Android users.</p>\r\n<p>Developers said that a pilot programme in German-speaking countries earlier this year provided 1.7m school meals to children in Lesotho after more than than 120,000 people downloaded the app and raised $850,000.</p>\r\n<p>"The simple act of sharing a meal is how people all over the world come together," said WFP Executive Director Ertharin Cousin.</p>\r\n<p>"This digital version of sharing a meal is a tangible way that Generation Zero Hunger can act to end hunger."</p>\r\n<p>Generation Zero Hunger is a&nbsp;UN campaign calling on young people to champion the cause of ending hunger.</p>\r\n<p>At least 250,000 people have been killed during the five-year conflict in Syria, while millions of others have been displaced - including four million Syrian refugees who fled to neighbouring countries.</p>\r\n<p>The prolonged crisis has also stretched international aid agencies, which are now under pressure to come up with new innovative ways to attract donations, including mobile technology.</p>\r\n<hr />\r\n<p>&nbsp;<a href="http://www.aljazeera.com/news/2015/10/google-crisis-info-hub-refugees-151024061606185.html" target="_self">Related:&nbsp;Google launches \'Crisis Info Hub\' to help refugees</a></p>\r\n<hr />\r\n<p>The WFP says it must raise $25m each week to meet the basic food needs of people affected by the complex and worsening Syria crisis.</p>\r\n<p>"Besides the immediate needs in Jordan, the app is a way for WFP to engage a new generation of individuals in our mission and our work," said Stricker.</p>\r\n<p>"ShareTheMeal makes donating more social and more effective."</p>\r\n<p><strong>Harnessing technology</strong></p>\r\n<p>Last month, <a href="http://www.aljazeera.com/news/2015/10/google-crisis-info-hub-refugees-151024061606185.html" target="_self">Google announced</a> it had worked with international organisations to launch a web-based paltform to help refugees seeking asylum around the world by providing critical information for their journeys.</p>\r\n<p>The "Crisis Info Hub"&nbsp;initiative aims to make information on issues such as transport and lodging easily accessible on a smartphone</p>\r\n<p>The website offers information in English and Arabic on registration centres and legislation, accommodation, transport, medical care and banking services.</p>', 1, 3, 'eb2d541bd7024a1c85f711b3f49e0d8a_18.jpg', '', '2016-01-17 07:18:59', 0),
(8, 'Google launches \'Crisis Info Hub\' to help refugees', '<p>Google has announced the launch of a "Crisis Info Hub" to help refugees seeking asylum around the world by providing critical information for their journeys.</p>\r\n<p>The initiative aims to make information on issues such as transport and lodging easily accessible on smartphones, the company said on its blog on Friday.</p>\r\n<p>"Working with the&nbsp;International Rescue Committee&nbsp;and&nbsp;Mercy Corps, we\'ve developed an&nbsp;open source&nbsp;project called <a class="internallink" href="http://refugeeinfo.eu/lesbos" target="_blank">Crisis Info Hub</a>&nbsp;to disseminate such information in a lightweight, battery-saving way," the statement said.</p>\r\n<p>So far, the website only has information on the Greek island of Lesbos, the main point of entry to Europe for refugees travelling on boats across the Mediterranean. More locations will be added shortly, the company said, asking volunteers with language skills to contribute.</p>\r\n<p>The website offers information in English and Arabic on registration centres and legislation, accommodation, transport, medical care, and banking services.</p>\r\n<hr />\r\n<p><a class="internallink" href="http://www.aljazeera.com/indepth/inpictures/2015/09/greece-refugees-camp-150928101923759.html" target="_self">IN PICTURES: Greece\'s only refugee camp</a></p>\r\n<hr />\r\n<p>Google\'s new platform comes after a month after a fundraiser run by the company&nbsp;managed to collect $5.5m in just two days for the refugee crisis. Google said the funds were used to support the work of organisations including Doctors Without Borders, Save the Children, and the UN High Commissioner for Refugees.</p>\r\n<p>Europe is facing its worst refugee crisis in decades, with at least 680,000 people arriving by sea this year.</p>\r\n<p>Many of them first land on the shores of Greek islands. Greece has seen a record 48,000 migrants and refugees arriving in the space of just five days, the International Organisation for Migration said on Friday.</p>\r\n<p>More than half of those crossing from Turkey had landed on Lesbos, which saw 27,276 arrivals between October 17 and 21.</p>\r\n<p>Source:&nbsp;Al Jazeera</p>', 1, 3, '9231a2af904f42a5acc0d764974ee334_18.jpg', '', '2016-01-17 07:19:41', 0),
(9, 'What\'s behind the falling price of oil?', '<p>With too much global supply and the lowest price in nearly 20 years, there is anxiety about a possible oil market meltdown.<br />&nbsp;<br />US crude prices fell below $30 a barrel&nbsp;on Tuesday, before settling down, but only a bit. <br />&nbsp;<br />While most major oil companies are slashing their budgets and jobs, some of the biggest oil companies like Saudi Aramco have not cut back on production.<br />&nbsp;<br />And some OPEC states, like Iran and Iraq, are looking to increase production.<br />&nbsp;<br />In the past year, the price of a barrel of oil has fallen by more than 50 percent. <br />&nbsp;<br />The highest price in the last 12 months was $110 a barrel.<br />&nbsp;<br />Some investment bankers are now warning that oil could crash to $10 a barrel. <br />&nbsp;<br />So, what\'s behind the falling price of oil and what does it mean for consumers? <br />&nbsp;<br />&nbsp;<br /><strong>Presenter</strong>: Peter Dobbie<br />&nbsp;<br />&nbsp;<br /><strong>Guests:</strong><br />&nbsp;<br /><strong>Cornelia Meyer</strong> -&nbsp;CEO of Meyer Resource,&nbsp;A Macro-Economic and Energy Policy Advisory.<br />&nbsp;<br /><strong>Bismarck Rewane</strong> -&nbsp;Managing Director of the Financial Derivatives Company.<br />&nbsp;<br /><strong>Mamdouh Salameh</strong> - International Oil Economist and Consultant.</p>\r\n<p>Source:&nbsp;Al Jazeera</p>\r\n<p>With too much global supply and the lowest price in nearly 20 years, there is anxiety about a possible oil market meltdown.<br />&nbsp;<br />US crude prices fell below $30 a barrel&nbsp;on Tuesday, before settling down, but only a bit. <br />&nbsp;<br />While most major oil companies are slashing their budgets and jobs, some of the biggest oil companies like Saudi Aramco have not cut back on production.<br />&nbsp;<br />And some OPEC states, like Iran and Iraq, are looking to increase production.<br />&nbsp;<br />In the past year, the price of a barrel of oil has fallen by more than 50 percent. <br />&nbsp;<br />The highest price in the last 12 months was $110 a barrel.<br />&nbsp;<br />Some investment bankers are now warning that oil could crash to $10 a barrel. <br />&nbsp;<br />So, what\'s behind the falling price of oil and what does it mean for consumers? <br />&nbsp;<br />&nbsp;<br /><strong>Presenter</strong>: Peter Dobbie<br />&nbsp;<br />&nbsp;<br /><strong>Guests:</strong><br />&nbsp;<br /><strong>Cornelia Meyer</strong> -&nbsp;CEO of Meyer Resource,&nbsp;A Macro-Economic and Energy Policy Advisory.<br />&nbsp;<br /><strong>Bismarck Rewane</strong> -&nbsp;Managing Director of the Financial Derivatives Company.<br />&nbsp;<br /><strong>Mamdouh Salameh</strong> - International Oil Economist and Consultant.</p>\r\n<p>Source:&nbsp;Al Jazeera</p>\r\n<p>With too much global supply and the lowest price in nearly 20 years, there is anxiety about a possible oil market meltdown.<br />&nbsp;<br />US crude prices fell below $30 a barrel&nbsp;on Tuesday, before settling down, but only a bit. <br />&nbsp;<br />While most major oil companies are slashing their budgets and jobs, some of the biggest oil companies like Saudi Aramco have not cut back on production.<br />&nbsp;<br />And some OPEC states, like Iran and Iraq, are looking to increase production.<br />&nbsp;<br />In the past year, the price of a barrel of oil has fallen by more than 50 percent. <br />&nbsp;<br />The highest price in the last 12 months was $110 a barrel.<br />&nbsp;<br />Some investment bankers are now warning that oil could crash to $10 a barrel. <br />&nbsp;<br />So, what\'s behind the falling price of oil and what does it mean for consumers? <br />&nbsp;<br />&nbsp;<br /><strong>Presenter</strong>: Peter Dobbie<br />&nbsp;<br />&nbsp;<br /><strong>Guests:</strong><br />&nbsp;<br /><strong>Cornelia Meyer</strong> -&nbsp;CEO of Meyer Resource,&nbsp;A Macro-Economic and Energy Policy Advisory.<br />&nbsp;<br /><strong>Bismarck Rewane</strong> -&nbsp;Managing Director of the Financial Derivatives Company.<br />&nbsp;<br /><strong>Mamdouh Salameh</strong> - International Oil Economist and Consultant.</p>\r\n<p>Source:&nbsp;Al Jazeera</p>', 1, 4, 'a.PNG', '', '2016-01-17 07:23:26', 0),
(10, 'gb gdsbbg', '<p>gb gfbgf</p>\r\n<p>gdsd</p>', 1, 2, '560asf.jpg', '', '2018-08-07 17:12:19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `pagetitle` varchar(255) NOT NULL,
  `pagecontent` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `pagetitle`, `pagecontent`) VALUES
(1, 'Code of Ethics', '<p><strong>Being a globally oriented media service, We&nbsp;shall adopt the following code of ethics in pursuance of the vision and mission it has set for itself:</strong></p>\r\n<ol>\r\n<li><strong>Adhere to the journalistic values of honesty, courage, fairness, balance, independence, credibility and diversity, giving no priority to commercial or political over professional consideration.</strong></li>\r\n<li><strong>Endeavour to get to the truth and declare it in our dispatches, programmes and news bulletins unequivocally in a manner which leaves no doubt about its validity and accuracy.</strong></li>\r\n<li><strong>Treat our audiences with due respect and address every issue or story with due attention to present a clear, factual and accurate picture while giving full consideration to the feelings of victims of crime, war, persecution and disaster, their relatives and our viewers, and to individual privacies and public decorum.</strong></li>\r\n<li><strong>Welcome fair and honest media competition without allowing it to affect adversely our standards of performance and thereby having a &ldquo;scoop&rdquo; would not become an end in itself.</strong></li>\r\n<li><strong>Present the diverse points of view and opinions without bias and partiality.</strong></li>\r\n<li><strong>Recognise diversity in human societies with all their races, cultures and beliefs and their values and intrinsic individualities so as to present unbiased and faithful reflection of them.</strong></li>\r\n<li><strong>Acknowledge a mistake when it occurs, promptly correct it and ensure it does not recur.</strong></li>\r\n<li><strong>Observe transparency in dealing with the news and its sources while adhering to the internationally established practices concerning the rights of these sources.</strong></li>\r\n<li><strong>Distinguish between news material, opinion and analysis to avoid the snares of speculation and propaganda.</strong></li>\r\n<li><strong>Stand by colleagues in the profession and give them support when required, particularly in the light of the acts of aggression and harassment to which journalists are subjected at times. Cooperate with Arab and international journalistic unions and associations to defend freedom of the press.</strong></li>\r\n</ol>'),
(2, 'Terms and Conditions', '<p dir="ltr"><strong>WEBSITE TERMS AND CONDITIONS</strong><br /><br />Please read the below Terms and Conditions carefully as they are the terms of use for this site:<br /><br /><strong>1. User Obligation</strong></p>\r\n<p dir="ltr">By using and/or visiting this site ("the site"), you have indicated your acknowledgement and assent to these Terms and Conditions and any other terms and conditions which may be introduced by Aljazeera on this site from time to time. Your access, use, participation and/or downloading materials from the site, indicates your agreement to abide with these Terms and Conditions. Aljazeera reserves the right to change these Terms and Conditions at any time by posting changes online and it is your responsibility to refer to and comply with these Terms upon accessing the site. If you do not agree to any of these Terms and Conditions, please cease from the use of this site immediately. <br /><br />If any conflict exists between these Terms and Conditions and rules and/or specific terms of use appearing on this site relating to specific material then the latter shall prevail. <br /><br /><strong>2. Terms of Use</strong></p>\r\n<p dir="ltr">Use of this site is only permitted for lawful purposes and in a manner which is not in breach of the Law and which does not infringe any the rights of or restricts the use and enjoyment of this site by any third party. Such restriction shall include, but is not limited to, harrassment, defamatory conduct, obscene or absuive content, offensive language, distress to third parties and any other conduct which may be deemed inappropriate.</p>\r\n<p dir="ltr">You hereby warrant that you are more than 18 years of age, and/or possess all required approvals and consents including legal guardian or parental consent for use of this site. You further warrant that you are fully able and competent to enter into these Terms and Conditions and abide by them.</p>\r\n<p dir="ltr"><strong>3. Data Submissions</strong></p>\r\n<p dir="ltr">Various parts of this site allow for user information or any other data to be transmitted or posted on the site (hereinafter referred to as "User Submissions"). These include personal information, photographs, videos, audio materials, written scripts, articles, opinions or any other form of material. Such User Submissions shall be subject to the following conditions:</p>\r\n<p dir="ltr">3.1&nbsp;By submitting any material to this Site, you accept to provide a non-revocable, unlimited Global license to the User Submissions to Aljazeera who in turn shall have the right to use, distribute, modify, alter or delete parts of the User Submission as per its own discretion and on any platform or media whatsoever.</p>\r\n<p dir="ltr">3.2&nbsp;&nbsp;User Submissions may be used by Aljazeera for any purpose including, but not limited to reproduction, broadcasting, transmission, editting, cutting, reformation, adapting, positng, or any other use as per the sole discretion of Aljazeera.</p>\r\n<p dir="ltr">3.3&nbsp;&nbsp;&nbsp;You shall be solely responsible for your own submissions and any claims, damages, third party rights, as well as any legal action or proceeding arising out of the use and submission of this material.</p>\r\n<p dir="ltr">3.4&nbsp;&nbsp;&nbsp;By submitting any User Submission, you hereby affirm, represent and warrant that you have the right to submit such material, and that you have obtained all necessary clearances, licenses, consents, rights and permissions to use and authorise Aljazeera to use any material submitted, including the rights to all patents, trademarks, trade secrets, copyright or other proprietary rights in any and all User Submissions.</p>\r\n<p dir="ltr">3.5&nbsp;&nbsp;You undertake that you will not submit or disclose on this site any material or information&nbsp; that is protected by or subject to any copyright, trade secret or any third party proprietary rights, including Privacy and publicity rights, unless all rights have been obtained from the rights owners to submit the material and/or information and grant the license indicated herein to Aljazeera.</p>\r\n<p dir="ltr">3.6&nbsp;&nbsp;You further undertake not to submit any material or information that is deemed unlawful, obscene, defamatory, libelous, political, threatening, pornographic, harassing, hateful, racially offensive, considered as a criminal offense, gives rise to a civil liability, encourages criminal action or violates the law, culture or internationally acceptable norms and codes of ethics.</p>\r\n<p dir="ltr">3.7&nbsp;&nbsp;You hereby grant Aljazeera a global, non-revocable, exclusive, royalty-free, transferrable license to broadcast, distribute, display, reproduce, cut, edit, re-edit, delete, sell or modify the material or information submitted by you without any limitation whatsoever, in any media format and on any platform at the sole discretion of Aljazeera. This License shall not be limited by period or territory.</p>\r\n<p dir="ltr">3.8&nbsp;&nbsp;You hereby further assign to Aljazeera (by way of permanent assignment of present and future copyright) all rights of any nature in and to such material throughout the world including all renewals and reversions thereof.</p>\r\n<p dir="ltr">3.9&nbsp;&nbsp;Aljazeera shall have the right and final say on display of User Submissions, and under no circumstances is Aljazeera obliged to display or include on this site all or part of any User Submission.&nbsp;</p>\r\n<p dir="ltr"><strong>4. Copyright and Other Intellectual Property</strong></p>\r\n<p dir="ltr">The names, images and logos identifying Aljazeera Network, or any of its&nbsp;associated companies or third parties and their products and services are proprietary marks of Aljazeera Network, its associated companies and/or third parties. <strong>Nothing contained herein shall be construed as conferring by any means, licence or right under any trade mark or patent</strong> of Aljazeera Network, its associated companies or any other third party. <br /><br />All copyright, trade marks and other intellectual property rights in this site (including the design, arrangement and look and feel) and all material or content supplied as part of the site shall remain at all times the property of Aljazeera Network or Aljazeera Network\'s licensors. In accessing the Site, or any other sites of Aljazeera Network, you agree that you do so only for your own personal, non-commercial use. You may not agree to, permit or assist in any way any third party to copy, reproduce, download, post, store (including in any other web site), distribute, transmit, broadcast, commercially exploit or modify in any way the material or content without the prior written permission of an authorised officer the Aljazeera Network. <br /><br /><br /><strong>5. Third Party Sites / Links</strong></p>\r\n<p dir="ltr">Aljazeera is not responsible for the availability or content of any third party websites or material you access through this site. If you decide to visit any linked site, you do so at your own risk and it is your responsibility to take all protective measures to guard against viruses or other destructive elements. Aljazeera does not endorse and is not responsible or liable for any content, advertising, products, services or information on or available from third party websites or material (including payment for and delivery of such products or services). Aljazeera is not responsible for any damage, loss or offence caused by or, in connection with, any content, advertising, products, services or information available on such websites or material. Any terms, conditions, warranties or representations associated with such dealings are solely between you and the relevant provider of the service.<br /><br />Links to this site must be direct to any complete content page (and not any part of a page) within this site and all other Aljazeera sites, and must not be viewed within the pages of any other site. Aljazeera disclaims all liability for any legal or other consequences (including for infringement of third party rights) of links made to this site.<br /><br />Links do not imply that Aljazeera endorses, is affiliated or associated with any linked site, or is legally authorised to use any trademark, trade name, logo or copyright symbol displayed in or accessible through the links, or that any linked site is authorised to use any trademark, trade name, logo or copyright symbol of Aljazeera or any of its affiliates, entities or subsidiaries. <br /><br /><strong>6. Disclaimer / Limitation of Liability</strong></p>\r\n<p dir="ltr">You agree that your use of this site shall be at your sole risk and responsibility. To the fullest extent permitted by law, Aljazeera, its officers, directors, and agents disclaim all warranties, express or implied, in connection with the site. Aljazeera does not warrant, endorse or guarantee that the content posted on this site is of social, cultural and moral acceptable standards. Aljazeera does not warrant that User Submissions posted on this site do not infringe any third party rights.</p>\r\n<p dir="ltr">Although Aljazeera does monitor the User Submissions provided on the site, it is your sole responsibility to clear all rights of third parties and to obtain all necessary licenses and approvals to post any material and you hereby assume all responsibility for all damages, costs and liabilities that may arise as a result from the user submission.</p>\r\n<p dir="ltr">This site and the information, names, images, pictures, logos and icons relating to this site or any other sites owned or operated by Aljazeera, and/or any of its associated companies, products and services (or to third party products and services), is provided "AS IS" and on an "AS AVAILABLE" basis without any representation or endorsement being made and without warranty of any kind, including but not limited to the implied warranties of satisfactory quality, fitness for a particular purpose, non-infringement, compatibility, security and accuracy. <br /><br />The information and other materials included on this site may contain inaccuracies and typographical errors. Aljazeera does not warrant the accuracy or completeness of the information and materials or the reliability of any statement or other information displayed or distributed through the site (including, without limitation, the information provided through the use of any software). You acknowledge that any reliance on any such statement or information shall be at your sole risk. Aljazeera reserves the right, in its sole discretion, to correct any errors or omissions in any part of the site and to make changes to the site and to the materials, products, programmes, services or prices described in the site at any time without notice.</p>\r\n<p dir="ltr">In no event will Aljazeera and/or third parties be liable for any damages including,<strong>but not limited to</strong>, indirect or consequential damages or any damages including,<strong>but not limited to</strong>, errors or omissions, indirect or consequential damages or any damages whatsoever arising from use, loss of use, data or profits, whether in action of contract, negligence or other action, arising out of or in connection with the use of the site.</p>\r\n<p dir="ltr">Aljazeera does not warrant that the functions contained in this site will be uninterrupted or error-free or that defects will be corrected or that this site or the server that makes it available are free of viruses or bugs. Aljazeera does not represent the full functionality, accuracy or reliability of any material. Aljazeera may terminate, change, suspend or discontinue any aspect of this site, including the availability of any features of the site, at any time without notice or liability.</p>\r\n<p dir="ltr"><strong>7. Indemnity</strong></p>\r\n<p dir="ltr">You agree to indemnify and keep indemnified Aljazeera, and all of its employees, affiliates, subsidiaries and associates from any and all claims, damages, expenses, costs and liabilities arising in any manner from your access to and use of this site and/or the submission of any User Submissions to this site.&nbsp;</p>\r\n<p dir="ltr">You understand that when using this site, you will be exposed to User Submissions from a <strong>variety of sources</strong>, and acknowledge that you may be exposed to User Submissions that may be inaccurate, offensive, indecent, or objectionable. To that regard, you hereby waive any legal or equitable rights or remedies you have or may have against Aljazeera, and agree to indeminify and hold harmless Aljazeera, and its shareholders, subsidiaries, officers affiliates, and licensees to the fullest extent permitted by the law.</p>\r\n<p dir="ltr"><strong>8. Law and Jurisdiction</strong></p>\r\n<p dir="ltr">These Terms and Conditions shall be governed by and construed in accordance with the laws of the State of Qatar. Disputes arising herefrom shall be exclusively subject to the jurisdiction of the Qatari courts. Any cause of action you may have with respect to your use of this site must be commenced within one (1) year after the claim or cause of action arises.<br /><br />If any of these Terms and Conditions should be determined to be illegal, invalid or otherwise unenforceable by reason of the law of any state or country in which these Terms and Conditions are intended to be effective, then to the extent and within the jurisdiction in which that Term or Condition is illegal, invalid or unenforceable, it shall be severed and deleted from that clause and the remaining Terms and Conditions shall survive and continue to be binding and enforceable. <br /><br />Aljazeera makes no representation that materials on this site are appropriate or available for use at other locations outside of the State of Qatar and access to them from territories where their contents are illegal is prohibited. If you access this site from a location outside of the State of Qatar, you are responsible for compliance with all local laws.</p>'),
(3, 'About Us ', '<h3>The definition of a good About Us page</h3>\r\n<p>I need to start this article by qualifying what makes an amazing About Us page. The reason for this is that some About Us pages look amazing but have terrible content whilst others look terrible but grab your attention immediately. The list I have compiled here are based on the fact that they:</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>Get the point across<br />First and foremost an About Us page has to get a point across. Everything else is completely useless unless the content and the layout is achieving a goal. That goal is to tell the user who you are by showing them what you can do for them or have done for others.</li>\r\n<li>Give you the information you need<br />Some About Us pages spend the whole time talking about what it is that the company does and nothing about the staff members. Some do the opposite. Unless the page gives the information that you need based on the type of site you are on then it won&rsquo;t make the list.</li>\r\n<li>Give you social proof, testimonials and other authenticity statements<br />A good About Us page always needs to have some mention of past successes, achievements, social proof, etc. Giving concrete examples of why your site or blog is worth reading is extremely important for these pages.</li>\r\n<li>Don&rsquo;t let design elements negate the potency<br />Some of the About Us pages I am about to show you will make you weep because they are so beautiful. Some not so much. But it is important to note that I haven&rsquo;t included any pages on here purely because they look nice. This last dot point is all about that <a href="http://www.blogtyrant.com/increase-conversions/">Blue-Shirt Trust</a>; as long as the design doesn&rsquo;t detract from the message I&rsquo;m cool with however it looks.</li>\r\n</ul>\r\n<p>I didn&rsquo;t want to go in to too much detail here because I am going to talk about the advantages of each About Us page as we go through them. I&rsquo;m hoping to use this post as a way of showing you what I believe you should be doing on your own page.</p>\r\n<p>Special tip for About Page conversions<br />Since writing this post I have included an <a href="http://www.aweber.com/?366784">Aweber sign up form</a> on my<a href="http://www.blogtyrant.com/about/">About page</a> and have seen a hugely successful subscriber rate. It seems that people want to subscribe to you while they are reading about you!</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>'),
(4, 'kjkj', '<p>/kj............kl/</p>'),
(5, 'kjkj', '<p>/kj............kl/</p>'),
(6, 'kjkj', '<p>/kj............kl/</p>');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sitename` varchar(255) NOT NULL,
  `sitemail` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `keywords` longtext NOT NULL,
  `copyright` text NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sitename`, `sitemail`, `description`, `keywords`, `copyright`, `author`) VALUES
('GhATSEA', 'phpcoder@gmail.com', 'Association Website', 'GhATSEA', 'eyeTengin', 'Owusu-Owusu');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'assets/resources/images/icons/user.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `image`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'assets/resources/images/icons/user.png'),
(3, 'ahmed', '9193ce3b31332b03f7d8af056c692b84', 'assets/resources/images/icons/user.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album_pictures`
--
ALTER TABLE `album_pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commnt_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Album ID';
--
-- AUTO_INCREMENT for table `album_pictures`
--
ALTER TABLE `album_pictures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Image ID';
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commnt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
