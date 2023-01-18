-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-01-18 17:33:24
-- 伺服器版本： 10.4.25-MariaDB
-- PHP 版本： 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `my_db2`
--

-- --------------------------------------------------------

--
-- 資料表結構 `marketing`
--

CREATE TABLE `marketing` (
  `marketing_id` int(10) NOT NULL,
  `market_code` date NOT NULL,
  `marketing_dayline` datetime NOT NULL,
  `marketing_if_delay_time` tinyint(1) NOT NULL,
  `marketing_use_way` int(10) NOT NULL,
  `marketing_vaild` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

CREATE TABLE `news` (
  `news_id` int(10) UNSIGNED NOT NULL,
  `news_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_location` varchar(255) NOT NULL,
  `news_images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_date` date NOT NULL,
  `news_start_time` date NOT NULL,
  `news_end_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `news`
--

INSERT INTO `news` (`news_id`, `news_title`, `news_introduction`, `news_location`, `news_images`, `news_date`, `news_start_time`, `news_end_time`) VALUES
(1, '屏東縣美術協會會員聯展', '為美化人生、豐富心靈，屏東縣美術協會藝術家透過視覺等感官\n體驗，運用畫筆，反映當代思想、生活習俗、文化與時代特性並\n融入多元文化元素，以不同面向及題材的詮釋觀點，將文化精神\n無限延伸，創作出不同風格作品並留下了珍貴美好的畫面，帶給\n社會大眾美的心靈饗宴。', '', '1.jpg', '2022-12-29', '2023-02-24', '2023-03-07'),
(2, '【工藝日常】你我的人生舞台', '每一個人來到世間，就像登上一座期間限定、僅此一回的人生舞台，隨著時間的推移、人群的聚散，扮演不同的角色。\r\n且來欣賞工藝家以木雕、陶瓷、皮雕、草編等不同材質，揉入巧手匠心，刻劃將你我也融會其中的生之影姿。', '', '2.jpg', '2022-12-29', '2023-01-01', '2023-04-14'),
(3, '「2022藝起港動」新北市國際藝術村成果展', '本展覽以2022年新北市國際藝術村八組駐村藝術家之創作成果為基礎，規劃八種藝術創作展區，作品型態橫跨刺繡、繪畫、攝影、採集、雕塑、皮革、裝置藝術、新媒體及複合媒材等眾多領域。今年適逢淡水開港設關160周年，以藝術家視野詮釋「淡水」，並奠基於淡水開港設關及馬偕來臺史實，發展其創作理念及相關論述。', '', '3.jpg', '2022-12-29', '2023-01-01', '2023-02-28'),
(4, '兩種自然 - Susan BEINER創作個展', '大自然的複雜性是一種持續存在且不斷變化的現象，而脆弱的人類與動植物生態系是藝術家所關切的。我們的處境充滿了非常真實且日益嚴重的威脅，亦即人類對賦予生命的生態系統帶來各種影響。儘管無人能倖免，但只要有警覺意識，每個人都能發揮一己之力，更好地保護我們的地球，達到我們與大自然連結的生態平衡性。\r\n這次展覽聚焦在各種與自然共存時油然而生的想法。藝術家在許多作品中運用中國古畫裡的菊花。菊花象徵能夠抵禦一切逆境的美德，並描繪出大自然的幾何與力量。相比之下，「不可生物降解」的想法源自於社會在過度生產和浪費上的陋習，而這', '', '4.jpg', '2022-12-29', '2023-01-01', '2023-02-19'),
(5, '菸．葉．廠－複薰土地的金黃記憶', '全台首座菸葉館保存菸葉除骨、複薰等大型加工機具，引入數位化導覽系統，提供全新的五感體驗，重現台灣重要菸葉產業發展歷史。\r\n時光複薰了屏東的金黃歲月，這一次，屬於你我「菸．葉．廠」的金黃記憶，將以不同方式續寫故事篇章。', '', '5.jpg', '2022-12-29', '2022-02-25', '2022-12-31'),
(6, '高雄市雙彩美術協會「雙彩印象」跨年會員聯展', '本會於民國97年成立至今，在溫瑞和老師的帶領與指導下，會員的作品年年更精進，每次展出皆有許多令人驚艷創作。\r\n除了聯展外，會員的向心力強感情佳，也經常舉辦研習活動，旅遊寫生。', '', '6.jpg', '2022-12-29', '2023-01-01', '2023-01-03'),
(7, '「島．過來」特展', '「島．過來」展覽匯集111年老家生活藝文空間協辦風箏節「從聆開始」風鈴製作陶藝工作坊及聯合大學USR計畫「50+藝術陪伴共好生活行動-陶舞」，兩場活動參與者之手捏陶作品。\n「島．過來」展期預計於苗栗特色館-陶藝工坊舉辦三場創作工作坊，以肢體覺察的角度引導參與者體驗手捏陶的趣味。其中12月31日場次(上午10時30分至12時)「小陶偶創作工作坊」專為親子設計，招收10組20人，參與者須全程參與開幕活動，將共同創作兩件成品，一件將於展覽期間一同展出，一件可直接帶回收藏；另「從聆開始」陶風鈴創作工作坊，於1', '', '7.jpg', '2022-12-29', '2023-01-01', '2023-02-28'),
(8, '【工藝日常】你我的人生舞台', '每一個人來到世間，就像登上一座期間限定、僅此一回的人生舞台，隨著時間的推移、人群的聚散，扮演不同的角色。\r\n且來欣賞工藝家以木雕、陶瓷、皮雕、草編等不同材質，揉入巧手匠心，刻劃將你我也融會其中的生之影姿。', '', '8.jpg', '2022-12-29', '2023-01-01', '2023-04-14'),
(9, '「2022藝起港動」新北市國際藝術村成果展', '本展覽以2022年新北市國際藝術村八組駐村藝術家之創作成果為基礎，規劃八種藝術創作展區，作品型態橫跨刺繡、繪畫、攝影、採集、雕塑、皮革、裝置藝術、新媒體及複合媒材等眾多領域。今年適逢淡水開港設關160周年，以藝術家視野詮釋「淡水」，並奠基於淡水開港設關及馬偕來臺史實，發展其創作理念及相關論述。', '', '9.jpg', '2022-12-29', '2023-01-01', '2023-02-28'),
(10, '故宮國寶遊彰化2.0-「故宮魔幻山水歷險到彰化」新媒體藝術展', '由國立故宮博物院策畫「故宮魔幻山水歷險到彰化」，以故宮數位典藏成果為基底，運用近幾年來成功發展的顯像科技與互動技術，搭配AI、8K等新興科技，將經典美學轉譯為當代語彙，帶給觀眾聽覺、視覺等多重感官的體驗。\r\n「故宮魔幻山水歷險到彰化」分為4個展區，其中「舞蝶香徑」取故宮典藏的宋徽宗〈詩帖〉意象，結合「清余省百蝶圖」，透過動態光影投影，讓觀眾化身蝴蝶融入百蝶紛飛意境；「幻象古水族-海錯奇珍沉浸式互動劇場」則是以〈海錯圖〉與〈海怪圖記〉為設計，利用體感偵測器材，打造和海底古生物互動空間；「寰宇歷遊-走入畫中」', '', '10.jpg', '2022-12-29', '2023-01-01', '2023-02-28');

-- --------------------------------------------------------

--
-- 資料表結構 `order_status`
--

CREATE TABLE `order_status` (
  `id` int(1) NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, '待出貨'),
(2, '出貨中'),
(3, '已送達');

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(5) NOT NULL,
  `product_price` int(10) NOT NULL,
  `amount` int(5) NOT NULL,
  `product_creation_year` year(4) NOT NULL,
  `product_artist` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_img_file` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_detail_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sell_id` int(5) NOT NULL,
  `product_status` int(2) NOT NULL DEFAULT 1,
  `product_width` int(4) NOT NULL,
  `product_height` int(4) NOT NULL,
  `product_material` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_work_hue` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sold` tinyint(1) NOT NULL,
  `product_style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `category`, `product_price`, `amount`, `product_creation_year`, `product_artist`, `product_img_file`, `product_detail_text`, `sell_id`, `product_status`, `product_width`, `product_height`, `product_material`, `product_work_hue`, `product_sold`, `product_style`) VALUES
(1, 'enjoy', 1, 20000, 1, 2022, 'Hua Yuxiu', '001.jpg', '以工筆毛筆描繪出去玩耍超級開心的狗所呈現去的表情。', 1, 1, 0, 0, '', '', 0, ''),
(2, 'My favorite little dried fish', 1, 1000, 1, 2022, 'Hua Yuxiu', '002.jpg', '此幅為描繪自家的寵物，他就像是我的 家人一樣，對他有著家人般的感情，他雖然有時後講不出話，但都會用舉手的方式回答，是一隻很有個性的柴犬，有著可愛的表情，但其實超有個性的，以墨鏡裡加入小魚 乾，來表達他喜愛的小魚乾，小魚乾用金色來描周圍的線，來呈現喜歡小魚乾到發亮的呈度，訪彿像看到小魚乾眼睛就會發亮一樣。', 2, 1, 0, 0, '', '', 0, ''),
(3, 'cool', 1, 2000, 1, 2022, 'Hua Yuxiu', '003.jpg', '以細膩的工筆技法，描繪柴犬泰迪很酷的表情。', 3, 1, 0, 0, '', '', 0, ''),
(4, 'Tour with alpacas\r\n', 1, 3000, 1, 2022, 'Hua Yuxiu', '004.jpg', '靈感來自於，暑假與朋友到彰化的今夜星辰休閒農場旅遊時，跟羊駝的合照，本身喜愛羊駝，高中畢旅時都只能看著羊駝睡覺或餵他們吃東西，但彰化的這個地方不一樣，不但可以餵牠們吃東西，也可以近距離與羊駝互動，摸摸牠和跟牠拍照，真的太開心了。從當時拍的照片去作修改，人的角度改成站直的，世是出去日本旅遊時所拍的照片，以與羊駝合照做為出發點，背景是描繪去日本北海道支笏湖時，自己很喜歡的白雲風景照，中間背景加上遠山，前景加上草叢，彷彿我帶著羊駝去旅行，感覺就像是我的', 4, 1, 0, 0, '', '', 0, ''),
(5, 'Aloneness', 1, 45000, 1, 2022, 'Hua Yuxiu', '005.jpg', '創作者常常在夜晚讀自創作就像作品中的斑鳩ㄧ樣，獨自創作雖孤寂但其實身邊有很多人幫助我們照耀我們，就像天空的金箔、月亮、茫草裡的螢火蟲，照亮我們，帶給我們希望。', 5, 1, 0, 0, '', '', 0, ''),
(6, 'Strange Stone Travels', 1, 50000, 1, 2022, 'Hua Yuxiu', '006.jpg', '此幅為描繪新北市瑞芳區的景點，此地名稱為南雅奇石，是被海浪沖刷侵触所成的，世是大自然鬼斧神工的力量，假日與親戚到此地遊玩，當時被眼前這極為壯碩的奇石所吸引，此奇石很特别很獨特，有著獨特的肌理是一層層的形成，很像是一位少女穿著優雅的裙子，每層的皺褶都不同，不同面有著不同的風貌，此件作品為奇石的背面，雖是背面，但卻是最自然也最美妙，甚是喜愛所做此作品出來。', 6, 1, 0, 0, '', '', 0, ''),
(7, 'babble', 1, 25000, 1, 2022, 'Zhang Jinyan', '007.jpg', '40*60(cm)', 7, 1, 0, 0, '', '', 0, ''),
(8, 'Pentium', 1, 35000, 1, 2022, 'Zhang Jinyan', '008.jpg', '60*80(cm)', 8, 1, 0, 0, '', '', 0, ''),
(9, 'Thousands of piles of snow are rolled up when the waves crashing on the shore', 1, 45000, 1, 2022, 'Zhang Jinyan', '009.jpg', '180*270(cm)', 9, 1, 0, 0, '', '', 0, ''),
(10, 'Trickling', 1, 1000, 1, 2022, 'Zhang Jinyan', '010.jpg', '22*27(cm)', 10, 1, 0, 0, '', '', 0, ''),
(11, 'Flowing water\r\n', 1, 2500, 1, 2022, 'Zhang Jinyan', '011.jpg', '19*27(cm)', 11, 1, 0, 0, '', '', 0, ''),
(12, '綠意滿益', 1, 35000, 1, 2022, 'Zhang Jinyan', '012.jpg', '22*27(cm)', 12, 1, 0, 0, '', '', 0, ''),
(13, 'Listen to the sound of the spring', 1, 560000, 1, 2022, 'Zhang Jinyan', '013.jpg', '35*75(cm)', 13, 1, 0, 0, '', '', 0, ''),
(14, 'Flying springs like jade', 1, 69000, 1, 2022, 'Zhang Jinyan', '014.jpg', '30*30(cm)', 14, 1, 0, 0, '', '', 0, ''),
(15, 'Misty', 1, 56000, 1, 2022, 'Zhang Jinyan', '015.jpg', '30*30(cm)', 15, 1, 0, 0, '', '', 0, ''),
(16, 'Spring water dyes green clothes', 1, 36000, 1, 2022, 'Zhang Jinyan', '016.jpg', '石槽原為火山爆發在海岸邊形成的火山礁岩，經過長時間的侵蝕，將質地鬆軟的部份掏除，留下較堅硬的部份，當因陽光曝曬後，海藻也逐漸死去，殘骸硬化成一層薄薄的石灰質，新的藻類就在這層石灰質上，繼續附著生長，如此一生一死不停地循環，最後才形成如此有生命力的景象。海浪穿梭在這石槽之間，當石槽變綠時，身為侵蝕者的海浪也開始變的柔美。', 16, 1, 0, 0, '', '', 0, ''),
(17, 'Whale Mountain - Magic Earth Star', 2, 2000, 1, 2022, 'Liu Yi', '017.jpg', '30*30(cm)', 17, 1, 0, 0, '', '', 0, ''),
(18, 'Whale Mountain - Golden Years', 2, 10000, 1, 2022, 'Liu Yi', '018.jpg', '30*30(cm)', 18, 1, 0, 0, '', '', 0, ''),
(19, 'Foxes and elephants', 2, 2500, 1, 2022, 'Liu Yi', '019.jpg', '30*30(cm)', 19, 1, 0, 0, '', '', 0, ''),
(20, 'Whale Mountain - Deep Diving Time', 2, 15000, 1, 2022, 'Liu Yi', '020.jpg', '58*40(cm)', 20, 1, 0, 0, '', '', 0, ''),
(21, 'Cloud cat and turtle', 2, 56000, 1, 2022, 'Liu Yi', '021.jpg', '30*30(cm)', 21, 1, 0, 0, '', '', 0, ''),
(22, 'Whale Mountain - Ark Land', 2, 150000, 1, 2022, 'Liu Yi', '022.jpg', '90*120(cm)', 22, 1, 0, 0, '', '', 0, ''),
(23, 'boundless', 2, 3500, 1, 2022, 'Xu Ruojun', '023.jpg', '200*100(cm)', 23, 1, 0, 0, '', '', 0, ''),
(24, 'whisper', 2, 36000, 1, 2022, 'Xu Ruojun', '024.jpg', '18*14(cm)', 24, 1, 0, 0, '', '', 0, ''),
(25, 'Time gap', 2, 56000, 1, 2022, 'Xu Ruojun', '025.jpg', '30*30(cm)', 25, 1, 0, 0, '', '', 0, ''),
(26, 'Wish', 2, 1900, 1, 2022, 'Xu Ruojun', '026.jpg', '50*120(cm)', 26, 1, 0, 0, '', '', 0, ''),
(27, 'Comfort zone', 2, 15000, 1, 2022, 'Xu Ruojun', '027.jpg', '26*18(cm)', 2, 1, 0, 0, '', '', 0, ''),
(28, 'Seeking light', 2, 3000, 1, 2022, 'Xu Ruojun', '028.jpg', '每個生物都在用生命體悟著所有的給予與獲得，關於尋找的答案大概會化為潺潺漣漪、積成綿綿山峰，從一道光中，鋪陳蔓延。 『過了很久很久，尋光的人才發現，原來自己閃閃發光。』', 8, 1, 0, 0, '', '', 0, ''),
(29, 'No man\'s land', 2, 1900, 1, 2022, 'Xu Ruojun', '029.jpg', '細碎的筆觸像是各種矛盾情節裡的糾結，明明不擅長，卻又想嘗試， 像喃喃自語又像悄悄傾訴。', 9, 1, 0, 0, '', '', 0, ''),
(30, 'Seeking light', 2, 26000, 1, 2022, 'Xu Ruojun', '030.jpg', '『尋光的人帶著光走入樹洞，期待能在迷途中找到出口。』 每棵樹上都住著一個精靈，祂們有情感，有我們聽不懂的語言和情緒表現，在神秘魔幻的空間裡 綿延巨大的生命網絡。', 10, 1, 0, 0, '', '', 0, ''),
(31, 'A corner', 2, 265000, 1, 2022, 'Lin Jun', '031.jpg', '你生命中的黑暗角落由那盞燈火照亮，不也挺幸福的?', 1, 1, 0, 0, '', '', 0, ''),
(32, 'Magic Conch', 2, 45000, 1, 2022, 'Lin Jun', '032.jpg', '不是哀傷悲痛，而是一種領悟後的感嘆。 海螺排成列，以循環的狀態表現時序的流轉變化，相知 、相惜、 相愛，象徵心中愛意的海螺、雛菊，也表達即使面對逝去我們依然對生活抱有愛與熱情。', 2, 1, 0, 0, '', '', 0, ''),
(33, 'Nothing outside is large (inside and outside are one) A', 3, 58000, 1, 2022, 'Wu Jinhuang', '033.jpg', '130*162(cm)', 3, 1, 0, 0, '', '', 0, ''),
(34, 'Stroll or dance', 3, 46000, 1, 2022, 'Wu Jinhuang', '034.jpg', '38*48(cm)', 4, 1, 0, 0, '', '', 0, ''),
(35, 'transmigration', 3, 25500, 1, 2022, 'Wu Jinhuang', '035.jpg', '91*73(cm)', 5, 1, 0, 0, '', '', 0, ''),
(36, 'ancient times', 3, 5600, 1, 2022, 'Wu Jinhuang', '036.jpg', '時間就像個長軸卷，中國宋代人描繪的山水與現代人的美學觀點，隨著時間的演化而有不同的詮釋與看法', 6, 1, 0, 0, '', '', 0, ''),
(37, 'Spatiotemporal transformation A', 3, 98000, 1, 2022, 'Wu Jinhuang', '037.jpg', '試著把室內當作一個空間，室內與戶外成了一個循環，畫框轉換為吊燈，窗戶又轉換為天空，天空再轉換成地板，地板轉換為沙灘…我們賴以維生的空間就是不斷的循環與轉換，如同「能」與「量」不停的轉換', 7, 1, 0, 0, '', '', 0, ''),
(38, 'Black  white', 3, 59000, 1, 2022, 'Wu Jinhuang', '038.jpg', '究竟是先有黑還是先有白，這是一體的兩面，性質一樣，只是在不同時間產生不同的變化，白中會誕生黑，黑中會產生白，如同老子對空間的描述(實狀無狀)', 8, 1, 0, 0, '', '', 0, ''),
(39, 'Morning light outside the window', 3, 59999, 1, 2022, 'Wu Jinhuang', '039.jpg', '91*116(cm)', 9, 1, 0, 0, '', '', 0, ''),
(40, 'Particle context\r\n', 3, 258000, 1, 2022, 'Wu Jinhuang', '040.jpg', '少女忘我彈琴，漸漸地空間隨著音樂慢慢地分解成基本粒子。我們所見的景物包括自己皆由基本粒子構成，如同我們自生與所見所聞都為短暫現象，當生命的樂章結束時，都將化為虛無', 10, 1, 0, 0, '', '', 0, ''),
(41, 'Pieces of paper | mines\r\n', 3, 69000, 1, 2022, 'Wu Jinhuang', '041.jpg', '我們所見的礦山景色都是暫時性的存在，如同記錄著礦山景色的紙張，隨著時間的流逝，會被丟棄或消失，終將化為烏有', 11, 1, 0, 0, '', '', 0, ''),
(42, 'Nothing outside is large (inside and outside are one) C', 3, 15000, 1, 2022, 'Wu Jinhuang', '042.jpg', '89*145(cm)', 2, 1, 0, 0, '', '', 0, ''),
(43, 'Black  white', 3, 258000, 1, 2022, 'Wu Jinhuang', '043.jpg', '我們對空間的概念，有長短，有高低密度，會膨脹會壓縮，黑白如同能量不停轉換與變化', 3, 1, 0, 0, '', '', 0, ''),
(44, 'Red-green interaction', 3, 5300, 1, 2022, 'Wu Jinhuang', '044.jpg', '91*116(cm)', 4, 1, 0, 0, '', '', 0, ''),
(45, 'Black and white cycle', 3, 6900, 1, 2022, 'Wu Jinhuang', '045.jpg', '91*116(cm)', 5, 1, 0, 0, '', '', 0, ''),
(46, 'Celestial motion (inner and outer circulation space)', 3, 5000, 1, 2022, 'Wu Jinhuang', '046.jpg', '112*194(cm)', 6, 1, 0, 0, '', '', 0, ''),
(47, 'Black and white interaction', 3, 2500, 1, 2022, 'Wu Jinhuang', '047.jpg', '116*91(cm)', 7, 1, 0, 0, '', '', 0, ''),
(48, 'Teapot Mountain at dusk', 3, 5000, 1, 2022, 'Wu Jinhuang', '048.jpg', '38*48(cm)', 8, 1, 0, 0, '', '', 0, ''),
(49, 'Abbot of Fo Guang Shan, monk', 4, 6500, 1, 2022, 'Yang Chenhua', '049.jpg', '17*13(cm)', 9, 1, 0, 0, '', '', 0, ''),
(50, 'husband and wife', 4, 12000, 1, 2022, 'Yang Chenhua', '050.jpg', '13*18(cm)', 10, 1, 0, 0, '', '', 0, ''),
(51, 'Girl 2', 4, 5000, 1, 2022, 'Yang Chenhua', '051.jpg', '18*13(cm)\r\n\r\n', 1, 1, 0, 0, '', '', 0, ''),
(52, 'Girl 1', 4, 3200, 1, 2022, 'Yang Chenhua', '052.jpg', '18*13(cm)', 2, 1, 0, 0, '', '', 0, ''),
(53, 'swim', 4, 69000, 1, 2022, 'Yang Chenhua', '053.jpg', '13*18(cm)', 3, 1, 0, 0, '', '', 0, ''),
(54, 'recall', 4, 36000, 1, 2022, 'Yang Chenhua', '054.jpg', '13*18(cm)', 4, 1, 0, 0, '', '', 0, ''),
(55, 'Children under the tree', 4, 5600, 1, 2022, 'Yang Chenhua', '055.jpg', '13*18(cm)', 5, 1, 0, 0, '', '', 0, ''),
(56, 'commemorate', 4, 98000, 1, 2022, 'Yang Chenhua', '056.jpg', '13*18(cm)\r\n\r\n', 6, 1, 0, 0, '', '', 0, ''),
(57, 'Dream makeup lights', 4, 5000, 1, 2022, 'Yang Chenhua', '057.jpg', '21*21(cm)\r\n\r\n', 7, 1, 0, 0, '', '', 0, ''),
(58, 'Interior view', 4, 4000, 1, 2022, 'Yang Chenhua', '058.jpg', '65*65(cm)', 8, 1, 0, 0, '', '', 0, ''),
(59, 'Elf Star\r\n', 4, 5000, 1, 2022, 'Yang Chenhua', '059.jpg', '18*13(cm)\r\n\r\n', 9, 1, 0, 0, '', '', 0, ''),
(60, 'Elf grass\r\n', 4, 4500, 1, 2022, 'Yang Chenhua', '060.jpg', '18*13(cm)\r\n\r\n', 20, 1, 0, 0, '', '', 0, ''),
(61, 'Adults and children\r\n', 4, 5200, 1, 2022, 'Yang Chenhua', '061.jpg', '14*14(cm)\r\n\r\n', 1, 1, 0, 0, '', '', 0, ''),
(62, 'Angel feathers\r\n', 4, 59000, 1, 2022, 'Yang Chenhua', '062.jpg', '18*13(cm)\r\n\r\n', 2, 1, 0, 0, '', '', 0, ''),
(63, 'Sister 2\r\n', 4, 980000, 1, 2022, 'Yang Chenhua', '063.jpg', '10*26(cm)\r\n\r\n', 3, 1, 0, 0, '', '', 0, ''),
(64, 'Sister 1', 4, 899999, 1, 2022, 'Yang Chenhua', '064.jpg', '14*19(cm)\r\n\r\n', 4, 1, 0, 0, '', '', 0, ''),
(65, 'Peace and Freedom - III', 5, 5000, 1, 2022, 'Xu Chenzheng', '065.jpg', '前者以人民為主，和平·自由-二 , 三 是由戰爭與領土問題創作，戰爭血腥的氣息與領土之爭，是人們長期在世界上的課題，台灣也不例外，在這末法時代中，人民的那種無力感，什麼時候才能解脫？ 人民所付出的血與淚，必定迎接和平的曙光。', 5, 1, 0, 0, '', '', 0, ''),
(66, 'Peace and Freedom - II\r\n', 5, 20000, 1, 2022, 'Xu Chenzheng', '066.jpg', '延續上一張 和平·自由的創作 前者以人民為主，和平·自由-二 是由戰爭與領土問題創作，戰爭血腥的氣息與領土之爭，是人們長期在世界上的課題，台灣也不例外，在這末法時代中，人民的那種無力感，什麼時候才能解脫？ 人民所付出的血與淚，必定迎接和平的曙光。', 6, 1, 0, 0, '', '', 0, ''),
(67, 'Obsession', 5, 69000, 1, 2022, 'Xu Chenzheng', '067.jpg', '80*21(cm)\r\n\r\n', 7, 1, 0, 0, '', '', 0, ''),
(68, 'First thought\r\n', 5, 49000, 1, 2022, 'Xu Chenzheng', '068.jpg', '80*21(cm)\r\n\r\n', 8, 1, 0, 0, '', '', 0, ''),
(69, 'Peace and freedom\r\n', 5, 96000, 1, 2022, 'Xu Chenzheng', '069.jpg', '人民所付出的血與淚，必定迎接和平的曙光。', 9, 1, 0, 0, '', '', 0, ''),
(70, 'Wash quietly\r\n', 5, 55000, 1, 2022, 'Xu Chenzheng', '070.jpg', '在這疫情戰爭並行的亂世，人們是否停下腳步自省沈澱，洗滌心靈。', 10, 1, 0, 0, '', '', 0, ''),
(71, 'collide', 5, 3200, 1, 2022, 'Xu Chenzheng', '071.jpg', '70*100(cm)\r\n\r\n', 1, 1, 0, 0, '', '', 0, ''),
(72, 'memory\r\n', 5, 600, 1, 2022, 'Xu Chenzheng', '072.jpg', '18*76(cm)\r\n\r\n', 2, 1, 0, 0, '', '', 0, ''),
(73, 'Memory - two\r\n', 5, 1000, 1, 2022, 'Xu Chenzheng', '073.jpg', '50*41(cm)\r\n\r\n', 3, 1, 0, 0, '', '', 0, ''),
(74, 'relationship', 5, 65400, 1, 2022, 'Xu Chenzheng', '074.jpg', '70*100(cm)\r\n\r\n', 4, 1, 0, 0, '', '', 0, ''),
(75, 'dialogue\r\n', 5, 56000, 1, 2022, 'Xu Chenzheng', '075.jpg', '100*70(cm)\r\n\r\n', 5, 1, 0, 0, '', '', 0, ''),
(76, 'Balance - two\r\n', 5, 980000, 1, 2022, 'Xu Chenzheng', '076.jpg', '70*100(cm)\r\n\r\n', 6, 1, 0, 0, '', '', 0, ''),
(77, 'Drips', 5, 999999, 1, 2022, 'Xu Chenzheng', '077.jpg', '69*52(cm)\r\n\r\n', 7, 1, 0, 0, '', '', 0, ''),
(78, 'Ups\r\n', 5, 78900, 1, 2022, 'Xu Chenzheng', '078.jpg', '67*155(cm)\r\n\r\n', 8, 1, 0, 0, '', '', 0, ''),
(79, 'lonely\r\n', 5, 19650, 1, 2022, 'Xu Chenzheng', '079.jpg', '100*35(cm)\r\n\r\n', 9, 1, 0, 0, '', '', 0, ''),
(80, 'Drops - three\r\n', 5, 1500, 1, 2022, 'Xu Chenzheng', '080.jpg', '點點滴滴的記憶，一絲一縷的惆悵。', 10, 1, 0, 0, '', '', 0, ''),
(81, 'Untitled\r\n', 5, 4500, 1, 2022, 'Xu Chenzheng', '081.jpg', '35*100(cm)\r\n\r\n', 1, 1, 0, 0, '', '', 0, ''),
(82, 'open\r\n', 5, 2999, 1, 2022, 'Xu Chenzheng', '082.jpg', '29*21(cm)\r\n\r\n', 2, 1, 0, 0, '', '', 0, ''),
(83, 'City life', 6, 1000, 1, 2022, 'ariel huang', '083.jpg', '29*21(cm)\r\n\r\n', 8, 1, 0, 0, '', '', 0, ''),
(84, 'Untitled', 6, 1500, 1, 2022, 'ariel huang', '084.jpg', '42*29(cm)\r\n\r\n', 8, 1, 0, 0, '', '', 0, ''),
(85, 'Untitled \r\n', 6, 2000, 1, 2022, 'ariel huang', '085.jpg', '42*29(cm)\r\n\r\n', 8, 1, 0, 0, '', '', 0, ''),
(86, 'dog with pearl necklace', 6, 2500, 1, 2022, 'ariel huang', '086.jpg', '27*21(cm)\r\n\r\n', 8, 1, 0, 0, '', '', 0, ''),
(87, 'golden girl\r\n', 6, 3000, 1, 2022, 'ariel huang', '087.jpg', '27*21(cm)\r\n\r\n', 8, 1, 0, 0, '', '', 0, ''),
(88, 'Momo Steppe', 6, 3500, 1, 2022, 'KIU\r\n', '088.jpg', '51*36(cm)\r\n\r\n', 8, 1, 0, 0, '', '', 0, ''),
(89, 'Horoscope Sun and Moon\r\n', 6, 4000, 1, 2022, 'KIU\r\n', '089.jpg', '41*59(cm)\r\n\r\n', 8, 1, 0, 0, '', '', 0, ''),
(90, 'Off the original Moriyama', 6, 45000, 1, 2022, 'KIU\r\n', '090.jpg', '51*36(cm)\r\n\r\n', 9, 1, 0, 0, '', '', 0, ''),
(91, 'Black Magic\r\n', 6, 5890, 1, 2022, 'KIU\r\n', '091.jpg', '41*59(cm)\r\n\r\n', 1, 1, 0, 0, '', '', 0, ''),
(92, 'Sweet elixir\r\n', 6, 45000, 1, 2022, 'KIU\r\n', '092.jpg', '41*59(cm)\r\n\r\n', 2, 1, 0, 0, '', '', 0, ''),
(93, 'December Night\r\n', 6, 58000, 1, 2022, 'KIU\r\n', '093.jpg', '41*59(cm)\r\n\r\n', 3, 1, 0, 0, '', '', 0, ''),
(94, 'Flower prayers', 6, 54000, 1, 2022, 'Zhuzu\r\n', '094.jpg', '35*30(cm)\r\n\r\n', 4, 1, 0, 0, '', '', 0, ''),
(95, 'Tsunami\r\n', 6, 98000, 1, 2022, 'Zhuzu\r\n', '095.jpg', '50*40(cm)\r\n\r\n', 5, 1, 0, 0, '', '', 0, ''),
(96, 'Reflection\r\n', 6, 98700, 1, 2022, 'Zhuzu\r\n', '096.jpg', '30*30(cm)\r\n\r\n', 6, 1, 0, 0, '', '', 0, ''),
(97, 'Cold plus\r\n', 6, 58000, 1, 2022, 'Zhuzu\r\n', '097.jpg', '40*30(cm)\r\n\r\n', 7, 1, 0, 0, '', '', 0, ''),
(98, 'Balcony', 6, 15000, 1, 2022, 'Zhuzu\r\n', '098.jpg', '30*30(cm)\r\n\r\n', 8, 1, 0, 0, '', '', 0, ''),
(99, 'Good night\r\n', 6, 5300, 1, 2022, 'Zhuzu\r\n', '099.jpg', '50*40(cm)\r\n\r\n', 9, 1, 0, 0, '', '', 0, ''),
(100, 'Wild sweetie\r\n', 6, 4500, 1, 2022, 'Zhuzu', '100.jpg', '30*30(cm)\r\n\r\n', 10, 1, 0, 0, '', '', 0, ''),
(101, 'Tiger Mountain', 1, 10000, 1, 2022, 'Chen Yunyi', '101.jpg', '水墨、膠彩、水彩、壓克力、複合媒材、色鉛筆', 11, 1, 0, 0, '', '', 0, ''),
(102, 'be with you', 1, 8800, 1, 2022, 'Huang Yunru', '102.jpg', '信任自己，是不是也就能信任別人？', 12, 1, 0, 0, '', '', 0, ''),
(103, 'Spring water dyed green clothes', 1, 23000, 1, 2022, 'Zhang Zhenyan', '103.jpg', '海浪穿梭在這石槽之間，當石槽變綠時，身為侵蝕者的海浪也開始變的柔美', 13, 1, 0, 0, '', '', 0, ''),
(104, 'Shocking waves hit the shore and roll up a thousand piles of snow', 1, 150000, 1, 2022, 'Zhang Zhenyan', '104.jpg', '180*270(cm)', 14, 1, 0, 0, '', '', 0, ''),
(105, 'gurgling', 1, 21000, 1, 2022, 'Zhang Zhenyan', '105.jpg', '40*60(cm)', 15, 1, 0, 0, '', '', 0, ''),
(106, 'wandering', 1, 12000, 1, 2022, 'Zac Xiao', '106.jpg', '18*18(cm)', 16, 1, 0, 0, '', '', 0, ''),
(107, 'In the same frame', 1, 12000, 1, 2022, 'Zac Xiao', '107.jpg', '18*18(cm)', 17, 1, 0, 0, '', '', 0, ''),
(108, 'Gravel beach', 1, 12000, 1, 2022, 'Zac Xiao', '108.jpg', '18*18(cm)', 18, 1, 0, 0, '', '', 0, ''),
(109, 'broad', 1, 36000, 1, 2022, 'Zac Xiao', '109.jpg', '70*70(cm)', 19, 1, 0, 0, '', '', 0, ''),
(110, 'Cage', 1, 4200, 1, 2022, 'Dana Yuan', '110.jpg', '39*27(cm)', 11, 1, 0, 0, '', '', 0, ''),
(111, 'Ordinary mountain forest', 1, 53000, 1, 2022, 'Chen Jing -Hsuan', '111.jpg', '138*69(cm)\nA state of mind, that\'s what you never know', 11, 1, 0, 0, '', '', 0, ''),
(112, 'lonely', 1, 30000, 1, 2022, 'Hua Yuxiu', '112.jpg', '68*138(cm)\r\n創作者常常在夜晚讀自創作就像作品中的斑鳩ㄧ樣，獨自創作雖孤寂但其實身邊有很多人幫助我們照耀我們，就像天空的金箔、月亮、茫草裡的螢火蟲，照亮我們，帶給我們希望。', 12, 1, 0, 0, '', '', 0, ''),
(113, 'travel', 1, 12000, 1, 2022, 'Cheng Yici', '113.jpg', '13*68(cm)', 13, 1, 0, 0, '', '', 0, ''),
(114, 'Strange Stone Travels', 1, 30000, 1, 2022, 'Hua Yuxiu', '114.jpg', '138*69(cm)\r\n此幅為描繪新北市瑞芳區的景點，此地名稱為南雅奇石，是被海浪沖刷侵触所成的，世是大自然鬼斧神工的力量，假日與親戚到此地遊玩，當時被眼前這極為壯碩的奇石所吸引，此奇石很特别很獨特，有著獨特的肌理是一層層的形成，很像是一位少女穿著優雅的裙子，每層的皺褶都不同，不同面有著不同的風貌，此件作品為奇石的背面，雖是背面，但卻是最', 14, 1, 0, 0, '', '', 0, ''),
(115, 'dead sea', 1, 40000, 1, 2022, 'Chen Yunyi', '115.jpg', '70*68(cm)', 15, 1, 0, 0, '', '', 0, ''),
(116, 'Abstract art', 2, 20000, 1, 2022, 'Donnya Freestone', '116.jpg', 'Abstract art made with acrylic paint and hot glue', 16, 1, 0, 0, '', '', 0, ''),
(117, 'Acrylic pour Jellyfish', 2, 15000, 1, 2022, 'Donnya Freestone', '117.jpg', 'Acrylic pour Jellyfish', 17, 1, 0, 0, '', '', 0, ''),
(118, 'two', 2, 20000, 1, 2022, 'Xia Luling', '118.jpg', '24*33(cm)\r\n擁擠的無花果因盒子壓縮，緊密靠在一起，像是兩對姻親，兩個家族，兩套綁在一起的DNA傳承，卻沒有真正的交集', 18, 1, 0, 0, '', '', 0, ''),
(119, 'Magic Conch', 2, 5000, 1, 2022, 'Lin Yun', '119.jpg', '27*22(cm)\r\n不是哀傷悲痛，而是一種領悟後的感嘆。 海螺排成列，以循環的狀態表現時序的流轉變化，相知 、相惜、 相愛，象徵心中愛意的海螺、雛菊，也表達即使面對逝去我們依然對生活抱有愛與熱情。', 19, 1, 0, 0, '', '', 0, ''),
(120, 'blue interwoven city', 2, 25000, 1, 2022, 'Zhang Dengke', '120.jpg', '24*17(cm)', 20, 1, 0, 0, '', '', 0, ''),
(121, 'night pine', 2, 12800, 1, 2022, 'Chen Yunyi', '121.jpg', '49*32(cm)\r\n水墨、膠彩、書法、水彩、壓克力', 21, 1, 0, 0, '', '', 0, ''),
(122, 'Seeking Light II', 2, 25000, 1, 2022, 'Xu Ruojun', '122.jpg', '29*42(cm)水墨、膠彩\r\n尋光的人帶著光走入樹洞，期待能在迷途中找到出口。』 每棵樹上都住著一個精靈，祂們有情感，有我們聽不懂的語言和情緒表現，在神秘魔幻的空間裡 綿延巨大的生命網絡。', 22, 1, 0, 0, '', '', 0, ''),
(123, 'traveler on foot', 2, 50000, 1, 2022, 'YEN', '123.jpg', '53*45(cm)', 23, 1, 0, 0, '', '', 0, ''),
(124, 'untitled', 2, 13000, 1, 2022, 'Yan Yiting', '124.jpg', '41*41(cm)', 24, 1, 0, 0, '', '', 0, ''),
(125, 'everyday scenery', 2, 2000, 1, 2022, 'Qiu Bokai', '125.jpg', '18*14(cm)水墨、膠彩\r\n古人透過遊歷山水，獲得身體、心靈上的滿足，並作為喜愛的創作主題，相較於現代社會，自然景物對於古人來說應該是相對親近的一部分，而筆者每天生活所見的卻是鋼筋水泥，密不通風的都市叢林，而都市叢林或許能帶出那份貼切的「日常感」，因此建築物也就成了筆者重要的元素，試圖建立「日常感」的表現', 25, 1, 0, 0, '', '', 0, ''),
(126, 'Qingdao', 2, 3000, 1, 2022, 'Chen Yunyi', '126.jpg', '38*45(cm)水墨、膠彩、水彩', 26, 1, 0, 0, '', '', 0, ''),
(127, 'Whisper - bird afraid of heights', 2, 36000, 1, 2022, 'Xu Ruojun', '127.jpg', '40*60(cm)水墨、膠彩', 26, 1, 0, 0, '', '', 0, ''),
(128, 'Indoor Taoyuan', 2, 6500, 1, 2022, 'Qiu Bokai', '128.jpg', '40*30(cm)水墨、膠彩\r\n創作想法來自來「排列」的感受，而生活中牆面的磚塊或花磚也常有工整式的堆砌，我就想利用這樣得方式來取代傳統皴法的構成，以點描平穩的橫線，作為主要筆觸，帶出工整、規律的特性，另外也想呼應如人造物、人造島，或綠化都市所建的公園，這樣一個美化的概念，在當今生活也可算是非長常見，因此作品名稱就以室內桃園一詞，來說明都市的一絲生意。', 18, 1, 0, 0, '', '', 0, ''),
(129, 'wait', 2, 12000, 1, 2022, 'SiuRoad', '129.jpg', '42*29(cm)膠彩、電繪', 19, 1, 0, 0, '', '', 0, ''),
(130, 'Lightseeking III', 2, 25000, 1, 2022, 'Xu Ruojun', '130.jpg', '29*42(cm)水墨、膠彩\r\n每個生物都在用生命體悟著所有的給予與獲得，關於尋找的答案大概會化為潺潺漣漪、積成綿綿山峰，從一道光中，鋪陳蔓延。 『過了很久很久，尋光的人才發現，原來自己閃閃發光。』', 10, 1, 0, 0, '', '', 0, ''),
(131, 'ridiculed pineapple', 3, 40000, 1, 2022, 'Tan Youjia', '131.jpg', '40*40(cm)油畫', 11, 1, 0, 0, '', '', 0, ''),
(132, 'twilight', 3, 25000, 1, 2022, 'Lo Chan Peng', '132.jpg', '145*145(cm)油畫', 12, 1, 0, 0, '', '', 0, ''),
(133, 'untitled2', 3, 1500, 1, 2022, 'Kuo Nien-Hsin', '133.jpg', '18*12(cm)油畫', 13, 1, 0, 0, '', '', 0, ''),
(134, '2022.03', 3, 70000, 1, 2022, 'Lu Xueyao', '134.jpg', '50*50(cm)油畫', 14, 1, 0, 0, '', '', 0, ''),
(135, 'swivel forest', 3, 10000, 1, 2022, 'Wei Guohao', '135.jpg', '72*60(cm)2022.06 y No.5', 15, 1, 0, 0, '', '', 0, ''),
(136, 'rest', 3, 30000, 1, 2022, 'Huang Xunhui', '136.jpg', '38*45(cm)油畫\r\n安靜的休息 也許乘著夢境飛翔 也許只是一塊石頭', 16, 1, 0, 0, '', '', 0, ''),
(137, 'The wind blowing from the other side', 3, 23500, 1, 2022, 'Lo Chan Peng', '137.png', '116*91(cm)油畫', 17, 1, 0, 0, '', '', 0, ''),
(138, 'Transcendent Series Octopus Girl', 3, 2500, 1, 2022, 'Gong Shangwei', '138.jpg', '60*100(cm)油畫、水彩', 18, 1, 0, 0, '', '', 0, ''),
(139, 'white horse', 3, 12000, 1, 2022, 'Zheng Zhongxuan', '139.jpg', '72*91(cm)油畫', 13, 1, 0, 0, '', '', 0, ''),
(140, 'November', 3, 5000, 1, 2022, 'Tan Youjia', '140.jpg', '60*80(cm)油畫', 10, 1, 0, 0, '', '', 0, ''),
(141, 'When the rose is faded', 3, 90000, 1, 2022, 'Irene W', '141.jpg', '150*150(cm)油畫', 11, 1, 0, 0, '', '', 0, ''),
(142, 'Tribute to piano', 3, 20000, 1, 2022, 'Irene W', '142.jpg', '91*60(cm)油畫', 12, 1, 0, 0, '', '', 0, ''),
(143, 'Vase', 3, 60000, 1, 2022, 'Irene W', '143.jpg', '91*72(cm)油畫', 23, 1, 0, 0, '', '', 0, ''),
(144, 'Dolomites', 3, 60000, 1, 2022, 'Irene W', '144.jpg', '80*60(cm)油畫', 24, 1, 0, 0, '', '', 0, ''),
(145, 'Little beauty in surrounding, Tillandsia', 3, 20000, 1, 2022, 'Irene W', '145.jpg', '40*40(cm)油畫', 15, 1, 0, 0, '', '', 0, ''),
(146, 'The Forgotten', 4, 10000, 1, 2022, 'Noa Xu Yuxuan', '146.jpg', '38*26(cm)水彩', 16, 1, 0, 0, '', '', 0, ''),
(147, 'happy flowers', 4, 20000, 1, 2022, 'Fangfang Liu', '147.jpg', '19*26(cm)水彩\r\n用想象中豐富的顏色去創作一張美麗花兒的景象', 14, 1, 0, 0, '', '', 0, ''),
(148, 'Ganjiabao in the rain', 4, 20000, 1, 2022, 'Fangfang Liu', '148.jpg', '26*19(cm)水彩\r\n在桃園龍潭甘家堡寫生，忽然下起雨來，雨點打落在畫面形成自然的肌理，感謝老天爺與我一起完成創作，天人合一之作', 18, 1, 0, 0, '', '', 0, ''),
(149, 'Hug Series - Mirror Tea Party', 4, 2000, 1, 2022, 'MilkHoneyPlanet', '149.jpg', '38*26(cm)水彩\r\n想了很久，終於踏出第一步。 再勇敢踏出一步，一起來享受美好的茶會吧~', 14, 1, 0, 0, '', '', 0, ''),
(150, 'bouquet of flowers', 4, 28000, 1, 2022, 'Zhang Qiyun', '150.jpg', '55*39(cm)水彩', 10, 1, 0, 0, '', '', 0, ''),
(151, 'A-CO laying on the rug', 4, 22000, 1, 2022, 'Zhang Qiyun', '151.jpg', '55*39(cm)水彩', 11, 1, 0, 0, '', '', 0, ''),
(152, 'white tiger', 4, 22000, 1, 2022, 'Zhang Qiyun', '152.jpg', '55*30(cm)水彩', 12, 1, 0, 0, '', '', 0, ''),
(153, 'light in the woods', 4, 40000, 1, 2022, 'Zhang Qiyun', '153.jpg', '79*55(cm)水彩', 13, 1, 0, 0, '', '', 0, ''),
(154, 'Between Flower Fields * Stillness', 4, 10000, 1, 2022, 'Su Yuhan', '154.jpg', '38*26(cm)水彩', 14, 1, 0, 0, '', '', 0, ''),
(155, 'Sit and watch the clouds rise', 4, 8000, 1, 2022, 'Su Yuhan', '155.jpg', '38*26(cm)水彩', 15, 1, 0, 0, '', '', 0, ''),
(156, 'fly a kite together', 4, 8000, 1, 2022, 'Su Yuhan', '156.jpg', '38*26(cm)水彩', 16, 1, 0, 0, '', '', 0, ''),
(157, 'rose fearless', 4, 22800, 1, 2022, 'Emily', '157.jpg', '40*30(cm)水彩\r\n玫瑰無畏 漫流自畫框外的美麗 心底安住花雨繽紛', 17, 1, 0, 0, '', '', 0, ''),
(158, 'Everlasting blue rose', 4, 19800, 1, 2022, 'Emily', '158.jpg', '40*30(cm)水彩\r\n無年無限 生生不息 花開時 完美 凋謝時也完美 清純不染', 18, 1, 0, 0, '', '', 0, ''),
(159, 'Shining Rose Goddess', 4, 16800, 1, 2022, 'Emily', '159.jpg', '40*30(cm)水彩\r\n閃耀 如夢 初覺 心傳潺潺細語', 19, 1, 0, 0, '', '', 0, ''),
(160, 'mountain range', 4, 8000, 1, 2022, 'Yu Jiehan', '160.jpg', '56*39(cm)水彩', 10, 1, 0, 0, '', '', 0, ''),
(161, 'peace and freedom', 5, 5200, 1, 2022, 'Xu Chenzheng', '161.jpg', '20*28(cm)版畫\r\n人民所付出的血與淚，必定迎接和平的曙光。', 11, 1, 0, 0, '', '', 0, ''),
(162, 'dialogue', 5, 18000, 1, 2022, 'Xu Chenzheng', '162.jpg', '100*70(cm)版畫', 12, 1, 0, 0, '', '', 0, ''),
(163, 'Exquisite clone: 03', 5, 8000, 1, 2022, 'Fatima Fletcher', '163.jpg', '30*30(cm)版畫\r\nOriginal work acrylic on Fabriano paper - price 22000 TWD including DHL shipping. Editions for exhibition are printed on canvas. 80% of all orchids are cloned, this fact is the origin of the title \'Exquisite Clone\'.', 13, 1, 0, 0, '', '', 0, ''),
(164, 'Exquisite clone: 10', 5, 8000, 1, 2022, 'Fatima Fletcher', '164.jpg', '30*30(cm)版畫\r\nOriginal work acrylic on Fabriano paper - price 22000 TWD including DHL shipping. Editions for exhibition are printed on canvas. 80% of all orchids are cloned, this fact is the origin of the title \'Exquisite Clone\'.', 14, 1, 0, 0, '', '', 0, ''),
(165, 'Painted perfume: Bottled moon', 5, 5000, 1, 2022, 'Fatima Fletcher', '165.jpg', '20*20(cm)版畫\r\nOriginal work acrylic on Fabriano paper - price 22000 TWD including DHL shipping. Editions for exhibition are printed on canvas. Perfumes and smells evoke memories, places, people. The night sky is trapped forever in Bottled moon.', 15, 1, 0, 0, '', '', 0, ''),
(166, 'untitled', 5, 12000, 1, 2022, 'Kuo Nien-Hsin', '166.jpg', '40*27(cm)版畫', 16, 1, 0, 0, '', '', 0, ''),
(167, 'Nature And Artificial', 5, 10000, 1, 2022, 'Noa Xu Yuxuan', '167.jpg', '52*38(cm)版畫', 17, 1, 0, 0, '', '', 0, ''),
(168, 'untitled', 5, 5000, 1, 2022, 'Kuo Nien-Hsin', '168.jpg', '27*20(cm)版畫', 23, 1, 0, 0, '', '', 0, ''),
(169, 'Klimt fashion cat lady', 5, 15000, 1, 2022, 'Hong Yin', '169.jpg', '30*40(cm)版畫\r\n4/50 available', 19, 1, 0, 0, '', '', 0, ''),
(170, 'cat\'s whimsical world', 5, 3500, 1, 2022, 'Angel Chen', '170.jpg', '45*33(cm)版畫\r\n貓咪的幻想曲 貓咪似乎在等待什麼經過，眼睛睜得大大的。你猜猜祂腦袋瓜在想什麼呢？ 背景使用的是模仿梵谷星空的畫法。 是幅讓人莞爾一笑卻又會駐足的作品。', 10, 1, 0, 0, '', '', 0, ''),
(171, 'fall', 5, 3000, 1, 2022, 'Wu Peixin', '171.jpg', '13*19(cm)版畫\r\n落，我以花與果實做出飄落的動做，低落的情緒投射在植物飄落的形態，呈現出感是到凋零、枯萎、失落的低緩情緒。', 21, 1, 0, 0, '', '', 0, ''),
(172, 'Painted perfume: Constable clouds', 5, 5000, 1, 2022, 'Fatima Fletcher', '172.jpg', '20*20(cm)版畫\r\nOriginal work acrylic on Fabriano paper - price 22000 TWD including DHL shipping. Editions for exhibition are printed on canvas. Perfumes and smells evoke memories, places, people. This painted perfume bottles a cloudy sky in the style of Joh', 2, 1, 0, 0, '', '', 0, ''),
(173, 'Shadow', 5, 15000, 1, 2022, 'Kuo Nien-Hsin', '173.jpg', '58*44(cm)版畫', 3, 1, 0, 0, '', '', 0, ''),
(174, 'untitled', 5, 3000, 1, 2022, 'Kuo Nien-Hsin', '174.jpg', '44*30(cm)版畫', 4, 1, 0, 0, '', '', 0, ''),
(175, 'ups and downs', 5, 52000, 1, 2022, 'Xu Chenzheng', '175.jpg', '67*155(cm)版畫', 5, 1, 0, 0, '', '', 0, ''),
(176, 'O', 6, 12000, 1, 2022, 'aliette', '176.jpg', '160*120(cm)電繪', 6, 1, 0, 0, '', '', 0, ''),
(177, 'MBTI ESTP', 6, 5000, 1, 2022, 'Zhuzu', '177.jpg', '40*30(cm)電繪', 17, 1, 0, 0, '', '', 0, ''),
(178, 'summer', 6, 5000, 6, 2022, 'grey cat', '178.jpg', 'sun high in hot sky', 28, 1, 0, 0, '', '', 0, ''),
(179, 'Crow Chasing the Moon', 6, 5000, 1, 2022, 'Chen Yuluo', '179.jpg', '21*43(cm)電繪、插畫', 19, 1, 0, 0, '', '', 0, ''),
(180, 'Water Wheel Samadhi', 6, 35000, 1, 2022, 'Xu Tinghao', '180.jpg', '45*45(cm)電繪\r\n禪海滂礡，靜慮生蓮，守之不動，憶百千劫。 於地輪中發起許多禪定功德， 定水滋潤，自覺心中善根增長， 身心濡軟，折服高慢， 如水滋潤生長、體性柔軟二義， 故稱水輪三昧。', 10, 1, 0, 0, '', '', 0, ''),
(181, 'blue killer whale', 6, 5000, 1, 2022, 'grey cat', '181.jpg', '100*100(cm)電繪', 21, 1, 0, 0, '', '', 0, ''),
(182, 'hidden blade', 6, 5000, 1, 2022, 'grey cat', '182.jpg', '100*100(cm)電繪\r\n無處可去的情緒最後會到哪裡呢 像雪白的利刃般刺傷自己', 24, 1, 0, 0, '', '', 0, ''),
(183, 'multiverse', 6, 7000, 1, 2022, 'MirandaMercy', '183.jpg', '30*40(cm)電繪\r\n每一次選擇都是一次的變因\r\n平行時空中演化出不同的我\r\n過著不一樣的人生\r\n決定參加馬拉松的我\r\n決定念哲學的我\r\n決定生可愛寶寶的我\r\n各種決定下的我\r\n交織成我的人生軌跡\r\n那份專屬於自己的多重宇宙', 13, 1, 0, 0, '', '', 0, ''),
(184, '#1 Jan. Upper central incisor', 6, 3500, 1, 2022, 'William Chang', '184.jpg', 'illustration showing how I feel about different teeth. Different teeth correspond to twelve months, each representing different solar terms, animals, plants and colors. Give life to every tooth, so that teeth are no longer just teeth, but have a deep conn', 14, 1, 0, 0, '', '', 0, ''),
(185, '#12 Dec. Lower first molar', 6, 3500, 1, 2022, 'William Chang', '185.jpg', '59*45(cm)電繪、插畫\r\nAn illustration showing how I feel about different teeth. Different teeth correspond to twelve months, each representing different solar terms, animals, plants and colors. Give life to every tooth, so that teeth are no longer just teeth, b', 15, 1, 0, 0, '', '', 0, ''),
(186, 'Butterfly Contemplation', 6, 3900, 1, 2022, 'Aaron Blaise', '186.jpg', '30*15(cm)', 24, 1, 0, 0, '', '', 0, ''),
(187, 'Nubian Warriors', 6, 15000, 1, 2022, 'Aaron Blaise', '187.jpg', '20*16(cm)', 25, 1, 0, 0, '', '', 0, ''),
(188, 'Nature Salvation', 6, 65000, 1, 2022, 'Artem Chebokha', '188.jpg', '100*100(cm)', 26, 1, 0, 0, '', '', 0, ''),
(189, 'Homo Violentus', 6, 34000, 1, 2022, 'Artem Chebokha', '189.jpg', '100*100(cm)\nThe monster can\'t create anything. It only can rape, kill and destroy.', 20, 1, 0, 0, '', '', 0, ''),
(190, 'Hive', 6, 12000, 1, 2022, 'Vladimir Motsar', '190.jpg', '100*100(cm)', 2, 1, 0, 0, '', '', 0, ''),
(191, 'Bogatyr', 6, 32400, 1, 2022, 'Vladimir Motsar', '191.jpg', '100*50(cm)', 4, 1, 0, 0, '', '', 0, ''),
(192, 'The Monk', 6, 32000, 1, 2022, 'Lorenzo Lanfranconi', '192.jpg', '100*50(cm)\r\nDecided to paint on this old sketch during the holidays.\r\nThe bridge is inspired to an ancient one near my city and it leads to a monastery (today splitted in apartments), in the wood on a hill, where I used to play Magic the Gathering in my c', 5, 1, 0, 0, '', '', 0, ''),
(193, 'Island town', 6, 2100, 1, 2022, 'Jonathan Bertaud', '193.jpg', '100*50(cm)\r\nPersonal project that I did following Jad Saber\'s amazing tutorial.', 6, 1, 0, 0, '', '', 0, ''),
(194, 'Zero_Gravity', 6, 21000, 1, 2022, 'Wadim Kashin', '194.jpg', '100*50(cm)\r\nsome sci-fi stuff that I did during the free time.\r\npersonal.', 8, 1, 0, 0, '', '', 0, ''),
(195, 'Chaos Invoked', 6, 11000, 1, 2022, 'Ismail Inceoglu', '195.jpg', '100*50(cm)', 9, 1, 0, 0, '', '', 0, ''),
(196, 'Mother Nature', 6, 1100, 1, 2022, 'Sin jong hun', '196.jpg', '100*100(cm)\r\nPlaces I want to go.\r\nA combination of refreshing green, blue and white.\r\nNature is always beautiful.', 196, 1, 0, 0, '', '', 0, ''),
(197, 'beach village', 6, 12000, 1, 2022, 'Sin jong hun', '197.jpg', '100*100(cm)', 9, 1, 0, 0, '', '', 0, ''),
(198, 'Iron hilltop', 6, 18000, 1, 2022, 'Vladimir Motsar', '198.jpg', '100*100(cm)', 10, 1, 0, 0, '', '', 0, ''),
(199, 'MENYR', 6, 12000, 1, 2022, 'Jonathan Bertaud', '199.jpg', '100*100(cm)', 23, 1, 0, 0, '', '', 0, ''),
(200, 'Avalon - house of botanists', 6, 21000, 1, 2022, 'Valentin Perouelle', '200.jpg', '100*100(cm)\r\nExploration art for my personnal project, strongly inspired by Ghibli movies especially \" when Marnie was there \".', 25, 1, 0, 0, '', '', 0, ''),
(201, 'sad kitty', 6, 999999, 1, 2022, 'Life Quotes', '201.jpg', 'sad kitty', 25, 1, 0, 0, '', '', 0, ''),
(202, 'batman', 1, 99999, 1, 2022, 'batman', '202.jpg', 'batman', 1, 1, 0, 0, '', '', 0, ''),
(203, '404', 6, 99999, 1, 2022, 'D * Face', '203.jpg', 'Mural painting done by street artist D * Face in the MAUS program.', 0, 1, 0, 0, '', '', 0, ''),
(204, 'woman sitting by the window', 5, 9999, 1, 2022, 'Pablo Picasso', '204.jpg', 'woman sitting by the window', 0, 1, 0, 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- 資料表結構 `space`
--

CREATE TABLE `space` (
  `space_img_file` varchar(132) DEFAULT NULL,
  `space_id` varchar(2) DEFAULT NULL,
  `space_name` varchar(23) DEFAULT NULL,
  `space_tel` varchar(12) DEFAULT NULL,
  `on_weekdays` varchar(14) DEFAULT NULL,
  `on_holiday` varchar(5) DEFAULT NULL,
  `space_address` varchar(24) DEFAULT NULL,
  `space_area` varchar(1) DEFAULT NULL,
  `space_introduction` varchar(391) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `space`
--

INSERT INTO `space` (`space_img_file`, `space_id`, `space_name`, `space_tel`, `on_weekdays`, `on_holiday`, `space_address`, `space_area`, `space_introduction`) VALUES
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/93EtwheJqg8psreCl4ZnzTaUo2dwu62r5ON8vqPI.jpg', '1', '1771 Studio', '0422585291', '週一、週二、週三、週四、週五', '週六、週日', '桃園市大園區環區南路71號', '北', '作品呈現方式：釘牆、懸掛、吊掛，櫥窗可以做裝飾卡典西德等等，平面可以擺展台。\r\n\r\n＊此空間預約需經審核。\r\n\r\n1771studio 以設計背景為出發，與各路藝術創作者合作，讓藝術更有效率地被傳達。\r\n用不同的角度交集出新面相，期待以「建立橋樑」的方式，\r\n為不同世代、領域、背景的藝文愛好者，\r\n組織一個相互交流溝通的基地，讓藝術行動加入大家的日常。\r\n-\r\n整體環境保留建築物最原始的面貌，藝術品能被最直接的方式看見。\r\n此外建築物四周是空曠的草地，可配合藝術創作者大膽利用發揮，\r\n採用大量自然光，讓空間更能因應需求靈活運用，\r\n期望觀展者能迅速進入看展的氛圍，透過思考、交流、再次迸發藝術的價值。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/pic_94%20(6).jpg', '2', 'Chateau zoe', '0227326315', '週二、週三、週四、週五', '週六、週日', '臺北市信義區逸仙路32巷7號1樓', '北', '榮獲2020＆2021米其林餐盤推薦，輕鬆舒適的西式創意料理餐廳，有豐富的酒藏與酒窖出租，附設包廂。＊此空間預約需審核作品。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/HzGi04suTz0DAH77X6LMzIhUAZVq1krSn6WHts6F.jpg', '3', 'MealRoom', '0968988028', '週二、週三、週四、週五', '週六', '臺北市大安區延吉街66-1號', '北', '整體空間以明亮的燈光與昏暗的區域做光亮視覺融合，結合裝潢設計與音樂設計，營造出品牌Chill為導向的主題。\n整個空間約可展出20-22幅作品，特別展區可獨立放落地畫架，與藝術家的周邊商品，每一幅展品都有獨立的光源可以調整。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/store_50.jpg', '4', 'Art Vibe Gallery & Wine', '0227011311', '週三、週四、週五', '週六、週日', '臺北市大安區和平東路二段76巷17弄2號', '北', '空白牆面尺寸：\r\nA. 入口主牆：220 X 250H\r\nB. 左側方窗之間：160 X 170H\r\nC. 左側底方窗側： 80 X 150H\r\nD. 玻璃磚牆左側：110 X 160H\r\nE. 右側圍牆兩面：200 X 190H X2\r\n\r\n作品呈現方式：釘牆\r\n\r\n備註：\r\n此空間預約需審核。\r\n藝術品風格偏好：當代・普普・古典・複合媒材皆可。\r\n如藝術品能夠與主展間風格相合，也會適當釋出內部展間其他區域做展示。\r\n此空間為預約制，要去前往看展的朋友請記得先與空間預約好看展時間哦！'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/a1ZQFZgGYZIhLQ6gSCSUc5onC6muzpURGKe38ywz.jpg', '5', 'Otherside.Taipei', '0225140000', '週一、週二、週三、週四、週五', '週六、週日', '臺北市信義區松德路12之1號', '北', '結合藝術及娛樂的空間，提供水煙、調酒、餐點的服務，另外有四個電子畫框可提供配合藝術家展覽。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/pic_88%20(6).jpg', '6', '彤雲潤景', '0287911987', '週一、週二、週三、週四、週五', '週六、週日', '\n臺北市內湖區行善路395號', '北', '首創『軟裝規劃設計品牌』彤雲潤景\r\n品管製造 -自有海內外工廠、組裝、監造\r\n設計提案 -丈量、規劃、設計、配置提案\r\n產品訂製 -傢俱、燈飾、地牆板、系統櫃、花藝'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/store_5.jpg', '7', '自由溫室 Liberbox Coffee', '0289210047', '週一、週二、週三、週四、週五', '週六、週日', '新北市永和區水源街21巷2號', '北', '＊撤布展超時需支付一小時$1000逾時費用。\n＊預約此空間需審核作品。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/store_14.png', '8', 'MOJO 1921', '0225595446', '週一、週二、週三、週四、週五', '週六、週日', '臺北市大同區長安西路39號', '北', '＊預約此空間需審核作品。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/xWlE1oEbhJtd9452eUxNxpylZ8BsUG6FQKIMp3km.jpg', '9', '鞠分號', '0424369588', '週一、週三、週四、週五', '週六、週日', '桃園市桃園區慈祥街32號', '北', '設立此空間的初衷，是因為許多夥伴閒暇之餘常跑到外縣市看展覽，我們也發現藝術展演能為一座城市的文化底蘊增長帶來深遠的影響，於是產生「何不將這種文化帶進桃園？」的想法。主理們在創店之初便打造一獨立展演空間，提供藝術創作及觀賞者一隅自由交流的角落，目前已辦過個人攝影、刺繡創作展及澳式理髮行動藝術等。\n\n純白的空間約五坪大，軌道燈光均勻撒在各面牆上，面對馬路的落地窗使經過的人們都忍不住多看幾眼，「希望路人看進來是一幅畫的感覺。」主理人如此說道。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/giFfr2o2vu2wyeCkCpHasujeV3yBEr3hQVNYFYNL.jpg', '10', 'Mu’s Cafe', '0423013987', '週一、週二、週三、週四、週五', '週六、週日', '台北市大安區杭州南路二段7-1號1樓', '北', '咖啡飲品、甜點輕食、藝文展演\n--\n木色藝文咖啡，是一個因音樂而生的空間。\n\n指揮家彭孟賢自2013年帶領木樓合唱團，帶領著這群充滿靈性的歌者一路邁步前行，屢屢在國際舞台獲獎，為台灣發聲。也帶著合唱團在全台各縣市留下精緻動人的合唱樂音。\n\n2021年，一群熱愛彭孟賢音樂與木樓合唱團歌聲的木樓之友們，聚集在一起，選在木樓合唱團的音樂排練場地之上，與彭老師一同成立了木色藝文咖啡，這群包含著企業主、會計師、建築師等，皆是熱愛藝文、合唱、聲樂與長期支持公益的朋友們，大家因為彭老師與木樓，相知相聚，共譜藝文新的面貌。\n\n為了提供香醇美好的咖啡，木色藝文咖啡引進於精品咖啡界執牛耳的湛盧咖啡，從原物料的選取，咖啡製作的技術，皆有著湛盧在背後給予專業的支持。\n\n木色藝文咖啡，希望提供每一個來此的朋友一個舒適放鬆的空間，享用一杯咖啡，聆聽一首歌曲，在喧囂的城市當中，與音樂藝文零距離的接觸。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/8sWus7FsLBKAOrSeaQf1QqUaH2fGN2PG7c6dg7Qw.jpg', '11', 'Re-Title Cafe\n', '034257661', '週一、週二、週三、週四、週五', '週六、週日', '桃園市中壢區愛國路60巷39號', '北', '取名Re-title，希望大家都能突破自我、不設限，並由自己重新定義自己。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/K0z8HEYrPoAg9zMzmibVHgAAg7NOPJG20j5702S1.jpg', '12', 'ㄧ站咖啡有限公司', '0225588163', '週一、週二、週三、週四、週五', '週六、週日', '臺北市中正區懷寧街82號1樓', '北', '「Perk & Cafe. 邊緣咖啡」為 Wealth Harbor 瑞誼資產管理所屬咖啡品牌，以提供優質的第三地空間為目標，融合咖啡館、辦公室與會議環境，適合各型態的自由工作者。 本店全年無休。不提供餐點、訂位服務。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/qoChiRdiut10irK3ZWuAyjP88p4wYGgY7AYAlVVb.jpg', '13', 'Co-Op by JK', '0226561616', '週一、週二、週三、週四、週五', '週六、週日', '臺北市內湖區陽光街365巷37-39號1F', '北', 'Co-Op by JK 提供多元美食與寬敞舒適的環境，為內科上班族與周邊居民提供社交場域，創造悠閒氛圍，並打開雲端餐廳的神秘面紗。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/store_13.png', '14', '百代茶集', '02 2556 5006', '週一、週三、週四', '週六、週日', '臺北市大同區迪化街一段72巷23號', '北', '＊撤布展若超時，1小時須支付$600逾時費用。\r\n＊預約此空間需審核作品。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/Iwi7uHpnm73PVvaWnMRW9QFAzCJTw8KERIqckT4l.png', '15', '日染樹梢 Sunnytreetop Cafe', '0928340287', '週一、週二、週四、週五', '週六、週日', '臺中市霧峰區中正路573-11號', '中', '☀日染樹梢\r\n讓大家輕鬆簡單了解傳統攝影，服務包含攝影材料販售，我們也提供咖啡點心，以及展演空間與藝術教學工作坊 ☺ ☺ ☺\r\n除了解決大家對於傳統銀鹽攝影的大小問題，也提供從攝影到其他藝術創作形式的交流平台，沒有侷限、也充滿許多可能！'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/6AERGlsEdji0o1qtjVBe548du7liZK8Qllcnv8JL.jpg', '16', 'Cun Siou Jia 村秀家 ベーカリ', '0225115270', '週一、週二、週三、週四、週五', '週六、週日', '臺北市大同區昌吉街4-1號1樓', '北', '此空間小而溫馨，因此不接受展出藝術家於空間放置「落地型花圈」等等，如有展出藝術家的朋友寄送花圈，需請藝術家額外支付給空間後續處理的相關費用。\r\n＊週一二不提供撤布展。\r\n＊預約此空間需審核作品。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/z5w5lW64Q2EB9NaLcFG1TqP9Llnh6IfdusEFUp6K.jpg', '17', '信二家廚 Shinji Living 濟南店', '0928274200', '週一、週二、週三、週四、週五', '週六、週日', '臺北市中正區濟南路二段62巷27號1樓', '北', '提供一個有美麗有效率的廚房，可以輕鬆放鬆的做菜，讓煮飯是細膩的療癒和溫暖的感受。\n＊建議展出小件作品，可展較多幅。\n＊看展需提前加入空間的官方Line做預約，需符合低消$200/一位（時間限制一小時）。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/I999UaJrNSWQTcEho8CbtloMCto5MbuiO3j8kFXp.jpg', '18', 'Laymoon cafe', '0225115270', '週一、週二、週三、週四、週五', '週六、週日', '臺北市中山區錦西街25號', '北', '-'),
('https://i.imgur.com/owsLT69.jpg', '19', 'Planter', '052771239', '週一、週二、週三、週五', '週六、週日', '台北市松山區民生東路三段113巷25弄47號1樓', '北', '以植物為元素，透過飲品、選物、活動等各種方式，推出各種實驗企畫，傳遞關於人、土地、五感與自然之間的關'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/VTGQ9R2EwYmFRgTImXhzOnxMuwqKflDcNTdgAuBk.jpg', '20', 'Cactus bar', '0958276680', '週一、週三、週四、週五', '週六、週日', '臺北市大安區大安路一段51巷9號', '北', 'Cactus Bar 城市裡的畫廊綠洲酒吧，在這忙碌又緊湊的都市中，能停下腳步休息，尋找那片屬於自己'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/MfRwvJt1vISPJqMspZubU4pdcTyy3PVTWsTTjtDZ.jpg', '21', ' ', '0226623838', '週一、週五', '週六、週日', '台北市大同區承德路一段77巷1號1樓', '北', '拾玖畝藝，創立於 2020 年 9 月。\r\n「拾玖畝廣的田地、蘊育純粹美好藝意境」\r\n希望讓喜愛美術、藝術的人都能有發展的機會跟空間，\r\n「藝術」來至於人對於歷史、社會、生命感受而產生的概念，\r\n除了學習判斷美的形象外，\r\n\r\n從中更能體會到自己思想的獨特性。\r\n\r\n\r\n展覽空間樓高約410(cm)，\r\n適合懸掛、垂墜類型作品使用，\r\n空間內有3面主牆可佈置，\r\n中間主牆面為雙面旋轉牆體，一面是凹面、另一面為平面，\r\n可以創作者需要而做使用，\r\n佈展以木工螺絲釘牆、黃黏土及3M掛勾背膠來做展覽佈置，\r\n撤展需使用補土修補牆面，修補材料須自行準備。'),
('https://upssmile.com/wp-content/uploads/2020/05/20200513-IMG_8797.jpg', '22', 'Winsing Art Place', '0226262847', '週一、週三、週四、週五', '週六、週日', '台北市內湖區民權東路六段180巷10弄6號', '北', '立足於內湖的文心藝所是一座以建築以及城市為主題的藝文空間，內部規劃為咖啡廳、工作坊以及書店三大空間。'),
('https://images.squarespace-cdn.com/content/v1/56a8d453ab2810eaf0135c0a/1597050249420-A80WHQOHAQTCK2F2PYQ4/%2B10-6-1.jpg?format=1500w', '23', 'Pon ding', '-', '週二、週三、週四、週五', '週六', '台北市中山區中山北路一段53巷6號', '北', '座落於中山北路的「朋丁」前身是一棟四十年的三層樓老宅，復古的磨石子地板與老花窗保留了懷舊氛圍。'),
('http://wordpress-for-venue-tw.s3.ap-northeast-1.amazonaws.com/wp-content/uploads/2021/12/10171249/1-1.jpg', '24', 'venue', '0423225108', '週一、週二、週三、週四、週五', '週六、週日', '台北市中山區林森北路107巷10號B1-5F', '北', '濕地｜venue 成立於 2015 年 12 月，創意實驗基地。\r\n\r\nSpace\r\n展覽/放映會/音樂演出/拍攝場景/課程講座/\r\n記者發表會/workshop/各式場地租借'),
('https://verse-static-1.azureedge.net/storage/app/media/uploaded-files/merci-urayama13.jpg', '25', 'merci', '-', '週一、週二、週三、週四、週五', '週六、週日', '台北市士林區平菁街112號', '北', '位於人煙稀少的陽明山深山的「Merci 裏山」為一處集結溫室、老物件以及餐飲的複合式療癒空間。'),
('', '', '', '', '', '', '', '', ''),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/pic_93.jpg', '26', 'BertuAesthetics 柏圖空間美學', '0422585291', '週一、週二、週三、週四、週五', '週六、週日', '臺中市西屯區惠中路二段68號', '中', '圓是循環無歇的形\n點是匯聚能量的圓\n柏圖空間美學\n是不斷更新創造\n匯聚生活美學最專業的團隊\n在這裡與你/妳\n共同創造有關“生活”的一切！\n為了提供您完善的接待服務，現場採 ❮ 預約制 ❯\n例假日訪客較多，務必提前來電或私訊預約參觀\n家具規劃 尺寸、材質、顏色均可客製化\n\n＊此空間預約需審核作品。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/NjVDEoVw4T4wA4w0IGhH4Mx0BO5sYCC4J96UFpET.jpg', '27', 'TAOU 叨', '0227326315', '週二、週三、週四、週五', '週六、週日', '臺北市大安區安和路二段171巷15號', '北', '取名自台語「家」的發音，原意在於打造一個如同家一般舒適的環境，並提供美味的餐點與飲品，療癒每位為生活努力的人們。\n＊此空間預約需審核作品。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/MiiXlIWC7I7j3ImS7TK75dbPjDZxPH6FWea0WbzG.jpg', '28', 'Fortune Coffee\r', '0968988028', '週一、週二、週三、週四、週五', '週六、週日', '臺北市松山區南京東路四段176號', '北', '咖啡廳'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/XpnohytOD85h4AZbdtx5WVwF6d9UtAlMrYlQotHp.jpg', '29', 'PM紅酒吧', '0227011311', '週二、週三、週四、週五', '週六', '臺北市大安區四維路14巷7號1樓', '北', '＊預約此空間需審核作品。\r\n＊盡量避免過於血腥、黑暗的作品風格。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/pic_84.jpg', '30', 'PUIS HAIR SALON', '0225140000', '週一、週二、週三、週四、週五', '週六、週日', '臺北市松山區復興北路313巷32號', '北', '突破以前美髮的文化和觀念，在各領域當中，都有不斷的創新以及精進，經過設計師專業時尚的設計之後，為頭髮賦予了新的生命，也為每個客人賦予了獨特的樣式與自信。超多KOL、網模們的指定愛店，像是TOMO、愛莉莎莎、可青、兔美、謝琦琦、葛盈瑄...，都是這裡的客人。\r\n\r\n許多人都非常盛讚這裡的髮型設計，能讓人煥然一新又非常有時髦感，不管是染髮還是剪髮都非常厲害！主理人為豐田先生，能幫大家打造出夢幻的髮型及髮色，喜歡日系、韓系髮型的女孩們來這裡報到準沒錯，髮廊空間也非常有型簡潔。\r\n\r\n店內還有一個非常厲害的咖啡甜點店（Zomi.cafe）進駐，因此客群也非常多元化哦！\r\n\r\n＊此空間預約需審核作品。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/vhoGo7PEbWm5uoBz0lg3zUUO61ej1p8lXJgLdysC.jpg', '31', 'SOOSI SPACE國泰忠明館', '0423725712', '週一、週二、週三、週四、週五', '-', '臺中市西區忠明南路497號1樓', '中', '「SOOSI SPACE」就是舒適啦！\n提供total space solution，以齊全的設施及服務，打造靈活舒適的工作空間\n一樓的休憩空間與咖啡商家KKC結合，提供各類講座與展覽場地租借服務'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/XsqgRnvz6gFt1nW26rU4eeLFWZbCsOK0zHYdCh7c.jpg', '32', 'The Cafe Deco', '0423765258', '週一、週二、週三、週四、週五', '週六、週日', '臺中市西區五權西路一段75號', '中', 'THECAFEDECO是由二個靈魂組合而成，經典傢居與精品咖啡的旅人放鬆與休憩的空間。\r\n＊作品希望以風格平靜、素雅為主。\r\n＊作品販售不抽成。\r\n＊預約成功藝術家，需提前至空間場刊，因空間時常更換擺設。\r\n\r\n＊預約此空間需審核作品。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/d3EtikjcbT04GzG6zXQ23Kxb1999GlNRdR4ykyBm.jpg', '33', 'Re-Title Cafe', '034257661', '週一、週二、週三、週四、週五', '週六、週日', '桃園市中壢區愛國路60巷39號', '北', '取名Re-title，希望大家都能突破自我、不設限，並由自己重新定義自己。\n＊預約此空間需審核作品。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/CJ7F33xSVR6a0IEC2yKZIGERXXtC9rbcHnRABiQ2.jpg', '34', 'Winnovation勝群多功能展館', '0424369588', '週二、週三、週四、週五', '週六', '臺中市北屯區建和路二段108號', '中', '＊此空間預約需經審核，另外收場租$10000/月，但作品售出不抽成。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/qQsqe6xslAe3yBGBFKsm2R7n0ZLzYbUkvEBwptCD.jpg', '35', '凡日 bread & meal', '0423013987', '週一、週二、週三、週四、週五', '週六、週日', '臺中市西區昇平街75號', '中', '＊徹佈展超過預定時間將酌收費用(1HR/$1000)\r\n＊預約此空間需審核作品。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/store_53.jpg', '36', '五零年代咖啡\r', '0955636910', '週一、週二、週三、週四、週五', '週六、週日', '高雄市鹽埕區大智路99號', '南', '＊撤布展若超時，1小時須支付$1000逾時費用。\r\n＊周邊作品販售不抽成。\r\n＊預約此空間需審核作品。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/store_61(3).jpg', '37', 'The Light x Coffee', '077276990', '週一、週二、週三、週四、週五', '週六、週日', '高雄市苓雅區建國一路137-5號', '南', '＊預約此空間需審核作品。\r\n＊盡量避免過於血腥、黑暗的作品風格。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/xs6H5nrKs2oHPdwheAnlofzxhobZpkNWMzgtzStx.jpg', '38', 'PAllSE 鉑司咖啡', '0989700936', '週一、週三、週四、週五', '週六、週日', '高雄市新興區大同一路119號', '南', '＊撤布展若超時，1小時須支付$1000逾時費用。\r\n＊預約此空間需審核作品。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/OeJ1GSWAC2CenJUbz038hp0XXZuRAeULYl2Ipvix.jpg', '39', '唯々tadatada Studio\r', '0956025045', '週一、週四、週五', '週六、週日', '臺南市中西區西門路一段703巷8-1號', '南', '位於台南市區中心，鄰近新光三越與藍曬圖園區。店內提供咖啡甜點、插畫選品、不定期展覽和課程活動，也歡迎各種活動（音樂表演、教學、脫口秀）租借場地。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/IePxbdg0wytXNdkyi98VX9b65dCRWYPVZO1K7xpu.jpg', '40', '臺南市私立仁仁森林幼兒園\r', '0933668702', '週一、週二、週三、週四、週五', '-', '臺南市安南區怡安路二段516巷188號', '南', '仁仁是位於台南市安南區的森林幼兒園，擁有1000坪的戶外自然空間以及400坪的室內幼兒教室，仁仁將走廊變成為親子互動藝術空間，平常作為幼兒作品的分享，有時也會邀請藝術家來展出，期望讓幼兒能有更優質的藝術欣賞機會及體驗。\n＊預約此空間不會扣除展覽次數。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/store_51.jpg', '41', '白兔美術社', '0938566178', '週二、週三、週四、週五', '週六、週日', '臺南市東區台南市東區勝利路83號2樓', '南', '台南昭和風喫茶店\n店內主打一期一會的雙週限定甘味甜點，讓你每次拜訪都有不同的驚豔，以及由專業日本酒唎酒師老闆娘監製，可搭配日本清酒與使用清酒製作甜點等待你前來細細品嚐。\n＊預約此空間需審核作品。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/6zfWaCZWjJFHhv290fgGoxAIAhcM8cZqvOAnFJ32.jpg', '42', 'FUNHOUSE設計家居生活', '062612608', '週一、週二、週三、週四、週五', '週六', '臺南市南區興昌路7號1樓', '南', '原裝傢俱家居選品店\r\n＊預約此空間需審核作品'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/rfAL1ezE8lBnS5TcVDjFBf2JGqKz1mGBTtX0mvt5.jpg', '43', '一家咖啡1+Coffee & Art\r', '062228742', '週一、週二、週四、週五', '週六、週日', '臺南市中西區武英街6巷11號', '南', '「在生命裡每個人都是一個獨立個體，而人生就像一場旅行，在旅途中與他人相遇相識。」1+ coffee & art\r\n\r\n2018年創立於台南巷弄社區中。\r\n透過咖啡館，將喜愛的咖啡、藝術、攝影分享給各位，\r\n並用一杯咖啡、甜點，成為我們的日常生活聯繫。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/store_63(2).jpg', '44', 'Evie’s Café 伊米咖啡', '052771239', '週一、週二、週三、週五', '週六、週日', '嘉義市東區共和路418號', '南', '位於嘉義市，阿里山腳下的森林系咖啡館。\n提供專業烘焙的咖啡豆，專業手沖咖啡、義式咖啡、冰滴咖啡等，以及各式手作甜點。\n有提供宅配寄送咖啡豆與掛耳包、甜點'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/vdyKJNhac9jf1TL0kiUwpDOGNDmHlUQ3XnXRYo13.jpg', '45', 'Petrichor 語續咖啡\r', '0958276680', '週一、週三、週四、週五', '週六、週日', '新竹市東區新莊街180巷22號', '北', '由老屋翻修而成的森林感咖啡廳，希望在忙碌的城市中，讓人有誤闖一片綠意而放慢腳步、用心體驗生活的感覺。希望可以和各種藝術家合作，豐富進到店裡的人們的一個下午。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/LdXxtH5ZsO9yj9LLEB38hn1IeVTutBaRCg9omfVA.jpg', '46', 'Arc cafe\n', '0226623838', '週一、週五', '週六、週日', '新北市深坑區文山路二段126號', '北', '「Arc」是弧形的意思， 我們的建築以簡化的幾何圖形與材料突顯簡樸質感，\r\n效法安藤忠雄的極簡美學。 整體色彩是單純的混凝土原色，\r\n呈現的是純淨、挑高的空間，彰顯生命的更多可能性， 希望提供深坑一個享受咖啡、食物並能與自然、藝術對話的地方。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/ZskS4Dw6Ee0t4ZAdVayPbsHAU6wHbbIEOcFfJbzp.jpg', '47', '藏室 Hidden Burger\r', '0226262847', '週一、週三、週四、週五', '週六、週日', '新北市淡水區英專路79巷27號', '北', '-'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/SJtVQRYF5KCvv7HwZOOIzkvllhkQKPTa9DJ2XTOn.jpg', '48', '浮島日常\r', '-', '週二、週三、週四、週五', '週六', '新北市板橋區大觀路一段77號', '北', '位於台灣藝術大學旁，淺淺的湳仔溝劃過城市左半邊土地，好似將浮洲從板橋獨立出來。不定期舉辦展覽、講座課程、展演活動；提供無菜單料理，咖啡飲品與手作烘焙，選物及二手市集。https://fuzhoudaily77.blogspot.com/'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/store_37.jpg', '49', 'PI Restaurant\r', '0423225108', '週一、週二、週三、週四、週五', '週六、週日', '臺中市南屯區大進街373號1樓', '中', '＊撤布展若超時，1小時須支付$1000逾時費用。\r\n＊預約此空間需審核作品。'),
('http://d1mx28kcjd3hff.cloudfront.net/tba-shop/3b7RjK76xVVxh5POSMiM2UnoW0oDReEQkDVICOXf.jpg', '50', '藝森美術畫室\r', '-', '週一、週二、週三、週四、週五', '週六、週日', '臺中市大里區永隆一街88號\r', '中', '「藝森」創立於2019年。\r\n整體展覽空間為挑高設計\r\n適合懸掛、垂墜類型作品使用\r\n空間內有4面牆、B側牆可擺動\r\n均有軌道可懸掛佈置。');

-- --------------------------------------------------------

--
-- 資料表結構 `spacees`
--

CREATE TABLE `spacees` (
  `space_id` int(10) UNSIGNED NOT NULL,
  `space_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(6) NOT NULL,
  `space_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `space_images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `space_introduction` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `space_tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `space_area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `space_week` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `spacees`
--

INSERT INTO `spacees` (`space_id`, `space_name`, `category_id`, `space_address`, `space_images`, `space_introduction`, `space_tel`, `space_area`, `space_week`) VALUES
(1, '1771 Studio', 1, '桃園市大園區環區南路71號', '1.jpg', '1771studio 以設計背景為出發，與各路藝術創作者合作，讓藝術更有效率地被傳達。 用不同的角度', '', '', ''),
(2, 'Chateau zoe', 1, '臺北市信義區逸仙路32巷7號1樓', '2.jpg', '榮獲2020＆2021米其林餐盤推薦，輕鬆舒適的西式創意料理餐廳，有豐富的酒藏與酒窖出租，附設包廂。', '', '', ''),
(3, 'MealRoom', 1, '臺北市大安區延吉街66-1號', '3.jpg', '整體空間以明亮的燈光與昏暗的區域做光亮視覺融合，結合裝潢設計與音樂設計，營造出品牌Chill為導向的', '', '', ''),
(4, 'Arc cafe', 1, '新北市深坑區文山路二段126號', '4.jpg', '「Arc」是弧形的意思， 我們的建築以簡化的幾何圖形與材料突顯簡樸質感， 效法安藤忠雄的極簡美學。 ', '', '', ''),
(5, 'Otherside.Taipei', 1, '臺北市信義區松德路12之1號', '5.jpg', '結合藝術及娛樂的空間，提供水煙、調酒、餐點的服務，另外有四個電子畫框可提供配合藝術家展覽。', '', '', ''),
(6, 'SOOSI SPACE', 2, '臺中市西區忠明南路497號1樓', '6.jpg', '「SOOSI SPACE」就是舒適啦！ 提供total space solution，以齊全的設施及', '', '', ''),
(7, 'tadatada Studio', 2, '臺南市中西區西門路一段703巷8-1號', '7.jpg', '位於台南市區中心，鄰近新光三越與藍曬圖園區。店內提供咖啡甜點、插畫選品、不定期展覽和課程活動', '', '', ''),
(8, 'PAllSE', 2, '高雄市新興區大同一路119號', '8.jpg', 'Time to pause, then keep going', '', '', ''),
(9, 'Art Vibe Gallery/ Wine & Cafe', 1, '臺北市大安區和平東路二段76巷17弄2號', '9.jpg', '藝術品風格偏好：當代・普普・古典・複合媒材皆可。', '', '', ''),
(10, 'Mu’s Cafe', 1, '台北市大安區杭州南路二段7-1號1樓', '10.jpg', '木色藝文咖啡，是一個因音樂而生的空間。木色藝文咖啡，希望提供每一個來此的朋友一個舒適放鬆的空間，享用', '', '', ''),
(11, 'Evie’s Café', 1, '嘉義市東區共和路418號', '11.jpg', '位於嘉義市，阿里山腳下的森林系咖啡館。 提供專業烘焙的咖啡豆，專業手沖咖啡、義式咖啡、冰滴咖啡等，以', '', '', ''),
(12, 'Heritage Bakery & Cafe', 1, '臺北市中正區漢口街一段73-2號', '12.png', 'Heritage Bakery & Cafe 是以美式的生活姿態為啟發點， 透過店內的氛圍，服務與看', '', '', ''),
(13, 'BertuAesthetics', 2, '臺中市西屯區惠中路二段68號', '13.jpg', '圓是循環無歇的形 點是匯聚能量的圓 柏圖空間美學 是不斷更新創造 匯聚生活美學最專業的團隊 在這裡與', '', '', ''),
(14, 'Re-Title Cafe', 1, '桃園市中壢區愛國路60巷39號', '14.jpg', '取名Re-title，希望大家都能突破自我、不設限，並由自己重新定義自己。', '', '', ''),
(15, 'Sunnytreetop Cafe', 2, '臺中市霧峰區中正路573-11號', '15.png', '讓大家輕鬆簡單了解傳統攝影，服務包含攝影材料販售，我們也提供咖啡點心，以及展演空間與藝術教學工作坊', '', '', ''),
(16, 'SHENG SHENG SPACE', 1, '臺北市大安區仁愛路三段123巷11弄16號', '16.jpg', '［生生］，指萬物處於永恆的變化、新生事物的發生。 生命當下即是美好，生命的燦爛不只是綻放的那一刻，循', '', '', ''),
(17, 'TAOU', 1, '臺北市大安區安和路二段171巷15號', '17.jpg', '取名自台語「家」的發音，原意在於打造一個如同家一般舒適的環境，並提供美味的餐點與飲品，療癒每位為生活', '', '', ''),
(18, 'Petrichor', 2, '新竹市東區新莊街180巷22號', '18.jpg', '由老屋翻修而成的森林感咖啡廳，希望在忙碌的城市中，讓人有誤闖一片綠意而放慢腳步、用心體驗生活的感覺。', '', '', ''),
(19, 'Planter', 1, '台北市松山區民生東路三段113巷25弄47號1樓', '19.jpg', '以植物為元素，透過飲品、選物、活動等各種方式，推出各種實驗企畫，傳遞關於人、土地、五感與自然之間的關', '', '', ''),
(20, 'Cactus bar', 1, '臺北市大安區大安路一段51巷9號', '20.jpg', 'Cactus Bar 城市裡的畫廊綠洲酒吧，在這忙碌又緊湊的都市中，能停下腳步休息，尋找那片屬於自己', '', '', ''),
(21, 'shihchiu art studio', 1, '台北市大同區承德路一段77巷1號1樓', '21.jpg', '拾玖畝藝，創立於 2020 年 9 月。 「拾玖畝廣的田地、蘊育純粹美好藝意境」 希望讓喜愛美術、藝', '', '', ''),
(22, 'Winsing Art Place', 1, '台北市內湖區民權東路六段180巷10弄6號', '22.jpg', '立足於內湖的文心藝所是一座以建築以及城市為主題的藝文空間，內部規劃為咖啡廳、工作坊以及書店三大空間。', '', '', ''),
(23, 'Pon ding', 1, '台北市中山區中山北路一段53巷6號', '23.jpg', '座落於中山北路的「朋丁」前身是一棟四十年的三層樓老宅，復古的磨石子地板與老花窗保留了懷舊氛圍。', '', '', ''),
(24, 'venue', 1, '台北市中山區林森北路107巷10號B1-5F', '24.jpg', '位於林森北路上的創意實驗基地「濕地 venue」成立於2015年，由月球大飯店老舊建築改建而成，並以', '', '', ''),
(25, 'merci', 1, '台北市士林區平菁街112號', '25.jpg', '位於人煙稀少的陽明山深山的「Merci 裏山」為一處集結溫室、老物件以及餐飲的複合式療癒空間。', '', '', ''),
(26, 'CEO 1950', 1, '台北市中山區新生北路三段62巷24號', '26.jpg', '隱身於中山國小站老宅區的「CEO 1950 總裁藝文空間」前身為央行前總裁徐柏園的私人宅邸，經歷70', '', '', ''),
(27, 'PLAYground', 1, '台北市信義區松勤街56 號', '27.jpg', '位於四四南村裡的文化實驗基地「PLAYground 南村劇場·青鳥·有.設計」，為一處表演藝術迷打造', '', '', ''),
(28, 'MAD by Le Kief MSC', 1, '臺北市大安區愛國東路 3 號', '28.jpeg', 'MAD by Le Kief MSC位於中正紀念堂附近，前身為「原刑務所官舍-愛國東路3號」，日治時', '', '', ''),
(29, 'ISland', 1, '台北市大安區青田街6巷10號1樓', '29.jpg', '建築內共分為三層樓，一樓空間內展示許多來自台灣創作者的作品，包含包包、飾品、蠟燭、器皿等，無論是想選', '', '', ''),
(30, 'sunsun-museum', 1, '台北市中山區龍江路45巷18號1樓', '30.jpg', '走進室內，便能見到以日本Jazz Kissaten的爵士喫茶區，深褐實木吧台搭配後方如紅砂岩質感的壁', '', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(6) UNSIGNED NOT NULL,
  `account` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `valid` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `account`, `password`, `name`, `phone`, `email`, `created_at`, `valid`) VALUES
(1, 'john', '827ccb0eea8a706c4c34a16891f84e7b', 'John', '091234567', 'john@example.com', '2022-10-21 15:00:00', 1),
(2, 'may', '827ccb0eea8a706c4c34a16891f84e7b', 'May', '0912345678', 'may@gmail.com', '2022-10-21 15:09:00', 1),
(3, 'joe', '827ccb0eea8a706c4c34a16891f84e7b', 'Joe', '0934651524\n', 'joe@test.com', '2022-10-21 15:52:45', 1),
(4, 'sarch', '827ccb0eea8a706c4c34a16891f84e7b', 'Sarch', '0937113468', 'sarch@gamil.com', '2022-10-21 15:59:56', 1),
(5, 'sue', '827ccb0eea8a706c4c34a16891f84e7b', 'Sue', '0963662973', 'sue@test.com', '2022-10-21 16:03:28', 1),
(6, 'Tony', '827ccb0eea8a706c4c34a16891f84e7b', 'Tony', '0931046439', 'tony@test.com', '2022-10-21 16:05:35', 1),
(7, 'james', '827ccb0eea8a706c4c34a16891f84e7b', 'James', '09131111111', 'james@test.com', '2022-10-24 09:45:02', 1),
(8, 'tom', '827ccb0eea8a706c4c34a16891f84e7b', 'Tom', '0929445746', 'tom@test.com', '2022-10-24 14:17:10', 1),
(9, 'jessie', '827ccb0eea8a706c4c34a16891f84e7b', 'Jessie', '0918117898', 'jessie@test.com', '2022-10-24 14:17:52', 1),
(10, 'Julia', '827ccb0eea8a706c4c34a16891f84e7b', 'Julia', '0986012913', 'Julia@test.com', '2022-10-24 14:26:36', 1),
(11, 'curry', '827ccb0eea8a706c4c34a16891f84e7b', 'Curry', '0916148362', 'curry@test.com', '2022-10-24 14:28:22', 1),
(12, 'jason', '827ccb0eea8a706c4c34a16891f84e7b', 'Jason', '0982356642', 'jason@test.com', '2022-10-24 16:06:19', 1),
(13, 'rock', '827ccb0eea8a706c4c34a16891f84e7b', 'Rock', '0917427898\n', 'rock@test.com', '2022-10-25 09:18:19', 1),
(14, 'peter', '827ccb0eea8a706c4c34a16891f84e7b', 'Peter', '0933555444', 'prter@test.com', '2022-10-25 09:20:56', 1),
(15, 'bruce', '827ccb0eea8a706c4c34a16891f84e7b', 'Bruce', '0934546154', 'bruce@test.com', '2022-10-25 09:26:56', 1),
(16, 'Ada', '827ccb0eea8a706c4c34a16891f84e7b', 'Ada', '0952870299', 'Ada@test.com', '2022-10-31 11:59:35', 1),
(17, 'Aaliyah', '827ccb0eea8a706c4c34a16891f84e7b', 'Aaliyah', '0982922850', 'Aaliyah@test.com', '2022-10-31 12:06:45', 1),
(18, 'Cara', '827ccb0eea8a706c4c34a16891f84e7b', 'Cara', '0938911584', 'Cara@test.com', '2022-10-31 12:09:37', 1),
(19, 'Chloe', '827ccb0eea8a706c4c34a16891f84e7b', 'Chloe', '0989337496', 'Chloe@test.com', '2022-10-31 12:13:02', 1),
(20, 'Debby', '827ccb0eea8a706c4c34a16891f84e7b', 'Debby', '0920311845', 'Debby@test.com', '2022-11-01 16:36:23', 1),
(21, 'Gail', '827ccb0eea8a706c4c34a16891f84e7b', 'Gail', '0934216476', 'Gail@test.com', '2022-11-01 16:36:40', 1),
(22, 'Grace	', '827ccb0eea8a706c4c34a16891f84e7b', 'Grace', '0913939424', 'Grace@test.com', '2022-11-01 16:36:48', 1),
(23, 'Irene', '827ccb0eea8a706c4c34a16891f84e7b', 'Irene', '0958944892', 'Irene@test.com', '2022-11-01 16:37:03', 1),
(24, 'Jenny', '827ccb0eea8a706c4c34a16891f84e7b', 'Jenny', '0932273961', 'Jenny@test.com', '2022-11-01 16:37:15', 1),
(25, 'Josephine', '827ccb0eea8a706c4c34a16891f84e7b', 'Josephine', '0931057539', 'Josephine@test.com', '2022-11-01 16:37:23', 1),
(26, 'leoleo', '827ccb0eea8a706c4c34a16891f84e7b', 'leo', '0900000000', 'leo@test.com', '2022-11-07 10:35:55', 1),
(27, 'maya123', '827ccb0eea8a706c4c34a16891f84e7b', 'maya', '0900000000', 'maya@test.com', '2022-11-07 10:37:36', 1),
(28, 'big123', 'e10adc3949ba59abbe56e057f20f883e', 'SAKA1234', '0912123125', 'SAKA@test.com', '2022-11-10 16:37:24', 1),
(29, 'yoman', '827ccb0eea8a706c4c34a16891f84e7b', 'yoman', '0936100100', 'yoman@test.com', '2022-11-14 12:29:14', 1),
(30, 'yoman2', '827ccb0eea8a706c4c34a16891f84e7b', 'yoman2', '0931057531', 'yoman2@test.com', '2022-11-14 12:29:34', 1),
(31, 'yoman3', '827ccb0eea8a706c4c34a16891f84e7b', 'yoman3', '0931057532', 'yoman3@test.com', '2022-11-14 12:32:38', 1),
(32, 'Niko', '', 'Niko', '0910222554', 'Niko@test.com', '2022-11-14 12:37:57', 1),
(33, 'koki', '827ccb0eea8a706c4c34a16891f84e7b', 'koki', '0912123123', 'koki@test.com', '2022-11-14 13:44:23', 1),
(34, 'somi', 'e10adc3949ba59abbe56e057f20f883e', 'somiii', '0912123129', 'somi@test.com', '2022-11-14 13:45:47', 0),
(35, '', '', 'somii', '0912123129', 'somi@test.com', '2022-11-14 13:47:06', 0),
(36, '', '', 'somi', '0912123129', 'somi@test.com', '2022-11-14 13:47:33', 0),
(37, '', '', 'somii', '0912123129', 'somi@test.com', '2022-11-14 13:50:36', 0),
(38, 'Moni', '', 'Moni', '0912123456', 'Moni@test.com', '2022-11-14 16:13:08', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `user_order`
--

CREATE TABLE `user_order` (
  `order_id` int(6) UNSIGNED NOT NULL,
  `product_id` int(4) NOT NULL,
  `user_id` int(6) NOT NULL,
  `amount` int(4) NOT NULL,
  `order_date` date NOT NULL,
  `payment` varchar(50) NOT NULL,
  `send_address` varchar(255) NOT NULL,
  `order_status` int(5) NOT NULL,
  `order_valid` tinyint(1) NOT NULL,
  `order_list` varchar(255) NOT NULL,
  `pirce` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `user_order`
--

INSERT INTO `user_order` (`order_id`, `product_id`, `user_id`, `amount`, `order_date`, `payment`, `send_address`, `order_status`, `order_valid`, `order_list`, `pirce`, `total`) VALUES
(1, 5, 3, 1, '2022-11-03', 'LinePay', '248 新北市五股區新城五路22號', 1, 1, '', '', ''),
(2, 2, 4, 3, '2022-11-04', 'LinePay', '508 彰化縣和美鎮忠孝路8號', 2, 1, '', '', ''),
(3, 7, 6, 2, '2022-11-01', 'LinePay', '320 桃園市中壢區長春三路3號', 3, 1, '', '', ''),
(4, 8, 9, 1, '2022-11-02', 'LinePay', '880 澎湖縣馬公市吉海路6號', 1, 1, '', '', ''),
(5, 6, 1, 4, '2022-10-27', 'LinePay', '100 臺北市中正區惠安街8號', 1, 1, '', '', ''),
(6, 10, 12, 1, '2022-10-28', 'LinePay', '421 臺中市后里區南村路33號', 1, 1, '', '', ''),
(7, 1, 8, 1, '2022-11-03', 'LinePay', '973 花蓮縣吉安鄉仁里四街26號', 1, 1, '', '', ''),
(8, 9, 7, 1, '2022-11-02', 'LinePay', '302 新竹縣竹北市復興五街3號', 1, 1, '', '', ''),
(9, 3, 2, 3, '2022-11-04', 'LinePay', '557 南投縣竹山鎮溪山路9號', 2, 1, '', '', ''),
(10, 4, 5, 2, '2022-11-02', 'LinePay', '955 臺東縣鹿野鄉水源路22號', 3, 1, '', '', ''),
(11, 20, 15, 1, '2022-11-10', 'LinePay', '406 臺中市北屯區太祥東街3號', 2, 1, '', '', ''),
(12, 26, 17, 1, '2022-11-10', 'LinePay', '270 宜蘭縣蘇澳鎮德興七路4號', 1, 1, '', '', ''),
(13, 39, 19, 2, '2022-11-09', 'LinePay', '404 臺中市北區忠太東路1號', 1, 1, '', '', ''),
(14, 45, 14, 1, '2022-11-09', 'LinePay', '806 高雄市前鎮區興順街7號', 1, 1, '', '', ''),
(15, 54, 13, 1, '2022-11-10', 'LinePay', '433 臺中市沙鹿區七賢路22號', 1, 1, '', '', ''),
(16, 66, 12, 1, '2022-11-10', 'LinePay', '507 彰化縣線西鄉塭仔路33號', 2, 1, '', '', ''),
(17, 69, 16, 1, '2022-11-09', 'LinePay', '802 高雄市苓雅區家齊路2號', 3, 1, '', '', ''),
(18, 77, 20, 1, '2022-11-10', 'LinePay', '712 臺南市新化區民治路2號', 1, 1, '', '', ''),
(19, 80, 18, 1, '2022-11-10', 'LinePay', '710 臺南市永康區中灣一街2號', 1, 1, '', '', ''),
(20, 88, 22, 1, '2022-11-10', 'LinePay', '324 桃園市平鎮區游泳路24號', 1, 1, '', '', '');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `marketing`
--
ALTER TABLE `marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- 資料表索引 `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- 資料表索引 `spacees`
--
ALTER TABLE `spacees`
  ADD PRIMARY KEY (`space_id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- 資料表索引 `user_order`
--
ALTER TABLE `user_order`
  ADD PRIMARY KEY (`order_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `marketing`
--
ALTER TABLE `marketing`
  MODIFY `marketing_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `spacees`
--
ALTER TABLE `spacees`
  MODIFY `space_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user_order`
--
ALTER TABLE `user_order`
  MODIFY `order_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
