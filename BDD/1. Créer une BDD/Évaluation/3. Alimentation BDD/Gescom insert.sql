INSERT INTO `posts` (`pos_id`,`pos_libelle`) VALUES
(1,'PDG'),
(2,'Responsable RH'),
(3,'Responsable commerciaux'),
(4,'Commercial'),
(5,'Vendeur');



INSERT INTO `employees` (`emp_id`,`emp_superior_id`,`emp_pos_id`,`emp_firstname`,`emp_lastname`,`emp_address`,`emp_zipcode`,`emp_city`,`emp_mail`,`emp_phone`,`emp_salary`,`emp_enter_date`,`emp_gender`,`emp_children`) VALUES
(100, NULL, 1, 'Perillard', 'Verney', '8 boulevard de Prague', '30900', 'Nîmes','perillard.verney@gmail.com', '0264854478','4500.00','2002-01-01', 'F', 12),
(101, 100, 2, 'Marcoux', 'Stéphane', '54 rue Roussy', '84100', 'Orange','spephanemarcoux@gmail.com', '0424256987', '2200.00','2010-02-01','M',2),
(102, 101, 4, 'Berthelette', 'Anaïs', '66 rue Gontier-Patin', '34300', 'Agde', 'AnaisBerthelette@jourrapide.com','2469782364','2000.00', '2014-02-12','F', 1);
(103, 102, 5, 'Courtemanche', 'Nicolas', '59 rue Sébastopol', '42000', 'Saint-Etienne', 'nicolas.courtemanche@gmail.com', '0645985525', '1300.00', '2018-05-12', 'M',0),



INSERT INTO `customers` (`cus_id`,`cus_lastname`,`cus_firstname`,`cus_address`,`cus_zipcode`,`cus_city`,`cus_countries_id`,`cus_mail`,`cus_phone`,`cus_password`,`cus_add_date`,`cus_update_date`) VALUES 
(1,"Chan","Laura","Ap #825-6864 At Street","71255","Belfast","FR","magna.sed.dui@vitae.ca","0131449349","EMB26HZO3VV","2019-11-28","2020-06-20"),
(2,"Howe","Alan","Ap #933-2649 Sagittis Av.","21-724","Ficarolo","IR","est.Nunc@euismod.net","0145854643","KFN21TSY9WC","2019-09-14","2020-10-19"),
(3,"Curry","Mufutau","P.O. Box 981, 9352 Est, Ave","14389","Juneau","KE","rhoncus.Nullam@doloregestas.ca","0410152688","TOI25ADG5NO","2020-01-29","2021-07-23"),
(4,"Olson","Robert","397-6856 Vulputate, Rd.","6926 SH","San Leucio del Sannio","NP","eros@sitamet.com","0535382134","JXZ39GJC6VM","2020-01-27","2020-02-13"),
(5,"Hatfield","Simone","112-9957 Nec Avenue","Z7582","Wrigley","MX","natoque.penatibus.et@risusat.net","0797438236","YXU83GIB1KB","2021-03-05","2020-10-26"),
(6,"Irwin","Lucian","7967 Vitae Av.","23-155","Glovertown","JP","Donec.egestas@odiotristique.net","0412779501","YDA39SOU0AO","2020-04-19","2021-08-04"),
(7,"Heath","Imani","650-2462 Diam St.","600783","Yumbel","SB","velit@nisisem.net","0956279291","IQM64DOK9VN","2020-11-25","2020-06-27"),
(8,"Villarreal","Hashim","827-6080 Ultricies St.","9888","Cannes","GB","odio@Aliquamgravidamauris.ca","0315286897","NQO40CYT8FK","2020-04-21","2021-06-11"),
(9,"Lott","Kylynn","Ap #418-6189 Fusce Rd.","5367","Ruda","US","mauris.a@vel.org","0818520581","AAQ39MUJ1UW","2020-06-16","2021-04-30"),
(10,"Juarez","Fredericka","Ap #391-2794 Parturient Street","657324","Whitewater Region Township","TG","sapien@laoreetliberoet.co.uk","0324429841","IUZ51SBM9AD","2019-11-22","2020-10-14");




INSERT INTO `suppliers` (`sup_id`,`sup_name`,`sup_city`,`sup_countries_id`,`sup_address`,`sup_zipcode`,`sup_contact`,`sup_phone`,`sup_mail`) VALUES
(1,'Plantage','Paris','FR','1 avenue Cyril Hanouna','75017','Nicolas Dujardin','0102030405','contact@plantage.fr'),
(2,'Jardi+','Amiens','FR','200 boulevard Eve Angeli','80090','Mike Anic','0708091011','jardiplus@gmail.com'),
(3,'Attila','Marseille','FR','31 rue Nabilla Benattia','13000','Elle Ephant','0213141516','attila.tondeuses@laposte.net'),
(4,'Barbeuc','Narbonne','FR','56 avenue Donald Trump','11000','Gérard Menfaim','0512345678','sales@barbeuc.com'),
(5,'FOURNIRIEN','Shangaï','CN','112 rue de Pékin','340', 'Chang Li', '0102030405','chang.li@fournirien.cn');



INSERT INTO `orders` (`ord_id`,`ord_order_date`,`ord_payment_date`,`ord_ship_date`,`ord_reception_date`,`ord_status`,`ord_cus_id`) VALUES 
(1,"2020-11-27","2019-12-26","2021-03-26","2019-11-06","Envoyé",5),
(2,"2020-05-20","2021-03-03","2021-04-30","2021-06-19","En préparation",3),
(3,"2020-03-25","2019-10-23","2019-11-12","2021-03-19","Envoyé",10),
(4,"2020-03-14","2020-01-15","2021-09-01","2020-07-12","En préparation",7),
(5,"2021-01-12","2020-01-14","2020-08-07","2021-05-29","Envoyé",9),
(6,"2020-11-26","2020-08-06","2019-11-06","2020-07-23","En préparation",1),
(7,"2020-09-15","2019-09-06","2020-11-24","2020-07-12","Envoyé",4),
(8,"2021-01-10","2021-07-15","2021-04-01","2019-12-02","Envoyé",2),
(9,"2021-08-20","2020-01-19","2021-06-16","2021-07-14","Envoyé",6),
(10,"2020-08-26","2020-08-11","2020-02-13","2019-10-07","Livré",8);



INSERT INTO `categories` (`cat_id`,`cat_name`,`cat_parent_id`) VALUES 
(1,"natoque penatibus et magnis dis",1),
(2,"tincidunt adipiscing. Mauris molestie pharetra",2),
(3,"bibendum sed, est. Nunc laoreet",3),
(4,"ante bibendum ullamcorper. Duis cursus,",4),
(5,"Mauris magna. Duis dignissim tempor",8),
(6,"montes, nascetur ridiculus mus. Aenean",6),
(7,"eros. Nam consequat dolor vitae",7),
(8,"amet, consectetuer adipiscing elit. Aliquam",8),
(9,"sit amet luctus vulputate, nisi",9),
(10,"adipiscing lobortis risus. In mi",8);