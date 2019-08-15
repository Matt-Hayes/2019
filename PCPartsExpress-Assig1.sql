-----------------------------------------------------------------------------------------
--------------------------PC Parts Express Database Creation-----------------------------
-----------------------------------------------------------------------------------------

--Reset database data

DROP TABLE [Transaction];
DROP TABLE Cart;
DROP TABLE Products;
DROP TABLE Category;
DROP TABLE [Admin];
DROP TABLE Customer;

-----------------------------------------------------------------------------------------
--------------------CREATE DATABASE------------------------------------------------------
-----------------------------------------------------------------------------------------


--Customer Table
CREATE TABLE Customer(
CustomerEmailAddress	VARCHAR(254),	--Customer Email Address unique ID
firstName		VARCHAR(24),	--Customer first name
lastName		VARCHAR(24),	--Customer last name
CustomerPassword		VARCHAR(128),	--Customers set password
billingAddress	VARCHAR(254),	--Customers billing address
[address]		VARCHAR(254),		--Addresses assigned to the account
contactNo		VARCHAR(10),	--Contact number of the customer
PRIMARY KEY (CustomerEmailAddress))		--Primary key of the table

--Admin Table
CREATE TABLE [Admin](
AdminEmailAddress	VARCHAR(254),	--Email address of Admin
firstName		VARCHAR(24),	--Admins first name
lastName		VARCHAR(24),	--Admins last name
AdminPassword		VARCHAR(128),	--Admin set password
PRIMARY KEY (AdminEmailAddress))		--Primary key of the table

--Category Table
CREATE TABLE Category(
categoryName	VARCHAR(50),	--Name of the product category
PRIMARY KEY (categoryName))		--Primary key of the table

--Product Table
CREATE TABLE Products(
productID		int NOT NULL IDENTITY(1, 1),		--Unique ID for a product
categoryName	VARCHAR(50),		--Unique ID for a category
productName		VARCHAR(100),	--Product Name
model			VARCHAR(100),	--Product model
manufacturer	VARCHAR(100),	--Product Manufacturer 
price			DECIMAL(19,2),	--Product Price per Unit
stockCount		SMALLINT,		--Stock count of product
[description]	VARCHAR(1000),	--Description of product (contains keywords for searching)
releaseDate		DATETIME,		--Product release date
PRIMARY KEY (productID),			--Primary key of the table
FOREIGN KEY (categoryName) REFERENCES Category) --Foreign key used to select category

--Cart Items Table
CREATE TABLE Cart(
cartID			int NOT NULL IDENTITY(1, 1),		--Unique ID for the cart
productID		int,		--Unique ID for a product
CustomerEmailAddress	VARCHAR(254),	--Customer Email Address unique ID
quantity		SMALLINT,		--Quantity of added items
totalCost		DECIMAL(19,4),	--Cost of total items
PRIMARY KEY (cartID),			--Primary key of the table
FOREIGN KEY (productID) REFERENCES Products,		--foreign key used to select product
FOREIGN KEY (CustomerEmailAddress) REFERENCES Customer)	--foreign key used to assign customer

--Transaction Table
CREATE TABLE [Transaction](
transactionID	int NOT NULL IDENTITY(1, 1),		--Unique ID for a transaction
CustomerEmailAddress	VARCHAR(254),	--Customer Email Address unique ID
orderTotal		DECIMAL(19,4),	--Total amount of transaction including shipping
cartID			int,		--Unique ID of the cart contents for the transaction
paymentType		VARCHAR(100),	--Type of payment used
[date]			DATETIME,		--Date of transaction
tracking		VARCHAR(25),	--Tracking information of order
[status]		VARCHAR(100),	--Status of order
PRIMARY KEY (transactionID),		--Primary key of the table
FOREIGN KEY (CustomerEmailAddress) REFERENCES Customer,  --foreign key used to select customer
FOREIGN KEY (cartID) REFERENCES Cart)			--foreign key used to assign cart

-----------------------------------------------------------------------------------------
-----------POPULATE DATABASE-------------------------------------------------------------
-----------------------------------------------------------------------------------------

--Customer Table Data
INSERT INTO Customer (CustomerEmailAddress, firstName, lastName, CustomerPassword, billingAddress, [address], contactNo)
VALUES ('MylaDennis@mail.com','Myla','Dennis','password1','1 Smith Street, someplace, NSW','1 Smith Street, someplace, NSW','0000000001')
INSERT INTO Customer (CustomerEmailAddress, firstName, lastName, CustomerPassword, billingAddress, [address], contactNo)
VALUES ('DwayneCompton@mail.com','Dwayne','Compton','password2','2 Smith Street, someplace, NSW','2 Smith Street, someplace, NSW','000000002')
INSERT INTO Customer (CustomerEmailAddress, firstName, lastName, CustomerPassword, billingAddress, [address], contactNo)
VALUES ('VanReyes@mail.com','Van','Reyes','password3','1 Smith Street, someplace, NSW','1 Smith Street, someplace, NSW','0000000003')
INSERT INTO Customer (CustomerEmailAddress, firstName, lastName, [CustomerPassword], billingAddress, [address], contactNo)
VALUES ('ReynaSantiago@mail.com','Reyna','Santiago','password1','','4 Smith Street, Someplace, 4567, NSW','000000002')
INSERT INTO Customer (CustomerEmailAddress, firstName, lastName, [CustomerPassword], billingAddress, [address], contactNo)
VALUES ('BarbaraLane@mail.com','Barbara','Lane','password1','','5 Smith Street, Someplace, 4567, NSW','000000002')
INSERT INTO Customer (CustomerEmailAddress, firstName, lastName, [CustomerPassword], billingAddress, [address], contactNo)
VALUES ('GilbertOneal@mail.com','Gilbert','Oneal','password1','','6 Smith Street, Someplace, 4567, NSW','000006302')
INSERT INTO Customer (CustomerEmailAddress, firstName, lastName, [CustomerPassword], billingAddress, [address], contactNo)
VALUES ('LolaBray@mail.com','Lola','Bray','password1','','7 Smith Street, Someplace, 4567, NSW','000001102')
INSERT INTO Customer (CustomerEmailAddress, firstName, lastName, [CustomerPassword], billingAddress, [address], contactNo)
VALUES ('JordenRodgers@mail.com','Jordan','Rogers','password1','','8 Smith Street, Someplace, 4567, NSW','000004502')
INSERT INTO Customer (CustomerEmailAddress, firstName, lastName, [CustomerPassword], billingAddress, [address], contactNo)
VALUES ('AniyahShaffer@mail.com','Aniyah','Shaffer','password1','','9 Smith Street, Someplace, 4567, NSW','000006902')
INSERT INTO Customer (CustomerEmailAddress, firstName, lastName, [CustomerPassword], billingAddress, [address], contactNo)
VALUES ('GiovaniMata@mail.com','Giovani','Mata','password1','','10 Smith Street, Someplace, 4567, NSW','000012002')
INSERT INTO Customer (CustomerEmailAddress, firstName, lastName, [CustomerPassword], billingAddress, [address], contactNo)
VALUES ('SalvadorChristian@mail.com','Salvador','Christian','password1','','11 Smith Street, Someplace, 4567, NSW','004500002')
INSERT INTO Customer (CustomerEmailAddress, firstName, lastName, [CustomerPassword], billingAddress, [address], contactNo)
VALUES ('MitchellGarrett@mail.com','Mitchell','Garrett','password1','','12 Smith Street, Someplace, 4567, NSW','000000002')
INSERT INTO Customer (CustomerEmailAddress, firstName, lastName, [CustomerPassword], billingAddress, [address], contactNo)
VALUES ('JonathanOrozco@mail.com','Jonathan','Orozco','password1','','13 Smith Street, Someplace, 4567, NSW','000000002')
INSERT INTO Customer (CustomerEmailAddress, firstName, lastName, [CustomerPassword], billingAddress, [address], contactNo)
VALUES ('KianDorsey@mail.com','Kian','Dorsey','password1','','14 Smith Street, Someplace, 4567, NSW','000000002')
INSERT INTO Customer (CustomerEmailAddress, firstName, lastName, [CustomerPassword], billingAddress, [address], contactNo)
VALUES ('ElizaHobbs@mail.com','Eliza','Hobbs','password1','','15 Smith Street, Someplace, 4567, NSW','000000002')

--Admin Table Data
INSERT INTO [Admin] (AdminEmailAddress, firstName, lastName, AdminPassword)
VALUES ('admin1@PPE.com','Skylar','Riddle','admin')
INSERT INTO [Admin] (AdminEmailAddress, firstName, lastName, AdminPassword)
VALUES ('admin2@PPE.com','Brett','Glenn','longsecureadminpassword')
INSERT INTO [Admin] (AdminEmailAddress, firstName, lastName, AdminPassword)
VALUES ('admin3@PPE.com','Skylar','Riddle','longsecureadminpassword')
INSERT INTO [Admin] (AdminEmailAddress, firstName, lastName, AdminPassword)
VALUES ('admin4@PPE.com','Brett','Glenn','longsecureadminpassword')
INSERT INTO [Admin] (AdminEmailAddress, firstName, lastName, AdminPassword)
VALUES ('admin5@PPE.com','Noe','Hale','longsecureadminpassword')
INSERT INTO [Admin] (AdminEmailAddress, firstName, lastName, AdminPassword)
VALUES ('admin6@PPE.com','Paige','Waller','longsecureadminpassword')
INSERT INTO [Admin] (AdminEmailAddress, firstName, lastName, AdminPassword)
VALUES ('admin7@PPE.com','Kate','Knight','longsecureadminpassword')

--Category Table Data
INSERT INTO Category (categoryName)
VALUES ('Case')
INSERT INTO Category (categoryName)
VALUES ('Motherboard')
INSERT INTO Category (categoryName)
VALUES ('CPU')
INSERT INTO Category (categoryName)
VALUES ('Cooler')
INSERT INTO Category (categoryName)
VALUES ('Memory')
INSERT INTO Category (categoryName)
VALUES ('GPU')
INSERT INTO Category (categoryName)
VALUES ('Storage')
INSERT INTO Category (categoryName)
VALUES ('PSU')
INSERT INTO Category (categoryName)
VALUES ('Monitor')
INSERT INTO Category (categoryName)
VALUES ('Mice')
INSERT INTO Category (categoryName)
VALUES ('Keyboards')

--Product Table Data
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Case','Case Black','CM 590 III','Cooler Master','69.00','10','The Cooler Master 590 III gives you the freedom to build a PC for any and all user needs. It can be a basic work PC for the office or a workhorse gaming rig with liquid cooling, full sized graphics cards, and multiple hard drives. Start out small and work your way up or fill this to the brim right out of the box. The CM 590 III is the hassle free solution to building the mid-tower of your dream','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Motherboard','Gaming WI-FI LGA 1151 ATX Motherboard','TUF B360-PRO','ASUS','189.00','10','Intel 8th Gen Socket 1151, B360 Chipset, 4x 2666MHz DDR4, PCI-E 3.0, 6x SATA3, 2x M.2 Socket 3, 2x USB 3.1 Gen2, 3x USB 3.1 Gen1 (1 Type-C, 2 internal), Intel Gigabit LAN, Realtek ALC887 8-Channel High Definition Audio CODEC, D-Sub, HDMI 1.4b, Aura Sync RGB, Military-grade TUF Components, GPU Temperature Sensing & Fan Xpert 4 Core, ATX form factor. Backed by a 3 year ASUS warranty.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('CPU','Core i5 7400','LGA1151','Intel','299.00','5','Intel Core i5 7400 3.0GHz (3.5GHz Turbo) Quad Core CPU, LGA1151, 6MB Cache, Max TDP 65W, Intel HD Graphics 630, BX80677I57400. Retail box including fan, heatsink and thermal paste. ','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description], releaseDate)
VALUES ('Case','CMP 501','CMP-501-1NWRT60-Au','Cooler Master','95.00','10','The Cooler Master CMP-501 Case is a durable, easy to build, easy to use chassis. Its paired with the new Elite V3 power supply which is a dependable choice for the everyday PC user. The included 120mm quiet fan, PCI-E support, and global 3 year Cooler Master warranty delivers a PSU that provides function and resilience you can count on. ','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Case','Cosmos','C700M','Cooler Master','95.00','10','The Cooler Master CMP-501 Case is a durable, easy to build, easy to use chassis. Its paired with the new Elite V3 power supply which is a dependable choice for the everyday PC user. The included 120mm quiet fan, PCI-E support, and global 3 year Cooler Master warranty delivers a  PSU that provides function and resilience you can count on. ','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Case','Carbide','270R','Corsair','89.00','7','The Corsair Carbide Series 270R is compact and engineered for building high-performance yet minimalist systems. It features a builder-friendly interior layout, versatile cooling options, expansive storage space, built-in cable routing, great airflow and much more. The unobstructive exterior panels provide an understated look for an overall clean and minimalist design.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Case','Enthoo Evolv','X DRGB','Phanteks ','299.00','2','The Phanteks Evolv X is designed to utilise space efficiently, providing you with the ultimate flexibility to customise your desired configuration. Whether its a high-end water-cooling showcase, professional data storage system or even a dual-system PC, the Evolv X makes it possible while maintaining a mid-tower form factor.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Case','Enthoo Primo ','Ultimate Chassis Black','Phanteks ','299.00','3','The Phanteks Enthoo Primo represents a stunning take on the design and function of a case. Offering exceptional out of the box water-cooling support for a case of this form factor while still providing excellent air cooling with 5 silent 140mm fans included. The case has been designed with a thermally isolated PSU compartment, which keeps the heat from the PSU away from the rest of the components, while enabling an ultra clean cable management system','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Motherboard','B360M','HD3 Motherboard ','Gigabyte','115.00','3','Intel 8th Gen Socket 1151, B360 Chipset, 2x 2666MHz DDR4, PCI-E 3.0, 6x SATA3, 1x M.2 Socket 3, 6x USB 3.1 Gen1 (4 rear, 2 internal), Gigabit LAN, 7.1Ch HD Audio, Smart Fan 5, GIGABYTE UEFI DualBIOS, D-Sub, DVI-D, HDMI, Micro ATX form factor','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Motherboard','Prime H310I','+R2.0 ITX Motherboard','ASUS','129.00','2','Intel 8th Gen Socket 1151, Intel H310 Chipset, 2x 2666MHz DDR4 memory, 1x PCI-E 3.0, 4x SATA3, 1x M.2 Socket 3, 4x USB 3.1 (2 rear, 2 internal), 1x Gigabit LAN, HDMI, DVI-D, D-Sub, Realtek ALC887 8-Channel High Definition Audio CODEC, Mini ITX Form Factor.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Motherboard','MSI B360','Gaming Plus Motherboard','MSI','149.00','0','Intel 8th Gen Socket 1151, B360 Chipset, 4x 2666MHz DDR4, PCI-E 3.0, 5x SATA3, 1x Turbo M.2, 2x USB 3.1 Gen2 (1 Type-A + 1 Type-C), 4x USB 3.1 Gen1, Intel Gigabit LAN, 8-Channel (7.1) HD Audio with Audio Boost, DisplayPort, DVI-D, Mystic Light Sync, ATX form factor.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Motherboard','Prime Motherboard','X399-A','ASUS','429.00','1','Socket TR4 for AMD Threadripper processors, AMD X399 Chipset, 8x 3600MHz DDR4 (OC), 6x SATA3, 2x M.2 Socket 3, 1x U.2 port, 2x USB 3.1 Gen2 ports (1 Type-A, 1 Type-C), 12x USB 3.1 Gen1 ports (8 rear, 4 internal), Gigabit LAN, Realtek ALC S1220A 8-Channel High Definition Audio CODEC featuring Crystal Sound 3, ROG Aura RGB lighting, 5-Way Optimization, Extended ATX form factor.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Motherboard','Zenith Extreme Motherboard','ROG Alpha','ASUS','999.00','1','Socket TR4 for AMD Threadripper processors, AMD X399 Chipset, 8x 3600MHz DDR4 (OC), 8x SATA3, 3x M.2 Socket 3, 1x U.2 port, 4x USB 3.1 Gen2 ports (3 Type-A, 1 Type-C), 12x USB 3.1 Gen1 ports (8 rear, 4 internal), Onboard Aquantia 10Gbps LAN, Wireless 801.11ac, Bluetooth 5.0, ROG SupremeFX 8-Channel High Definition Audio CODEC S1220, ROG Aura RGB lighting, 5-Way Optimization, Extended ATX form factor. Built to take command , ROG Zenith Extreme Alpha releases the full might of the 32-core AMD Threadripper processor, while keeping thermals under control with intelligent cooling and an SOC heatsink designed especially for the CPUs monstrous power.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Motherboard','Creation Motherboard','MEG X399','MSI','749.00','1','Socket TR4 for 2nd Gen AMD Threadripper processors, AMD X399 Chipset, 8x 3600MHz+ DDR4 (OC), 8x SATA3, 3x M.2 slots, 2x USB 3.1 Gen1 ports (1 Type-A, 1 Type-C), 12x USB 3.1 Gen1 ports (8 rear, 4 internal), 2x Intel Gigabit LAN, Dual-band wireless 802.11ac, Bluetooth 5, 7.1Ch Realtek ALC1220 codec, AUDIO BOOST 4 with NAHIMIC, Mystic Light Sync RGB, E-ATX form factor. MEG X399 CREATION comes with a unique look and feel inspired by the concept of element explosion. Packed with exclusive features to unleash the overall performance for incredible 32 cores CPU. Tailor-made for designers and content creators, the features and design perfectly meet the demanding requirements for creating your own masterpiece.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('CPU','9900K Processor','Core i9','Intel','815.00','1','Intel Core i9 9900K 3.6GHz (5GHz Turbo) 8 Core Desktop Processor, 16 Thread Unlocked CPU, LGA1151, 16MB SmartCache, 95W TDP, Intel UHD Graphics 630, BX80684I99900K. Does not include fan, heatsink or thermal paste.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('CPU','9900KF Processor','Core i9','Intel','769.00','1','Intel Core i9 9900KF 3.6GHz (5GHz Turbo) 8 Core, 16 Thread Unlocked Desktop Processor, LGA1151, 16MB SmartCache, 95W TDP, BX80684I99900KF. Does not include fan, heatsink or thermal paste.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('CPU','9700KF Processor','Core i7','Intel','599.00','1','Intel Core i7 9700KF 3.6GHz (4.9GHz Turbo) 8 Core, 8 Thread Unlocked Desktop Processor, LGA1151, 12MB SmartCache, 95W TDP, BX80684I79700KF. Does not include fan, heatsink or thermal paste.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('CPU','9700K Processor','Core i7','Intel','649.00','1','Intel Core i7 9700K 3.6GHz (4.9GHz Turbo) 8 Core, 8 Thread Unlocked Desktop Processor, LGA1151, 12MB SmartCache, 95W TDP, Intel UHD Graphics 630, BX80684I79700K. Does not include fan, heatsink or thermal paste. ','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('CPU','Threadripper 2920X','AMD Ryzen Processor','AMD','999.00','1','AMD Ryzen Threadripper 2920X 12 Core 24 Thread CPU, 3.5GHz base, 4.3GHz Boost, 180W TDP, 32MB L3 cache using the TR4 Socket. No cooler included, ASETEK socket TR4 bracket included. 12 cores provide an astonishing 24 threads of simultaneous multi-processing power, while the vast I/O from the enthusiast-grade AMD X399 platform stand ready to feed the beast.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('CPU','Threadripper 2950X','AMD Ryzen Processor','AMD','1339.00','1','AMD Ryzen Threadripper 2950X 16 Core 32 Thread CPU, 3.5GHz base, 4.4GHz Boost, 180W TDP, 32MB L3 cache using the TR4 Socket. No cooler included, ASETEK socket TR4 bracket included. 16 cores provide an astonishing 32 threads of simultaneous multi-processing power, while 40MB of combined cache and vast I/O from the enthusiast-grade AMD X399 platform stand ready to feed the beast','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('CPU','Threadripper 2970WX','AMD Ryzen Processor','AMD','1839.00','1','AMD Ryzen Threadripper 2970WX 24 Core 48 Thread CPU, 3GHz base, 4.2GHz Boost, 250W TDP, 64MB L3 cache using the TR4 Socket. No cooler included, ASETEK socket TR4 bracket included. 24 cores provide an astonishing 48 threads of simultaneous multi-processing power, while the vast I/O from the enthusiast-grade AMD X399 platform stand ready to feed the beast.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('CPU','Threadripper 2990WX','AMD Ryzen Processor','AMD','2599.00','0','AMD Ryzen Threadripper 2990WX 32 Core 64 Thread CPU, 3.0GHz base, 4.2GHz Boost, 250W TDP, 64MB L3 cache using the TR4 Socket. No cooler included, ASETEK socket TR4 bracket included.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Cooler','Wraith Max RGB','AMD CPU Cooler','AMD','59.00','5','AMD have listened to customer feedback and designed their newest coolers to deliver near-silent operation, bolstered with capable thermal hardware. The AMD Wraith Max represents AMD’s ultimate cooling solution for air-cooled processors. Now available for purchase as a standalone product, the Wraith Max is compatible with AMD Ryzen and 7th Gen A-Series and Athlon processors (socket AM4), and supports user-controlled RGB illumination on socket AM4 motherboards like the ASUS Aura sync, Gigabyte RGB Fusion, MSI Mystic Light, Biostar VIVID LED DJ, and ASRock RGB LED​.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Cooler','Ryujin 240 OLED','AIO CPU Cooler','ASUS','299.00','2','The ROG Ryujin is the flagship all-in-one cooler for high-end builds designed to deliver the best thermal performance. Featuring Noctua IndustrialPPC fans for cooler and quieter operation, plus an embedded fan in the pump housing for additional cooling to the VRM and M.2, ROG Ryujin keeps your system running its absolute best. Coupled with a LiveDash OLED that displays system stats or custom graphics and Aura Sync RGB lighting, ROG Ryujin is the ultimate thermal solution destined to become a vital part of your gaming rig.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Cooler','GeminII M5 LED','Low Profile CPU Cooler','Cooler Master','39.00','10','The Cooler Master GeminII M5 LED low-profile CPU air cooler packs even more performance into its compact design with a red LED and five heat pipes using Direct Contact technology. Not only is the horizontal configuration fit for tighter setups like ITX or home theatre PCs, but it also provides a substantial boost over stock temperatures and adds cooling relief to your motherboard components.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Cooler','Platinum SE 240mm Liquid CPU Cooler','Hydro H100i RGB','Corsair','229.00','2','The Corsair Hydro Series H100i RGB Platinum SE is an all-in-one liquid CPU cooler built for extreme cooling with a 240mm radiator and vivid RGB lighting from 24 LEDs. Two Corsair LL RGB 120mm PWM fans run up to 2,000 RPM, alongside an optimised cold plate and pump design that delivers high-performance Hydro Series cooling. Take control with Corsair iCUE software to customise lighting effects and enable Zero RPM mode at low temperatures. Easy to install and compatible with most major CPU sockets, the H100i RGB Platinum pairs killer looks with chiller performance. Backed by a 5 year Corsair warranty','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Cooler','Hybrid Liquid Cooler','A40','Cryorig','139.00','2','The Cryorig A-series Hybrid Liquid Cooler combines the best of both air and liquid cooling to keep all component temperatures within your system as low as possible. The high-end radiator comes with Cryorigs QF-series fans featuring their Quad Air Inlet system allowing extra air intake and exhaust volume. Equipped with their new PWM Airflow Fan, this Hybrid Liquid Cooler delivers uncompromising performance on demand. Backed by a 3 year warranty.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Cooler','Gamer Storm Castle','240 RGB AIO CPU Cooler','Deepcool','149.00','2','DEEPCOOL, the company that specialises in water-cooled and illuminated cases for the PC enthusiast has just introduced a brand new AIO liquid cooler - CASTLE 240RGB, suitable for Intel and AMD based systems. Its features built-in double window panes and a 16.7M true colour lighting system which provide a perfect display of aesthetic illumination. Its ultra-large, pure copper CPU block and its optimised E-shaped micro water channel is designed to enlarge heat contact areas and effectively enhance heat circulation efficiency, meeting users needs for high performance and aesthetics.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Cooler','AORUS ATC700 CPU Cooler','ATC700','Gigabyte','99.00','2','The Gigabyte AORUS ATC700 CPU Cooler offers RGB fusion technology with support for 16.8 million customisable colour lighting, dual 120mm 2 ball bearing PWN fans, three 10mm high performance copper heat-pipes and heat-pipe direct touch technology. All of this combines to deliver incredible cooling performance for your CPU allowing you to push it to the limit.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Cooler','NZXT 120mm AIO Liquid CPU Cooler','Kraken M22','NZXT','135.00','2','The NZXT Kraken M22 features two individually addressable RGB channels and their signature infinite-mirror effect for stunning lighting, using CAM’s intuitive controls. It includes a precision engineered fan and premium build quality, and is backed by the assurance of a 3-year NZXT warranty.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Cooler','Noctua NH-D14 CPU Cooler','NH-D14','Noctua','105.00','2','Combining a massive six heatpipe dual radiator design with an exquisite NF-P14/NF-P12 dual fan configuration, the NH-D14 is built for ultimate quiet cooling performance. Topped off with a tube of Noctuas award-winning NT-H1 thermal compound as well as the new SecuFirm2 multi-socket mounting system, the NH-D14 is an elite choice for the highest demands in premium quality quiet cooling. "Please check Noctuas NH-D14 Compatibility page for Motherboard and Memory compatibility"','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Cooler','Thermaltake Floe Riing','RGB 240 CPU Cooler','Thermaltake','205.00','2','The Floe Riing RGB 240 TT Premium Edition is the world’s first 16.8 million colour liquid CPU cooler with two 120mm Riing Plus RGB fans and a LED waterblock. This cooler series features its extraordinary performance and superior quality. The large surface radiator plus high-performance waterblock and pump guarantees ultimate CPU cooling. The waterblock and the fans are manufactured with multiple addressable LEDs that can be controlled by Riing Plus RGB Software while functions within the software also allow users to monitor fan performance and track CPU temperature. Enjoy better cooling performance and greater CPU protection with one simple upgrade.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Memory','Team T-Force Dark 3200MHz 16GB (2x8GB) DDR4 Grey Black','3200MHz 16GB','Team T-Force','169.00','4','Team T-Force Dark TDGED416G3200HC16CDC01 16GB (2x8GB), 3200MHz DDR4, CL16-18-18-38, 1.35V. The Team Group design team has built a heat spreader with an all new exterior design concept. The only four-piece heat spreader in the market, it offers a vigorous look designed to add flair to your gaming system and offer improve cooling and performance for the memory at the same time. Supports Intel XMP 2.0 smart overclocking technology.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Memory','Corsair Dominator Platinum RGB 3000MHz 32GB (4x8GB) DDR4','3200MHz 32GB','Corsair','459.00','2','Corsair Dominator Platinum RGB CMT32GX4M4C3000C15 32GB (4x8GB) DDR4, 1.35V, 15-17-17-35, 3000MHz. The Dominator Platinum RGB series redefines premium DDR4 memory, with timeless iconic design, superior craftsmanship and aluminum construction that’s built to last. Powered by tightly-screened high-frequency memory chips, Dominator Platinum RGB ensures high frequency performance with generous room for overclocking thanks to a custom PCB cooled by Corsair’S patented DHX cooling technology. Use Corsair iCUE software to customize virtually limitless lighting effects from 12 ultra-bright, individually addressable RGB LEDs, and stay informed with real-time frequency and temperature monitoring. Complete with wide compatibility with the latest motherboards, Intel XMP 2.0 support for simple setup, and a limited lifetime warranty, this is DDR4 memory in a class of its own. ','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Memory','G.Skill Ripjaws V F4-3200C16D-32GVK 32GB (2x16GB) DDR4','F4-3200C16D-32GVK 32GB','G.Skill','309.00','2','G.Skill Ripjaws V Series F4-3200C16D-32GVK 32GB (2x16GB) 3200MHz DDR4, 1.35v, unbuffered 16-18-18-38, backed by a limited lifetime G.Skill warranty. The Ripjaws V Series DDR4 memory is designed for maximum compatibility and cutting-edge performance. It’s guaranteed to provide the best-in-class performance, compatibility, and stability with the widest range of motherboards.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Memory','Kingston HyperX Predator RGB HX432C16PB3AK2/16 16GB (2x8GB) DDR4','HX432C16PB3AK2/16 16GB','Kingston','199.00','2','Kingston HyperX Predator RGB 16GB (2x8GB) DDR4, 3200MHz, Unbuffered, CL16-18-18, 1.35V. Give your system brilliant RGB style and the performance needed to stay atop the food chain with ultra-fast HyperX Predator DDR4 RGB. Easily set up and show off your unique look thanks to HyperX’s Infrared Sync technology, no cables required. Predator DDR4 RGB stays cool while looking great, thanks to the aggressive black heat spreader designed to complement its dazzling light display. Boost your frame rate, keep your streams smooth, and power through your highlight reel rendering. 100-percent factory tested at speed, and backed by a lifetime warranty, dependable Predator DDR4 RGB gives you the best of both worlds: extreme performance and maximum peace of mind.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Memory','Corsair Vengeance CMZ16GX3M2A1600C9 16GB (2x8GB) DDR3','CMZ16GX3M2A1600C9 16GB','Corsair','149.00','2','Corsair high performance Vengeance memory module 16GB (2x8GB) 1600MHz 9-9-9-24, 1.5V for motherboards using AMD, Intel dual channel processors and upcoming 2nd Generation Intel Core platforms. Vengeance memory modules provide users with outstanding memory performance and stability. Each module is built using carefully selected DRAM to allow excellent overclocking performance.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Memory','Kingston HyperX Fury HX318C10FBK2/8 8GB (2x4GB) DDR3 Black','HX318C10FBK2/8 8GB','Kingston ','99.00','0','Kingston HyperX Fury Black, 1866Mhz DDR3, 10-11-10 @ 1.5v, unbuffered 2x4GB kit with a low profile heat spreader. Backed by a lifetime warranty. The Kingston HyperX Fury series is designed to offer high performance memory to everyone - not just overclockers. HyperX Fury will automatically recognise the host platform when installed, and overclock itself to the highest frequency supported by the board up to 1866Mhz. A bold asymmetric coloured heatspreader keeps the memory cool for those looking to push for more performance','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('GPU','MSI GeForce GTX 1660 Ti Ventus XS 6G OC','1660 Ti Ventus XS 6G','MSI ','449.00','4','The MSI GeForce GTX 1660 Ti Ventus XS 6G OC graphics card features a 1830MHz boost clock, 6GB 192-bit GDDR6 memory, PCI-E 3.0, OpenGL 4.5 support, DirectX 12 support, 1x HDMI 2.0b and 3x DisplayPort 1.4, NVIDIA Shadowplay and VR Ready. Backed by a 3 year MSI warranty.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('GPU','Gigabyte GeForce GTX 1660 Ti WindForce OC 6GB','1660 Ti WindForce OC 6GB','Gigabyte','469.00','3','The Gigabyte GeForce GTX 1660 Ti WindForce OC 6GB graphics card features a 1845MHz core clock, 6GB 192-bit GDDR6 memory, PCI-E 3.0, 1536 CUDA cores, WINDFORCE Stack 2X 100mm Fan Cooling System, metal back plate, OpenGL 4.5 support, DirectX 12 support, 1x HDMI 2.0b, 3x DisplayPort 1.4. Backed by a 4 year Gigabyte warranty with online registration.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('GPU','ASUS GeForce GTX 1660 Ti Phoenix OC 6GB','1660 Ti Phoenix OC 6GB','ASUS','429.00','2','The ASUS GeForce GTX 1660 Ti Phoenix OC 6GB graphics card features a 1530MHz base clock with a 1815MHz boost clock in OC mode, 6GB 192-bit GDDR6 memory, PCI-E 3.0, 1536 CUDA cores, OpenGL 4.5 support, DirectX 12 support, Patented Wing-blade Fans, NVIDIA ShadowPlay, 2x HDMI 2.0b, 1x DisplayPort 1.4 and 1x DVI-D, The ASUS GeForce GTX 1660 Ti Phoenix teams up NVIDIAs A-list GPU with an elite cast of specialists, setting the stage for epic gaming action. Gargantuan power delivery provides the muscle to push overclocking boundaries, while cooling thats honed to perfection keeps the spotlight squarely on Turings performance. Backed by a 3 year ASUS warranty. ','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('GPU','MSI GeForce RTX 2080 Ti Ventus OC 11GB','2080 Ti Ventus OC 11GB','MSI','1699.00','1','The MSI GeForce RTX 2080 Ti Ventus OC graphics card features a 1350MHz core clock with a 1635MHz boost clock, 11GB 352-bit GDDR6 memory, PCI-E 3.0, 4352 CUDA cores, OpenGL 4.5 support, DirectX 12 support, Customised Dual Fan Design, Zero Frozr, sturdy backplate, NVIDIA G-SYNC & HDR, HDMI 2.0b, 3x DisplayPort 1.4, USB Type-C Support and more. Backed by a 3 year MSI warranty.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('GPU','Gigabyte AORUS GeForce RTX 2080 Ti 11GB','2080 Ti 11GB','Gigabyte','1949.00','1','The Gigabyte AORUS GeForce RTX 2080 Ti graphics card features a core clock of 1695MHz, 11GB 352-bit GDDR6 memory, PCI-E 3.0, 4352 CUDA cores, Windforce 3X cooling, OpenGL 4.5 support, DirectX 12 support, HDMI 2.0b, 3x DisplayPort 1.4, USB Type-C Support, RGB Fusion – 16.7M customisable colour lighting and a metal backplate. Backed by a 3 year Gigabyte warranty. ','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('GPU','ASUS ROG Strix GeForce RTX 2080 Ti 11GB','2080 Ti 11GB','ASUS','2029.00','1','The ASUS GeForce ROG Strix RTX 2080 Ti graphics card features a 1350MHz base clock with a 1560MHz boost clock in OC mode, 11GB 352-bit GDDR6 memory, PCI-E 3.0, 4352 CUDA cores, OpenGL 4.5 support, DirectX 12 support, 2.7-Slot Design, 2x HDMI 2.0b, 2x DisplayPort 1.4, USB Type-C Support and Super Alloy Power II. The ROG Strix GeForce RTX 2080Ti teams up NVIDIAs A-list GPU with an elite cast of specialists, setting the stage for epic gaming action. Gargantuan power delivery provides the muscle to push overclocking boundaries, while cooling thats honed to perfection keeps the spotlight squarely on Turings performance. Backed by a 3 year ASUS warranty. ','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('GPU','XFX Radeon RX 590 Fatboy 8GB','590 Fatboy 8GB','Radeon','379.00','3','The XFX Radeon RX 590 Fatboy graphics card features a 1580MHz true clock, 8GB 256-bit GDDR5 memory, PCI-E 3.0, 2304 Stream Processors, 2.5 slot fansink, OpenGL 4.5 support, DirectX 12 support, AMD FreeSync 2 technology, Radeon Chill, ReLive Capture, 3x DisplayPort 1.4, HDMI 2.0b and Dual-Link DVI-D. Backed by a 3 year XFX warranty.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('GPU','MSI Radeon RX 580 Armor OC 8GB','580 Armor OC 8GB','Radeon','329.00','3','The MSI Radeon RX 580 Armor OC graphics card features a 1366MHz core clock in OC mode, 8GB 256-bit GDDR5 memory, PCI-E 3.0, 8000MHz memory clock, TORX 2.0 Fan, ARMOR 2x cooling, VR Ready, OpenGL 4.5 support, DirectX 12 support, Dual-Link DVI-D, 2x HDMI and 2x DisplayPort. Backed by a 3 year MSI warranty.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('GPU','Gigabyte Radeon RX 580 Gaming 8GB','RX 580 Gaming 8GB','Radeon','329.00','3','The Gigabyte Radeon RX 580 Gaming 8GB graphics card features a 1355MHz core clock in OC mode, 8GB 256-bit GDDR5 memory, 14nm, PCI-E 3.0, OpenGL 4.5 support, DirectX 12 support, WINDFORCE 2X with 90mm Blade Fan Design, Intuitive AORUS Graphics Engine, Dual-Link DVI-D, HDMI 2.0 and 3x DisplayPort 1.4. Backed by a 3 year Gigabyte warranty.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Storage','Samsung 860 PRO 2.5in SATA SSD 4TB','Samsung 860 PRO','Samsung','1349.00','1','Designed for gamers, IT admins and creative professionals, the Samsung 860 PRO is powered by Samsungs latest V-NAND technology and a robust algorithm-based Samsung controller to handle the heavy workloads of high-end client PCs, workstations and NAS (Network Attached Systems). Get fast, enduring performance with sequential write speeds up to 530 MB/s and sequential read speeds up to 560 MB/s, a 4TB capacity and exceptional reliability and expanded compatibility.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Storage','Western Digital Black SN750 NVMe M.2 SSD 2TB','SN750 NVMe M.2 SSD 2TB','Western Digital','679.00','2','The WD BLACK SN750 NVMe SSD 2TB delivers top-tier performance for gaming and hardware enthusiasts who are looking to build or upgrade their PC. It rivals some of the best performing drives on the market to help give gamers that competitive edge.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Storage','Corsair Force Series MP510 1920GB M.2 NVME SSD','MP510 1920GB M.2 NVME SSD','Corsair','479.00','2','The CORSAIR Force MP510 NVMe PCIe Gen3 x4 M.2 SSD provides extreme storage performance with a 1920GB capacity and blazing fast read speeds of up to 3,480MB/sec. The ultra-compact M.2 2280 size fits directly into your notebook or motherboard with no additional cables or connectors.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Storage','Seagate Ironwolf 14TB ST14000VN0008 3.5in NAS Hard Drive','ST14000VN0008 3.5in NAS','Seagate','789.00','1','Seagate Ironwolf 14TB ST14000VN0008, 7200RPM, SATA 6GB/S, 3.5in, 12TB capacity, AgileArray, 256MB cache. Tough, ready, and scalable. IronWolf drives are NAS-optimized for 24x7 in NAS enclosures. Tuned with AgileArray and multi-user technology, IronWolf allows you to do more with your NAS. Backed by a 3 year Seagate warranty.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Storage','Western Digital WD Red 10TB WD100EFAX 3.5in NAS Hard Drive','10TB WD100EFAX 3.5in NAS','Western Digital','465.00','1','Western Digital Red WD100EFAX, SATA III 6.0Gb/s, 3.5in, 10TB, 256MB Cache. The WD Red drive is built for single-bay to 8-bay NAS systems and packs the capacity to store your precious data in one powerhouse unit. Desktop drives arent purpose-built for NAS. But WD Red drives with NASware 3.0 are. Their exclusive technology takes the guesswork out of selecting a drive. WD can help you find the perfect storage for your NAS system.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Storage','ADATA HC660 External Hard Drive 1TB','HC660','ADATA','75.00','1','Just 9.6mm thick, the HC660 is at the apex of light and stylish external hard drives. Easily store your media and files, including the highest fidelity content, without worrying about running out of space. ADATA created the HC660 to look great and be durable, so it uses a scratch and damage-resistant sandblasted metallic surface. It is electroplated to ensure it maintains its looks for a long product lifespan : surface paint won’t chip off or dull, and the grooved texture will remind you of the HC660’s fusion of fashion and utility for years to come.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('PSU','Corsair AX1600i Digital ATX Modular Titanium 1600W Power Supply','AX1600i','Corsair','649.00','1','The CORSAIR AX1600i is the ultimate digital ATX power supply, built using only the highest quality components for unmatched performance and better than 80 PLUS Titanium efficiency. State-of-the-art gallium nitride transistors and 100% 105C Japanese capacitors deliver 1600W of ultra-stable, ultra-efficient power, while the AX1600i’s digital design allows for complete control and monitoring in CORSAIR LINK software.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('PSU','ASUS ROG Thor 1200W Platinum PSU','Thor 1200W','ASUS','549.00','2','Inside and out, ASUS first PSU is packed with innovative ideas. Externally, Aura Sync RGB illumination and an integrated OLED information panel enable unique customisation and monitoring options for your ROG gaming rig. Under the hood, high-quality capacitors, a 135mm Wing-blade fan, and large heatsinks allow the ROG Thor 1200W to achieve LAMBDA A+ and 80 PLUS Platinum certifications, making it ideal for PC enthusiasts who demand performance perfection.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('PSU','Cooler Master Masterwatt Maker 1200 Titanium Power Supply','Masterwatt Maker 1200','Cooler Master','549.00','2','Cooler Masters flagship Masterwatt Maker 1200 power supply comes with an award-winning design, an efficiency rating few have managed to reach, and the control perks of a high-end digital signal processor. All of this combines into a whopping 1200 watts of continuous power that can run safely over a conventional household outlet. Cooler Masters first all aluminium, Titanium 94% efficiency power supply unit offers unbeatable performance in tandem with paralleled oversight and control via the exclusive Cooler Master Connect app.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('PSU','Thermaltake Toughpower iRGB PLUS 1250W Titanium Ed. Power Supply','iRGB PLUS 1250W','Thermaltake','499.00','2','The Thermaltake Toughpower iRGB PLUS 1250W Titanium is the world’s first PSU pre-installed with a patented 16.8 million colour RGB fan that incorporates various high-tech components, leading technology and eco-friendly commendations. Featuring 80 PLUS Titanium certification with individually sleeved cable and flat cable, Toughpower iRGB PLUS Titanium Series adopts the highest quality components and fully modular design that always accommodate any mainstream build under any circumstance.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('PSU','Seasonic Prime Ultra Titanium 1000W Power Supply','Ultra Titanium 1000W','Seasonic','419.00','2','The Seasonic Prime Ultra 1000Ws ultra-high efficiency and outstanding performance are the fine results of Seasonics continuous commitment to innovation and advancement. Improved low-load efficiency, highly suppressed ripple noise and a generous 12-year manufacturer’s warranty are just some of the characteristics that set these series apart from other power supplies on the market.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Monitor','Samsung C49J890D DFHD S-UltraWide 144Hz 49in QLED Curved Monitor','C49J890D','Samsung','1149.00','2','With a feature set as impressive as its 49in super ultra-wide curved screen, Samsung’s CJ89 monitor is designed to promote performance in any workplace. So whatever your task, you can enjoy working smart with Samsung. Full features include a 1800R curved display, 3840x1080 resolution, 5ms GTG response time, 144Hz refresh rate, DisplayPort 1.2, HDMI, speakers, height adjust, tilt, swivel and VESA 100mm support. With a screen area equivalent to two 27in monitors side by side, the 32:9 aspect ratio 49in display lets you view and manage multiple projects and windows with ease.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Monitor','AOC AGON AG352UCG6 UWQHD 120Hz G-Sync Curved 35in Monitor','AG352UCG6','AOC','1049.00','2','The AOC AG352UCG6 gaming monitor features a 35in screen, NVIDIA G-Sync, 120Hz refresh rate, 4ms GTG response time, 3440x1440 resolution, VESA 100mm support and an array of other functions. Specially designed for gaming, its the ultimate monitor for bringing out the best of any player.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Monitor','ASUS ROG PG27UQ UHD 144Hz G-Sync HDR 27in Monitor','PG27UQ','ASUS','2999.00','0','The ROG Swift PG27UQ is a 4K UHD G-SYNC HDR gaming monitor with an overclockable 144Hz refresh rate for buttery-smooth gameplay. This 27-inch IPS display with quantum-dot technology heralds a new generation of gaming. It provides a wide DCI-P3 colour gamut for more realistic colours and smoother colour gradation, and HDR technology to deliver vivid details and lifelike contrast. Additionally, a built-in light sensor automatically adjusts the brightness of the screen according to the light conditions of your environment. And with Aura Sync, ROG Light Signal and Light Signature, you can customize your gaming setup to suit your own style. See the future of gaming with ROG Swift PG27UQ.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Monitor','Acer Predator X27 UHD 144Hz G-Sync IPS HDR 27in Monitor','X27 UHD','Acer','2499.00','1','Acer Predator X27 UHD 144Hz G-Sync HDR 27in Gaming Monitor. Unrelenting perfection. It lives within every 4K screen, eager for the chance to push image quality beyond what’s expected. Experience something new. Something never before possible. Pushed to 144Hz on a 4K panel, the graphic goliath has finally arrived. Smooth, tear-free gaming is illuminated in the darker blacks and brighter lights of the NVIDIA G-SYNC HDR display.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Monitor','LG 34WK95U-W UWUHD IPS HDR 34in Monitor','34WK95U-W','LG','2099.00','1','Be prepared to multitask in high res with the adaptable and vivid LG 34WK95U-W 34in UltraWide Monitor. This 5K2K Nano IPS LED Monitor will make your daily computer routine pop with HDR 600. Whether youre busy with the most mundane of work documents or getting into the excitement and thrill of your favourite movies, the LG 34WK95U-W monitor promises to deliver.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Monitor','Philips 499P9H1 49in Curved 5K Superwide Monitor','499P9H1','Phillips','1599.00','1','The Philips 499P9H1 Superwide Monitor features a 49in screen size, 5120x1440 resolution, 60Hz refresh rate, 5ms GTG response time, 1800R Curvature, Adaptive Sync technology, Gigabit LAN, HDMI 2.0b, DisplayPort 1.4, USB 3.1, USB-C docking, speakers, swivel, tilt, height adjustable stand and VESA 100mm support. Philips award-winning 49in curved 32:9 SuperWide display is like two full-size high-performance monitors in-one. Productivity enhancing features like USB-C and pop-up webcam with Windows Hello deliver performance and convenience you expect.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Mice','Logitech G502 Lightspeed Wireless Gaming Mouse','G502','Logitech','249.00','2','The Logitech G502 is an icon, topping the charts through every generation, and the mouse of choice for serious gamers. Now, G502 joins the ranks of the world’s most advanced wireless gaming mice with the release of G502 LIGHTSPEED. LIGHTSPEED is ultra-fast and reliable with performance trusted in competition by esports pros. G502 LIGHTSPEED also features the next-generation HERO 16K sensor and is POWERPLAY compatible. With this complete advanced technology remastering, G502 LIGHTSPEED still retains the same beloved shape—and achieves a 7-gram weight reduction.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Mice','ASUS ROG Spatha Wireless Laser Gaming Mouse','Spatha','ASUS','209.00','2','The ASUS ROG Spatha Wireless Gaming Mouse features a programmable 12-button design optimised for MMO gaming. It has increased flexibility allowing you to play in wired or wireless mode, an 8200 DPI sensor, 2000Hz USB polling rate, customisable RGB lighting effects across three areas, a solid magnesium alloy chassis, built-ion flash memory to save profiles, exclusive ROG armoury interface for easy customisation or buttons, performance and light settings and much more.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Mice','Roccat Leadr Wireless RGB Gaming Mouse','Leadr','Roccat','179.00','2','The Roccat Leadr gives you the freedom of wireless with the performance of wired. It rocks a combo of pioneering wireless technology and an optimised Owl-Eye optical sensor, meaning gaming with a wireless mouse is no longer a handicap. Zero lag and with virtually zero latency, it features a docking station with a top-cup cable for use as a wired mouse, plus an innovative suite of buttons for enhanced control. The Leadr is the wired mouse with no wires, making it wireless royalty.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Mice','Razer Mamba Wireless Optical Gaming Mouse','Mamba','Razer','169.00','2','Big, unhindered swipes—and the freedom to game on and on. The Razer Mamba Wireless is designed to deliver long-lasting gameplay with zero restrictions. With 150% more battery life than its predecessor, it’s packed with gaming-grade features for cutting-edge wireless performance.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Mice','SteelSeries Rival 650 Wireless Gaming Mouse','Rival','SteelSeries','169.00','2','The SteelSeries Rival 650 Wireless gaming mouse features Quantum Wireless lag-free performance paired with the worlds most advanced dual sensor system, TrueMove3+ for uncompromised freedom. With 24+ hour battery life, rapid charging and, custom center-of-gravity tuning with 256 weight configurations, the Rival 650 Wireless is a must-have for competitive gaming. Low-latency performance is delivered by the powerful 32-bit ARM processor and life-long durability is guaranteed by 60-million click mechanical switches and durable silicone side grips. The Rival 650 Wireless was engineered for professional esports athletes and a must-have for competitive gaming.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Keyboards','Razer Huntsman Elite RGB Opto-Mechanical Keyboard','Huntsman Elite','Razer','339.00','2','The Razer Huntsman Elite RGB is your weapon of choice - featuring improved Razer Mechanical Switches with dual side walls, a plush leatherette wrist rest for all-day gaming comfort, and a multi-function digital dial for extended media controls. Backed by a 2 year Razer warranty.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Keyboards','Topre Realforce RGB Premium Gaming Keyboard','Realforce RGB','Topre','299.00','2','Elite Gamers Require Elite Gear. That’s why the Topre Realforce RGB Premium Gaming Keyboard combines the world-renowned comfort of Topre premium key switches with a full spectrum of colours and tops it off with exclusive customisable actuation points for unsurpassed accuracy and speed. Light up the competition with the Realforce RGB premium gaming keyboard.','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Keyboards','ASUS ROG Claymore RGB Mechanical Keyboard Cherry Blue','ROG Claymore','ASUS','279.00','2','The ASUS ROG Claymore is the worlds first RGB mechanical gaming keyboard with a detachable numeric keypad to give you flexible placement options when gaming. It features Cherry MX RGB switches to give you precise and responsive keystrokes and individually-programmable backlit keys with Aura sync RGB LED technology for unmatched levels of personalization. This 100% anti-ghosting keyboard has N-Key rollover technology, on the fly macro recording, and dedicated hotkeys for exclusive ASUS motherboard cooling and overclocking controls. ROG Claymore gives you the winning edge in the digital battlefield. ','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Keyboards','Cooler Master MasterKeys MK850 RGB Mechanical Keyboard MX Red','MasterKeys','Cooler Master','279.00','2','The MK850 Mechanical Gaming Keyboard is fully featured with exclusive Aimpad technology for analogue control. Transition seamlessly from MOBA to FPS to driving games and even flight sims with unprecedented control on a cluster of eight keys (QWER + ASDF). Feature packed with Cherry MX red switches for durability, Precision Wheels for easy in-game adjustments, and brushed aluminium to last through all your battles. Combined with removable Type-C cable, magnetic wrist rest, and per-key RGB backlighting, the MK850 is the next step in gaming technology. Its a game-changer - literally. ','11/04/2018')
INSERT INTO Products (categoryName, productName, model, manufacturer, price, stockCount,[description] ,releaseDate)
VALUES ('Keyboards','Logitech Craft Wireless Keyboard','Craft Wireless','Logitech','249.00','2','The Logitech Craft is a wireless keyboard with a premium typing experience and a versatile input dial that adapts to what you’re making — keeping you focused and in your creative flow. Craft breathes to life with a backlighting flourish when it turns on — and the keys light up the moment your hands approach. The backlit keys automatically adjust brightness to suit changing lighting conditions. Lastly, increased key stability reduces noise and optimises responsiveness so you feel, but don’t hear, every keystroke.','11/04/2018')

--Descriptions from https://www.pccasegear.com/

--Cart Items Table Data
INSERT INTO Cart (productID, CustomerEmailAddress, quantity, totalCost)
VALUES ('00000001','MylaDennis@mail.com','1','69.00')
INSERT INTO Cart (productID, CustomerEmailAddress, quantity, totalCost)
VALUES ('00000002','MylaDennis@mail.com','1','189.00')
INSERT INTO Cart (productID, CustomerEmailAddress, quantity, totalCost)
VALUES ('00000001','DwayneCompton@mail.com','1','69.00')
INSERT INTO Cart (productID, CustomerEmailAddress, quantity, totalCost)
VALUES ('00000001','MylaDennis@mail.com','1','70.00')
INSERT INTO Cart (productID, CustomerEmailAddress, quantity, totalCost)
VALUES ('00000002','MylaDennis@mail.com','1','189.00')
INSERT INTO Cart (productID, CustomerEmailAddress, quantity, totalCost)
VALUES ('00000003','DwayneCompton@mail.com','1','69.00')
INSERT INTO Cart (productID, CustomerEmailAddress, quantity, totalCost)
VALUES ('00000004','GilbertOneal@mail.com','1','69.00')
INSERT INTO Cart (productID, CustomerEmailAddress, quantity, totalCost)
VALUES ('00000005','GilbertOneal@mail.com','1','189.00')
INSERT INTO Cart (productID, CustomerEmailAddress, quantity, totalCost)
VALUES ('00000006','GilbertOneal@mail.com','1','69.00')
INSERT INTO Cart (productID, CustomerEmailAddress, quantity, totalCost)
VALUES ('00000007','LolaBray@mail.com','1','69.00')
INSERT INTO Cart (productID, CustomerEmailAddress, quantity, totalCost)
VALUES ('00000008','LolaBray@mail.com','1','69.00')
INSERT INTO Cart (productID, CustomerEmailAddress, quantity, totalCost)
VALUES ('00000009','LolaBray@mail.com','1','69.00')
INSERT INTO Cart (productID, CustomerEmailAddress, quantity, totalCost)
VALUES ('00000010','LolaBray@mail.com','1','69.00')

--Transaction Table Data
INSERT INTO [Transaction] (CustomerEmailAddress, orderTotal, cartID, paymentType, [date], tracking, [status])
VALUES ('MylaDennis@mail.com','258.00','00000001','Credit Card','2019-04-10 14:38:45','TR45GAB4875JHGFKJH','Shipped')
INSERT INTO [Transaction] (CustomerEmailAddress, orderTotal, cartID, paymentType, [date], tracking, [status])
VALUES ('DwayneCompton@mail.com','69.00','00000002','PayPal','2019-04-10 16:42:39','TR45GAB4875JHGF345345','Pending')
INSERT INTO [Transaction] (CustomerEmailAddress, orderTotal, cartID, paymentType, [date], tracking, [status])
VALUES ('SalvadorChristian@mail.com','258.00','00000004','Credit Card','2019-04-10 14:38:45','TR45GAB4875JHGFKJH','Shipped')
INSERT INTO [Transaction] (CustomerEmailAddress, orderTotal, cartID, paymentType, [date], tracking, [status])
VALUES ('GiovaniMata@mail.com','69.00','00000005','PayPal','2019-04-10 16:42:39','TR45GAB4875JHGF345345','Pending')
INSERT INTO [Transaction] (CustomerEmailAddress, orderTotal, cartID, paymentType, [date], tracking, [status])
VALUES ('GilbertOneal@mail.com','258.00','00000006','Credit Card','2019-04-10 14:38:45','TR45GAB4875JHGFKJH','Shipped')
INSERT INTO [Transaction] (CustomerEmailAddress, orderTotal, cartID, paymentType, [date], tracking, [status])
VALUES ('BarbaraLane@mail.com','69.00','00000007','PayPal','2019-04-10 16:42:39','TR45GAB4875JHGF345345','Pending')
INSERT INTO [Transaction] (CustomerEmailAddress, orderTotal, cartID, paymentType, [date], tracking, [status])
VALUES ('SalvadorChristian@mail.com','258.00','00000008','Credit Card','2019-04-10 14:38:45','TR45GAB4875JHGFKJH','Shipped')
INSERT INTO [Transaction] (CustomerEmailAddress, orderTotal, cartID, paymentType, [date], tracking, [status])
VALUES ('BarbaraLane@mail.com','69.00','00000009','PayPal','2019-04-10 16:42:39','TR45GAB4875JHGF345345','Pending')
INSERT INTO [Transaction] (CustomerEmailAddress, orderTotal, cartID, paymentType, [date], tracking, [status])
VALUES ('GiovaniMata@mail.com','258.00','00000010','Credit Card','2019-04-10 14:38:45','TR45GAB4875JHGFKJH','Shipped')


--Test
SELECT * FROM Customer;
SELECT * FROM [Admin];
SELECT * FROM Category;
SELECT * FROM Products;
SELECT * FROM Cart;
SELECT * FROM [Transaction];


