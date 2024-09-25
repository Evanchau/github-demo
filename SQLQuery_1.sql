CREATE TABLE [ims_sales_order_item] (
        id_sales_order_item INT
      ,[bob_id_sales_order_item] INT
      ,[fk_sales_order] INT
      ,[fk_sales_order_item_status] INT
      ,[fk_delivery_type] INT
      ,[unit_price] FLOAT
      ,[tax_amount] INT
      ,[paid_price] FLOAT
      ,[name] NVARCHAR(100)
      ,[sku] NVARCHAR(100)
      ,[created_at] DATETIME2
      ,[updated_at] DATETIME2
      ,[last_status_change] DATETIME2
      ,[original_unit_price] FLOAT
      ,[shipping_type] NVARCHAR(100)
      ,[real_delivery_date] NVARCHAR(100)
      ,[bob_id_supplier] INT
      ,[is_marketplace] INT
)

INSERT INTO ims_sales_order_item VALUES(229869, 414478, 275704, 27, 2, 39, 0, 31.84, 'Canon PG-88 BLACK INK CARTRIDGE FOR E500 E600', 'CA673EL65KCOANMY-160100', '10/30/2013 0:07', '11/12/2013 11:31', '10/30/2013 0:08' , 40, 'marketplace' , '10/31/2013 10:25', '738', 1)
INSERT INTO ims_sales_order_item VALUES(229870, 414479, 275704, 27, 2, 70, 0, 57.16, 'Canon PG-740 XL Black', 'CA673EL76KCDANMY-160089', '10/30/2013 0:07', '11/12/2013 11:31', '10/30/2013 0:08' , 74, 'marketplace' , '10/31/2013 10:25', '738', 1)
INSERT INTO ims_sales_order_item VALUES(229871, 414480, 275705, 27, 2, 470, 0, 470, '(IMPORT) Samsung Galaxy Ace Duos 3GB Black', 'SA356ELAK8SSANMY-497636', '10/30/2013 0:08', '11/8/2013 17:46', '10/30/2013 0:11' , 470, 'marketplace' , '10/31/2013 15:35', '1025', 1)
INSERT INTO ims_sales_order_item VALUES(229872, 414481, 275706, 27, 3, 399, 0, 399, 'Acer Liquid Z130 Phone Black + FOC Flip Cover Blue', 'AC507ELAK3GNANMY-489743', '10/30/2013 0:09', '11/6/2013 21:36', '10/30/2013 0:14' , 399, 'cross_docking' , '11/1/2013 9:57', '785', 0)
INSERT INTO ims_sales_order_item VALUES(229873, 414482, 275707, 27, 3, 20, 0, 20, 'Pigeon Little Coro Blanket L430', 'PI914TB12HRFANMY-158453', '10/30/2013 0:11', '11/11/2013 10:51', '10/30/2013 0:12' , 20, 'cross_docking' , '11/8/2013 13:52', '699', 0)
INSERT INTO ims_sales_order_item VALUES(229874, 414483, 275707, 27, 3, 31.9, 0, 31.9, 'Autumnz - Cloth Diaper PUL Minky Polka Blue Brown * FREE 2 inserts', 'AU401TB17KNEANMY-98668', '10/30/2013 0:11', '11/11/2013 10:51', '10/30/2013 0:12' , 39.9, 'cross_docking' , '11/8/2013 13:52', '379', 0)
INSERT INTO ims_sales_order_item VALUES(229875, 414484, 275707, 27, 1, 16, 0, 16, 'Dust Microfiber Mop + Chenille Refill', 'AN731HL45SIWANMY-130519', '10/30/2013 0:11', '11/11/2013 10:51', '10/30/2013 0:12' , 35, 'warehouse' , '11/8/2013 13:52', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229876, 414485, 275707, 27, 1, 5.36, 0, 5.36, 'Biokips Container Round',  'BI525HL80YXRANMY-109839', '10/30/2013 0:11', '11/11/2013 10:51' , '10/30/2013 0:12', 11.9 , 'warehouse', '11/8/2013 13:52', '0',0)
INSERT INTO ims_sales_order_item VALUES(229877, 414486, 275707, 27, 1, 7.61, 0, 7.61, 'Biokips Container Round', 'BI525HL78YXTANMY-109841', '10/30/2013 0:11', '11/11/2013 10:51' , '10/30/2013 0:12', 16.9 , 'warehouse', '11/8/2013 13:52','0', 0)
INSERT INTO ims_sales_order_item VALUES(229878, 414487, 275707, 27, 1, 8.51, 0, 8.51, 'Biokips Container Rectangle with Separator', 'BI525HL95YXCANMY-109824', '10/30/2013 0:11', '11/11/2013 10:51' , '10/30/2013 0:12', 18.9 , 'warehouse', '11/8/2013 13:52', '0',0)
INSERT INTO ims_sales_order_item VALUES(229879, 414488, 275707, 27, 1, 12.33, 0, 12.33, 'Farlin Baby Mat BF-431', 'FA921TB43INCANMY-159022', '10/30/2013 0:11', '11/11/2013 10:51', '10/30/2013 0:12' , 15.9, 'warehouse' , '11/8/2013 13:52', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229880, 414491, 275709, 6, 1, 169, 0, 169, 'Samsung Original S View Cover for Samsung GALAXY Note 3 Blush Pink', 'SA356ELAK2U4ANMY-488742', '10/30/2013 0:13', '10/30/2013 9:16', '10/30/2013 0:13' , 189, 'warehouse' , 'NULL', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229881, 414494, 275712, 27, 1, 59, 0, 59, 'Trio Waffle Maker TWM-9017 Grey', 'TR021EL28MEXANMY-143937', '10/30/2013 0:15', '11/6/2013 11:23', '10/30/2013 0:15' , 79, 'warehouse' , '10/31/2013 20:09', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229882, 414495, 275713, 27, 3, 85, 0, 85, 'Fifty Shades Trilogy Boxset', 'MP991ME55QJOANMY-103338', '10/30/2013 0:16', '11/6/2013 21:34', '10/30/2013 0:17' , 95, 'cross_docking' , '11/1/2013 12:10', '145', 0)
INSERT INTO ims_sales_order_item VALUES(229883, 414496, 275714, 27, 1, 109, 0, 33, '(GENUINE) Beats urBeats by Dr. Dre White', 'BE619ELAD91UANMY-164364', '10/30/2013 0:17', '11/1/2013 10:07', '10/30/2013 0:17' , 299, 'warehouse' , '10/31/2013 11:49', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229884, 414497, 275715, 5, 2, 25, 0, 25, 'Inno Charging Dock for Samsung Galaxy SIII', 'IN174ELAJAYOANMY-446778', '10/30/2013 0:19', '11/6/2013 18:29', '10/30/2013 0:19' , 40, 'marketplace' , 'NULL', '813', 1)
INSERT INTO ims_sales_order_item VALUES(229885, 414499, 275717, 9, 3, 189, 0, 189, 'MEDAL OF HONOR: WARFIGHTER (PS3)', 'EA994ELAJ3LDANMY-437227', '10/30/2013 0:24', '11/11/2013 19:41', '10/30/2013 0:24' , 189, 'cross_docking' , 'NULL', '420', 0)
INSERT INTO ims_sales_order_item VALUES(229886, 414501, 275719, 27, 1, 64, 0, 64, 'MY Power Bank LED Powerbank 12000mAh Grey', 'MY398ELAJI0EANMY-457195', '10/30/2013 0:26', '11/6/2013 11:28', '10/30/2013 0:26' , 299, 'warehouse' , '10/31/2013 18:18', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229887, 414502, 275720, 27, 3, 103, 0, 103, 'Hobby Horse HT-5501H Red', 'HO773TB79UFOANMY-131786', '10/30/2013 0:26', '11/6/2013 10:13', '10/30/2013 0:26' , 129, 'cross_docking' , '11/2/2013 15:00', '208', 0)
INSERT INTO ims_sales_order_item VALUES(229888, 414503, 275720, 27, 3, 26.01, 0, 26.01, 'Geometry Shape Blocks', 'ON960TB49DASANMY-74218', '10/30/2013 0:26', '11/6/2013 10:13', '10/30/2013 0:26' , 28.9, 'cross_docking' , '11/2/2013 15:00', '130', 0)
INSERT INTO ims_sales_order_item VALUES(229889, 414504, 275720, 27, 1, 30, 0, 30, 'Fisher Price Brilliant Basics Chatter Telephone', 'FI337TB94IWRANMY-159271', '10/30/2013 0:26', '11/6/2013 10:13', '10/30/2013 0:26' , 39.9, 'warehouse' , '11/2/2013 15:00', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229890, 414507, 275722, 6, 1, 788, 0, 788, 'SONY BRAVIA KLV-32R402 HD LED TV 32 Black', 'SO406ELAJPQ8ANMY-467633', '10/30/2013 0:27', '11/7/2013 18:03', '10/30/2013 0:27' , 1299, 'warehouse' , 'NULL', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229892, 414509, 275724, 27, 3, 79, 0, 79, 'MY Powerbank 20000mAH White', 'MY398ELAK310ANMY-489080', '10/30/2013 0:31', '11/6/2013 10:11', '10/30/2013 0:31' , 399, 'cross_docking' , '11/1/2013 12:03', '252', 0)
INSERT INTO ims_sales_order_item VALUES(229893, 414510, 275725, 27, 1, 149, 0, 149, 'Tenko T7 7 4GB WiFi White', 'TE837ELAJQHNANMY-468660', '10/30/2013 0:31', '11/8/2013 14:38', '10/30/2013 0:31' , 399, 'warehouse' , '11/6/2013 19:08', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229894, 414511, 275726, 6, 3, 399, 0, 399, 'Acer Liquid Z130 Phone Black + FOC Flip Cover Blue', 'AC507ELAK3GNANMY-489743', '10/30/2013 0:33', '11/7/2013 18:01', '10/30/2013 0:33' , 399, 'cross_docking' , 'NULL', '785', 0)
INSERT INTO ims_sales_order_item VALUES(229895, 414513, 275728, 6, 3, 1099, 0, 877, 'Microsoft Surface RT 10.6 32GB', 'MI175ELAKAB2ANMY-500433', '10/30/2013 0:33', '11/8/2013 23:04', '10/30/2013 0:33' , 1099, 'cross_docking' , 'NULL', '1059', 0)
INSERT INTO ims_sales_order_item VALUES(229896, 414516, 275731, 6, 1, 72, 0, 72, 'Trio Cupcake Maker TCC-227 Blue', 'TR021EL31MEUANMY-143934', '10/30/2013 0:38', '11/8/2013 23:04', '10/30/2013 0:38' , 109, 'warehouse' , 'NULL', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229897, 414518, 275733, 27, 1, 2019, 0, 2009, 'Samsung Galaxy Note 3 LTE N9005 5.7 32GB White', 'SA356ELAJY76ANMY-482013', '10/30/2013 0:39', '11/1/2013 9:56', '10/30/2013 0:40' , 2399, 'warehouse' , '10/31/2013 15:42', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229898, 414520, 275735, 5, 2, 91, 0, 91, 'HTC One Double Dip Hard Shell Case HC C840', 'HT964ELAJOYGANMY-466556', '10/30/2013 0:40', '11/6/2013 18:29', '10/30/2013 0:40' , 99, 'marketplace' , 'NULL', '923', 1)
INSERT INTO ims_sales_order_item VALUES(229899, 414521, 275736, 27, 1, 109, 0, 99, '(GENUINE) Beats urBeats by Dr. Dre White', 'BE619ELAD91UANMY-164364', '10/30/2013 0:43', '11/6/2013 11:30', '10/30/2013 0:43' , 299, 'warehouse' , '10/31/2013 18:18', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229900, 414523, 275738, 6, 1, 72, 0, 72, 'Trio Cupcake Maker TCC-227 Blue', 'TR021EL31MEUANMY-143934', '10/30/2013 0:47', '11/8/2013 23:04', '10/30/2013 0:47' , 109, 'warehouse' , 'NULL', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229901, 414525, 275740, 27, 3, 609, 0, 609, 'Toshiba ColorCurve Series Single Door Refrigerator GR-S165PS Silver', 'TO479ELAJ6JGANMY-441046', '10/30/2013 0:48', '11/11/2013 10:33', '10/30/2013 0:48' , 679, 'cross_docking' , '11/11/2013 10:23', '13', 0)
INSERT INTO ims_sales_order_item VALUES(229902, 414528, 275742, 27, 1, 44, 0, 44, 'SMILEY SM6832R Medium School Bag with Trolley Blue', 'SM715TBAJMMJANMY-463528', '10/30/2013 0:49', '11/6/2013 10:11', '10/30/2013 0:49' , 55, 'warehouse' , '11/3/2013 17:40', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229903, 414529, 275743, 27, 1, 169, 0, 169, 'Aigo M60 6 4GB WiFi Black', 'AI880EL40QXNANMY-147125', '10/30/2013 0:52', '11/1/2013 9:55', '10/30/2013 0:53' , 249, 'warehouse' , '10/31/2013 13:12', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229904, 414530, 275744, 27, 1, 165, 0, 165, 'Ipro I3E 7 4GB WiFi Blue', 'IP017ELAJLYKANMY-462665', '10/30/2013 0:56', '11/1/2013 10:09', '10/30/2013 0:56' , 269, 'warehouse' , '10/31/2013 13:49', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229905, 414531, 275744, 27, 1, 165, 0, 165, 'Ipro I3E 7 4GB WiFi Pink', 'IP017ELAJLYMANMY-462667', '10/30/2013 0:56', '11/1/2013 10:09', '10/30/2013 0:56' , 269, 'warehouse' , '10/31/2013 13:49', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229906, 414533, 275746, 27, 1, 330, 0, 330, 'Alcatel One Touch Magic 4033X 4GB Pure White', 'AL534ELAK2YMANMY-488904', '10/30/2013 0:57', '11/1/2013 10:09', '10/30/2013 0:57' , 499, 'warehouse' , '10/31/2013 16:04', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229907, 414535, 275748, 27, 3, 78, 0, 78, 'MY Power Bank LED Powerbank 12000mAh Pink', 'MY398ELAJI0CANMY-457193', '10/30/2013 1:00', '11/6/2013 11:24', '10/30/2013 1:00' , 299, 'cross_docking' , '11/1/2013 16:01', '252', 0)
INSERT INTO ims_sales_order_item VALUES(229908, 414536, 275749, 6, 3, 280, 0, 280, 'Ipro I7 2G Plus 4GB Dual SIM Black', 'IP017ELAJSBOANMY-472235', '10/30/2013 1:02', '11/8/2013 23:04', '10/30/2013 1:02' , 599, 'cross_docking' , 'NULL', '751', 0)
INSERT INTO ims_sales_order_item VALUES(229909, 414537, 275750, 27, 1, 23, 0, 23, 'Spotcleaner Blackhead Blemish Pore Cleanser AC-C-011 Blue', 'SP661HB12MILANMY-123220', '10/30/2013 1:02', '11/6/2013 21:36', '10/30/2013 1:02' , 69, 'warehouse' , '11/6/2013 13:10', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229910, 414538, 275751, 27, 1, 199, 0, 199, 'Fujifilm Finepix JX500 Digital Camera 14MP Silver + 8GB + Case', 'FU879ELAJMBPANMY-463138', '10/30/2013 1:03', '11/6/2013 11:23', '10/30/2013 1:03' , 279, 'warehouse' , '10/31/2013 18:13', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229911, 414539, 275752, 5, 1, 185, 0, 96, 'Panasonic Cocolo Series MC-CG300 Vacuum Cleaner Green', 'PA258EL25OUKANMY-102092', '10/30/2013 1:06', '10/30/2013 15:51', '10/30/2013 1:06' , 248, 'warehouse' , 'NULL', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229912, 414540, 275753, 27, 3, 459, 0, 459, 'Philips Azur 2-in-1 Cordless Steam Iron GC4810/02 White', 'PH272ELAJI1UANMY-457254', '10/30/2013 1:07', '11/13/2013 9:47', '10/30/2013 1:07' , 579, 'cross_docking' , '11/12/2013 16:25', '23', 0)
INSERT INTO ims_sales_order_item VALUES(229913, 414541, 275754, 27, 1, 40, 0, 40, 'Samaria Felli Venice 16pcs Cutlery Set', 'SA082HLAJAGHANMY-446123', '10/30/2013 1:09', '11/6/2013 11:31', '10/30/2013 1:10' , 49.5, 'warehouse' , '10/31/2013 19:57', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229914, 414542, 275755, 27, 1, 23, 0, 23, 'Emjqi Tweeze', 'EM768HB75TUEANMY-131489', '10/30/2013 1:26', '11/11/2013 12:39', '10/30/2013 1:26' , 129, 'warehouse' , '11/8/2013 19:06', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229915, 414543, 275755, 27, 2, 39.9, 0, 39.9, 'OEM Sock Keeper Organizer For The Closet White', 'OE702HLAJN4BANMY-464168', '10/30/2013 1:26', '11/7/2013 19:02', '10/30/2013 1:26' , 65, 'marketplace' , '10/31/2013 19:00', '947', 1)
INSERT INTO ims_sales_order_item VALUES(229916, 414544, 275755, 27, 3, 10.12, 0, 10.12, 'Acebell Socks Organizer', 'AC618HLAJ320ANMY-436530', '10/30/2013 1:26', '11/11/2013 12:39', '10/30/2013 1:26' , 11.9, 'cross_docking' , '11/8/2013 19:06', '509', 0)
INSERT INTO ims_sales_order_item VALUES(229917, 414545, 275755, 5, 2, 38, 0, 38, 'Inno USB Travel Charger', 'IN174ELAJAYBANMY-446765', '10/30/2013 1:26', '11/6/2013 18:29', '10/30/2013 1:26' , 60, 'marketplace' , 'NULL', '813', 1)
INSERT INTO ims_sales_order_item VALUES(229918, 414547, 275757, 6, 1, 109, 0, 109, '(GENUINE) Beats urBeats by Dr. Dre White', 'BE619ELAD91UANMY-164364', '10/30/2013 1:29', '10/30/2013 11:12', '10/30/2013 1:29' , 299, 'warehouse' , 'NULL', '0', 0)
INSERT INTO ims_sales_order_item VALUES(229919, 414548, 275758, 27, 1, 969, 0, 969, '(IMPORT) Casio Exilim EX-ZR1000 16.1MP White', 'CA680ELAJQTRANMY-469096', '10/30/2013 1:31', '11/1/2013 9:54', '10/30/2013 1:32' , 1499, 'warehouse' , '10/31/2013 15:45', '0', 0)


