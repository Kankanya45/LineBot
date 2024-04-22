-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2024 at 10:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `line_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `user_Id` varchar(255) NOT NULL,
  `emojis` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `quote_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `type`, `text`, `user_Id`, `emojis`, `quote_token`) VALUES
('500131665415766164', 'text', 'สวัสดี', 'Ub734b25b5cab6cb17467b76a195a0e5f', NULL, 'PrqDHx4EUMlMWUCjkefg-V31KFAx9EBbSJsVUk183VdbV5oyJ6gCcrOuEREAPpCDyq-dYxMApN7XZf4ElnamPJGJ3O-6yW2Vw0ukByQ_nymvl-muhTT5DNbu83Mll2lBZ_GDVOsWqfxYYPLvrEx21w'),
('500131740997386467', 'text', 'สวัสดี', 'Ub734b25b5cab6cb17467b76a195a0e5f', NULL, 'BNMrRx4foUgWC5mH69v3cOzW_jn0Sh6-D5p9YZYlGRWtM5cZfXm1GDntwZbt8PQ_ZeCSetONRET12Koh385pmsHpGsAH0-XdHBa-go_6vd1NefxZcDANsFderTR_imrpJAYJjtZT_UV37rbrI58u6w'),
('500131840989593700', 'text', 'สวัสดี', 'Ub734b25b5cab6cb17467b76a195a0e5f', NULL, 'wA0DzAOVG1AL1AsMl3NLHG28IfVPtUl7z0SxYSu5JtK4T2ZdoKT_Hc1T36f2TB-XctQdqKQ0Avvgb-bqSVfo4vuUahrdA8SYyAKpj9NqTfGF0P6za00KlRAjnwSzpGIiWaYuhvdYzvvEANNx7idtXA'),
('500132070266241446', 'text', 'สวัสดี', 'Ub734b25b5cab6cb17467b76a195a0e5f', NULL, 'B2NBOJgXD63GGZObpRzXyanfeRpMSW4IBLJQ4tPD8nk4vmACb7jya2HOT7DLJID7ba4NQvRRMK-FjAofiP177rrzKBVmpLOKCcnBES4rt3fKpmo3GSElYWHDa-3nSOExN9bBP1NHCm4bXQTllDI-7w'),
('500132565094236581', 'text', 'สวัสดี', 'Ub734b25b5cab6cb17467b76a195a0e5f', NULL, '-kzzqdd4fxb2HfTH-6-Mx43QNKqDDtavNIEe2UyYk2oBmObJSyUeRlgpIVM4LlTDCdNi9AGS62wBgdGkjzl4JuP-_gUyrk7JALsi4o0KRSQX20VvTDRY1TpVdt1MgqSv3nmRAaKYO61qWlIN_2Jsyg'),
('500133018011697683', 'text', 'สวัสดี', 'U075adcc8ca0bec3b923ee352fad3aa33', NULL, 'y8keu7M177KFKBleD7K-wsZhlASsU_1qrcgmEwHTajDe1QMWkdVrPkwR1PgQpM-V-EEr0J-H25TFGi9Kdwy7GOXKFyU7TpFB1E-SLHtsVcJLzE-K0Usv_ywIHQt_xB30PSf3C9HUJPRAtXRVSLWCbw'),
('500133048327602455', 'text', '1234', 'U075adcc8ca0bec3b923ee352fad3aa33', NULL, '6LZPcP5oPr-XmYW7-m3hW8_dD08GqplUezsdPbrsDk-yi68CMpmyMZv45FSkBU0eZ_Q_tT1MYUt9s8uKh2q_RSCQXh3oMPTqaAlaSMmXjupslA4aWZLQh96D7HnR9uB8J1qumjm_KasTMEWt5gox5g'),
('500133083207434594', 'text', '(fist)', 'U075adcc8ca0bec3b923ee352fad3aa33', '[{\"index\":0,\"length\":6,\"productId\":\"5ac21e6c040ab15980c9b444\",\"emojiId\":\"007\"}]', 'EB3rQci9H6zGqjzAZeTCcvEZttJt7SGSxj7-Nb55zufrz3OZ6Bfi9E4YSH-9cgVaEToJd-45fhdX9kZOnIr1A8lgsbR-otKpgON7i6ZH3ZcoAXjLfxfnVhkH04Bw7P6i2HwjTcAleKnJyrtEty8N0w'),
('500133146860192005', 'text', 'สวัสดีรอบสอง', 'U075adcc8ca0bec3b923ee352fad3aa33', NULL, 'OopdPE-dROpneImVZ_mfv9627y-F_HR1vEVEn7OR9zL6Fhtve-O0GlJQwa3oWNCyLDwots0H_GaEIliXsJcV6r_b90rsRBOL00bDgoB-113NKoGSyWVgr_LA4BKcsFWOVl8ENnCkvhMl2_IHUEPiNQ'),
('500133211871903747', 'text', 'หาม', 'U075adcc8ca0bec3b923ee352fad3aa33', NULL, 'LFfNvyTWEQn5OAIOaO8S3ediVWPJi3L2TwY76fd3Bn3695h_Kqua5zWi9She2b1vHmJGvmlOsYAujPOiYly7ZBZmTwbBFw16gs862he-C5zHliL6wyQamRA-d74bVBfJrbxab9jGhLl1ytxYY33rgw'),
('500133221871649187', 'text', 'สวัสดี', 'U075adcc8ca0bec3b923ee352fad3aa33', NULL, 'K5vBIRQp3hWSKqVCezs4eswgaFqjY9DjXryZJq4LVJ1-E8-UZQWgog3sp9900PcM3MWCZvu0AAgxgSPYK8qH7eQ_8y8ou83OaiNMKVA8637n6K7U6-PAA4wlfaRolMdiJsJtkAAFe91cMJbFlpHtfg'),
('500133232222667237', 'text', '(come on gesture)', 'U075adcc8ca0bec3b923ee352fad3aa33', '[{\"index\":0,\"length\":17,\"productId\":\"5ac21e6c040ab15980c9b444\",\"emojiId\":\"017\"}]', '4GcOc3-k5h-JKKPkeSrChGKFC3hwYLBrPTbFiiosKMWOeSJgpHPnJfViq9vl0vvAEprfYITr7EvcMy73GGaMw7i1fzzW9Pndoyc6rbnpdcmIDD-tKVBP7W-67zyWa28Z56a1vGLhZ7ilFWCCEWjMug'),
('500135062667264401', 'text', 'เทส', 'U075adcc8ca0bec3b923ee352fad3aa33', NULL, 'tWAPOY_jqtg84Am1ttaUBfA72Ah_eKSh7WxqePR1KIK008uQBrla_f1tkkSeLzuB1SfEWqb9CNLjzp0kXUT3TuP9r-Cqv1WtymaBu_Qr_ltD4cVfO5rp8MkE2R-Yb6R7vLOq1E4JMSLoO-_dGd1zKQ'),
('500135081826844905', 'text', 'เทส2', 'U075adcc8ca0bec3b923ee352fad3aa33', NULL, 'NOBFBbLVNKtlULknGqHXEhgFjSuset9tRMwhjcmhS9VO1eHjcmu8dzl7D6u7trE7ljgUNqVvFGphtAfkvdxtEKNTDXgtHleE7lL_1AwDxWe_GBzs9B6FV9dzAHEV5Gf4Q_VXMF3QZDQiIO9Z0bC4yw'),
('500135102160830689', 'text', '(hand forming c)', 'U075adcc8ca0bec3b923ee352fad3aa33', '[{\"index\":0,\"length\":16,\"productId\":\"5ac21e6c040ab15980c9b444\",\"emojiId\":\"029\"}]', 'biEMJPtdjd3S_dJjD0Wo4UGp-FMCEqqG0xqjMiJYRXI882YP7ZpfCx2Tm_JNbhcFzr6SRrWR8xOMYN_eLvElj77FZ8GsE2gljDD7Cjebgdfs52bEPtll3tf3rB_gSTvcmJW-NlfJ07U1yB-pvFLSkg'),
('500135960819532083', 'text', 'สวัสดี', 'Ub734b25b5cab6cb17467b76a195a0e5f', NULL, 'y0f7tUPasOQp978v1m0EijmscPFkafrm13tAKmEE4RAeqUBK7rju8DQDmRxoMOT4_pAmrHOPc8NV_CxBxymuCDLXFxts-kzrpmklnXHNTySloVBj8y-WMmuCNbpAJ948sulnUqmxMLgY-lqWUPnIIg'),
('500135980481905094', 'text', 'ขอบคุณ', 'Ub734b25b5cab6cb17467b76a195a0e5f', NULL, '486ozNwxuFQlHIzd5wZaiS-uqmnqZpukmmShWdzbP3vUwecPLlCarQ9HcoZQL3TJUiiqu_mVitSHraCvnDi1HhGRVa3uat5fGsYxE8W6HrDb5ubtEgPEDSji5-F_YMXE1btjgV-ptBai16g-Rp63Ag'),
('500136062489461046', 'text', 'ขอบคุณ', 'Ub734b25b5cab6cb17467b76a195a0e5f', NULL, 'SpyRuvP-g3xVliinjBukjAVtioMIzq0sN3OgT48vTfCQyQjHHUnvOZXUTOOR2oHNtMQnig2fQ9jrtL5EDtYlIi0B6TuiM2gIyH35gbhSNKdxfqK8g1rgTct22ieKjxcyKkWkbxc0_INxH2fiBt75ew'),
('500136082755813637', 'text', 'สวัสดี', 'Ub734b25b5cab6cb17467b76a195a0e5f', NULL, 'Eb5pDr7QrO7YGj30wK7RlwwImvhqByXJPiix7vWkv2dW4KXg6VNffvPXcAfyhHCxeGBIFRqHWksJIGzyTpaA4WTBaFB6YATqNm1RQyh2fZ9Bvu5EpvLrmKhD-fSyKcmNQzCF6pmByJoliAH4VeA6SQ'),
('500136175735144708', 'text', 'สวัสดี', 'Ub734b25b5cab6cb17467b76a195a0e5f', NULL, '7p5i_ngTy_C0fY8Ahpz_YyBYrNSm2uzi2pR1ca63HcgOOWh3KU4kLSFsHGLT7-n_OmTZYqjSNnz5dJHxAS_w7-uQlr6usd63KzSBssO7CQ1LTlHvtkyOUtXhT55Z1oNhHqBwbDtAAL7z2sdBP3WACw'),
('500136196740481555', 'text', 'ขอบคุณ', 'Ub734b25b5cab6cb17467b76a195a0e5f', NULL, 'TsOgXXeIqSrHuGVEkQGgvy88-zXH_FkcrIfj9SHhzoBiTKywU2TDfo-9L8LLUBbyTvDgC8PWzoYGbyrs3u6lbA2EUvfOfkcp1hkft5rZYC6XBA9WlcPI2jcKIedRgeZoRzE4c4MkPBfyQMVjWZV53A'),
('500136453700583462', 'text', '(love)', 'Ub734b25b5cab6cb17467b76a195a0e5f', '[{\"index\":0,\"length\":6,\"productId\":\"5ac1bfd5040ab15980c9b435\",\"emojiId\":\"001\"}]', 'C5L2x4uB_bcvvRA9v_SEPNywSpy6XW4TifyPMG3YDAxrVkSSynsG4FWT70RUB3xyRhrwRIE9ANW24qqc7W0SYReI9kQ8v8ix-anL4pfv0lenAFbLv6ezA3C50ShDhwMZO4XusGuNCuUL6S3gvmbhug');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
