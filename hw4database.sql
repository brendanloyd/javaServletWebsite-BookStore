/***********************************************************
* Create the database named hw4, its tables, and a database user
************************************************************/


USE hw5;


CREATE TABLE Book (
  BookID INT NOT NULL AUTO_INCREMENT,
  CoverImage VARCHAR(400),
  Title VARCHAR(50),
  Price VARCHAR(50),
  ProductCode VARCHAR(50),
  
  PRIMARY KEY(BookID) 
);

INSERT INTO Book 
  (CoverImage, Title, Price, ProductCode)
VALUES 
  ('https://th.bing.com/th/id/OIP.gZutUOzzQ73i2vFBWldpzAAAAA?pid=ImgDet&rs=1', 'Game of Thrones', '30.00', '8601'),
  ('https://amc-theatres-res.cloudinary.com/v1579119293/amc-cdn/production/2/movies/40900/40917/Poster/p_800x1200_AMC_HungerGamesMockingjayPart1_12062018.jpg', 'The Hunger Games', '25.00', 'pf01'),
  ('https://th.bing.com/th/id/R.4ff51eb149ce9316d1fb6303e3b65b5c?rik=TbVl3ecMJ2bo8A&riu=http%3a%2f%2fmedia.npr.org%2fassets%2fbakertaylor%2fcovers%2ft%2fthe-maze-runner%2f9780385737951_custom-bc4950410127829105beca80a18b38977882d9ef-s6-c30.jpg&ehk=FSI%2bRMgkFxKM2ZQ02enEPgL98wM1d2eGpND6k7jiujw%3d&risl=&pid=ImgRaw&r=0', 'The Maze Runner', '25.00', 'pf02'),
  ('https://i.pinimg.com/originals/31/d1/6c/31d16cd115e1b49ddfb8db0bccdf8cd2.jpg', 'The Bitcoin Standard', '15.00', 'jr01');

 
 -- Create student and grant privileges

CREATE USER student@localhost IDENTIFIED BY 'sesame';

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP
ON hw5.*
TO student@localhost;

  
USE hw5;