PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS 'user'
(
    'id'        INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    'firstname' TEXT                              NOT NULL,
    'lastname'  TEXT                              NOT NULL,
    'username'  TEXT                              NOT NULL unique,
    'password'  TEXT                              NOT NULL,
    'admin'     BOOLEAN                           NOT NULL DEFAULT FALSE,
    'active'    BOOLEAN                           NOT NULL DEFAULT FALSE
);
INSERT INTO user VALUES(1,'Jérôme','Bagnoud','jerome','mypwd','FALSE','TRUE');
INSERT INTO user VALUES(2,'Mickael','Bonjour','mickael','mypwd','FALSE','TRUE');
INSERT INTO user VALUES(3,'Stefan','Dejanovic','stefan','mypwd','FALSE','TRUE');
INSERT INTO user VALUES(4,'Filipe','Fortunato','filipe','mypwd','FALSE','TRUE');
INSERT INTO user VALUES(5,'Nikolaos','Garanis','niko','admin','TRUE','TRUE');
INSERT INTO user VALUES(6,'Baptiste','Hardrick','baptiste','mypwd','FALSE','TRUE');
INSERT INTO user VALUES(7,'Olivier','Koffi','olivier','mypwd','FALSE','TRUE');
INSERT INTO user VALUES(8,'Pierre','Kohler','pierre','mypwd','FALSE','TRUE');
INSERT INTO user VALUES(9,'Samuel','Mettler','samuel','password','TRUE','TRUE');
INSERT INTO user VALUES(10,'Nathanaël','Mizutani','nathanaël','mypwd','FALSE','TRUE');
INSERT INTO user VALUES(11,'Caroline','Monthoux','caroline','mypwd','FALSE','TRUE');
INSERT INTO user VALUES(12,'Edin','Mujkanovic','edin','mypwd','FALSE','TRUE');
INSERT INTO user VALUES(13,'Daniel','Oliveira Paiva','daniel','mypwd','FALSE','TRUE');
INSERT INTO user VALUES(14,'Nemanja','Pantic','nemanja','mypwd','FALSE','TRUE');
INSERT INTO user VALUES(15,'Florian','Polier','florian','mypwd','FALSE','TRUE');
INSERT INTO user VALUES(16,'Julien','Quartier','julien','mypwd','FALSE','TRUE');
INSERT INTO user VALUES(17,'Nathan','Séville','nathan','mypwd','FALSE','TRUE');
INSERT INTO user VALUES(18,'David','Simeonovic','david','mypwd','FALSE','TRUE');
INSERT INTO user VALUES(19,'Victor','Truan','victor','mypwd','FALSE','TRUE');
INSERT INTO user VALUES(20,'Jonathan','Zaehringer','jonathan','mypwd','FALSE','TRUE');
INSERT INTO user VALUES(21,'Jeremy','Zerbib','jeremy','mypwd','FALSE','TRUE');
CREATE TABLE IF NOT EXISTS 'message'
(
    'id'       INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    'date'     DATETIME                          NOT NULL,
    'sender'   INTEGER                           NOT NULL,
    'receiver' INTEGER                           NOT NULL,
    'subject'  TEXT,
    'content'  TEXT,
    'seen'     BOOLEAN                           NOT NULL DEFAULT FALSE,
    FOREIGN KEY (sender) REFERENCES user (id),
    FOREIGN KEY (receiver) REFERENCES user (id)
);
INSERT INTO message VALUES(1,'12/07/2018',13,13,'Team-oriented stable capacity','Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','TRUE');
INSERT INTO message VALUES(2,'04/11/2018',2,1,'Optimized national secured line','Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.','FALSE');
INSERT INTO message VALUES(3,'05/08/2018',1,18,'Multi-lateral background secured line','Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.','FALSE');
INSERT INTO message VALUES(4,'12/24/2018',19,5,'Ameliorated analyzing knowledge user','Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.','TRUE');
INSERT INTO message VALUES(5,'11/02/2018',13,16,'Open-source bottom-line functionalities','Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','FALSE');
INSERT INTO message VALUES(6,'02/14/2018',21,21,'Adaptive cohesive throughput','Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','FALSE');
INSERT INTO message VALUES(7,'09/02/2018',2,3,'Open-architected multimedia access','Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.','TRUE');
INSERT INTO message VALUES(8,'06/20/2018',21,2,'Customer-focused system-worthy hierarchy','Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.','FALSE');
INSERT INTO message VALUES(9,'11/30/2018',5,4,'Configurable stable alliance','Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui.','TRUE');
INSERT INTO message VALUES(10,'06/26/2018',7,12,'Re-engineered background internet solution','Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.','TRUE');
INSERT INTO message VALUES(11,'11/15/2018',17,18,'Reactive global product','Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.','FALSE');
INSERT INTO message VALUES(12,'12/08/2018',13,4,'Integrated content-based policy','In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.','TRUE');
INSERT INTO message VALUES(13,'01/15/2018',18,18,'Down-sized maximized interface','Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.','TRUE');
INSERT INTO message VALUES(14,'08/05/2018',2,3,'Horizontal real-time throughput','Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.','FALSE');
INSERT INTO message VALUES(15,'01/06/2018',6,4,'Triple-buffered explicit policy','Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.','FALSE');
INSERT INTO message VALUES(16,'04/28/2018',15,10,'Self-enabling interactive Graphic Interface','Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.','TRUE');
INSERT INTO message VALUES(17,'09/27/2018',18,7,'Function-based cohesive alliance','Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','FALSE');
INSERT INTO message VALUES(18,'06/21/2018',17,2,'Team-oriented global paradigm','Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.','FALSE');
INSERT INTO message VALUES(19,'04/15/2018',19,19,'Triple-buffered disintermediate complexity','Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero.','FALSE');
INSERT INTO message VALUES(20,'09/20/2018',9,13,'Optimized directional moderator','Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.','FALSE');
INSERT INTO message VALUES(21,'11/01/2018',18,15,'User-friendly dedicated challenge','Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo.','FALSE');
INSERT INTO message VALUES(22,'08/12/2018',12,18,'Organic 5th generation time-frame','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.','TRUE');
INSERT INTO message VALUES(23,'12/01/2018',11,9,'Persistent full-range contingency','Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.','FALSE');
INSERT INTO message VALUES(24,'11/04/2018',4,16,'Re-engineered upward-trending open system','Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst.','FALSE');
INSERT INTO message VALUES(25,'05/31/2018',13,18,'Customer-focused regional service-desk','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.','FALSE');
INSERT INTO message VALUES(26,'03/25/2018',3,17,'Multi-layered analyzing adapter','Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.','FALSE');
INSERT INTO message VALUES(27,'03/15/2018',4,4,'Decentralized responsive infrastructure','In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor.','TRUE');
INSERT INTO message VALUES(28,'06/26/2018',6,4,'Assimilated didactic standardization','Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.','FALSE');
INSERT INTO message VALUES(29,'08/24/2018',21,12,'Inverse 6th generation algorithm','Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.','FALSE');
INSERT INTO message VALUES(30,'07/18/2018',14,14,'Assimilated heuristic moratorium','In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','TRUE');
INSERT INTO message VALUES(31,'10/06/2018',3,18,'Advanced secondary toolset','Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.','TRUE');
INSERT INTO message VALUES(32,'11/30/2018',3,16,'Multi-lateral real-time benchmark','Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.','FALSE');
INSERT INTO message VALUES(33,'09/20/2018',18,5,'Synergized context-sensitive policy','Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.','TRUE');
INSERT INTO message VALUES(34,'03/26/2018',17,1,'Realigned secondary hub','Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh.','FALSE');
INSERT INTO message VALUES(35,'12/28/2018',16,10,'Assimilated analyzing forecast','Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.','FALSE');
INSERT INTO message VALUES(36,'11/08/2018',11,13,'Diverse logistical circuit','Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy.','TRUE');
INSERT INTO message VALUES(37,'03/04/2018',14,3,'Organized bandwidth-monitored alliance','Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.','FALSE');
INSERT INTO message VALUES(38,'06/08/2018',8,17,'Monitored 24 hour installation','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.','FALSE');
INSERT INTO message VALUES(39,'07/11/2018',18,17,'Horizontal client-server knowledge user','Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.','TRUE');
INSERT INTO message VALUES(40,'06/03/2018',16,18,'Universal leading edge moratorium','Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.','FALSE');
INSERT INTO message VALUES(41,'02/08/2018',7,12,'Public-key composite model','In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.','TRUE');
INSERT INTO message VALUES(42,'01/30/2018',15,5,'Distributed actuating algorithm','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.','TRUE');
INSERT INTO message VALUES(43,'01/07/2018',3,9,'Assimilated well-modulated Graphic Interface','Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst.','TRUE');
INSERT INTO message VALUES(44,'06/14/2018',13,20,'Organic holistic definition','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.','TRUE');
INSERT INTO message VALUES(45,'07/03/2018',4,15,'Enhanced composite infrastructure','Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.','FALSE');
INSERT INTO message VALUES(46,'12/10/2018',2,14,'Progressive tangible strategy','In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl.','TRUE');
INSERT INTO message VALUES(47,'02/28/2018',12,21,'Centralized mission-critical task-force','Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.','TRUE');
INSERT INTO message VALUES(48,'07/14/2018',1,2,'Up-sized foreground benchmark','Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.','TRUE');
INSERT INTO message VALUES(49,'05/15/2018',17,13,'Digitized mission-critical internet solution','Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.','TRUE');
INSERT INTO message VALUES(50,'02/18/2018',13,9,'Cloned grid-enabled budgetary management','Morbi a ipsum. Integer a nibh. In quis justo.','TRUE');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('user',21);
INSERT INTO sqlite_sequence VALUES('message',50);
COMMIT;
