-- Drop the database if it exists and create a new one
DROP DATABASE IF EXISTS realestatephp;
CREATE DATABASE realestatephp;
USE realestatephp;

-- Table structure for table `about`
CREATE TABLE about (
  id int(10) NOT NULL AUTO_INCREMENT,
  title varchar(100) NOT NULL,
  content longtext NOT NULL,
  image varchar(300) NOT NULL,
  PRIMARY KEY (id)
) ;

-- Insert data into `about`
INSERT INTO about (title, content, image) VALUES
('About Us', '<p>We are a leading real estate agency in Morocco, specializing in properties in Casablanca, Rabat, Marrakech, and other major cities.</p>', 'morocco.jpg'),
('Our Mission', '<p>Our mission is to provide exceptional real estate services to our clients, ensuring satisfaction and trust.</p>', 'mission.jpg'),
('Our Vision', '<p>Our vision is to become the most trusted real estate agency in Morocco, known for our professionalism and integrity.</p>', 'vision.jpg');

-- Table structure for table `admin`
CREATE TABLE admin (
  aid int(10) NOT NULL AUTO_INCREMENT,
  auser varchar(50) NOT NULL,
  aemail varchar(50) NOT NULL,
  apass varchar(50) NOT NULL,
  adob date NOT NULL,
  aphone varchar(15) NOT NULL,
  PRIMARY KEY (aid)
) ;

-- Insert data into `admin`
INSERT INTO admin (auser, aemail, apass, adob, aphone) VALUES
-- ('admin', 'admin@mail.com', 'ed775fc7100d30f0ff6c1dbff1a6fb11f349a17a', '1990-01-01', '0600000000'),
('admin', 'admin@mail.com', '1937', '2004-04-24', '0600000000');


-- Table structure for table `city`
CREATE TABLE city (
  cid int(50) NOT NULL AUTO_INCREMENT,
  cname varchar(100) NOT NULL,
  sid int(50) NOT NULL,
  PRIMARY KEY (cid)
) ;

-- Insert data into `city`
INSERT INTO city (cname, sid) VALUES
('Casablanca', 1), -- Casablanca is in Casablanca-Settat
('Rabat', 2),      -- Rabat is in Rabat-Salé-Kénitra
('Marrakech', 3),  -- Marrakech is in Marrakech-Safi
('Fès', 4),        -- Fès is in Fès-Meknès
('Tanger', 5),     -- Tanger is in Tanger-Tétouan-Al Hoceïma
('Agadir', 6),     -- Agadir is in Souss-Massa
('Oujda', 7),      -- Oujda is in Oriental
('Béni Mellal', 8),-- Béni Mellal is in Béni Mellal-Khénifra
('Laâyoune', 9),   -- Laâyoune is in Laâyoune-Sakia El Hamra
('Errachidia', 10),-- Errachidia is in Drâa-Tafilalet
('Dakhla', 11);    -- Dakhla is in Dakhla-Oued Ed-Dahab

-- Table structure for table `contact`
CREATE TABLE contact (
  cid int(50) NOT NULL AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  phone varchar(20) NOT NULL,
  subject varchar(100) NOT NULL,
  message varchar(250) NOT NULL,
  PRIMARY KEY (cid)
) ;

-- Insert data into `contact`
INSERT INTO contact (name, email, phone, subject, message) VALUES
('Karim', 'karim@mail.com', '0612345678', 'Inquiry', 'I am interested in a property in Casablanca.'),
('Fatima', 'fatima@mail.com', '0623456789', 'Feedback', 'Your service was excellent!'),
('Youssef', 'youssef@mail.com', '0634567890', 'Question', 'Do you have properties in Marrakech?'),
('Leila', 'leila@mail.com', '0645678901', 'Inquiry', 'I need a villa in Rabat.'),
('Ahmed', 'ahmed@mail.com', '0656789012', 'Feedback', 'Thank you for helping me find my dream home.');

-- Table structure for table `feedback`
CREATE TABLE feedback (
  fid int(50) NOT NULL AUTO_INCREMENT,
  uid int(50) NOT NULL,
  fdescription varchar(300) NOT NULL,
  status int(1) NOT NULL,
  date datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (fid)
) ;

-- Insert data into `feedback`
INSERT INTO feedback (uid, fdescription, status) VALUES
(1, 'Great service! Found my dream home in Casablanca.', 1),
(2, 'The team was very professional and helpful.', 1),
(3, 'I highly recommend this agency for real estate services.', 1),
(4, 'The property I bought was exactly as described.', 1),
(5, 'Thank you for your excellent support throughout the process.', 1);

-- Table structure for table `property`
CREATE TABLE property (
  pid int(50) NOT NULL AUTO_INCREMENT,
  title varchar(200) NOT NULL,
  pcontent longtext NOT NULL,
  type varchar(100) NOT NULL,
  bhk varchar(50) NOT NULL,
  stype varchar(100) NOT NULL,
  bedroom int(50) NOT NULL,
  bathroom int(50) NOT NULL,
  balcony int(50) NOT NULL,
  kitchen int(50) NOT NULL,
  hall int(50) NOT NULL,
  floor varchar(50) NOT NULL,
  size int(50) NOT NULL,
  price int(50) NOT NULL,
  location varchar(200) NOT NULL,
  city varchar(100) NOT NULL,
  state varchar(100) NOT NULL,
  feature longtext NOT NULL,
  pimage varchar(300) NOT NULL,
  pimage1 varchar(300) NOT NULL,
  pimage2 varchar(300) NOT NULL,
  pimage3 varchar(300) NOT NULL,
  pimage4 varchar(300) NOT NULL,
  uid int(50) NOT NULL,
  status varchar(50) NOT NULL,
  mapimage varchar(300) NOT NULL,
  topmapimage varchar(300) NOT NULL,
  groundmapimage varchar(300) NOT NULL,
  totalfloor varchar(50) NOT NULL,
  date datetime NOT NULL DEFAULT current_timestamp(),
  isFeatured int(11) DEFAULT NULL,
  PRIMARY KEY (pid)
) ;


INSERT INTO property (title, pcontent, type, bhk, stype, bedroom, bathroom, balcony, kitchen, hall, floor, size, price, location, city, state, feature, pimage, pimage1, pimage2, pimage3, pimage4, uid, status, mapimage, topmapimage, groundmapimage, totalfloor, date, isFeatured) VALUES
('Luxury Apartment in Casablanca', '<p>This is a luxurious apartment located in the heart of Casablanca. It offers stunning views of the city and is close to all major amenities.</p>', 'apartment', '3 BHK', 'sale', 3, 2, 1, 1, 1, '5th Floor', '150 ', 2500000, 'Near Morocco Mall', 'Casablanca', 'Casablanca-Settat', '<p>Features include a swimming pool, gym, and 24/7 security.</p>', 'casablanca1.jpg', 'casablanca2.jpg', 'casablanca3.jpg', 'casablanca4.jpg', 'casablanca5.jpg', 1, 'available', 'map1.jpg', 'topmap1.jpg', 'groundmap1.jpg', '5 Floors', '2022-08-05 12:00:00', 1),
('Villa in Rabat', '<p>This beautiful villa is located in a quiet neighborhood in Rabat. It has a large garden and modern amenities.</p>', 'villa', '4 BHK', 'rent', 4, 3, 2, 1, 1, 'Ground Floor', '2000 ', 15000, 'Souissi', 'Rabat', 'Rabat-Salé-Kénitra', '<p>Features include a private pool, garden, and parking.</p>', 'casablanca1.jpg', 'casablanca2.jpg', 'casablanca3.jpg', 'casablanca4.jpg', 'casablanca5.jpg', 2, 'available', 'map1.jpg', 'casablanca6.jpg', 'casablanca7.jpg', '2 Floors', '2022-08-05 12:00:00', 0),
('Riad in Marrakech', '<p>This traditional Riad is located in the Medina of Marrakech. It offers a unique Moroccan experience.</p>', 'house', '2 BHK', 'sale', 2, 1, 1, 1, 1, '1st Floor', '800 ', 1200000, 'Medina', 'Marrakech', 'Marrakech-Safi', '<p>Features include a courtyard, terrace, and traditional decor.</p>', 'casablanca1.jpg', 'casablanca2.jpg', 'casablanca3.jpg', 'casablanca4.jpg', 'casablanca5.jpg', 3, 'available', 'map1.jpg', 'casablanca6.jpg', 'casablanca7.jpg', '1 Floor', '2022-08-05 12:00:00', 1),
('Modern Apartment in Rabat', '<p>This modern apartment is located in the heart of Rabat, close to all amenities and public transport.</p>', 'apartment', '2 BHK', 'sale', 2, 2, 1, 1, 1, '3rd Floor', '1200 ', 1800000, 'Agdal', 'Rabat', 'Rabat-Salé-Kénitra', '<p>Features include a gym, swimming pool, and 24/7 security.</p>', 'casablanca1.jpg', 'casablanca2.jpg', 'casablanca3.jpg', 'casablanca4.jpg', 'casablanca5.jpg', 2, 'available', 'map1.jpg', 'topmap1.jpg', 'groundmap1.jpg', '5 Floors', '2022-08-05 12:00:00', 1),
('Luxury Villa in Marrakech', '<p>This luxury villa is located in the Palmeraie area of Marrakech, offering privacy and stunning views.</p>', 'villa', '5 BHK', 'rent', 5, 4, 3, 2, 2, 'Ground Floor', '3000 ', 25000, 'Palmeraie', 'Marrakech', 'Marrakech-Safi', '<p>Features include a private pool, garden, and parking for 4 cars.</p>', '111.jpg', '222.jpg', '333.jpg', '444.jpg', '555.jpg', 3, 'available', 'map1.jpg', 'casablanca6.jpg', 'casablanca7.jpg', '2 Floors', '2022-08-05 12:00:00', 1),
('Cozy Apartment in Casablanca', '<p>This cozy apartment is perfect for small families, located in a quiet neighborhood in Casablanca.</p>', 'apartment', '1 BHK', 'sale', 1, 1, 1, 1, 1, '2nd Floor', '800 ', 900000, 'Ain Diab', 'Casablanca', 'Casablanca-Settat', '<p>Features include a balcony, modern kitchen, and close proximity to the beach.</p>', '01.jpg', '02.jpg', '03.jpg', '04.jpg', '05.jpg', 1, 'available', 'map1.jpg', 'topmap1.jpg', 'groundmap1.jpg', '4 Floors', '2022-08-05 12:00:00', 0),
('Spacious Villa in Fès', '<p>This spacious villa is located in the historic city of Fès, offering a blend of traditional and modern architecture.</p>', 'villa', '4 BHK', 'sale', 4, 3, 2, 2, 1, 'Ground Floor', '2500 ', 3000000, 'Fès Medina', 'Fès', 'Fès-Meknès', '<p>Features include a courtyard, terrace, and traditional Moroccan decor.</p>', '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 4, 'available', 'map1.jpg', 'casablanca6.jpg', 'casablanca7.jpg', '2 Floors', '2022-08-05 12:00:00', 1),
('Apartment with Sea View in Agadir', '<p>This apartment offers stunning sea views and is located in the popular tourist destination of Agadir.</p>', 'apartment', '2 BHK', 'rent', 2, 2, 1, 1, 1, '5th Floor', '1500 ', 12000, 'Agadir Beach', 'Agadir', 'Souss-Massa', '<p>Features include a balcony, modern kitchen, and close proximity to the beach.</p>', '11.jpg', '22.jpg', '33.jpg', '44.jpg', '55.jpg', 5, 'available', 'map1.jpg', 'topmap1.jpg', 'groundmap1.jpg', '6 Floors', '2022-08-05 12:00:00', 0),
('Traditional Riad in Marrakech', '<p>This traditional Riad is located in the heart of the Marrakech Medina, offering an authentic Moroccan experience.</p>', 'house', '3 BHK', 'sale', 3, 2, 1, 1, 1, '1st Floor', '1000 ', 1500000, 'Marrakech Medina', 'Marrakech', 'Marrakech-Safi', '<p>Features include a courtyard, terrace, and traditional Moroccan decor.</p>', '111.jpg', '222.jpg', '333.jpg', '444.jpg', '555.jpg', 6, 'available', 'map1.jpg', 'casablanca6.jpg', 'casablanca7.jpg', '1 Floor', '2022-08-05 12:00:00', 1),
('Modern Apartment in Tanger', '<p>This modern apartment is located in the bustling city of Tanger, close to all amenities and public transport.</p>', 'apartment', '2 BHK', 'rent', 2, 2, 1, 1, 1, '4th Floor', '1300 ', 10000, 'Tanger City Center', 'Tanger', 'Tanger-Tétouan-Al Hoceïma', '<p>Features include a gym, swimming pool, and 24/7 security.</p>', '01.jpg', '02.jpg', '03.jpg', '04.jpg', '05.jpg', 7, 'available', 'map1.jpg', 'topmap1.jpg', 'groundmap1.jpg', '5 Floors', '2022-08-05 12:00:00', 0),
('Luxury Villa in Casablanca', '<p>This luxury villa is located in the upscale neighborhood of Casablanca, offering privacy and stunning views.</p>', 'villa', '6 BHK', 'sale', 6, 5, 4, 2, 2, 'Ground Floor', '4000 ', 5000000, 'Anfa', 'Casablanca', 'Casablanca-Settat', '<p>Features include a private pool, garden, and parking for 6 cars.</p>', '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 8, 'available', 'map1.jpg', 'casablanca6.jpg', 'casablanca7.jpg', '3 Floors', '2022-08-05 12:00:00', 1),
('Apartment in Oujda', '<p>This apartment is located in the city of Oujda, close to all amenities and public transport.</p>', 'apartment', '1 BHK', 'rent', 1, 1, 1, 1, 1, '2nd Floor', '900 ', 8000, 'Oujda City Center', 'Oujda', 'Oriental', '<p>Features include a balcony, modern kitchen, and close proximity to the city center.</p>', '11.jpg', '22.jpg', '33.jpg', '44.jpg', '55.jpg', 9, 'available', 'map1.jpg', 'topmap1.jpg', 'groundmap1.jpg', '4 Floors', '2022-08-05 12:00:00', 0),
('Villa in Béni Mellal', '<p>This villa is located in the peaceful city of Béni Mellal, offering a quiet and serene environment.</p>', 'villa', '3 BHK', 'sale', 3, 2, 2, 1, 1, 'Ground Floor', '2000 ', 1800000, 'Béni Mellal City Center', 'Béni Mellal', 'Béni Mellal-Khénifra', '<p>Features include a garden, terrace, and parking for 2 cars.</p>', '111.jpg', '222.jpg', '333.jpg', '444.jpg', '555.jpg', 10, 'available', 'map1.jpg', 'casablanca6.jpg', 'casablanca7.jpg', '2 Floors', '2022-08-05 12:00:00', 0),
('Apartment in Laâyoune', '<p>This apartment is located in the city of Laâyoune, close to all amenities and public transport.</p>', 'apartment', '2 BHK', 'rent', 2, 2, 1, 1, 1, '3rd Floor', '1100 ', 9000, 'Laâyoune City Center', 'Laâyoune', 'Laâyoune-Sakia El Hamra', '<p>Features include a balcony, modern kitchen, and close proximity to the city center.</p>', '01.jpg', '02.jpg', '03.jpg', '04.jpg', '05.jpg', 11, 'available', 'map1.jpg', 'topmap1.jpg', 'groundmap1.jpg', '5 Floors', '2022-08-05 12:00:00', 0),
('Villa in Errachidia', '<p>This villa is located in the city of Errachidia, offering a peaceful and serene environment.</p>', 'villa', '4 BHK', 'sale', 4, 3, 2, 1, 1, 'Ground Floor', '2200 ', 2000000, 'Errachidia City Center', 'Errachidia', 'Drâa-Tafilalet', '<p>Features include a garden, terrace, and parking for 3 cars.</p>', '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 12, 'available', 'map1.jpg', 'casablanca6.jpg', 'casablanca7.jpg', '2 Floors', '2022-08-05 12:00:00', 0),
('Apartment in Dakhla', '<p>This apartment is located in the city of Dakhla, close to all amenities and public transport.</p>', 'apartment', '1 BHK', 'rent', 1, 1, 1, 1, 1, '2nd Floor', '850 ', 7500, 'Dakhla City Center', 'Dakhla', 'Dakhla-Oued Ed-Dahab', '<p>Features include a balcony, modern kitchen, and close proximity to the beach.</p>', '11.jpg', '22.jpg', '33.jpg', '44.jpg', '55.jpg', 13, 'available', 'map1.jpg', 'topmap1.jpg', 'groundmap1.jpg', '4 Floors', '2022-08-05 12:00:00', 0),
('Luxury Apartment in Casablanca', '<p>This luxury apartment is located in the heart of Casablanca, offering stunning views of the city.</p>', 'apartment', '3 BHK', 'sale', 3, 2, 1, 1, 1, '5th Floor', '1500 ', 2500000, 'Near Morocco Mall', 'Casablanca', 'Casablanca-Settat', '<p>Features include a swimming pool, gym, and 24/7 security.</p>', 'casablanca1.jpg', 'casablanca2.jpg', 'casablanca3.jpg', 'casablanca4.jpg', 'casablanca5.jpg', 14, 'available', 'map1.jpg', 'topmap1.jpg', 'groundmap1.jpg', '5 Floors', '2022-08-05 12:00:00', 1),
('Villa in Rabat', '<p>This beautiful villa is located in a quiet neighborhood in Rabat, offering a peaceful environment.</p>', 'villa', '4 BHK', 'rent', 4, 3, 2, 1, 1, 'Ground Floor', '2000 ', 15000, 'Souissi', 'Rabat', 'Rabat-Salé-Kénitra', '<p>Features include a private pool, garden, and parking.</p>', '111.jpg', '222.jpg', '333.jpg', '444.jpg', '555.jpg', 15, 'available', 'map1.jpg', 'casablanca6.jpg', 'casablanca7.jpg', '2 Floors', '2022-08-05 12:00:00', 0),
('Riad in Marrakech', '<p>This traditional Riad is located in the Medina of Marrakech, offering a unique Moroccan experience.</p>', 'house', '2 BHK', 'sale', 2, 1, 1, 1, 1, '1st Floor', '800 ', 1200000, 'Medina', 'Marrakech', 'Marrakech-Safi', '<p>Features include a courtyard, terrace, and traditional Moroccan decor.</p>', '111.jpg', '222.jpg', '333.jpg', '444.jpg', '555.jpg', 16, 'available', 'map1.jpg', 'casablanca6.jpg', 'casablanca7.jpg', '1 Floor', '2022-08-05 12:00:00', 1);
-- Table structure for table `state`
CREATE TABLE state (
  sid int(50) NOT NULL AUTO_INCREMENT,
  sname varchar(100) NOT NULL,
  PRIMARY KEY (sid)
) ;

-- Insert data into `state`
INSERT INTO state (sname) VALUES
('Casablanca-Settat'),
('Rabat-Salé-Kénitra'),
('Marrakech-Safi'),
('Fès-Meknès'),
('Tanger-Tétouan-Al Hoceïma'),
('Souss-Massa'),
('Oriental'),
('Béni Mellal-Khénifra'),
('Laâyoune-Sakia El Hamra'),
('Drâa-Tafilalet'),
('Dakhla-Oued Ed-Dahab');

-- Table structure for table `user`
CREATE TABLE user (
  uid int(50) NOT NULL AUTO_INCREMENT,
  uname varchar(100) NOT NULL,
  uemail varchar(100) NOT NULL,
  uphone varchar(20) NOT NULL,
  upass varchar(50) NOT NULL,
  utype varchar(50) NOT NULL,
  uimage varchar(300) NOT NULL,
  PRIMARY KEY (uid)
) ;

-- Insert data into `user`
INSERT INTO user (uname, uemail, uphone, upass, utype, uimage) VALUES
('Ahmed', 'ahmed@mail.com', '0612345678', '6812f136d636e737248d365016f8cfd5139e387c', 'user', 'male.jpg'),
('Fatima', 'fatima@mail.com', '0623456789', '6812f136d636e737248d365016f8cfd5139e387c', 'agent', 'female.jpg'),
('Youssef', 'youssef@mail.com', '0634567890', '6812f136d636e737248d365016f8cfd5139e387c', 'builder', 'male.jpg'),
('Lina', 'lina@mail.com', '0645678901', '6812f136d636e737248d365016f8cfd5139e387c', 'user', 'female.jpg'),
('Karim', 'karim@mail.com', '0656789012', '6812f136d636e737248d365016f8cfd5139e387c', 'agent', 'male.jpg'),
('Sara', 'sara@mail.com', '0667890123', '6812f136d636e737248d365016f8cfd5139e387c', 'builder', 'female.jpg'),
('Omar', 'omar@mail.com', '0678901234', '6812f136d636e737248d365016f8cfd5139e387c', 'user', 'male.jpg'),
('Nadia', 'nadia@mail.com', '0689012345', '6812f136d636e737248d365016f8cfd5139e387c', 'agent', 'female.jpg'),
('Hassan', 'hassan@mail.com', '0690123456', '6812f136d636e737248d365016f8cfd5139e387c', 'builder', 'male.jpg'),
('Leila', 'leila@mail.com', '0601234567', '6812f136d636e737248d365016f8cfd5139e387c', 'user', 'female.jpg'),
('Khalid', 'khalid@mail.com', '0612345678', '6812f136d636e737248d365016f8cfd5139e387c', 'agent', 'male.jpg'),
('Amina', 'amina@mail.com', '0623456789', '6812f136d636e737248d365016f8cfd5139e387c', 'builder', 'female.jpg'),
('Younes', 'younes@mail.com', '0634567890', '6812f136d636e737248d365016f8cfd5139e387c', 'user', 'male.jpg'),
('Zahra', 'zahra@mail.com', '0645678901', '6812f136d636e737248d365016f8cfd5139e387c', 'agent', 'female.jpg'),
('Mehdi', 'mehdi@mail.com', '0656789012', '6812f136d636e737248d365016f8cfd5139e387c', 'builder', 'male.jpg'),
('Mohamed', 'mohamed@mail.com', '0612345678', '6812f136d636e737248d365016f8cfd5139e387c', 'user', 'male.jpg'),
('Aicha', 'aicha@mail.com', '0623456789', '6812f136d636e737248d365016f8cfd5139e387c', 'agent', 'female.jpg'),
('Hicham', 'hicham@mail.com', '0634567890', '6812f136d636e737248d365016f8cfd5139e387c', 'builder', 'male.jpg'),
('Samira', 'samira@mail.com', '0645678901', '6812f136d636e737248d365016f8cfd5139e387c', 'user', 'female.jpg'),
('Rachid', 'rachid@mail.com', '0656789012', '6812f136d636e737248d365016f8cfd5139e387c', 'agent', 'male.jpg'),
('Zineb', 'zineb@mail.com', '0667890123', '6812f136d636e737248d365016f8cfd5139e387c', 'builder', 'female.jpg'),
('Kawtar', 'kawtar@mail.com', '0678901234', '6812f136d636e737248d365016f8cfd5139e387c', 'user', 'male.jpg'),
('Anas', 'anas@mail.com', '0689012345', '6812f136d636e737248d365016f8cfd5139e387c', 'agent', 'female.jpg'),
('Imane', 'imane@mail.com', '0690123456', '6812f136d636e737248d365016f8cfd5139e387c', 'builder', 'male.jpg'),
('Said', 'said@mail.com', '0601234567', '6812f136d636e737248d365016f8cfd5139e387c', 'user', 'female.jpg'),
('Noura', 'noura@mail.com', '0612345678', '6812f136d636e737248d365016f8cfd5139e387c', 'agent', 'male.jpg'),
('Yassine', 'yassine@mail.com', '0623456789', '6812f136d636e737248d365016f8cfd5139e387c', 'builder', 'female.jpg'),
('Soukaina', 'soukaina@mail.com', '0634567890', '6812f136d636e737248d365016f8cfd5139e387c', 'user', 'male.jpg'),
('Adil', 'adil@mail.com', '0645678901', '6812f136d636e737248d365016f8cfd5139e387c', 'agent', 'female.jpg'),
('Laila', 'laila@mail.com', '0656789012', '6812f136d636e737248d365016f8cfd5139e387c', 'builder', 'male.jpg'),
('Reda', 'reda@mail.com', '0667890123', '6812f136d636e737248d365016f8cfd5139e387c', 'user', 'male.jpg'),
('Salma', 'salma@mail.com', '0678901234', '6812f136d636e737248d365016f8cfd5139e387c', 'agent', 'female.jpg'),
('Hamza', 'hamza@mail.com', '0689012345', '6812f136d636e737248d365016f8cfd5139e387c', 'builder', 'male.jpg'),
('Nadia', 'nadia2@mail.com', '0690123456', '6812f136d636e737248d365016f8cfd5139e387c', 'user', 'female.jpg'),
('Omar', 'omar2@mail.com', '0601234567', '6812f136d636e737248d365016f8cfd5139e387c', 'agent', 'male.jpg');
COMMIT;
