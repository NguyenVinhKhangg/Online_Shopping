-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 20, 2023 lúc 11:22 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `wish`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `uID` int(11) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `isSell` int(11) DEFAULT 0,
  `isAdmin` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`uID`, `user`, `pass`, `isSell`, `isAdmin`) VALUES
(1, 'Adam', '123456', 1, 0),
(2, 'Anjolie', 'SNZ6HE', 0, 1),
(3, 'Ferris', 'RXH3XJ', 0, 1),
(4, 'Katell', 'HWV8ZN', 0, 0),
(5, 'Zahir', 'NPX7OF', 1, 0),
(6, 'Conan', 'WIZ5VZ', 1, 0),
(7, 'Cade', 'ZSW2LU', 1, 0),
(8, 'Micah', 'RVV5SR', 0, 0),
(9, 'Rowan', 'VAI6XR', 1, 1),
(10, 'Kirby', 'DNX6JK', 1, 0),
(11, 'Tanisha', 'XWU7JP', 0, 0),
(12, 'hh', 'a', 0, 0),
(13, 'tien', '123', 0, 0),
(14, 'kien', 'c4ca4238a0b923820dcc509a6f75849b', 0, 0),
(15, 'dd', '1aabac6d068eef6a7bad3fdf50a05cc8', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `STT` int(11) NOT NULL,
  `AccountID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`STT`, `AccountID`, `ProductID`, `Amount`) VALUES
(4, 5, 2, 2),
(5, 5, 22, 1),
(6, 6, 4, 5),
(7, 6, 5, 1),
(8, 9, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `cname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`cid`, `cname`) VALUES
(0, 'Monster Card'),
(1, 'Spell Card'),
(2, 'Trap Card');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `img` varchar(250) NOT NULL,
  `title` varchar(2500) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(2500) NOT NULL,
  `category` int(11) NOT NULL,
  `sell_ID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `img`, `title`, `price`, `description`, `category`, `sell_ID`, `Quantity`) VALUES
(1, 'Odd-Eyes Rebellion Xyz Dragon', 'https://ms.yugipedia.com//thumb/2/28/OddEyesRebellionXyzDragon-BLMR-EN-UR-1E.png/300px-OddEyesRebellionXyzDragon-BLMR-EN-UR-1E.png', '[ Dragon / Xyz / Pendulum / Effect ]\r\n', 28, '[Pendulum Effect]\r\nDuring your Main Phase: You can Special Summon this card, then you can attach 1 DARK monster from your GY to this card as material. You can only use this effect of \"Odd-Eyes Rebellion Xyz Dragon\" once per turn.\r\n[Monster Effect]\r\n2 Level 7 Pendulum Monsters\r\nIf you can Pendulum Summon Level 7, you can Pendulum Summon this face-up card from your Extra Deck. This card cannot be used as material for an Xyz Summon the turn it was Xyz Summoned. You can detach 1 material from this card, then target up to 2 monsters your opponent controls with 3000 or less ATK; destroy them. You can only use this effect of \"Odd-Eyes Rebellion Xyz Dragon\" once per turn. If this card in the Monster Zone is destroyed: You can place this card in your Pendulum Zone.\r\nATK/ 3000 DEF/ 2500', 0, 1, 3),
(2, 'Odd-Eyes Rebellion Dragon Overlord', 'https://ygovietnamcdn.azureedge.net/storage/Card/98452268.jpg', '[ Dragon / Xyz / Pendulum / Effect ]', 44, '[ Pendulum Effect ] Once per turn: You can Special Summon this card from your Pendulum Zone, then Special Summon from your Extra Deck, 1 \"Rebellion\" or \"The Phantom Knights\" monster, using this card as material (this is treated as an Xyz Summon), then you can attach 1 card from your Pendulum Zone to it as material.\r\n[ Monster Effect ] 2 Level 7 monsters\r\nYou can also Xyz Summon this card by using a \"Rebellion\" Xyz Monster you control as material. (Transfer its materials to this card.) If you can Pendulum Summon Level 7, you can Pendulum Summon this face-up card from your Extra Deck. This card that was Xyz Summoned using a Rank 7 Xyz Monster as material can make up to 3 attacks during each Battle Phase. If this card in the Monster Zone is destroyed: You can place this card in your Pendulum Zone. You can only Special Summon \"Odd-Eyes Rebellion Dragon Overlord(s)\" once per turn.\r\nATK/ 3000 DEF/ 2500', 0, 5, 5),
(3, 'Odd-Eyes Raging Dragon', 'https://ygovietnamcdn.azureedge.net/storage/Card/86238081.jpg', '[ Dragon / Xyz / Pendulum / Effect ]', 55, '[ Pendulum Effect ]\r\nOnce per turn, if you have no cards in your other Pendulum Zone: You can place 1 Pendulum Monster from your Deck in your Pendulum Zone.\r\n[ Monster Effect ]\r\n2 Level 7 Dragon-Type monsters\r\nIf you can Pendulum Summon Level 7, you can Pendulum Summon this face-up card in your Extra Deck. If this card in the Monster Zone is destroyed: You can place it in your Pendulum Zone. If this card is Xyz Summoned using an Xyz Monster as Material, it gains these effects.\r\n● It can make a second attack during each Battle Phase.\r\n● Once per turn: You can detach 1 Xyz Material from this card; destroy as many cards your opponent controls as possible, and if you do, this card gains 200 ATK for each, until the end of this turn.\r\nATK/ 3000 DEF/ 2500', 0, 1, 0),
(4, 'Odd-Eyes Absolute Dragon', 'https://ygovietnamcdn.azureedge.net/storage/Card/16691074.jpg', '[ Dragon / Xyz / Effect ]', 555, '2 Level 7 monsters\r\nWhen any player\'s monster declares an attack: You can detach 1 material from this card; negate the attack, then you can Special Summon 1 \"Odd-Eyes\" monster from your hand or GY. If this Xyz Summoned card is sent to the GY: You can Special Summon 1 \"Odd-Eyes\" monster from your Extra Deck, except \"Odd-Eyes Absolute Dragon\". You can only use each effect of \"Odd-Eyes Absolute Dragon\" once per turn.\r\nATK/ 2800 DEF/ 2500', 0, 6, 3),
(5, 'Spiral Flame Strike', 'https://ygovietnamcdn.azureedge.net/storage/Card/82768499.jpg', 'Spell Normal\r\n', 44, 'Activate 1 of these effects;\r\n● If you control an \"Odd-Eyes\" card: Target 1 card on the field; destroy it.\r\n● Add to your hand, 1 Level 7 \"Odd-Eyes\" monster from your Deck, or 1 face-up Level 7 \"Odd-Eyes\" Pendulum Monster from your Extra Deck.', 1, 6, 9),
(6, 'Odd-Eyes Fusion', 'https://ygovietnamcdn.azureedge.net/storage/Card/48144509.jpg', 'Spell Normal', 33, 'Fusion Summon 1 Dragon Fusion Monster from your Extra Deck, using monsters from your hand or field as Fusion Materials. If your opponent controls 2 or more monsters and you control no monsters, you can also use up to 2 \"Odd-Eyes\" monsters in your Extra Deck as Fusion Materials. You can only activate 1 \"Odd-Eyes Fusion\" per turn.', 1, 7, 4),
(7, 'Odd-Eyes Vortex Dragon', 'https://ygovietnamcdn.azureedge.net/storage/Card/53262004.jpg', '[ Dragon / Fusion / Effect ]', 44, '1 \"Odd-Eyes\" monster + 1 Pendulum Monster\r\nWhen this card is Special Summoned: You can target 1 opponent\'s face-up Attack Position monster; return it to the hand. When a Spell/Trap Card or another monster\'s effect is activated (Quick Effect): You can shuffle 1 face-up Pendulum Monster from your Extra Deck into the Deck, negate the activation, and if you do, destroy that card. You can only use each effect of \"Odd-Eyes Vortex Dragon\" once per turn.\r\nATK/ 2500 DEF/ 3000', 0, 6, 7),
(20, 'Pendulum Hole', 'https://ygovietnamcdn.azureedge.net/storage/Card/68477598.jpg', 'Trap Counter', 44, 'When a monster(s) would be Pendulum Summoned: Negate the Pendulum Summon, and if you do, shuffle that monster(s) into the Deck.', 2, 2, 2),
(22, 'Pendulum Reborn', 'https://ygovietnamcdn.azureedge.net/storage/Card/77826734.jpg', 'Trap Normal\r\n', 1, 'Special Summon 1 face-up Pendulum Monster from your Extra Deck, or 1 Pendulum Monster from your GY.', 2, 5, 5),
(30, 'Astrograph Sorcerer', 'https://ygovietnamcdn.azureedge.net/storage/Card/76794549.jpg', '[ Spellcaster / Pendulum / Effect ]', 33, '[ Pendulum Effect ]\r\nDuring your Main Phase: You can destroy this card, and if you do, take 1 \"Stargazer Magician\" from your hand or Deck, and either place it in your Pendulum Zone or Special Summon it. You can only use this effect of \"Astrograph Sorcerer\" once per turn.\r\n[ Monster Effect ]\r\nIf a card(s) you control is destroyed by battle or card effect: You can Special Summon this card from your hand, then you can choose 1 monster in the Graveyard, Extra Deck, or that is banished, and that was destroyed this turn, and add 1 monster with the same name from your Deck to your hand. You can banish this card you control, plus 4 monsters from your hand, field, and/or Graveyard (1 each with \"Pendulum Dragon\", \"Xyz Dragon\", \"Synchro Dragon\", and \"Fusion Dragon\" in their names); Special Summon 1 \"Supreme King Z-ARC\" from your Extra Deck. (This is treated as a Fusion Summon.)\r\nATK/ 2500 DEF/ 2000', 0, 7, 3),
(45, 'Amazoness Hot Spring', 'https://ygovietnamcdn.azureedge.net/storage/Card/62480168.jpg', 'Trap Continuous', 5, 'When this card is activated: You can add 1 \"Amazoness\" monster to your hand, or place 1 \"Amazoness\" Pendulum Monster in your Pendulum Zone, from your Deck. When you take battle damage while you control an \"Amazoness\" Monster Card: You can gain LP equal to the damage you took. You can only use this effect of \"Amazoness Hot Spring\" once per turn.', 2, 7, 3),
(46, 'Odd-Eyes Rebellion Dragon', 'https://s3.duellinksmeta.com/cards/60c2b3aba0e24f2d54a52f41_w360.webp', '[ Dragon / Xyz / Pendulum / Effect ]', 29, '[ Pendulum Effect ]\r\nOnce per turn, if you have no cards in your other Pendulum Zone: You can place 1 Pendulum Monster from your Deck in your Pendulum Zone.\r\n[ Monster Effect ]\r\n2 Level 7 Dragon-Type monsters\r\nIf you can Pendulum Summon Level 7, you can Pendulum Summon this face-up card in your Extra Deck. If this card is Xyz Summoned by using an Xyz Monster as a Material: Destroy as many Level 7 or lower monsters your opponent controls as possible, inflict 1000 damage to your opponent for each card destroyed, and if you do, this card can make 3 attacks during each Battle Phase this turn. If this card in the Monster Zone is destroyed by battle or card effect: You can destroy as many cards in your Pendulum Zones as possible (min. 1), and if you do, place this card in your Pendulum Zone.\r\nATK/ 3000 DEF/ 2500', 0, 1, 10),
(48, 'Agido the Ancient Sentinel', 'https://ygovietnamcdn.azureedge.net/storage/Card/62320425.jpg', '[ Fairy / Effect ]', 0, 'If a card(s) is sent from the hand or Deck to your opponent\'s GY (except during the Damage Step): You can Special Summon this card from your hand, then you can Special Summon 1 Level 4 EARTH Fairy monster from your GY, except \"Agido the Ancient Sentinel\". If this card is sent from the hand or Deck to the GY: You can activate this effect; each player sends the top 5 cards of their Deck to the GY (or their entire Deck, if less than 5), then, if \"Exchange of the Spirit\" is in your GY, you can send 5 more cards from the top of either player\'s Deck to the GY. You can only use each effect of \"Agido the Ancient Sentinel\" once per turn.', 0, 1, 3),
(49, 'Odd-Eyes Pendulumgraph Dragon', 'https://ms.yugipedia.com//thumb/9/9b/OddEyesPendulumgraphDragon-DIFO-EN-ScR-1E.png/300px-OddEyesPendulumgraphDragon-DIFO-EN-ScR-1E.png', '[ Dragon / Pendulum / Effect / Ritual ]', 11, '[ Pendulum Effect ] During the End Phase: You can add 1 Ritual Spell from your Deck or GY to your hand, then return this card to the hand. You can only use this effect of \"Odd-Eyes Pendulumgraph Dragon\" once per turn.\r\n[ Monster Effect ] You can Ritual Summon this card with \"Odd-Eyes Advent\". Must be either Ritual Summoned, or Pendulum Summoned (from your hand). Each time your opponent Special Summons a monster(s) from the Extra Deck, inflict 300 damage to them. Once per turn, when your opponent activates a Spell Card or effect (Quick Effect): You can place this card in your Pendulum Zone, and if you do, negate that effect, then, if this Ritual Summoned card was placed in the Pendulum Zone this way, you can Special Summon 1 \"Odd-Eyes\" monster from your Extra Deck.\r\nATK/ 2700 DEF/ 2500', 0, 1, 1),
(50, 'Odd-Eyes Dragon', 'https://th.bing.com/th/id/OIP.uNzXJyNtGnr0F9_cEn2QAgAAAA?pid=ImgDet&rs=1', '[ Dragon / Effect ]', 27, 'If this card destroys an opponent\'s monster by battle and sends it to the Graveyard: Inflict damage to your opponent equal to half the original ATK of that monster in the Graveyard.\r\nATK/ 2500 DEF/ 2000', 0, 5, 4),
(51, 'Performapal Gentrude', 'https://ygoprodeck.com/cdn-cgi/image/format=auto,width=313/https://images.ygoprodeck.com/images/cards/21949879.jpg', '[ Fiend / Pendulum / Effect ]', 123, '[ Pendulum Effect ] If you control no monsters, or all monsters you control are Pendulum Monsters, and you have \"Performapal Lady Ange\" in your other Pendulum Zone: You can add 1 \"Odd-Eyes\" card from your Deck to your hand. You can only use this effect of \"Performapal Gentrude\" once per turn.\r\n[ Monster Effect ] If this card is destroyed: You can place 1 \"Performapal\" Pendulum Monster from your Deck in your Pendulum Zone, except \"Performapal Gentrude\". If this card is face-up in your Extra Deck: You can discard 1 Pendulum Monster; add this card to your hand, then you can return 1 \"Performapal\" or \"Odd-Eyes\" card from your Pendulum Zone to the hand. You can only use 1 \"Performapal Gentrude\" monster effect per turn, and only once that turn.\r\nATK/ 1500 DEF/ 1000', 0, 1, 4),
(52, 'The Winged Dragon OF Ra', 'https://znews-photo.zingcdn.me/w660/Uploaded/piqbzcvo/2022_07_07/3.jpeg', 'aa', 30, 'bbb', 1, 9, 5);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`uID`),
  ADD UNIQUE KEY `user` (`user`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`STT`),
  ADD KEY `STT` (`STT`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `uID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `STT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
