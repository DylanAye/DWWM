INSERT INTO `posts` (`pos_id`,`pos_libelle`,`pos_description`) VALUES
(1, "Prédident Directeur Général",""),
(2, "Manager",""),
(3, "Commercial",""),
(4, "Responsable des ventes", ""),
(5, "Assistant commercial", ""),
(6, "Assistant RH", ""),
(7, "Directeur financier", ""),
(8, "Comptable", ""),
(9, "Préparateur de commandes", ""),

INSERT INTO `employees` (`emp_id`,`emp_lastname`,`emp_firstname`,`emp_enter_date`,`emp_leaving_date`,`emp_num_secu_social`,`emp_sexe`,`emp_birthdate`,`emp_address`,`emp_zipcode`,`emp_city`,`emp_phone`,`emp_mail`,`emp_password`,`emp_login`,`emp_client_type`,`emp_emp_id`,`emp_pos_id`) VALUES 
(1,"Fitzpatrick","Wyatt","2020-05-03","","2640625698368","F","1964-06-08","596-1570 Enim. Av.","1353","Greenlaw","0519723746","risus@erat.ca","SJV79NQV7ID","vulputate",1,6,8),
(2,"Logan","Jelani","2021-09-05","","1940559655318","M","1994-05-19","Ap #822-3538 Aliquet Rd.","64916","Bridlington","0363888841","vestibulum.neque.sed@ullamcorper.ca","XWB54DWF9MP","fringilla",1,6,7),
(3,"Scott","Carolyn","2020-02-14","","164026978236","M","1964-02-19","Ap #537-5921 Justo Av.","41470","Jecheon","0811649854","justo.Proin@Quisqueornaretortor.org","LOL18UIH4JV","Donec",1,4,5),
(4,"Curry","Ciaran","2019-10-16","","297045569458","F","1997-04-12","Ap #825-8380 Diam Street","28149","Zuccarello","0226459623","cursus.Integer.mollis@pede.net","VRK48KXI5UC","mauris,",1,3,4),
(5,"Burks","Lee","2019-10-16","","1780256875230","M","1978-02-22","P.O. Box 334, 4510 Sed Rd.","3304","Issy-les-Moulineaux","0877671823","ornare.lectus.justo@orcilobortisaugue.net","JQG55NYK3BS","quis,",2,6,8),
(6,"Monroe","Fiona","2020-09-26","2020-05-16","2650459365825","F","1965-04-17","Ap #848-9339 Curae; St.","11718","Kent","0379311765","pharetra.felis.eget@eros.edu","PXH93EIQ7DT","sem",1,85,5),
(7,"Acevedo","Slade","2021-08-16","","1960259636358","M","1996-02-06","Ap #118-1314 Nisi Road","52487","Siverek","0695364693","erat.neque.non@id.edu","IAZ65CDR1TL","egestas",2,8,9),
(8,"Lowery","Renee","2020-12-30","","2850445692385","F","1985-04-17","Ap #646-2051 Quisque Rd.","1666","Boston","0200318356","vitae.mauris.sit@Praesenteunulla.edu","ZOI92XNV6PQ","ipsum.",1,4,6),
(9,"Hines","Joelle","2020-08-25","","1841152603504","M","1984-11-21","Ap #885-1084 Nibh St.","05538","Krishnanagar","0217060397","at@pellentesque.org","XAL93CYR7YJ","at,",1,6,7),
(10,"Herring","Troy","2021-05-17","","2720852069805","F","1972-08-04","P.O. Box 245, 7136 Enim. Road","74446-43657","Colwood","0627365065","Vivamus.rhoncus.Donec@euismodest.org","LBF78NNM6KS","tempus",1,1,2);

INSERT INTO `customers` (`cus_id`,`cus_lastname`,`cus_firstname`,`cus_sexe`,`cus_birthdate`,`cus_billing_address`,`cus_shipping_address`,`cus_zipcode`,`cus_city`,`cus_phone`,`cus_mail`,`cus_password`,`cus_login`,`cus_type`,`cus_coeff`,`cus_ref`,`cus_cou_id`,`cus_emp_id`) VALUES 
(1,"Richardson","Reece","F","1973-06-06","456-6073 Dui. St.","222 Pede. Ave","44079","Wolfville","0303578240","Duis.risus@risus.edu","GUN79QII6QZ","diam.",2,4,"LDB56DPW6AT","FR",3),
(2,"Avery","Hiroko","F","1993-05-28","Ap #541-1300 Orci Rd.","P.O. Box 692, 9577 Vulputate, Ave","1099","San Luis Río Colorado","0243460500","sem.molestie@duinec.ca","JUL75GNX5KO","ante",1,9,"WQM78CIB3ZB","FR",8),
(3,"Owens","Hayfa","","1960-09-25","P.O. Box 327, 7517 Adipiscing, Av.","7474 Non, Avenue","G0H 2V9","Giardinello","0239107209","neque.sed@molestiepharetranibh.com","KLF31AAU9SW","eu",1,4,"SNB52XHC1CY","FR",6),
(4,"Molina","Cassady","M","1958-09-24","7337 Nec Av.","2028 Ornare St.","06-240","Torella del Sannio","0954807361","neque@elitpretiumet.net","UMF46JKN1OX","vulputate",2,7,"CIP86VOZ4BL","FR",7),
(5,"Santos","Lareina","F","1994-05-04","P.O. Box 282, 8167 Ac Road","777-4630 Dapibus Ave","32157","Augusta","0752935002","mauris@pharetrafeliseget.com","EFJ57TOC7QL","aliquet",2,1,"UDU74EJY7LO","GA",2),
(6,"Reed","Savannah","F","1969-12-30","284-9568 Phasellus Rd.","P.O. Box 367, 181 At, Ave","59381","San Fabián","0799880926","parturient@etultricesposuere.co.uk","CGV85FFF6VZ","in",2,3,"PYA49ZWE1HF","BE",1),
(7,"Dickerson","Jeanette","F","1970-02-15","2640 Vulputate Road","P.O. Box 286, 5958 Ac Rd.","2473","Bègles","0580889460","magnis.dis.parturient@semperetlacinia.org","ROY43CDT3LZ","Curabitur",1,9,"QIV44DRY9IC","FR",2),
(8,"Maynard","Madonna","F","1979-01-04","Ap #615-3582 Augue Ave","Ap #743-3090 Luctus Avenue","H3X 4P3","Wha Ti","0877485038","mauris.ut.mi@facilisis.ca","KCD49QOK3BZ","lorem",1,5,"OCN79MXB4DD","CH",3),
(9,"Hall","Malachi","F","1999-05-26","641-821 Eu Av.","P.O. Box 494, 3691 Lobortis Ave","5074","Voronezh","0512711142","a.nunc@gravidasagittisDuis.net","QTS52CSE4EI","nisi.",2,7,"KIF00VSD5XM","CA",5),
(10,"Knight","Phelan","M","1986-03-21","190-8737 Vel Street","3038 Erat St.","40534","Alix","0660889183","egestas.a.scelerisque@arcueu.net","DAL41UQY7CT","sem",2,8,"LWI32SCN6HM","CA",9);

INSERT INTO `orders` (`ord_id`,`ord_ref`,`ord_discount`,`ord_date`,`ord_method_payment`,`ord_settlement_date`,`ord_payment_date`,`ord_status`,`ord_billing_address`,`ord_lateness_cost`,`ord_cus_id`) VALUES 
(1,"QEU75HHU3ET",9,"2020-04-13","Espèce","2020-01-29","2020-04-30","En préparation","2640 Vulputate Road",2,7),
(2,"DIC97WHZ6RG",10,"2021-06-29","Espèce","2020-12-11","2019-12-17","Envoyé","456-6073 Dui. St.",6,1),
(3,"WVE09MFV4SF",0,"2021-01-28","Espèce","2019-10-20","2020-01-03","En préparation","Ap #541-1300 Orci Rd.",7,2),
(4,"IQS96LVJ3ND",0,"2021-07-09","Carte bancaire","2020-09-15","2020-12-23","Envoyé","190-8737 Vel Street",7,10),
(5,"ABK93ZBI4WU",3,"2021-02-10","Carte bancaire","2020-05-13","2020-12-26","Envoyé","2640 Vulputate Road",7,7),
(6,"IDR43VYR4QP",9,"2020-07-07","Chèque","2021-07-04","2021-09-11","En préparation","284-9568 Phasellus Rd.",1,6),
(7,"PID99JPL8DY",9,"2021-07-27","Carte bancaire","2021-03-26","2021-03-06","Livré","P.O. Box 327, 7517 Adipiscing, Av.",9,3),
(8,"ZHC73TKR8PE",2,"2020-01-07","Espèce","2019-11-09","2021-01-08","En préparation","Ap #541-1300 Orci Rd.",4,2),
(9,"JDH21ZIX3NA",6,"2020-10-13","Chèque","2021-06-01","2021-08-01","Livré","641-821 Eu Av.",6,9),
(10,"VAM76FSI5BW",5,"2020-05-07","Carte bancaire","2020-06-10","2019-11-23","Livré","456-6073 Dui. St.",8,1);

INSERT INTO `delivery` (`del_id`,`del_real_date`,`del_preparation_date`,`del_shipment_date`,`del_address`,`del_ord_id`) VALUES 
(1,"","2020-12-10","2021-02-15","P.O. Box 213, 7114 Elementum, St.",4),
(2,"","2021-09-01","","P.O. Box 851, 2001 Varius Rd.",8),
(3,"","2020-04-15","","Ap #196-3054 Risus. Rd.",3),
(4,"","2020-02-07","2020-09-19","P.O. Box 971, 6543 Dictum. Street",2),
(5,"","2020-09-28","2021-03-19","3460 Eleifend, Ave",5),
(6,"","2020-12-30","","Ap #570-4530 Odio, St.",6),
(7,"2020-04-10","2020-06-24","2020-11-18","5247 Est. Rd.",7),
(8,"","2020-02-18","","388-2016 Ligula. Rd.",1),
(9,"2019-10-26","2021-08-22","2021-06-21","2231 Mauris Av.",9),
(10,"2021-03-22","2019-10-13","2019-10-05","P.O. Box 594, 8140 Pellentesque Avenue",10);

INSERT INTO `categories` (`cat_id`,`cat_name`,`cat_cat_id`) VALUES
(1,"Vents",NULL),
(2,"Cordes",NULL),
(3,"Percussions",NULL),
(4,"Guitare",1),
(5,"Violon",1),
(6,"Violoncelle",1),
(7,"Harpe",1),
(8,"Piano",1),
(9,"Trompette",2),
(10,"Saxophone",2),
(11,"Flûte",2),
(12,"Harmonica",2),
(13,"Batterie",3),
(14,"Tambour",3),
(15,"Xylophone",3);

INSERT INTO `suppliers` (`sup_id`,`sup_name`,`sup_address`,`sup_zipcode`,`sup_city`,`sup_phone`,`sup_mail`,`sup_cou_id`) VALUES 
(1,"Pede Institute","7424 Ante Av.","77866-76213","Buckingham","0333912771","a@aodiosemper.org","FR"),
(2,"Nam Interdum Incorporated","154 A, Ave","66335","Łódź","0131109232","imperdiet@In.edu","FR"),
(3,"Risus LLC","1446 Vulputate Avenue","Z5877","Rodì Milici","0574248792","congue.In.scelerisque@laciniaSedcongue.net","CA"),
(4,"Vel Pede Blandit PC","545-4414 Nec, Rd.","289400","Sapele","0675868438","sed@scelerisquedui.co.uk","BE"),
(5,"Velit Cras Lorem Industries","4845 Nascetur Avenue","7355","Opheylissem","0286007631","Etiam.ligula.tortor@ante.com","BE"),
(6,"Enim Corp.","515-2132 Cum Street","Z0782","Sachs Harbour","0838828762","Donec.nibh.Quisque@semmolestiesodales.net","CA"),
(7,"Turpis Egestas LLC","183-3900 Phasellus Ave","882411","Lago Verde","0811196271","feugiat.Sed@aliquet.com","CH"),
(8,"Felis Donec Tempor Incorporated","927-1035 Quis Street","474790","Cottbus","0137836966","tortor@Donec.net","FR"),
(9,"Aliquam Eros Turpis Corp.","476 Non St.","24918","Cap-de-la-Madeleine","0603139476","lectus@anteMaecenasmi.ca","CH"),
(10,"Arcu Iaculis Enim Corp.","858-1453 Cum Ave","1283","Buggenhout","0624070976","Aliquam.erat.volutpat@eunulla.ca","CA");

INSERT INTO `products` (`pro_id`,`pro_name`,`pro_desc`,`pro_price`,`pro_ref`,`pro_stock`,`pro_stock_alert`,`pro_color`,`pro_picture`,`pro_add_date`,`pro_update_date`,`pro_blocked`,`pro_sup_id`,`pro_cat_id`) VALUES 
(1,"Guitare Électrique LA, Red + Pack Ampli","aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non",909,"TRH45TOZ9HF",3,8,"orange","vitae","2021-01-10","2021-01-07",2,6),
(2,"Nulla","tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam",919,"SZT98BVB4TL",10,2,"red","vitae","2019-12-05","2021-02-13",1,10),
(3,"Sed","Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus.",230,"FIT04OWL9SR",1,5,"green","elit,","2019-12-29","2020-10-07",2,2),
(4,"ligula.","nisi. Cum sociis natoque penatibus et magnis dis parturient montes,",743,"EJJ89BUI1EN",4,5,"violet","dapibus","2021-02-20","2020-06-04",1,9),
(5,"tellus","pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna.",566,"KWY33EKC6KN",7,3,"violet","faucibus","2019-09-19","2021-08-14",2,9),
(6,"id,","mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet,",232,"EJD86CDN7UB",10,10,"indigo","metus","2021-05-05","2020-08-13",1,10),
(7,"magna","at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare",737,"UDC34OGJ9FR",1,6,"blue","Curabitur","2021-07-16","2019-11-29",1,4),
(8,"Aliquam","parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor.",745,"QVY72AVX6OG",7,7,"red","scelerisque","2019-11-06","2020-12-02",2,6),
(9,"amet","lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor",781,"XTX77EUD2OP",8,9,"orange","Maecenas","2021-08-26","2019-12-18",2,6),
(10,"ut,","ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate,",145,"CUX73ZDA3DG",8,7,"orange","sociis","2020-04-22","2020-02-02",1,4);
