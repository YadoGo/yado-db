INSERT INTO Roles (ID, Name, Description) 
VALUES 
(1, 'User', 'Role for regular users'),
(2, 'Hotel Manager', 'Role for people managing hotels'),
(3, 'Admin', 'Role for system administrators');

-- Datos de prueba
INSERT INTO Users (UUID, FirstName, LastName, Email, Password, Gender, ImageProfile, RoleId) 
VALUES 
('e731b1d2-85cf-4c01-95a6-47614cb5a587', 'John', 'Doe', 'johndoe', 'johndoe@example.com', 'password123', 'M', 1),
('fd405768-0d1f-4a8f-9c46-5b1ff49db76a', 'Alice', 'Smith', 'alicesmith', 'alicesmith@example.com', 'securepass', 'F', 2),
('c3d5584f-1b2e-4e6c-88c9-2dc2726e47c5', 'Michael', 'Johnson', 'michaelj', 'michaelj@example.com', 'mypass123', 'M', 3);

INSERT INTO Countries (Name) 
VALUES
('Afghanistan'),
('Albania'),
('Algeria'),
('Andorra'),
('Angola'),
('Antigua and Barbuda'),
('Argentina'),
('Armenia'),
('Australia'),
('Austria'),
('Azerbaijan'),
('Bahamas'),
('Bahrain'),
('Bangladesh'),
('Barbados'),
('Belarus'),
('Belgium'),
('Belize'),
('Benin'),
('Bhutan'),
('Bolivia'),
('Bosnia and Herzegovina'),
('Botswana'),
('Brazil'),
('Brunei'),
('Bulgaria'),
('Burkina Faso'),
('Burundi'),
('Cabo Verde'),
('Cambodia'),
('Cameroon'),
('Canada'),
('Central African Republic'),
('Chad'),
('Chile'),
('China'),
('Colombia'),
('Comoros'),
('Congo (Brazzaville)'),
('Congo (Kinshasa)'),
('Costa Rica'),
('Cote d\'Ivoire'),
('Croatia'),
('Cuba'),
('Cyprus'),
('Czech Republic'),
('Denmark'),
('Djibouti'),
('Dominica'),
('Dominican Republic'),
('East Timor'),
('Ecuador'),
('Egypt'),
('El Salvador'),
('Equatorial Guinea'),
('Eritrea'),
('Estonia'),
('Eswatini'),
('Ethiopia'),
('Fiji'),
('Finland'),
('France'),
('Gabon'),
('Gambia'),
('Georgia'),
('Germany'),
('Ghana'),
('Greece'),
('Grenada'),
('Guatemala'),
('Guinea'),
('Guinea-Bissau'),
('Guyana'),
('Haiti'),
('Honduras'),
('Hungary'),
('Iceland'),
('India'),
('Indonesia'),
('Iran'),
('Iraq'),
('Ireland'),
('Israel'),
('Italy'),
('Jamaica'),
('Japan'),
('Jordan'),
('Kazakhstan'),
('Kenya'),
('Kiribati'),
('Korea, North'),
('Korea, South'),
('Kosovo'),
('Kuwait'),
('Kyrgyzstan'),
('Laos'),
('Latvia'),
('Lebanon'),
('Lesotho'),
('Liberia'),
('Libya'),
('Liechtenstein'),
('Lithuania'),
('Luxembourg'),
('Madagascar'),
('Malawi'),
('Malaysia'),
('Maldives'),
('Mali'),
('Malta'),
('Marshall Islands'),
('Mauritania'),
('Mauritius'),
('Mexico'),
('Micronesia'),
('Moldova'),
('Monaco'),
('Mongolia'),
('Montenegro'),
('Morocco'),
('Mozambique'),
('Myanmar'),
('Namibia'),
('Nauru'),
('Nepal'),
('Netherlands'),
('New Zealand'),
('Nicaragua'),
('Niger'),
('Nigeria'),
('North Macedonia'),
('Norway'),
('Oman'),
('Pakistan'),
('Palau'),
('Panama'),
('Papua New Guinea'),
('Paraguay'),
('Peru'),
('Philippines'),
('Poland'),
('Portugal'),
('Qatar'),
('Romania'),
('Russia'),
('Rwanda'),
('Saint Kitts and Nevis'),
('Saint Lucia'),
('Saint Vincent and the Grenadines'),
('Samoa'),
('San Marino'),
('Sao Tome and Principe'),
('Saudi Arabia'),
('Senegal'),
('Serbia'),
('Seychelles'),
('Sierra Leone'),
('Singapore'),
('Slovakia'),
('Slovenia'),
('Solomon Islands'),
('Somalia'),
('South Africa'),
('South Sudan'),
('Spain'),
('Sri Lanka'),
('Sudan'),
('Suriname'),
('Sweden'),
('Switzerland'),
('Syria'),
('Taiwan'),
('Tajikistan'),
('Tanzania'),
('Thailand'),
('Togo'),
('Tonga'),
('Trinidad and Tobago'),
('Tunisia'),
('Turkey'),
('Turkmenistan'),
('Tuvalu'),
('Uganda'),
('Ukraine'),
('United Arab Emirates'),
('United Kingdom'),
('United States'),
('Uruguay'),
('Uzbekistan'),
('Vanuatu'),
('Venezuela'),
('Vietnam'),
('Yemen'),
('Zambia'),
('Zimbabwe');

INSERT INTO States (Name, CountryId) 
VALUES
('Badakhshan', 1),
('Badghis', 1),
('Baghlan', 1),
('Balkh', 1),
('Bamyan', 1),
('Daykundi', 1),
('Farah', 1),
('Faryab', 1),
('Ghazni', 1),
('Ghor', 1),
('Helmand', 1),
('Herat', 1),
('Jowzjan', 1),
('Kabul', 1),
('Kandahar', 1),
('Kapisa', 1),
('Khost', 1),
('Kunar', 1),
('Kunduz', 1),
('Laghman', 1),
('Logar', 1),
('Nangarhar', 1),
('Nimruz', 1),
('Nuristan', 1),
('Paktika', 1),
('Paktia', 1),
('Panjshir', 1),
('Parwan', 1),
('Samangan', 1),
('Sar-e Pol', 1),
('Takhar', 1),
('Uruzgan', 1),
('Wardak', 1),
('Zabul', 1);


INSERT INTO States (Name, CountryId) 
VALUES
('Berat', 2),
('Dibër', 2),
('Durrës', 2),
('Elbasan', 2),
('Fier', 2),
('Gjirokastër', 2),
('Korçë', 2),
('Kukës', 2),
('Lezhë', 2),
('Shkodër', 2),
('Tirana', 2),
('Vlorë', 2);


INSERT INTO States (Name, CountryId) 
VALUES
('Adrar', 3),
('Aïn Defla', 3),
('Aïn Témouchent', 3),
('Algiers', 3),
('Annaba', 3),
('Batna', 3),
('Béchar', 3),
('Béjaïa', 3),
('Biskra', 3),
('Blida', 3),
('Bordj Bou Arréridj', 3),
('Bouira', 3),
('Boumerdès', 3),
('Chlef', 3),
('Constantine', 3),
('Djelfa', 3),
('El Bayadh', 3),
('El Oued', 3),
('El Tarf', 3),
('Ghardaïa', 3),
('Guelma', 3),
('Illizi', 3),
('Jijel', 3),
('Khenchela', 3),
('Laghouat', 3),
('Mascara', 3),
('Médéa', 3),
('Mila', 3),
('Mostaganem', 3),
('Msila', 3),
('Naâma', 3),
('Oran', 3),
('Ouargla', 3),
('Oum El Bouaghi', 3),
('Relizane', 3),
('Saida', 3),
('Sétif', 3),
('Sidi Bel Abbès', 3),
('Skikda', 3),
('Souk Ahras', 3),
('Tamanrasset', 3),
('Tébessa', 3),
('Tiaret', 3),
('Tindouf', 3),
('Tipaza', 3),
('Tissemsilt', 3),
('Tizi Ouzou', 3),
('Tlemcen', 3);

INSERT INTO States (Name, CountryId) 
VALUES
('Andorra la Vella', 4),
('Canillo', 4),
('Encamp', 4),
('Escaldes-Engordany', 4),
('La Massana', 4),
('Ordino', 4),
('Sant Julià de Lòria', 4);


INSERT INTO States (Name, CountryId) 
VALUES
('Bengo', 5),
('Benguela', 5),
('Bié', 5),
('Cabinda', 5),
('Cuando Cubango', 5),
('Cuanza Norte', 5),
('Cuanza Sul', 5),
('Cunene', 5),
('Huambo', 5),
('Huíla', 5),
('Luanda', 5),
('Lunda Norte', 5),
('Lunda Sul', 5),
('Malanje', 5),
('Moxico', 5),
('Namibe', 5),
('Uíge', 5),
('Zaire', 5);

INSERT INTO States (Name, CountryId) 
VALUES
('Barbuda', 6),
('Antigua', 6);

INSERT INTO States (Name, CountryId) 
VALUES
('Buenos Aires', 7),
('Catamarca', 7),
('Chaco', 7),
('Chubut', 7),
('Córdoba', 7),
('Corrientes', 7),
('Entre Ríos', 7),
('Formosa', 7),
('Jujuy', 7),
('La Pampa', 7),
('La Rioja', 7),
('Mendoza', 7),
('Misiones', 7),
('Neuquén', 7),
('Río Negro', 7),
('Salta', 7),
('San Juan', 7),
('San Luis', 7),
('Santa Cruz', 7),
('Santa Fe', 7),
('Santiago del Estero', 7),
('Tierra del Fuego, Antártida e Islas del Atlántico Sur', 7),
('Tucumán', 7),
('Ciudad Autónoma de Buenos Aires', 7);


INSERT INTO States (Name, CountryId) 
VALUES
('Aragatsotn', 8),
('Ararat', 8),
('Armavir', 8),
('Gegharkunik', 8),
('Kotayk', 8),
('Lori', 8),
('Shirak', 8),
('Syunik', 8),
('Tavush', 8),
('Vayots Dzor', 8),
('Ereván', 8);


INSERT INTO States (Name, CountryId) 
VALUES
('Nueva Gales del Sur', 9),
('Victoria', 9),
('Queensland', 9),
('Australia Meridional', 9),
('Australia Occidental', 9),
('Tasmania', 9),
('Territorio de la Capital Australiana', 9),
('Territorio del Norte', 9);


INSERT INTO States (Name, CountryId) 
VALUES
('Burgenland', 10),
('Carintia', 10),
('Baja Austria', 10),
('Alta Austria', 10),
('Salzburgo', 10),
('Estiria', 10),
('Tirol', 10),
('Vorarlberg', 10),
('Viena', 10);


INSERT INTO States (Name, CountryId) 
VALUES
('Absheron', 11),
('Aghdam', 11),
('Aghdash', 11),
('Aghjabadi', 11),
('Agstafa', 11),
('Agsu', 11),
('Astara', 11),
('Baku', 11),
('Balakan', 11),
('Barda', 11),
('Beylagan', 11),
('Bilasuvar', 11),
('Jabrayil', 11),
('Jalilabad', 11),
('Ganja', 11),
('Ganja-Gazakh', 11),
('Goranboy', 11),
('Goychay', 11),
('Goygol', 11),
('Hajigabul', 11),
('Imishli', 11),
('Ismayilli', 11),
('Jabrayil', 11),
('Jalilabad', 11),
('Kalbajar', 11),
('Kangarli', 11),
('Khachmaz', 11),
('Khankendi', 11),
('Khanlar', 11),
('Khizi', 11),
('Khojavend', 11),
('Khojaly', 11),
('Khyrdalan', 11),
('Lachin', 11),
('Lankaran', 11),
('Lankaran', 11),
('Lerik', 11),
('Masalli', 11),
('Mingachevir', 11),
('Naftalan', 11),
('Nakhchivan', 11),
('Neftchala', 11),
('Oghuz', 11),
('Ordubad', 11),
('Qabala', 11),
('Qakh', 11),
('Qazax', 11),
('Quba', 11),
('Qubadli', 11),
('Qusar', 11),
('Saatli', 11),
('Sabirabad', 11),
('Sadarak', 11),
('Salyan', 11),
('Samukh', 11),
('Siyazan', 11),
('Shabran', 11),
('Shaki', 11),
('Shaki-Zaqatala', 11),
('Shamakhi', 11),
('Shamkir', 11),
('Shirvan', 11),
('Shusha', 11),
('Siazan', 11),
('Sumqayit', 11),
('Tartar', 11),
('Tovuz', 11),
('Ujar', 11),
('Yevlakh', 11),
('Yevlakh', 11),
('Zangilan', 11),
('Zaqatala', 11),
('Zardab', 11);

INSERT INTO States (Name, CountryId) 
VALUES
('Acklins', 12),
('Berry Islands', 12),
('Bimini', 12),
('Black Point', 12),
('Cat Island', 12),
('Central Abaco', 12),
('Central Andros', 12),
('Central Eleuthera', 12),
('City of Freeport', 12),
('Crooked Island', 12),
('East Grand Bahama', 12),
('Exuma', 12),
('Grand Cay', 12),
('Harbour Island', 12),
('Hope Town', 12),
('Inagua', 12),
('Long Island', 12),
('Mangrove Cay', 12),
('Mayaguana', 12),
('Moore\'s Island', 12),
('North Abaco', 12),
('North Andros', 12),
('North Eleuthera', 12),
('Ragged Island', 12),
('Rum Cay', 12),
('San Salvador', 12),
('South Abaco', 12),
('South Andros', 12),
('South Eleuthera', 12),
('Spanish Wells', 12),
('West Grand Bahama', 12);


INSERT INTO States (Name, CountryId) 
VALUES
('Capital', 13),
('Central', 13),
('Muharraq', 13),
('Norte', 13),
('Sur', 13);

INSERT INTO States (Name, CountryId) 
VALUES
('Barisal', 14),
('Chittagong', 14),
('Dhaka', 14),
('Khulna',  14),
('Mymensingh', 14),
('Rajshahi', 14),
('Rangpur', 14),
('Sylhet', 14);


INSERT INTO States (Name, CountryId) 
VALUES
('Christ Church', 15),
('St. Andrew', 15),
('St. George', 15),
('St. James', 15),
('St. John', 15),
('St. Joseph', 15),
('St. Lucy', 15),
('St. Michael', 15),
('St. Peter', 15),
('St. Philip', 15),
('St. Thomas', 15);


INSERT INTO States (Name, CountryId) 
VALUES
('Brest Oblast', 16),
('Gomel Oblast', 16),
('Grodno Oblast', 16),
('Minsk Oblast', 16),
('Mogilev Oblast', 16),
('Vitebsk Oblast', 16),
('Ciudad de Minsk', 16);


INSERT INTO States (Name, CountryId) 
VALUES
('Región de Flandes', 17),
('Región de Valonia', 17),
('Región de Bruselas-Capital', 17),
('Amberes', 17),
('Brabante Flamenco', 17),
('Brabante Valón', 17),
('Henao', 17),
('Limburgo', 17),
('Lieja', 17),
('Luxemburgo', 17),
('Namur', 17),
('Flandes Oriental', 17),
('Valonia Oriental', 17);


INSERT INTO States (Name, CountryId) 
VALUES
('Distrito de Belice', 18),
('Distrito de Cayo', 18),
('Distrito de Corozal', 18),
('Distrito de Orange Walk', 18),
('Distrito de Stann Creek', 18),
('Distrito de Toledo', 18);


INSERT INTO States (Name, CountryId) 
VALUES
('Alibori', 19),
('Atakora', 19),
('Atlántico', 19),
('Borgou', 19),
('Collines', 19),
('Donga', 19),
('Kouffo', 19),
('Littoral', 19),
('Mono', 19),
('Ouémé', 19),
('Plateau', 19),
('Zou', 19);


INSERT INTO States (Name, CountryId) 
VALUES
('Bumthang', 20),
('Chhukha', 20),
('Dagana', 20),
('Gasa', 20),
('Haa', 20),
('Lhuentse', 20),
('Mongar', 20),
('Paro', 20),
('Pemagatshel', 20),
('Punakha', 20),
('Samdrup Jongkhar', 20),
('Samtse', 20),
('Sarpang', 20),
('Thimphu', 20),
('Trashigang', 20),
('Trashiyangtse', 20),
('Trongsa', 20),
('Tsirang', 20),
('Wangdue Phodrang', 20),
('Zhemgang', 20);


INSERT INTO States (Name, CountryId) 
VALUES
('Chuquisaca', 21),
('Cochabamba', 21),
('Beni', 21),
('La Paz', 21),
('Oruro', 21),
('Pando', 21),
('Potosí', 21),
('Santa Cruz', 21),
('Tarija', 21);


INSERT INTO States (Name, CountryId) 
VALUES
('Cantón 10 (Posavina)', 22),
('Cantón Herzegovina-Neretva', 22),
('Cantón Sarajevo', 22),
('Cantón Tuzla', 22),
('Cantón Una-Sana', 22),
('Cantón Bosnia Central', 22),
('Cantón Bosnia-Podrinje', 22),
('Cantón Herzegovina Occidental', 22),
('Cantón Bosniak-Croata', 22),
('Cantón Posavina', 22),
('Banja Luka', 22),
('Bijeljina', 22),
('Doboj', 22),
('Foča', 22),
('Prijedor', 22),
('Trebinje', 22),
('Istočno Sarajevo', 22),
('Mrkonjić Grad', 22),
('Sokolac', 22),
('Višegrad', 22);


INSERT INTO States (Name, CountryId) 
VALUES
('Central', 23),
('Chobe', 23),
('Francistown', 23),
('Gaborone', 23),
('Ghanzi', 23),
('Kgalagadi', 23),
('Kgatleng', 23),
('Kweneng', 23),
('North East', 23),
('North West', 23);

INSERT INTO States (Name, CountryId) 
VALUES
('Acre', 24),
('Alagoas', 24),
('Amapá', 24),
('Amazonas', 24),
('Bahía', 24),
('Ceará', 24),
('Distrito Federal', 24),
('Espírito Santo', 24),
('Goiás', 24),
('Maranhão', 24),
('Mato Grosso', 24),
('Mato Grosso do Sul', 24),
('Minas Gerais', 24),
('Pará', 24),
('Paraíba', 24),
('Paraná', 24),
('Pernambuco', 24),
('Piauí', 24),
('Río de Janeiro', 24),
('Río Grande del Norte', 24),
('Río Grande del Sur', 24),
('Rondônia', 24),
('Roraima', 24),
('Santa Catarina', 24),
('São Paulo', 24),
('Sergipe', 24),
('Tocantins', 24);

INSERT INTO States (Name, CountryId) 
VALUES
('Belait', 25),
('Brunei-Muara', 25),
('Temburong', 25),
('Tutong', 25);

INSERT INTO States (Name, CountryId) 
VALUES
('Blagoevgrad', 26),
('Burgas', 26),
('Dobrich', 26),
('Gabrovo', 26),
('Haskovo', 26),
('Kardzhali', 26),
('Kyustendil', 26),
('Lovech', 26),
('Montana', 26),
('Pazardzhik', 26),
('Pernik', 26),
('Pleven', 26),
('Plovdiv', 26),
('Razgrad', 26),
('Ruse', 26),
('Shumen', 26),
('Silistra', 26),
('Sliven', 26),
('Smolyan', 26),
('Sofia (oblast)', 26),
('Sofia (ciudad)', 26),
('Stara Zagora', 26),
('Targovishte', 26),
('Varna', 26),
('Veliko Tarnovo', 26),
('Vidin', 26),
('Vratsa', 26),
('Yambol', 26);


INSERT INTO States (Name, CountryId) 
VALUES
('Boucle du Mouhoun', 27),
('Cascades', 27),
('Centre', 27),
('Centre-Est', 27),
('Centre-Nord', 27),
('Centre-Ouest', 27),
('Centre-Sud',27 ),
('Est', 27),
('Hauts-Bassins', 27),
('Nord', 27),
('Plateau-Central', 27),
('Sahel', 27),
('Sud-Ouest', 27);


INSERT INTO States (Name, CountryId) 
VALUES
('Bubanza', 28),
('Bujumbura Mairie', 28),
('Bujumbura Rural', 28),
('Bururi', 28),
('Cankuzo', 28),
('Cibitoke', 28),
('Gitega', 28),
('Karuzi', 28),
('Kayanza', 28),
('Kirundo', 28),
('Makamba', 28),
('Muramvya', 28),
('Muyinga', 28),
('Mwaro', 28),
('Ngozi', 28),
('Rumonge', 28),
('Rutana', 28),
('Ruyigi', 28);


INSERT INTO States (Name, CountryId) 
VALUES
('Boa Vista', 29),
('Brava', 29),
('Maio', 29),
('Mosteiros', 29),
('Paul', 29),
('Praia', 29),
('Porto Novo', 29),
('Ribeira Brava', 29),
('Ribeira Grande', 29),
('Ribeira Grande de Santiago', 29),
('Sal', 29),
('Santa Catarina', 29),
('Santa Catarina do Fogo', 29),
('Santa Cruz', 29),
('São Domingos', 29),
('São Filipe', 29),
('São Lourenço dos Órgãos', 29),
('São Miguel', 29),
('São Salvador do Mundo', 29),
('São Vicente', 29),
('Tarrafal', 29),
('Tarrafal de São Nicolau', 29);


INSERT INTO States (Name, CountryId) 
VALUES
('Banteay Meanchey', 30),
('Battambang', 30),
('Kampong Cham', 30),
('Kampong Chhnang', 30),
('Kampong Speu', 30),
('Kampong Thom', 30),
('Kampot', 30),
('Kandal', 30),
('Kep', 30),
('Koh Kong', 30),
('Kratie', 30),
('Mondulkiri', 30),
('Oddar Meanchey', 30),
('Pailin', 30),
('Phnom Penh', 30),
('Preah Vihear', 30),
('Prey Veng', 30),
('Pursat', 30),
('Ratanakiri', 30),
('Siem Reap', 30),
('Sihanoukville', 30),
('Stung Treng', 30),
('Svay Rieng', 30),
('Takeo', 30),
('Tbong Khmum', 30);


INSERT INTO States (Name, CountryId) 
VALUES
('Adamaoua', 31),
('Centre', 31),
('East', 31),
('Far North', 31),
('Littoral', 31),
('North', 31),
('Northwest', 31),
('South', 31),
('Southwest', 31),
('West', 31);


INSERT INTO States (Name, CountryId) 
VALUES
('Alberta', 32),
('British Columbia', 32),
('Manitoba', 32),
('New Brunswick', 32),
('Newfoundland and Labrador', 32),
('Northwest Territories', 32),
('Nova Scotia', 32),
('Nunavut', 32),
('Ontario', 32),
('Prince Edward Island', 32),
('Quebec', 32),
('Saskatchewan', 32),
('Yukon', 32);


INSERT INTO States (Name, CountryId) 
VALUES
('Bamingui-Bangoran', 33),
('Bangui', 33),
('Basse-Kotto', 33),
('Haute-Kotto', 33),
('Haut-Mbomou', 33),
('Kémo', 33),
('Lobaye', 33),
('Mambéré-Kadéï', 33),
('Mbomou', 33),
('Nana-Grébizi', 33),
('Nana-Mambéré', 33),
('Ouaka', 33),
('Ouham', 33),
('Ouham-Pendé', 33),
('Sangha-Mbaéré', 33),
('Vakaga', 33);


INSERT INTO States (Name, CountryId) 
VALUES
('Batha', 34),
('Borkou', 34),
('Chari-Baguirmi', 34),
('Ennedi Est', 34),
('Ennedi Ouest', 34),
('Guéra', 34),
('Hadjer-Lamis', 34),
('Kanem', 34),
('Lac', 34),
('Logone Occidental', 34),
('Logone Oriental', 34),
('Mandoul', 43),
('Mayo-Kebbi Est', 34),
('Mayo-Kebbi Ouest', 34),
('Moyen-Chari', 34),
('N\'Djamena', 34),
('Ouaddaï', 34),
('Salamat', 34),
('Sila', 34),
('Tandjilé', 34),
('Tibesti', 34),
('Tandjilé Est', 34),
('Wadi Fira', 34);


INSERT INTO States (Name, CountryId) 
VALUES
('Arica y Parinacota', 35),
('Tarapacá', 35),
('Antofagasta', 35),
('Atacama', 35),
('Coquimbo', 35),
('Valparaíso', 35),
('Metropolitana de Santiago', 35),
('Libertador General Bernardo O\'Higgins', 35),
('Maule', 35),
('Ñuble', 35),
('Biobío', 35),
('La Araucanía', 35),
('Los Ríos', 35),
('Los Lagos', 35),
('Aysén del General Carlos Ibáñez del Campo', 35),
('Magallanes y de la Antártica Chilena', 35);


INSERT INTO States (Name, CountryId) 
VALUES
('Anhui', 36),
('Fujian', 36),
('Gansu', 36),
('Guangdong', 36),
('Guizhou', 36),
('Hainan', 36),
('Hebei', 36),
('Heilongjiang', 36),
('Henan', 36),
('Hubei', 36),
('Hunan', 36),
('Jiangsu', 36),
('Jiangxi', 36),
('Jilin', 36),
('Liaoning', 36),
('Qinghai', 36),
('Shaanxi', 36),
('Shandong', 36),
('Shanxi', 36),
('Sichuan', 36),
('Yunnan', 36),
('Zhejiang', 36),
('Guangxi', 36),
('Inner Mongolia', 36),
('Ningxia', 36),
('Tibet', 36),
('Xinjiang', 36),
('Beijing', 36),
('Chongqing', 36),
('Shanghai', 36),
('Tianjin', 36),
('Hong Kong', 36),
('Macau', 36);


INSERT INTO States (Name, CountryId) 
VALUES
('Amazonas', 37),
('Antioquia', 37),
('Arauca', 37),
('Atlántico', 37),
('Bolívar', 37),
('Boyacá', 37),
('Caldas', 37),
('Caquetá', 37),
('Casanare', 37),
('Cauca', 37),
('Cesar', 37),
('Chocó', 37),
('Córdoba', 37),
('Cundinamarca', 37),
('Guainía', 37),
('Guaviare', 37),
('Huila', 37),
('La Guajira', 37),
('Magdalena', 37),
('Meta', 37),
('Nariño', 37),
('Norte de Santander', 37),
('Putumayo', 37),
('Quindío', 37),
('Risaralda', 37),
('San Andrés, Providencia, and Santa Catalina', 37),
('Santander', 37),
('Sucre', 37),
('Tolima', 37),
('Valle del Cauca', 37),
('Vaupés', 37),
('Vichada', 37);


INSERT INTO States (Name, CountryId) 
VALUES
('Grande Comore', 38),
('Anjouan', 38),
('Mohéli', 38);


INSERT INTO States (Name, CountryId) 
VALUES
('Bouenza', 39),
('Brazzaville', 39),
('Cuvette', 39),
('Cuvette-Ouest', 39),
('Kouilou', 39),
('Lékoumou', 39),
('Likouala', 39),
('Niari', 39),
('Plateaux', 39),
('Pool', 39),
('Sangha', 39),
('Pointe-Noire', 39);


INSERT INTO States (Name, CountryId) 
VALUES
('Bas-Uélé', 40),
('Équateur', 40),
('Haut-Katanga', 40),
('Haut-Lomami', 40),
('Haut-Uélé', 40),
('Ituri', 40),
('Kasaï', 40),
('Kasaï-Central', 40),
('Kasaï-Oriental', 40),
('Kinshasa', 40),
('Kongo Central', 40),
('Kwango', 40),
('Kwilu', 40),
('Lomami', 40),
('Lualaba', 40),
('Mai-Ndombe', 40),
('Maniema', 40),
('Mongala', 40),
('Nord-Kivu', 40),
('Nord-Ubangi', 40),
('Sankuru', 40),
('Sud-Kivu', 40),
('Sud-Ubangi', 40),
('Tanganyika', 40);


INSERT INTO States (Name, CountryId) 
VALUES
('Tshopo', 41),
('Tshuapa', 41),
('Alajuela', 41),
('Cartago', 41),
('Guanacaste', 41),
('Heredia', 41),
('Limón', 41),
('Puntarenas', 41),
('San José', 41);


INSERT INTO States (Name, CountryId) 
VALUES
('Abidjan', 42),
('Bas-Sassandra', 42),
('Comoé', 42),
('Denguélé', 42),
('Gôh', 42),
('Lacs', 42),
('Lagunes', 42),
('Montagnes', 42),
('Sassandra-Marahoué', 42),
('Savanes', 42),
('Vallée du Bandama', 42),
('Woroba', 42),
('Yamoussoukro', 42),
('Zanzan', 42);


INSERT INTO States (Name, CountryId) 
VALUES
('Bjelovar-Bilogora', 43),
('Brod-Posavina', 43),
('Dubrovnik-Neretva', 43),
('Istria', 43),
('Karlovac', 43),
('Koprivnica-Križevci', 43),
('Krapina-Zagorje', 43),
('Lika-Senj', 43),
('Međimurje', 43),
('Osijek-Baranja', 43),
('Požega-Slavonia', 43),
('Primorje-Gorski Kotar', 43),
('Šibenik-Knin', 43),
('Sisak-Moslavina', 43),
('Split-Dalmatia', 43),
('Varaždin', 43),
('Virovitica-Podravina', 43),
('Vukovar-Syrmia', 43),
('Zadar', 43),
('Zagreb', 43);


INSERT INTO States (Name, CountryId) 
VALUES
('Pinar del Río', 44),
('Artemisa', 44),
('La Habana', 44),
('Mayabeque', 44),
('Matanzas', 44),
('Cienfuegos', 44),
('Villa Clara', 44),
('Sancti Spíritus', 44),
('Ciego de Ávila', 44),
('Camagüey', 44),
('Las Tunas', 44),
('Holguín', 44),
('Granma', 44),
('Santiago de Cuba', 44),
('Guantánamo', 44),
('Isla de la Juventud', 44);


INSERT INTO States (Name, CountryId) 
VALUES
('Nicosia', 45),
('Limassol', 45),
('Larnaca', 45),
('Paphos', 45),
('Famagusta', 45),
('Kyrenia', 45);


INSERT INTO States (Name, CountryId) 
VALUES
('Hlavní město Praha', 46),
('Středočeský kraj', 46),
('Jihočeský kraj', 46),
('Plzeňský kraj', 46),
('Karlovarský kraj', 46),
('Ústecký kraj',46),
('Liberecký kraj', 46),
('Královéhradecký kraj', 46),
('Pardubický kraj', 46),
('Kraj Vysočina', 46),
('Jihomoravský kraj', 46),
('Olomoucký kraj', 46),
('Zlínský kraj', 46),
('Moravskoslezský kraj', 46);


INSERT INTO States (Name, CountryId) 
VALUES
('Capital Region of Denmark', 47),
('Region Zealand', 47),
('Region of Southern Denmark', 47),
('Central Denmark Region', 47),
('North Denmark Region', 47);


INSERT INTO States (Name, CountryId) 
VALUES
('Ali Sabieh', 48),
('Arta', 48),
('Dikhil', 48),
('Djibouti', 48),
('Obock', 48),
('Tadjourah', 48);


INSERT INTO States (Name, CountryId) 
VALUES
('Saint Andrew', 49),
('Saint David', 49),
('Saint George', 49),
('Saint John', 49),
('Saint Joseph', 49),
('Saint Luke', 49),
('Saint Mark', 49),
('Saint Patrick', 49),
('Saint Paul', 49),
('Saint Peter', 49);


INSERT INTO States (Name, CountryId) 
VALUES
('Azua', 50),
('Baoruco', 50),
('Barahona', 50),
('Dajabón', 50),
('Duarte', 50),
('Elías Piña', 50),
('El Seibo', 50),
('Espaillat', 50),
('Hato Mayor', 50),
('Hermanas Mirabal', 50),
('Independencia', 50),
('La Altagracia', 50),
('La Romana', 50),
('La Vega', 50),
('María Trinidad Sánchez', 50),
('Monseñor Nouel', 50),
('Monte Cristi', 50),
('Monte Plata', 50),
('Pedernales', 50),
('Peravia', 50),
('Puerto Plata', 50),
('Samaná', 50),
('Sánchez Ramírez', 50),
('San Cristóbal', 50),
('San José de Ocoa', 50),
('San Juan', 50),
('San Pedro de Macorís', 50),
('Santiago', 50),
('Santiago Rodríguez', 50),
('Santo Domingo', 50),
('Valverde', 50),
('National District', 50);

INSERT INTO States (Name, CountryId) 
VALUES
('Díli', 51),
('Baucau', 51),
('Viqueque', 51),
('Lautém', 51),
('Manatuto', 51),
('Manufahi', 51),
('Cova Lima', 51),
('Ainaro', 51),
('Bobonaro', 51),
('Ermera', 51),
('Liquiçá', 51),
('Aileu', 51),
('Oecusse', 51);


INSERT INTO States (Name, CountryId) 
VALUES
('Azuay', 52),
('Bolívar', 52),
('Cañar', 52),
('Carchi', 52),
('Chimborazo', 52),
('Cotopaxi', 52),
('El Oro', 52),
('Esmeraldas', 52),
('Galápagos', 52),
('Guayas', 52),
('Imbabura', 52),
('Loja', 52),
('Los Ríos', 52),
('Manabí', 52),
('Morona Santiago', 52),
('Napo', 52),
('Orellana', 52),
('Pastaza', 52),
('Pichincha', 52),
('Santa Elena', 52),
('Santo Domingo de los Tsáchilas', 52),
('Sucumbíos', 52),
('Tungurahua', 52),
('Zamora-Chinchipe', 52);


INSERT INTO States (Name, CountryId) 
VALUES
('Alexandria', 53),
('Aswan', 53),
('Asyut', 53),
('Beheira', 53),
('Beni Suef', 53),
('Cairo', 53),
('Dakahlia', 53),
('Damietta', 53),
('Faiyum', 53),
('Gharbia', 53),
('Giza', 53),
('Ismailia', 53),
('Kafr El Sheikh', 53),
('Luxor', 53),
('Matrouh', 53),
('Minya', 53),
('Monufia', 53),
('New Valley', 53),
('North Sinai', 53),
('Port Said', 53),
('Qalyubia', 53),
('Qena', 53),
('Red Sea', 53),
('Sharqia', 53),
('Sohag', 53),
('South Sinai', 53),
('Suez', 53);


INSERT INTO States (Name, CountryId) 
VALUES
('Ahuachapán', 54),
('Cabañas', 54),
('Chalatenango', 54),
('Cuscatlán', 54),
('La Libertad', 54),
('La Paz', 54),
('La Unión', 54),
('Morazán', 54),
('San Miguel', 54),
('San Salvador', 54),
('San Vicente', 54),
('Santa Ana', 54),
('Sonsonate', 54),
('Usulután', 54);


INSERT INTO States (Name, CountryId) 
VALUES
('Annobón', 55),
('Bioko Norte', 55),
('Bioko Sur', 55),
('Centro Sur', 55),
('Kié-Ntem', 55),
('Litoral', 55),
('Wele-Nzas', 55),
('Djibloho', 55);


INSERT INTO States (Name, CountryId) 
VALUES
('Anseba', 56),
('Debub', 56),
('Gash-Barka', 56),
('Maekel', 56),
('Northern Red Sea', 56),
('Southern Red Sea', 56);


INSERT INTO States (Name, CountryId) 
VALUES
('Harju County', 57),
('Hiiu County', 57),
('Ida-Viru County', 57),
('Järva County', 57),
('Jõgeva County', 57),
('Lääne County', 57),
('Lääne-Viru County', 57),
('Põlva County', 57),
('Pärnu County', 57),
('Rapla County', 57),
('Saare County', 57),
('Tartu County', 57),
('Valga County', 57),
('Viljandi County', 57),
('Võru County', 57);


INSERT INTO States (Name, CountryId) 
VALUES
('Hhohho', 58),
('Lubombo', 58),
('Manzini', 58),
('Shiselweni', 58);


INSERT INTO States (Name, CountryId) 
VALUES
('Addis Ababa', 59),
('Afar', 59),
('Amhara', 59),
('Benishangul-Gumuz', 59),
('Dire Dawa', 59),
('Gambela', 59),
('Harari', 59),
('Oromia', 59),
('Somali', 59),
('Southern Nations, Nationalities, and Peoples'' Region', 59),
('Tigray', 59);


INSERT INTO States (Name, CountryId) 
VALUES
('Central Division', 60),
('Naitasiri', 60),
('Namosi', 60),
('Rewa', 60),
('Serua', 60),
('Tailevu', 60),
('Eastern Division', 60),
('Kadavu', 60),
('Lau', 60),
('Lomaiviti', 60),
('Moala', 60),
('Rotuma', 60),
('Northern Division', 60),
('Bua', 60),
('Cakaudrove', 60),
('Macuata', 60),
('Western Division', 60),
('Ba', 60),
('Nadroga-Navosa', 60),
('Ra', 60);


INSERT INTO States (Name, CountryId) 
VALUES
('Åland Islands', 61),
('Southern Finland', 61),
('Eastern Finland', 61),
('Lapland', 61),
('North Karelia', 61),
('Northern Ostrobothnia', 61),
('Northern Savonia', 61),
('Kainuu', 61),
('Central Finland', 61),
('Central Ostrobothnia', 61),
('South Ostrobothnia', 61),
('Ostrobothnia', 61),
('Pirkanmaa', 61),
('Satakunta', 61),
('Southwest Finland', 61),
('Uusimaa', 61),
('Kymenlaakso', 61),
('South Karelia', 61),
('Päijänne Tavastia', 61);


INSERT INTO States (Name, CountryId) 
VALUES
('Auvergne-Rhône-Alpes', 62),
('Bourgogne-Franche-Comté', 62),
('Brittany', 62),
('Centre-Val de Loire', 62),
('Corsica', 62),
('Grand Est', 62),
('Hauts-de-France', 62),
('Île-de-France', 62),
('Normandy', 62),
('Nouvelle-Aquitaine', 62),
('Occitanie', 62),
('Pays de la Loire', 62),
('Provence-Alpes-Côte d''Azur', 62),
('Guadeloupe', 62),
('Martinique', 62),
('Guyane', 62),
('Réunion', 62),
('Mayotte', 62);


INSERT INTO States (Name, CountryId) 
VALUES
('Estuaire', 63),
('Haut-Ogooué', 63),
('Moyen-Ogooué', 63),
('Ngounié', 63),
('Nyanga', 63),
('Ogooué-Ivindo', 63),
('Ogooué-Lolo', 63),
('Ogooué-Maritime', 63),
('Woleu-Ntem', 63);


INSERT INTO States (Name, CountryId) 
VALUES
('Banjul', 64),
('Lower River', 64),
('Central River', 64),
('North Bank', 64),
('Upper River', 64);


INSERT INTO States (Name, CountryId) 
VALUES
('Guria', 65),
('Imereti', 65),
('Kakheti', 65),
('Kvemo Kartli', 65),
('Mtskheta-Mtianeti', 65),
('Racha-Lechkhumi and Kvemo Svaneti', 65),
('Samegrelo-Zemo Svaneti', 65),
('Samtskhe-Javakheti', 65),
('Shida Kartli', 65),
('Abkhazia', 65),
('Adjara', 65);


INSERT INTO States (Name, CountryId) 
VALUES
('Baden-Württemberg', 66),
('Bavaria', 66),
('Berlin', 66),
('Brandenburg', 66),
('Bremen', 66),
('Hamburg', 66),
('Hesse', 66),
('Lower Saxony', 66),
('Mecklenburg-Western Pomerania', 66),
('North Rhine-Westphalia', 66),
('Rhineland-Palatinate', 66),
('Saarland', 66),
('Saxony', 66),
('Saxony-Anhalt', 66),
('Schleswig-Holstein', 66),
('Thuringia', 66);


INSERT INTO States (Name, CountryId) 
VALUES
('Ashanti', 67),
('Brong-Ahafo', 67),
('Central', 67),
('Eastern', 67),
('Greater Accra', 67),
('Northern', 67),
('Upper East', 67),
('Upper West', 67),
('Volta', 67),
('Western', 67),
('Western North', 67),
('Bono', 67),
('Bono East', 67),
('Ahafo', 67),
('Savannah', 67),
('North East', 67);


INSERT INTO States (Name, CountryId) 
VALUES
('Attica', 68),
('Central Greece', 68),
('Central Macedonia', 68),
('Crete', 68),
('East Macedonia and Thrace', 68),
('Epirus', 68),
('Ionian Islands', 68),
('North Aegean', 68),
('Peloponnese', 68),
('South Aegean', 68),
('Thessaly', 68),
('West Greece', 68),
('West Macedonia', 68);


INSERT INTO States (Name, CountryId) 
VALUES
('Saint Andrew', 69),
('Saint David', 69),
('Saint George', 69),
('Saint John', 69),
('Saint Mark', 69),
('Saint Patrick', 69);


INSERT INTO States (Name, CountryId) 
VALUES
('Alta Verapaz', 70),
('Baja Verapaz', 70),
('Chimaltenango', 70),
('Chiquimula', 70),
('El Progreso', 70),
('Escuintla', 70),
('Guatemala', 70),
('Huehuetenango', 70),
('Izabal', 70),
('Jalapa', 70),
('Jutiapa', 70),
('Petén', 70),
('Quetzaltenango', 70),
('Quiché', 70),
('Retalhuleu', 70),
('Sacatepéquez', 70),
('San Marcos', 70),
('Santa Rosa', 70),
('Sololá', 70),
('Suchitepéquez', 70),
('Totonicapán', 70),
('Zacapa', 70);


INSERT INTO States (Name, CountryId) 
VALUES
('Boké', 71),
('Conakry', 71),
('Faranah', 71),
('Kankan', 71),
('Kindia', 71),
('Labé', 71),
('Mamou', 71),
('Nzérékoré', 71);


INSERT INTO States (Name, CountryId) 
VALUES
('Bafatá', 72),
('Biombo', 72),
('Bissau', 72),
('Bolama', 72),
('Cacheu', 72),
('Gabú', 72),
('Oio', 72),
('Quinara', 72),
('Tombali', 72);

INSERT INTO States (Name, CountryId) 
VALUES
('Barima-Waini', 73),
('Cuyuni-Mazaruni', 73),
('Demerara-Mahaica', 73),
('East Berbice-Corentyne', 73),
('Essequibo Islands-West Demerara', 73),
('Mahaica-Berbice', 73),
('Pomeroon-Supenaam', 73),
('Potaro-Siparuni', 73),
('Upper Demerara-Berbice', 73),
('Upper Takutu-Upper Essequibo', 73);


INSERT INTO States (Name, CountryId) 
VALUES
('Artibonite', 74),
('Centre', 74),
('Grand''Anse', 74),
('Nippes', 74),
('Nord', 74),
('Nord-Est', 74),
('Nord-Ouest', 74),
('Ouest', 74),
('Sud', 74),
('Sud-Est', 74);


INSERT INTO States (Name, CountryId) 
VALUES
('Atlántida', 75),
('Choluteca', 75),
('Colón', 75),
('Comayagua', 75),
('Copán', 75),
('Cortés', 75),
('El Paraíso', 75),
('Francisco Morazán', 75),
('Gracias a Dios', 75),
('Intibucá', 75),
('Islas de la Bahía', 75),
('La Paz', 75),
('Lempira', 75),
('Ocotepeque', 75),
('Olancho', 75),
('Santa Bárbara', 75),
('Valle', 75),
('Yoro', 75);


INSERT INTO States (Name, CountryId) 
VALUES
('Bács-Kiskun', 76),
('Baranya', 76),
('Békés', 76),
('Borsod-Abaúj-Zemplén', 76),
('Csongrád-Csanád', 76),
('Fejér', 76),
('Győr-Moson-Sopron', 76),
('Hajdú-Bihar', 76),
('Heves', 76),
('Jász-Nagykun-Szolnok', 76),
('Komárom-Esztergom', 76),
('Nógrád', 76),
('Pest', 76),
('Somogy', 76),
('Szabolcs-Szatmár-Bereg', 76),
('Tolna', 76),
('Vas', 76),
('Veszprém', 76),
('Zala', 76);


INSERT INTO States (Name, CountryId) 
VALUES
('Capital Region', 77),
('Southern Peninsula', 77),
('Western Region', 77),
('Westfjords', 77),
('Northwest Region', 77),
('Northeast Region', 77),
('East Region', 77),
('South Region', 77);


INSERT INTO States (Name, CountryId) 
VALUES
('Andhra Pradesh', 78),
('Arunachal Pradesh', 78),
('Assam', 78),
('Bihar', 78),
('Chhattisgarh', 78),
('Goa', 78),
('Gujarat', 78),
('Haryana', 78),
('Himachal Pradesh', 78),
('Jharkhand', 78),
('Karnataka', 78),
('Kerala', 78),
('Madhya Pradesh', 78),
('Maharashtra', 78),
('Manipur', 78),
('Meghalaya', 78),
('Mizoram', 78),
('Nagaland', 78),
('Odisha', 78),
('Punjab', 78),
('Rajasthan', 78),
('Sikkim', 78),
('Tamil Nadu', 78),
('Telangana', 78),
('Tripura', 78),
('Uttar Pradesh', 78),
('Uttarakhand', 78),
('West Bengal', 78),
('Andaman and Nicobar Islands', 78),
('Chandigarh', 78),
('Dadra and Nagar Haveli and Daman and Diu', 78),
('Lakshadweep', 78),
('Delhi', 78),
('Puducherry', 78);


INSERT INTO States (Name, CountryId) 
VALUES
('Aceh', 79),
('North Sumatra', 79),
('West Sumatra', 79),
('Riau', 79),
('Jambi', 79),
('South Sumatra', 79),
('Bengkulu', 79),
('Lampung', 79),
('Bangka Belitung Islands', 79),
('Riau Islands', 79),
('Jakarta Special Capital Region', 79),
('West Java', 79),
('Central Java', 79),
('Yogyakarta Special Region', 79),
('East Java', 79),
('Banten', 79),
('Bali', 79),
('West Nusa Tenggara', 79),
('East Nusa Tenggara', 79),
('West Kalimantan', 79),
('Central Kalimantan', 79),
('South Kalimantan', 79),
('East Kalimantan', 79),
('North Kalimantan', 79),
('North Sulawesi', 79),
('Gorontalo', 79),
('Central Sulawesi', 79),
('West Sulawesi', 79),
('South Sulawesi', 79),
('Southeast Sulawesi', 79),
('North Maluku', 79),
('Maluku', 79),
('West Papua', 79),
('Papua', 79);


INSERT INTO States (Name, CountryId) 
VALUES
('Alborz', 80),
('Ardabil', 80),
('Bushehr', 80),
('Chaharmahal and Bakhtiari', 80),
('East Azerbaijan', 80),
('Isfahan', 80),
('Fars', 80),
('Gilan', 80),
('Golestan', 80),
('Hamadan', 80),
('Hormozgan', 80),
('Ilam', 80),
('Kerman', 80),
('Kermanshah', 80),
('North Khorasan', 80),
('Razavi Khorasan', 80),
('South Khorasan', 80),
('Khuzestan', 80),
('Kohgiluyeh and Boyer-Ahmad', 80),
('Kurdistan', 80),
('Lorestan', 80),
('Markazi', 80),
('Mazandaran', 80),
('Qazvin', 80),
('Qom', 80),
('Semnan', 80),
('Sistan and Baluchestan', 80),
('Tehran', 80),
('West Azerbaijan', 80),
('Yazd', 80),
('Zanjan', 80);


INSERT INTO States (Name, CountryId) 
VALUES
('Al Anbar', 81),
('Al Basrah', 81),
('Al Muthanna', 81),
('Al Qadisiyah', 81),
('An Najaf', 81),
('Dhi Qar', 81),
('Diyala', 81),
('Erbil', 81),
('Karbala', 81),
('Kirkuk', 81),
('Maysan', 81),
('Nineveh', 81),
('Salah al-Din', 81),
('Sulaymaniyah', 81),
('Wasit', 81);


INSERT INTO States (Name, CountryId) 
VALUES
('Carlow', 82),
('Cavan', 82),
('Clare', 82),
('Cork', 82),
('Donegal', 82),
('Dublin', 82),
('Galway', 82),
('Kerry', 82),
('Kildare', 82),
('Kilkenny', 82),
('Laois', 82),
('Leitrim', 82),
('Limerick', 82),
('Longford', 82),
('Louth', 82),
('Mayo', 82),
('Meath', 82),
('Monaghan', 82),
('Offaly', 82),
('Roscommon', 82),
('Sligo', 82),
('Tipperary', 82),
('Waterford', 82),
('Westmeath', 82),
('Wexford', 82),
('Wicklow', 82);


INSERT INTO States (Name, CountryId) 
VALUES
('Northern District', 83),
('Haifa District', 83),
('Central District', 83),
('Tel Aviv District', 83),
('Jerusalem District', 83),
('Southern District', 83);


INSERT INTO States (Name, CountryId) 
VALUES
('Abruzzo', 84),
('Basilicata', 84),
('Calabria', 84),
('Campania', 84),
('Emilia-Romagna', 84),
('Friuli-Venezia Giulia', 84),
('Lazio', 84),
('Liguria', 84),
('Lombardy', 84),
('Marche', 84),
('Molise', 84),
('Piedmont', 84),
('Apulia', 84),
('Sardinia', 84),
('Sicily', 84),
('Tuscany', 84),
('Trentino-Alto Adige/Südtirol', 84),
('Umbria', 84),
('Aosta Valley', 84),
('Veneto', 84);


INSERT INTO States (Name, CountryId) 
VALUES
('Kingston', 85),
('Saint Andrew', 85),
('Saint Catherine', 85),
('Clarendon', 85),
('Manchester', 85),
('Saint Elizabeth', 85),
('Westmoreland', 85),
('Hanover', 85),
('Saint James', 85),
('Trelawny', 85),
('Saint Ann', 85),
('Saint Mary', 85),
('Portland', 85),
('Saint Thomas', 85);


INSERT INTO States (Name, CountryId) 
VALUES
('Aichi', 86),
('Akita', 86),
('Aomori', 86),
('Chiba', 86),
('Ehime', 86),
('Fukui', 86),
('Fukuoka', 86),
('Fukushima', 86),
('Gifu', 86),
('Gunma', 86),
('Hiroshima', 86),
('Hokkaido', 86),
('Hyogo', 86),
('Ibaraki', 86),
('Ishikawa', 86),
('Iwate', 86),
('Kagawa', 86),
('Kagoshima', 86),
('Kanagawa', 86),
('Kochi', 86),
('Kumamoto', 86),
('Kyoto', 86),
('Mie', 86),
('Miyagi', 86),
('Miyazaki', 86),
('Nagano', 86),
('Nagasaki', 86),
('Nara', 86),
('Niigata', 86),
('Oita', 86),
('Okayama', 86),
('Okinawa', 86),
('Osaka', 86),
('Saga', 86),
('Saitama', 86),
('Shiga', 86),
('Shimane', 86),
('Shizuoka',86),
('Tochigi', 86),
('Tokushima', 86),
('Tokyo', 86),
('Tottori', 86),
('Toyama', 86),
('Wakayama', 86),
('Yamagata', 86),
('Yamaguchi', 86),
('Yamanashi', 86);


INSERT INTO States (Name, CountryId) 
VALUES
('Amman', 87),
('Irbid', 87),
('Balqa', 87),
('Zarqa', 87),
('Madaba', 87),
('Mafraq', 87),
('Karak', 87),
('Tafilah', 87),
('Ma\'an', 87),
('Aqaba', 87),
('Jerash', 87),
('Ajloun', 87);


INSERT INTO States (Name, CountryId) 
VALUES
('Akmola', 88),
('Aktobe', 88),
('Almaty', 88),
('Atyrau', 88),
('East Kazakhstan', 88),
('Jambyl', 88),
('Karaganda', 88),
('Kostanay', 88),
('Kyzylorda', 88),
('Mangystau', 88),
('North Kazakhstan', 88),
('Pavlodar', 88),
('Turkestan', 88),
('West Kazakhstan', 88),
('Nur-Sultan', 88),
('Almaty', 88),
('Shymkent', 88);


INSERT INTO States (Name, CountryId) 
VALUES
('Baringo', 89),
('Bomet', 89),
('Bungoma', 89),
('Busia', 89),
('Elgeyo-Marakwet', 89),
('Embu', 89),
('Garissa', 89),
('Homa Bay', 89),
('Isiolo', 89),
('Kajiado', 89),
('Kakamega', 89),
('Kericho', 89),
('Kiambu', 89),
('Kilifi', 89),
('Kirinyaga', 89),
('Kisii', 89),
('Kisumu', 89),
('Kitui', 89),
('Kwale', 89),
('Laikipia', 89),
('Lamu', 89),
('Machakos', 89),
('Makueni', 89),
('Mandera', 89),
('Marsabit', 89),
('Meru', 89),
('Migori', 89),
('Mombasa', 89),
('Murang\'a', 89),
('Nairobi', 89),
('Nakuru', 89),
('Nandi', 89),
('Narok', 89),
('Nyamira', 89),
('Nyandarua', 89),
('Nyeri', 89),
('Samburu', 89),
('Siaya', 89),
('Taita-Taveta', 89),
('Tana River', 89),
('Tharaka-Nithi', 89),
('Trans Nzoia', 89),
('Turkana', 89),
('Uasin Gishu', 89),
('Vihiga', 89),
('Wajir', 89),
('West Pokot', 89);


INSERT INTO States (Name, CountryId) 
VALUES
('Gilbert Islands', 90),
('Line Islands', 90),
('Phoenix Islands', 90),
('Banaba', 90),
('Tarawa', 90),
('Abaiang', 90),
('Abemama', 90),
('Kuria', 90),
('Aranuka', 90),
('Nonouti', 90),
('Maiana', 90),
('Butaritari', 90),
('Marakei', 90),
('Nikunau', 90),
('Onotoa', 90),
('Tabiteuea', 90),
('Beru', 90),
('Tamana', 90),
('Arorae', 90);


INSERT INTO States (Name, CountryId) 
VALUES
('Pyongan-bukdo', 91),
('Pyongan-namdo', 91),
('Chagang-do', 91),
('Hwanghae-bukdo', 91),
('Hwanghae-namdo', 91),
('Kangwon-do', 91),
('Hamgyong-bukdo', 91),
('Hamgyong-namdo', 91),
('Ryanggang-do', 91),
('Pyongyang', 91),
('Rason', 91),
('Nampo', 91),
('Kaesong', 91),
('Sinuiju', 91);


INSERT INTO States (Name, CountryId) 
VALUES
('Gyeonggi-do', 92),
('Gangwon-do', 92),
('Chungcheongbuk-do', 92),
('Chungcheongnam-do', 92),
('Jeollabuk-do', 92),
('Jeollanam-do', 92),
('Gyeongsangbuk-do', 92),
('Gyeongsangnam-do', 92),
('Seoul', 92),
('Busan', 92),
('Incheon', 92),
('Daegu', 92),
('Daejeon', 92),
('Gwangju', 92);


INSERT INTO States (Name, CountryId) 
VALUES
('District of Pristina', 93),
('District of Mitrovica', 93),
('District of Peja', 93),
('District of Gjilan', 93),
('District of Prizren', 93),
('District of Ferizaj', 93),
('District of Gjakova', 93);


INSERT INTO States (Name, CountryId) 
VALUES
('Al Asimah', 94),
('Hawalli', 94),
('Farwaniya', 94),
('Ahmadi', 94),
('Mubarak Al-Kabeer', 94),
('Jahra', 94);


INSERT INTO States (Name, CountryId) 
VALUES
('Chuy Oblast', 95),
('Osh Oblast', 95),
('Jalal-Abad Oblast', 95),
('Talas Oblast', 95),
('Issyk-Kul Oblast', 95),
('Naryn Oblast', 95),
('Batken Oblast', 95),
('Bishkek', 95),
('Osh', 95);


INSERT INTO States (Name, CountryId) 
VALUES
('Attapeu', 96),
('Bokeo', 96),
('Bolikhamxay', 96),
('Champasak', 96),
('Houaphanh', 96),
('Khammouane', 96),
('Luang Namtha', 96),
('Luang Prabang', 96),
('Oudomxay', 96),
('Phongsaly', 96),
('Salavan', 96),
('Savannakhet', 96),
('Sekong', 96),
('Vientiane', 96),
('Xaignabouli', 96),
('Xieng Khouang', 96),
('Vientiane', 96),
('Xaisomboun', 96);


INSERT INTO States (Name, CountryId) 
VALUES
('Riga', 97),
('Daugavpils', 97),
('Liepāja', 97),
('Jelgava', 97),
('Jūrmala', 97),
('Ventspils', 97),
('Ogre', 97),
('Cēsis', 97),
('Valmiera', 97),
('Tukums', 97);


INSERT INTO States (Name, CountryId) 
VALUES
('Beirut', 98),
('Mount Lebanon', 98),
('North Governorate', 98),
('South Governorate', 98),
('Beqaa Governorate', 98),
('Nabatieh Governorate', 98),
('Akkar Governorate', 98),
('Baalbek-Hermel Governorate', 98);


INSERT INTO States (Name, CountryId) 
VALUES
('Maseru', 99),
('Berea', 99),
('Leribe', 99),
('Mafeteng', 99),
('Mohale\'s Hoek', 99),
('Mokhotlong', 99),
('Qacha\'s Nek', 99),
('Quthing', 99),
('Thaba-Tseka', 99),
('Butha-Buthe', 99);


INSERT INTO States (Name, CountryId) 
VALUES
('Bomi County', 100),
('Bong County', 100),
('Gbarpolu County', 100),
('Grand Bassa County', 100),
('Grand Cape Mount County', 100),
('Grand Gedeh County', 100),
('Grand Kru County', 100),
('Lofa County', 100),
('Margibi County', 100),
('Maryland County', 100),
('Montserrado County', 100),
('Nimba County', 100),
('River Cess County', 100),
('River Gee County', 100),
('Sinoe County', 100);


INSERT INTO States (Name, CountryId) 
VALUES
('Tripoli', 101),
('Jufra', 101),
('Al Wahat', 101),
('Sabha', 101),
('Murqub', 101),
('Misrata', 101),
('Sirte', 101),
('Benghazi', 101),
('Butnan', 101),
('Derna', 101),
('Al Wahat', 101),
('Al Kufrah', 101),
('Wadi Al Hayaa', 101),
('Al Marqab', 101),
('Nalut', 101),
('Zawiya', 101),
('Jabal al Gharbi', 101),
('Misrata', 101),
('Gharyan', 101),
('Wadi al Hayaa', 101),
('Murzuq', 101),
('Wadi al Shatii', 101);


INSERT INTO States (Name, CountryId) 
VALUES
('Balzers', 102),
('Eschen', 102),
('Gamprin', 102),
('Mauren', 102),
('Planken', 102),
('Ruggell', 102),
('Schaan', 102),
('Schellenberg', 102),
('Triesen', 102),
('Triesenberg', 102),
('Vaduz', 102);


INSERT INTO States (Name, CountryId) 
VALUES
('Alytus County', 103),
('Kaunas County', 103),
('Klaipėda County', 103),
('Marijampolė County', 103),
('Panevėžys County', 103),
('Šiauliai County', 103),
('Tauragė County', 103),
('Telšiai County', 103),
('Utena County', 103),
('Vilnius County', 103);


INSERT INTO States (Name, CountryId) 
VALUES
('Luxembourg', 104),
('Diekirch', 104),
('Grevenmacher', 104);


INSERT INTO States (Name, CountryId) 
VALUES
('Alaotra-Mangoro', 105),
('Amoron\'i Mania', 105),
('Analanjirofo', 105),
('Analamanga', 105),
('Androy', 105),
('Anosy', 105),
('Atsimo-Andrefana', 105),
('Atsimo-Atsinanana', 105),
('Atsinanana', 105),
('Betsiboka', 105),
('Boeny', 105),
('Bongolava', 105),
('Diana', 105),
('Haute Matsiatra', 105),
('Ihorombe', 105),
('Itasy', 105),
('Melaky', 105),
('Menabe', 105),
('Sava', 105),
('Sofia', 105),
('Vakinankaratra', 105),
('Vatovavy-Fitovinany', 105);


INSERT INTO States (Name, CountryId) 
VALUES
('Balaka', 106),
('Blantyre', 106),
('Chikwawa', 106),
('Chiradzulu', 106),
('Chitipa', 106),
('Dedza', 106),
('Dowa', 106),
('Karonga', 106),
('Kasungu', 106),
('Likoma', 106),
('Lilongwe', 106),
('Machinga', 106),
('Mangochi', 106),
('Mchinji', 106),
('Mulanje', 106),
('Mwanza', 106),
('Mzimba', 106),
('Nkhata Bay', 106),
('Nkhotakota', 106),
('Nsanje', 106),
('Ntcheu', 106),
('Ntchisi', 106),
('Phalombe', 106),
('Rumphi', 106),
('Salima', 106),
('Thyolo', 106),
('Zomba', 106),
('Neno', 106);


INSERT INTO States (Name, CountryId) 
VALUES
('Johor', 107),
('Kedah', 107),
('Kelantan', 107),
('Melaka', 107),
('Negeri Sembilan', 107),
('Pahang', 107),
('Perak', 107),
('Perlis', 107),
('Pulau Pinang', 107),
('Sabah', 107),
('Sarawak', 107),
('Selangor', 107),
('Terengganu', 107),
('Kuala Lumpur', 107),
('Labuan', 107),
('Putrajaya', 107);


INSERT INTO States (Name, CountryId) 
VALUES
('Alif Alif Atoll', 108),
('Alif Dhaal Atoll', 108),
('Baa Atoll', 108),
('Dhaalu Atoll', 108),
('Faafu Atoll', 108),
('Gaafu Alif Atoll', 108),
('Gaafu Dhaalu Atoll', 108),
('Gnaviyani Atoll', 108),
('Haa Alif Atoll', 108),
('Haa Dhaalu Atoll', 108),
('Kaafu Atoll', 108),
('Laamu Atoll', 108),
('Lhaviyani Atoll', 108),
('Meemu Atoll', 108),
('Noonu Atoll', 108),
('Raa Atoll', 108),
('Seenu Atoll', 108),
('Shaviyani Atoll', 108),
('Thaa Atoll', 108),
('Vaavu Atoll', 108);


INSERT INTO States (Name, CountryId) 
VALUES
('Bamako', 109),
('Gao', 109),
('Kayes', 109),
('Kidal', 109),
('Koulikoro', 109),
('Mopti', 109),
('Ségou', 109),
('Sikasso', 109),
('Taoudénit', 109),
('Tombouctou', 109);


INSERT INTO States (Name, CountryId) 
VALUES
('Attard', 110),
('Balzan', 110),
('Birgu (Vittoriosa)', 110),
('Birkirkara', 110),
('Birżebbuġa', 110),
('Cospicua (Bormla)', 110),
('Dingli', 110),
('Fgura', 110),
('Floriana', 110),
('Fontana', 110),
('Għajnsielem', 110),
('Għarb', 110),
('Għargħur', 110),
('Għasri', 110),
('Għaxaq', 110),
('Gudja', 110),
('Gżira', 110),
('Ħamrun', 110),
('Iklin', 110),
('Kalkara', 110),
('Kerċem', 110),
('Kirkop', 110),
('Lija', 110),
('Luqa', 110),
('Marsa', 110),
('Marsaskala', 110),
('Marsaxlokk', 110),
('Mdina', 110),
('Mellieħa', 110),
('Mġarr', 110),
('Mosta', 110),
('Mqabba', 110),
('Msida', 110),
('Mtarfa', 110),
('Munxar', 110),
('Nadur', 110),
('Naxxar', 110),
('Paola', 110),
('Pembroke', 110),
('Pietà', 110),
('Qala', 110),
('Qormi', 110),
('Qrendi', 110),
('Rabat', 110),
('Saint Julian\'s', 110),
('San Ġwann', 110),
('Sannat', 110),
('Santa Luċija', 110),
('Santa Venera', 110),
('Senglea (Isla)', 110),
('Siġġiewi', 110),
('Sliema', 110),
('Swieqi', 110),
('Ta\' Xbiex', 110),
('Tarxien', 110),
('Valletta', 110),
('Victoria', 110),
('Vittoriosa (Birgu)', 110),
('Xagħra', 110),
('Xewkija', 110),
('Xgħajra', 110),
('Żabbar', 110),
('Żebbuġ (Gozo)', 110),
('Żebbuġ (Malta)', 110),
('Żejtun', 110),
('Żurrieq', 110);


INSERT INTO States (Name, CountryId) 
VALUES
('Ailuk Atoll', 111),
('Arno Atoll', 111),
('Aur Atoll', 111),
('Bikar Atoll', 111),
('Bikini Atoll', 111),
('Ebon Atoll', 111),
('Enewetak Atoll', 111),
('Jabat Island', 111),
('Jaluit Atoll', 111),
('Knox Atoll', 111),
('Lae Atoll', 111),
('Lib Island', 111),
('Likiep Atoll', 111),
('Majuro Atoll', 111),
('Maloelap Atoll', 111),
('Mejit Island', 111),
('Mili Atoll', 111),
('Namorik Atoll', 111),
('Namu Atoll', 111),
('Rongelap Atoll', 111),
('Ujae Atoll', 111),
('Ujelang Atoll', 111),
('Utirik Atoll', 111),
('Wotho Atoll', 111),
('Wotje Atoll', 111);


INSERT INTO States (Name, CountryId) 
VALUES
('Adrar', 112),
('Assaba', 112),
('Brakna', 112),
('Dakhlet Nouadhibou', 112),
('Gorgol', 112),
('Guidimaka', 112),
('Hodh Ech Chargui', 112),
('Hodh El Gharbi', 112),
('Inchiri', 112),
('Nouakchott', 112),
('Tagant', 112),
('Tiris Zemmour', 112),
('Trarza', 112),

('Black River', 113),
('Flacq', 113),
('Grand Port', 113),
('Moka', 113),
('Pamplemousses', 113),
('Plaines Wilhems', 113),
('Port Louis', 113),
('Rivière du Rempart', 113),
('Savanne', 113);


INSERT INTO States (Name, CountryId) 
VALUES
('Aguascalientes', 114),
('Baja California', 114),
('Baja California Sur', 114),
('Campeche', 114),
('Chiapas', 114),
('Chihuahua', 114),
('Coahuila', 114),
('Colima', 114),
('Durango', 114),
('Guanajuato', 114),
('Guerrero', 114),
('Hidalgo', 114),
('Jalisco', 114),
('Mexico State', 114),
('Michoacán', 114),
('Morelos', 114),
('Nayarit', 114),
('Nuevo León', 114),
('Oaxaca', 114),
('Puebla', 114),
('Querétaro', 114),
('Quintana Roo', 114),
('San Luis Potosí', 114),
('Sinaloa', 114),
('Sonora', 114),
('Tabasco', 114),
('Tamaulipas', 114),
('Tlaxcala', 114),
('Veracruz', 114),
('Yucatán', 114),
('Zacatecas', 114),
('Mexico City', 114);


INSERT INTO States (Name, CountryId) 
VALUES
('Chuuk', 115),
('Kosrae', 115),
('Pohnpei', 115),
('Yap', 115);


INSERT INTO States (Name, CountryId) 
VALUES
('Anenii Noi', 116),
('Basarabeasca', 116),
('Briceni', 116),
('Cahul', 116),
('Cantemir', 116),
('Călărași', 116),
('Căușeni', 116),
('Chișinău', 116),
('Cimișlia', 116),
('Criuleni', 116),
('Dondușeni', 116),
('Drochia', 116),
('Dubăsari', 116),
('Edineț', 116),
('Fălești', 116),
('Florești', 116),
('Glodeni', 116),
('Hîncești', 116),
('Ialoveni', 116),
('Leova', 116),
('Nisporeni', 116),
('Ocnița', 116),
('Orhei', 116),
('Rezina', 116),
('Rîșcani', 116),
('Sîngerei', 116),
('Soroca', 116),
('Strășeni', 116),
('Șoldănești', 116),
('Ștefan Vodă', 116),
('Taraclia', 116),
('Telenești', 116),
('Ungheni', 116),
('Bender', 116),
('Bălți', 116),
('Gagauzia', 116),
('Transnistria', 116);


INSERT INTO States (Name, CountryId) 
VALUES
('Monaco-Ville', 117),
('La Condamine', 117),
('Monte-Carlo', 117),
('Fontvieille', 117);


INSERT INTO States (Name, CountryId) 
VALUES
('Arkhangai', 118),
('Bayan-Ölgii', 118),
('Bayankhongor', 118),
('Bulgan', 118),
('Darkhan-Uul', 118),
('Dornod', 118),
('Dornogovi', 118),
('Dundgovi', 118),
('Govi-Altai', 118),
('Govisümber', 118),
('Khentii', 118),
('Khovd', 118),
('Khövsgöl', 118),
('Ömnögovi', 118),
('Orkhon', 118),
('Övörkhangai', 118),
('Selenge', 118),
('Sükhbaatar', 118),
('Töv', 118),
('Ulaanbaatar', 118),
('Uvs', 118),
('Zavkhan', 118);


INSERT INTO States (Name, CountryId) 
VALUES
('Andrijevica', 119),
('Bar', 119),
('Berane', 119),
('Bijelo Polje', 119),
('Budva', 119),
('Cetinje', 119),
('Danilovgrad', 119),
('Gusinje', 119),
('Herceg Novi', 119),
('Kolašin', 119),
('Kotor', 119),
('Mojkovac', 119),
('Nikšić', 119),
('Old Royal Capital Cetinje', 119),
('Petnjica', 119),
('Plav', 119),
('Pljevlja', 119),
('Plužine', 119),
('Podgorica', 119),
('Rožaje', 119),
('Šavnik', 119),
('Tivat', 119),
('Ulcinj', 119);


INSERT INTO States (Name, CountryId) 
VALUES
('Tanger-Tetouan-Al Hoceima', 120),
('Oriental', 120),
('Fès-Meknès', 120),
('Rabat-Salé-Kénitra', 120),
('Béni Mellal-Khénifra', 120),
('Casablanca-Settat', 120),
('Marrakech-Safi', 120),
('Drâa-Tafilalet', 120),
('Souss-Massa', 120),
('Guelmim-Oued Noun', 120),
('Laâyoune-Sakia El Hamra', 120),
('Dakhla-Oued Ed-Dahab', 120);


INSERT INTO States (Name, CountryId) 
VALUES
('Cabo Delgado', 121),
('Gaza', 121),
('Inhambane', 121),
('Manica', 121),
('Maputo', 121),
('Maputo City', 121),
('Nampula', 121),
('Niassa', 121),
('Sofala', 121),
('Tete', 121),
('Zambezia', 121);


INSERT INTO States (Name, CountryId) 
VALUES
('Chin State', 122),
('Kachin State', 122),
('Kayah State', 122),
('Kayin State', 122),
('Mon State', 122),
('Rakhine State', 122),
('Shan State', 122),
('Ayeyarwady Region', 122),
('Bago Region', 122),
('Magway Region', 122),
('Mandalay Region', 122),
('Sagaing Region', 122),
('Tanintharyi Region', 122),
('Yangon Region', 122);


INSERT INTO States (Name, CountryId) 
VALUES
('Zambezi', 123),
('Erongo', 123),
('Hardap', 123),
('Karas', 123),
('Kavango East', 123),
('Kavango West', 123),
('Khomas', 123),
('Kunene', 123),
('Ohangwena', 123),
('Omaheke', 123),
('Omusati', 123),
('Oshana', 123),
('Oshikoto', 123),
('Otjozondjupa', 123);


INSERT INTO States (Name, CountryId) 
VALUES
('Nauru', 124);


INSERT INTO States (Name, CountryId) 
VALUES
('Province No. 1', 125),
('Province No. 2', 125),
('Province No. 3', 125),
('Province No. 4', 125),
('Province No. 5', 125),
('Province No. 7', 125);


INSERT INTO States (Name, CountryId) 
VALUES
('Drenthe', 126),
('Flevoland', 126),
('Friesland', 126),
('Gelderland', 126),
('Groningen', 126),
('Limburg', 126),
('North Brabant', 126),
('North Holland', 126),
('Overijssel', 126),
('South Holland', 126),
('Utrecht', 126),
('Zeeland', 126);


INSERT INTO States (Name, CountryId) 
VALUES
('Northland', 127),
('Auckland', 127),
('Waikato', 127),
('Bay of Plenty', 127),
('Gisborne', 127),
('Hawke''s Bay', 127),
('Taranaki', 127),
('Manawatu-Wanganui', 127),
('Wellington', 127),
('Tasman', 127),
('Nelson', 127),
('Marlborough', 127),
('West Coast', 127),
('Canterbury', 127),
('Otago', 127),
('Southland', 127);


INSERT INTO States (Name, CountryId) 
VALUES
('Boaco', 128),
('Carazo', 128),
('Chinandega', 128),
('Chontales', 128),
('Estelí', 128),
('Granada', 128),
('Jinotega', 128),
('León', 128),
('Madriz', 128),
('Managua', 128),
('Masaya', 128),
('Matagalpa', 128),
('Nueva Segovia', 128),
('Río San Juan', 128);


INSERT INTO States (Name, CountryId) 
VALUES
('Agadez', 129),
('Diffa', 129),
('Dosso', 129),
('Maradi', 129),
('Tahoua', 129),
('Tillabéri', 129),
('Zinder', 129);


INSERT INTO States (Name, CountryId) 
VALUES
('Abia', 130),
('Adamawa', 130),
('Akwa Ibom', 130),
('Anambra',130),
('Bauchi', 130),
('Bayelsa', 130),
('Benue', 130),
('Borno', 130),
('Cross River', 130),
('Delta', 130),
('Ebonyi', 130),
('Edo', 130),
('Ekiti', 130),
('Enugu', 130),
('Gombe', 130),
('Imo', 130),
('Jigawa', 130),
('Kaduna', 130),
('Kano', 130),
('Katsina', 130),
('Kebbi', 130),
('Kogi', 130),
('Kwara', 130),
('Lagos', 130),
('Nasarawa', 130),
('Niger', 130),
('Ogun', 130),
('Ondo', 130),
('Osun', 130),
('Oyo', 130),
('Plateau', 130),
('Rivers', 130),
('Sokoto', 130),
('Taraba', 130),
('Yobe', 130),
('Zamfara', 130),
('Abuja', 130);


INSERT INTO States (Name, CountryId) 
VALUES
('Skopje Region', 131),
('Vardar Region', 131),
('Eastern Region', 131),
('Northeastern Region', 131),
('Southeastern Region', 131),
('Pelagonia Region', 131),
('Southwest Region', 131),
('Polog Region', 131);


INSERT INTO States (Name, CountryId) 
VALUES
('Oslo', 132),
('Viken', 132),
('Innlandet', 132),
('Rogaland', 132),
('Vestland', 132),
('Vestfold og Telemark', 132),
('Agder', 132),
('Trøndelag', 132),
('Møre og Romsdal', 132),
('Nordland', 132),
('Troms og Finnmark', 132);


INSERT INTO States (Name, CountryId) 
VALUES
('Muscat', 133),
('Dhofar', 133),
('Musandam', 133),
('Al Batinah North', 133),
('Al Batinah South', 133),
('Al Buraimi', 133),
('Al Wusta', 133),
('Al Dhahirah', 133),
('Al Dakhiliyah', 133),
('Ash Sharqiyah North', 133),
('Ash Sharqiyah South', 133);


INSERT INTO States (Name, CountryId) 
VALUES
('Sindh', 134),
('Khyber Pakhtunkhwa', 134),
('Balochistan', 134),
('Gilgit-Baltistan', 134),
('Azad Jammu and Kashmir', 134),
('Islamabad Capital Territory', 134);


INSERT INTO States (Name, CountryId) 
VALUES
('Aimeliik', 135),
('Airai', 135),
('Angaur', 135),
('Hatohobei', 135),
('Kayangel', 135),
('Koror', 135),
('Melekeok', 135),
('Ngaraard', 135),
('Ngarchelong', 135),
('Ngardmau', 135),
('Ngatpang', 135),
('Ngchesar', 135),
('Ngeremlengui', 135),
('Ngiwal', 135),
('Peleliu', 135),
('Sonsorol', 135);


INSERT INTO States (Name, CountryId) 
VALUES
('Bocas del Toro', 136),
('Chiriquí', 136),
('Cocle', 136),
('Colon', 136),
('Darien', 136),
('Herrera', 136),
('Los Santos', 136),
('Panama', 136),
('Veraguas', 136),
('West Panama', 136),
('Emberá', 136),
('Guna Yala', 136),
('Ngöbe-Buglé', 136);


INSERT INTO States (Name, CountryId) 
VALUES
('Central', 137),
('Chimbu', 137),
('Eastern Highlands', 137),
('East New Britain', 137),
('East Sepik', 137),
('Enga', 137),
('Gulf', 137),
('Hela', 137),
('Jiwaka', 137),
('Madang', 137),
('Manus', 137),
('Milne Bay', 137),
('Morobe', 137),
('New Ireland', 137),
('Northern', 137),
('Sandaun', 137),
('Southern Highlands', 137),
('Western', 137),
('Western Highlands', 137),
('West New Britain', 137),
('West Sepik', 137),
('Autonomous Region of Bougainville', 137),
('National Capital District', 137);


INSERT INTO States (Name, CountryId) 
VALUES
('Alto Paraguay', 138),
('Boquerón', 138),
('Presidente Hayes', 138),
('Concepción', 138),
('San Pedro', 138),
('Cordillera', 138),
('Guairá', 138),
('Caaguazú', 138),
('Caazapá', 138),
('Itapúa', 138),
('Misiones', 138),
('Paraguarí', 138),
('Alto Paraná', 138),
('Central', 138),
('Ñeembucú', 138),
('Amambay', 138),
('Canindeyú', 138);


INSERT INTO States (Name, CountryId) 
VALUES
('Amazonas', 139),
('Áncash', 139),
('Apurímac', 139),
('Arequipa', 139),
('Ayacucho', 139),
('Cajamarca', 139),
('Callao', 139),
('Cusco', 139),
('Huancavelica', 139),
('Huánuco', 139),
('Ica', 139),
('Junín', 139),
('La Libertad', 139),
('Lambayeque',139),
('Lima', 139),
('Loreto', 139),
('Madre de Dios', 139),
('Moquegua', 139),
('Pasco', 139),
('Piura', 139),
('Puno', 139),
('San Martín', 139),
('Tacna', 139),
('Tumbes', 139),
('Ucayali', 139);


INSERT INTO States (Name, CountryId) 
VALUES
('National Capital Region', 140),
('Ilocos Region', 140),
('Cagayan Valley', 140),
('Central Luzon', 140),
('Calabarzon', 140),
('Mimaropa', 140),
('Bicol Region', 140),
('Western Visayas', 140),
('Central Visayas', 140),
('Eastern Visayas', 140),
('Zamboanga Peninsula', 140),
('Northern Mindanao', 140),
('Davao Region', 140),
('Soccsksargen', 140),
('Caraga', 140),
('Bangsamoro Autonomous Region in Muslim Mindanao', 140),
('Cordillera Administrative Region', 140);


INSERT INTO States (Name, CountryId) 
VALUES
('Greater Poland Voivodeship', 141),
('Kuyavian-Pomeranian Voivodeship', 141),
('Lesser Poland Voivodeship', 141),
('Łódź Voivodeship', 141),
('Lower Silesian Voivodeship', 141),
('Lublin Voivodeship', 141),
('Lubusz Voivodeship', 141),
('Masovian Voivodeship', 141),
('Opole Voivodeship', 141),
('Podkarpackie Voivodeship', 141),
('Podlaskie Voivodeship', 141),
('Pomeranian Voivodeship', 141),
('Silesian Voivodeship', 141),
('Subcarpathian Voivodeship', 141),
('Warmian-Masurian Voivodeship', 141),
('West Pomeranian Voivodeship', 141);


INSERT INTO States (Name, CountryId) 
VALUES
('Aveiro', 142),
('Beja', 142),
('Braga', 142),
('Bragança', 142),
('Castelo Branco', 142),
('Coimbra', 142),
('Évora', 142),
('Faro', 142),
('Guarda', 142),
('Leiria', 142),
('Lisbon', 142),
('Portalegre', 142),
('Porto', 142),
('Santarém', 142),
('Setúbal', 142),
('Viana do Castelo', 142),
('Vila Real', 142),
('Viseu', 142),
('Azores', 142),
('Madeira', 142);


INSERT INTO States (Name, CountryId) 
VALUES
('Ad Dawhah', 143),
('Al Daayen', 143),
('Al Khor', 143),
('Al Rayyan', 143),
('Al Wakrah', 143),
('Al Shamal', 143),
('Al-Shahaniya', 143),
('Umm Salal', 143);


INSERT INTO States (Name, CountryId) 
VALUES
('Alba', 144),
('Arad',  144),
('Argeș', 144),
('Bacău', 144),
('Bihor', 144),
('Bistrița-Năsăud', 144),
('Botoșani', 144),
('Brăila', 144),
('Brașov', 144),
('Buzău', 144),
('Călărași', 144),
('Caraș-Severin', 144),
('Cluj', 144),
('Constanța', 144),
('Covasna', 144),
('Dâmbovița', 144),
('Dolj', 144),
('Galați', 144),
('Giurgiu', 144),
('Gorj', 144),
('Harghita', 144),
('Hunedoara', 144),
('Ialomița', 144),
('Iași', 144),
('Ilfov', 144),
('Maramureș', 144),
('Mehedinți', 144),
('Mureș', 144),
('Neamț', 144),
('Olt', 144),
('Prahova', 144),
('Satu Mare', 144),
('Sălaj', 144),
('Sibiu', 144),
('Suceava', 144),
('Teleorman', 144),
('Timiș', 144),
('Tulcea', 144),
('Vâlcea', 144),
('Vaslui', 144),
('Vrancea', 144);


INSERT INTO States (Name, CountryId) 
VALUES
('Republic of Adygea', 145),
('Altai Krai', 145),
('Amur Oblast', 145),
('Arkhangelsk Oblast', 145),
('Republic of Bashkortostan', 145),
('Belgorod Oblast', 145),
('Bryansk Oblast', 145),
('Republic of Buryatia', 145),
('Chechen Republic', 145),
('Chelyabinsk Oblast', 145),
('Chukotka Autonomous Okrug', 145),
('Chuvash Republic', 145),
('Republic of Dagestan', 145),
('Republic of Ingushetia', 145),
('Irkutsk Oblast', 145),
('Republic of Kalmykia', 145),
('Kaluga Oblast', 145),
('Kamchatka Krai', 145),
('Karachay-Cherkess Republic', 145),
('Republic of Karelia', 145),
('Kemerovo Oblast', 145),
('Khabarovsk Krai', 145),
('Republic of Khakassia', 145),
('Khanty-Mansi Autonomous Okrug', 145),
('Kirov Oblast', 145),
('Komi Republic', 145),
('Kostroma Oblast', 145),
('Krasnodar Krai', 145),
('Krasnoyarsk Krai', 145),
('Kurgan Oblast', 145),
('Kursk Oblast', 145),
('Leningrad Oblast', 145),
('Lipetsk Oblast', 145),
('Magadan Oblast', 145),
('Republic of Mari El', 145),
('Republic of Mordovia', 145),
('Moscow Oblast', 145),
('Moscow', 145),
('Murmansk Oblast', 145),
('Nenets Autonomous Okrug', 145),
('Nizhny Novgorod Oblast', 145),
('Novgorod Oblast', 145),
('Novosibirsk Oblast', 145),
('Omsk Oblast', 145),
('Orenburg Oblast', 145),
('Oryol Oblast', 145),
('Penza Oblast', 145),
('Perm Krai', 145),
('Primorsky Krai', 145),
('Pskov Oblast', 145),
('Republic of Bashkortostan', 145),
('Republic of Buryatia', 145),
('Republic of Kalmykia', 145),
('Republic of Karelia', 145),
('Republic of Mordovia', 145),
('Republic of Sakha (Yakutiya)', 145),
('Republic of Tatarstan', 145),
('Republic of Tyva', 145),
('Republic of Udmurtia', 145),
('Republic of Khakassia', 145),
('Republic of Adygea', 145),
('Altai Republic', 145),
('Bashkortostan', 145),
('Buryatia', 145),
('Chechnya', 145),
('Chuvashia', 145),
('Crimea', 145),
('Dagestan', 145),
('Ingushetia', 145),
('Kabardino-Balkaria', 145),
('Kalmykia', 145),
('Karachay-Cherkessia', 145),
('Karelia', 145),
('Khakassia', 145),
('Khanty-Mansi', 145),
('Komi', 145),
('Mari El', 145),
('Mordovia', 145),
('North Ossetia-Alania', 145),
('Sakha (Yakutiya)', 145),
('Tatarstan', 145),
('Tuva', 145),
('Udmurtia', 145),
('Chukotka Autonomous Okrug', 145),
('Yamalo-Nenets', 145);


INSERT INTO States (Name, CountryId) 
VALUES
('Northern Province', 146),
('Southern Province', 146),
('Eastern Province', 146),
('Western Province', 146),
('Kigali City', 146);


INSERT INTO States (Name, CountryId) 
VALUES
('Christ Church Nichola Town', 147),
('Saint Anne Sandy Point', 147),
('Saint George Basseterre', 147),
('Saint George Gingerland', 147),
('Saint James Windward', 147),
('Saint John Capesterre', 147),
('Saint John Figtree', 147),
('Saint Mary Cayon', 147),
('Saint Paul Capisterre', 147),
('Saint Paul Charlestown', 147),
('Saint Peter Basseterre', 147),
('Saint Thomas Middle Island', 147),
('Saint Thomas Lowland', 147),
('Trinity Palmetto Point', 147);



INSERT INTO States (Name, CountryId) 
VALUES
('Anse-la-Raye', 148),
('Canaries', 148),
('Castries', 148),
('Choiseul', 148),
('Dennery', 148),
('Gros Islet', 148),
('Laborie', 148),
('Micoud', 148),
('Praslin', 148),
('Soufrière', 148),
('Vieux Fort', 148);


INSERT INTO States (Name, CountryId) 
VALUES
('Charlotte', 149),
('Saint Andrew', 149),
('Saint David', 149),
('Saint George', 149),
('Saint Patrick', 149),
('Saint Peter', 149),
('Grenadines', 149);


INSERT INTO States (Name, CountryId) 
VALUES
('A\'ana', 150),
('Aiga-i-le-Tai', 150),
('Atua', 150),
('Fa\'asaleleaga', 150),
('Gaga\'emauga', 150),
('Gaga\'ifomauga', 150),
('Palauli', 150),
('Satupa\'itea', 150),
('Tuamasaga', 150),
('Va\'a-o-Fonoti', 150),
('Vaisigano', 150);


INSERT INTO States (Name, CountryId) 
VALUES
('San Marino', 151),
('Borgo Maggiore', 151),
('Serravalle', 151),
('Domagnano', 151),
('Faetano', 151),
('Fiorentino', 151),
('Monte Giardino', 151),
('Acquaviva', 151),
('Chiesanuova', 151);


INSERT INTO States (Name, CountryId) 
VALUES
('Sao Tome Province', 152),
('Principe Province', 152);


INSERT INTO States (Name, CountryId) 
VALUES
('Riyadh Region', 153),
('Makkah Region', 153),
('Madinah Region', 153),
('Qassim Region', 153),
('Eastern Province', 153),
('Aseer Region', 153),
('Tabuk Region', 153),
('Hail Region', 153),
('Northern Borders Region', 153),
('Al Jawf Region', 153),
('Najran Region', 153),
('Al Bahah Region', 153),
('Jizan Region', 153);


INSERT INTO States (Name, CountryId) 
VALUES
('Dakar', 154),
('Diourbel', 154),
('Fatick', 154),
('Kaolack', 154),
('Kédougou', 154),
('Kolda', 154),
('Louga', 154),
('Matam', 154),
('Saint-Louis', 154),
('Sedhiou', 154),
('Tambacounda', 154),
('Thiès', 154),
('Ziguinchor', 154);


INSERT INTO States (Name, CountryId) 
VALUES
('Belgrade', 155),
('Bor District', 155),
('Branicevo District', 155),
('Central Banat District', 155),
('Jablanica District', 155),
('Kolubara District', 155),
('Macva District', 155),
('Moravica District', 155),
('Nisava District', 155),
('Pcinja District', 155),
('Pirot District', 155),
('Podunavlje District', 155),
('Pomoravlje District', 155),
('Rasina District', 155),
('Raska District', 155),
('South Banat District', 155),
('Sumadija District', 155),
('Toplica District', 155),
('Zajecar District', 155),
('Zlatibor District', 155);


INSERT INTO States (Name, CountryId) 
VALUES
('Anse aux Pins', 156),
('Anse Boileau', 156),
('Anse Etoile', 156),
('Anse Royale', 156),
('Au Cap', 156),
('Baie Lazare', 156),
('Baie Sainte Anne', 156),
('Beau Vallon', 156),
('Bel Air', 156),
('Bel Ombre', 156),
('Cascade', 156),
('Glacis', 156),
('Grand\' Anse (on Mahé)', 156),
('Grand\' Anse (on La Digue)', 156),
('La Digue', 156),
('La Rivière Anglaise', 156),
('Les Mamelles', 156),
('Mont Buxton', 156),
('Mont Fleuri', 156),
('Plaisance', 156),
('Pointe Larue', 156),
('Port Glaud', 156),
('Roche Caiman', 156),
('Saint Louis', 156),
('Takamaka', 156);


INSERT INTO States (Name, CountryId) 
VALUES
('Eastern Province', 157),
('Northern Province', 157),
('Southern Province', 157),
('Western Area', 157),
('North Western Province', 157);

INSERT INTO States (Name, CountryId) 
VALUES
('Bedok', 158),
('Bukit Batok', 158),
('Bukit Merah', 158),
('Bukit Timah', 158),
('Central Area', 158),
('Choa Chu Kang', 158),
('Clementi', 158),
('Geylang', 158),
('Hougang', 158),
('Jurong East', 158),
('Jurong West', 158),
('Kallang', 158),
('Marine Parade', 158),
('Newton', 158),
('Novena', 158),
('Pasir Ris', 158),
('Punggol', 158),
('Queenstown', 158),
('Sengkang', 158),
('Serangoon', 158),
('Tampines', 158),
('Toa Payoh', 158),
('Woodlands', 158),
('Yishun', 158);


INSERT INTO States (Name, CountryId) 
VALUES
('Bratislava Region', 159),
('Trnava Region', 159),
('Trenčín Region', 159),
('Nitra Region', 159),
('Žilina Region', 159),
('Banská Bystrica Region', 159),
('Prešov Region', 159),
('Košice Region', 159);


INSERT INTO States (Name, CountryId) 
VALUES
('Gorenjska', 160),
('Goriška', 160),
('Jugovzhodna Slovenija', 160),
('Koroška', 160),
('Notranjsko-kraška', 160),
('Obalno-kraška', 160),
('Osrednjeslovenska', 160),
('Podravska', 160),
('Pomurska', 160),
('Savinjska', 160),
('Spodnjeposavska', 160),
('Zasavska', 160);


INSERT INTO States (Name, CountryId) 
VALUES
('Central Province', 161),
('Choiseul Province', 161),
('Guadalcanal Province', 161),
('Honiara City', 161),
('Isabel Province', 161),
('Makira-Ulawa Province', 161),
('Malaita Province', 161),
('Rennell and Bellona Province', 161),
('Temotu Province', 161),
('Western Province', 161);


INSERT INTO States (Name, CountryId) 
VALUES
('Awdal', 162),
('Galmudug', 162),
('Hirshabelle', 162),
('Jubaland', 162),
('Puntland', 162),
('South West', 162);


INSERT INTO States (Name, CountryId) 
VALUES
('Eastern Cape', 163),
('Free State', 163),
('Gauteng', 163),
('KwaZulu-Natal', 163),
('Limpopo', 163),
('Mpumalanga', 163),
('North West', 163),
('Northern Cape', 163),
('Western Cape', 163);


INSERT INTO States (Name, CountryId) 
VALUES
('Central Equatoria', 164),
('Eastern Equatoria', 164),
('Jonglei', 164),
('Lakes', 164),
('Northern Bahr el Ghazal', 164),
('Unity', 184),
('Upper Nile', 164),
('Warrap', 164),
('Western Bahr el Ghazal', 164),
('Western Equatoria', 164);


INSERT INTO States (Name, CountryId) 
VALUES
('Andalusia', 165),
('Aragon', 165),
('Asturias', 165),
('Balearic Islands', 165),
('Basque Country', 165),
('Canary Islands', 165),
('Cantabria', 165),
('Castile and León', 165),
('Castilla-La Mancha', 165),
('Catalonia', 165),
('Extremadura', 165),
('Galicia', 165),
('Madrid', 165),
('Murcia', 165),
('Navarre', 165),
('La Rioja', 165),
('Valencian Community', 165),
('Ceuta', 165),
('Melilla', 165);


INSERT INTO States (Name, CountryId) 
VALUES
('Central Province', 166),
('Eastern Province', 166),
('Northern Province', 166),
('North Central Province', 166),
('North Western Province', 166),
('Sabaragamuwa Province', 166),
('Southern Province', 166),
('Uva Province', 166),
('Western Province', 166);


INSERT INTO States (Name, CountryId) 
VALUES
('Al Jazirah', 167),
('Al Qadarif', 167),
('Blue Nile', 167),
('Central Darfur', 167),
('East Darfur', 167),
('Kassala', 167),
('Khartoum', 167),
('North Darfur', 167),
('North Kordofan', 167),
('Northern', 167),
('Red Sea', 167),
('River Nile', 167),
('Sennar', 167),
('South Darfur', 167),
('South Kordofan', 167),
('West Darfur', 167),
('West Kordofan', 167),
('White Nile', 167);


INSERT INTO States (Name, CountryId) 
VALUES
('Brokopondo', 168),
('Commewijne', 168),
('Coronie', 168),
('Marowijne', 168),
('Nickerie', 168),
('Para', 168),
('Paramaribo', 168),
('Saramacca', 168),
('Sipaliwini', 168),
('Wanica', 168);


INSERT INTO States (Name, CountryId) 
VALUES
('Blekinge län', 169),
('Dalarnas län', 169),
('Gävleborgs län', 169),
('Gotlands län', 169),
('Hallands län', 169),
('Jämtlands län', 169),
('Jönköpings län', 169),
('Kalmar län', 169),
('Kronobergs län', 169),
('Norrbottens län', 169),
('Örebro län', 169),
('Östergötlands län', 169),
('Skåne län', 169),
('Södermanlands län', 169),
('Stockholm län', 169),
('Uppsala län', 169),
('Värmlands län', 169),
('Västerbottens län', 169),
('Västernorrlands län', 169),
('Västmanlands län', 169),
('Västra Götalands län',169);


INSERT INTO States (Name, CountryId) 
VALUES
('Aargau', 170),
('Appenzell Ausserrhoden', 170),
('Appenzell Innerrhoden', 170),
('Basel-Landschaft', 170),
('Basel-Stadt', 170),
('Bern', 170),
('Fribourg', 170),
('Geneva', 170),
('Glarus', 170),
('Jura', 170),
('Lucerne', 170),
('Neuchâtel', 170),
('Nidwalden', 170),
('Obwalden', 170),
('Schaffhausen', 170),
('Schwyz', 170),
('Solothurn', 170),
('St. Gallen', 170),
('Thurgau', 170),
('Ticino', 170),
('Uri', 170),
('Valais', 170),
('Vaud', 170),
('Zug', 170),
('Zurich', 170);


INSERT INTO States (Name, CountryId) 
VALUES
('Aleppo', 171),
('Damascus', 171),
('Daraa', 171),
('Deir ez-Zor', 171),
('Hama', 171),
('Homs', 171),
('Idlib', 171),
('Latakia', 171),
('Quneitra', 171),
('Raqqa', 171),
('Rif Dimashq', 171),
('Suwayda', 171),
('Tartus', 171),
('Al-Hasakah', 171);


INSERT INTO States (Name, CountryId) 
VALUES
('Taipei City', 172),
('New Taipei City', 172),
('Taoyuan City', 172),
('Taichung City', 172),
('Tainan City', 172),
('Kaohsiung City', 172),
('Keelung City', 172),
('Hsinchu City', 172),
('Chiayi City', 172),
('Yilan County', 172),
('Hsinchu County', 172),
('Miaoli County', 172);


INSERT INTO States (Name, CountryId) 
VALUES
('Gorno-Badakhshan Autonomous Region', 173),
('Dushanbe', 173),
('Sughd Region', 173),
('Khatlon Region', 173);


INSERT INTO States (Name, CountryId) 
VALUES
('Arusha', 174),
('Dar es Salaam', 174),
('Dodoma', 174),
('Geita', 174),
('Iringa', 174),
('Kagera', 174),
('Katavi', 174),
('Kigoma', 174),
('Kilimanjaro', 174),
('Lindi', 174),
('Manyara', 174),
('Mara', 174),
('Mbeya', 174),
('Morogoro', 174),
('Mtwara', 174),
('Mwanza', 174),
('Njombe', 174),
('Pemba North', 174),
('Pemba South', 174),
('Pwani', 174),
('Rukwa', 174),
('Ruvuma', 174),
('Shinyanga', 174),
('Simiyu', 174),
('Singida', 174),
('Songwe', 174),
('Tabora', 174),
('Tanga', 174),
('Zanzibar Central/South', 174),
('Zanzibar North', 174),
('Zanzibar Urban/West', 174);


INSERT INTO States (Name, CountryId) 
VALUES
('Amnat Charoen', 175),
('Ang Thong', 175),
('Bangkok', 175),
('Bueng Kan', 175),
('Buri Ram', 175),
('Chachoengsao', 175),
('Chai Nat', 175),
('Chaiyaphum', 175),
('Chanthaburi', 175),
('Chiang Mai', 175),
('Chiang Rai', 175),
('Chon Buri', 175),
('Chumphon', 175),
('Kalasin', 175),
('Kamphaeng Phet', 175),
('Kanchanaburi', 175),
('Khon Kaen', 175),
('Krabi', 175),
('Lampang', 175),
('Lamphun', 175),
('Loei', 175),
('Lop Buri', 175),
('Mae Hong Son', 175),
('Maha Sarakham', 175),
('Mukdahan', 175),
('Nakhon Nayok', 175),
('Nakhon Pathom', 175),
('Nakhon Phanom', 175),
('Nakhon Ratchasima', 175),
('Nakhon Sawan', 175),
('Nakhon Si Thammarat', 175),
('Nan', 175),
('Narathiwat', 175),
('Nong Bua Lamphu', 175),
('Nong Khai', 175),
('Nonthaburi', 175),
('Pathum Thani', 175),
('Pattani', 175),
('Phang Nga', 175),
('Phatthalung', 175),
('Phayao', 175),
('Phetchabun', 175),
('Phetchaburi', 175),
('Phichit', 175),
('Phitsanulok', 175),
('Phra Nakhon Si Ayutthaya', 175),
('Phrae', 175),
('Phuket', 175),
('Prachin Buri', 175),
('Prachuap Khiri Khan', 175),
('Ranong', 175),
('Ratchaburi', 175),
('Rayong', 175),
('Roi Et', 175),
('Sa Kaeo', 175),
('Sakon Nakhon', 175),
('Samut Prakan', 175),
('Samut Sakhon', 175),
('Samut Songkhram', 175),
('Saraburi', 175),
('Satun', 175),
('Sing Buri', 175),
('Si Sa Ket', 175),
('Songkhla', 175),
('Sukhothai', 175),
('Suphan Buri', 175),
('Surat Thani', 175),
('Surin', 175),
('Tak', 175),
('Trang', 175),
('Trat', 175),
('Ubon Ratchathani', 175),
('Udon Thani', 175),
('Uthai Thani', 175),
('Uttaradit', 175),
('Yala', 175),
('Yasothon', 175);


INSERT INTO States (Name, CountryId) 
VALUES
('Maritime Region', 176),
('Plateaux Region', 176),
('Centrale Region', 176),
('Kara Region', 176),
('Savanes Region', 176);


INSERT INTO States (Name, CountryId) 
VALUES
('Tongatapu Group', 177),
('Ha\'apai Group', 177),
('Vava\'u Group', 177),
('\'Eua Group', 177),
('Niuas Group', 177);


INSERT INTO States (Name, CountryId) 
VALUES
('Arima', 178),
('Chaguanas', 178),
('Couva-Tabaquite-Talparo', 178),
('Diego Martin', 178),
('Eastern Tobago', 178),
('Mayaro-Rio Claro', 178),
('Penal-Debe', 178),
('Point Fortin', 178),
('Port of Spain', 178),
('Princes Town', 178),
('San Fernando', 178),
('San Juan-Laventille', 178),
('Sangre Grande', 178),
('Siparia', 178);


INSERT INTO States (Name, CountryId) 
VALUES
('Ariana', 179),
('Beja', 179),
('Ben Arous', 179),
('Bizerte', 179),
('Gabes', 179),
('Gafsa', 179),
('Jendouba', 179),
('Kairouan', 179),
('Kasserine', 179),
('Kebili', 179),
('Kef', 179),
('Mahdia', 179),
('Manouba', 179),
('Medenine', 179),
('Monastir', 179),
('Nabeul', 179),
('Sfax', 179),
('Sidi Bouzid', 179),
('Siliana', 179),
('Sousse', 179),
('Tataouine', 179),
('Tozeur', 179),
('Tunis', 179),
('Zaghouan', 179);


INSERT INTO States (Name, CountryId) 
VALUES
('Adana', 180),
('Adıyaman', 180),
('Afyonkarahisar', 180),
('Ağrı', 180),
('Amasya', 180),
('Ankara', 180),
('Antalya', 180),
('Artvin', 180),
('Aydın', 180),
('Balıkesir', 180),
('Bilecik', 180),
('Bingöl', 180),
('Bitlis', 180),
('Bolu', 180),
('Burdur', 180),
('Bursa', 180),
('Çanakkale', 180),
('Çankırı', 180),
('Çorum', 180),
('Denizli', 180),
('Diyarbakır', 180),
('Edirne', 180),
('Elazığ', 180),
('Erzincan', 180),
('Erzurum', 180),
('Eskişehir', 180),
('Gaziantep', 180),
('Giresun', 180),
('Gümüşhane',180),
('Hakkâri', 180),
('Hatay', 180),
('Isparta', 180),
('Mersin', 180),
('İstanbul', 180),
('İzmir', 180),
('Kars', 180),
('Kastamonu', 180),
('Kayseri', 180),
('Kırklareli', 180),
('Kırşehir', 180),
('Kocaeli', 180),
('Konya', 180),
('Kütahya', 180),
('Malatya', 180),
('Manisa', 180),
('Kahramanmaraş', 180),
('Mardin', 180),
('Muğla', 180),
('Muş', 180),
('Nevşehir', 180),
('Niğde', 180),
('Ordu', 180),
('Rize', 180),
('Sakarya', 180),
('Samsun', 180),
('Siirt', 180),
('Sinop', 180),
('Sivas', 180),
('Tekirdağ', 180),
('Tokat', 180),
('Trabzon', 180),
('Tunceli', 180),
('Şanlıurfa', 180),
('Uşak', 180),
('Van', 180),
('Yozgat', 180),
('Zonguldak', 180),
('Aksaray', 180),
('Bayburt', 180),
('Karaman', 180),
('Kırıkkale', 180),
('Batman', 180),
('Şırnak', 180),
('Bartın', 180),
('Ardahan', 180),
('Iğdır', 180),
('Yalova', 180),
('Karabük', 180),
('Kilis', 180),
('Osmaniye', 180),
('Düzce', 180);


INSERT INTO States (Name, CountryId) 
VALUES
('Ahal Province', 181),
('Balkan Province', 181),
('Daşoguz Province', 181),
('Lebap Province', 181),
('Mary Province', 181);


INSERT INTO States (Name, CountryId) 
VALUES
('Funafuti', 182),
('Nanumea', 182),
('Nui', 182),
('Niutao', 182),
('Nukufetau', 182),
('Nukulaelae',182),
('Vaitupu', 182),
('Niulakita', 182);


INSERT INTO States (Name, CountryId) 
VALUES
('Central Region', 183),
('Eastern Region', 183),
('Northern Region', 183),
('Western Region', 183);


INSERT INTO States (Name, CountryId) 
VALUES
('Cherkasy Oblast', 184),
('Chernihiv Oblast', 184),
('Chernivtsi Oblast', 184),
('Dnipropetrovsk Oblast', 184),
('Donetsk Oblast', 184),
('Ivano-Frankivsk Oblast', 184),
('Kharkiv Oblast', 184),
('Kherson Oblast', 184),
('Khmelnytskyi Oblast', 184),
('Kirovohrad Oblast', 184),
('Kyiv Oblast', 184),
('Luhansk Oblast', 184),
('Lviv Oblast', 184),
('Mykolaiv Oblast', 184),
('Odessa Oblast', 184),
('Poltava Oblast', 184),
('Rivne Oblast', 184),
('Sumy Oblast', 184),
('Ternopil Oblast', 184),
('Vinnytsia Oblast', 184),
('Volyn Oblast', 184),
('Zakarpattia Oblast', 184),
('Zaporizhzhia Oblast', 184),
('Zhytomyr Oblast', 184),
('Autonomous Republic of Crimea', 184),
('Kyiv', 184),
('Sevastopol', 184);


INSERT INTO States (Name, CountryId) 
VALUES
('Abu Dhabi', 185),
('Dubai', 185),
('Sharjah', 185),
('Ajman', 185),
('Umm Al-Quwain', 185),
('Ras Al Khaimah', 185),
('Fujairah', 185);


INSERT INTO States (Name, CountryId) 
VALUES
('England', 186),
('Scotland', 186),
('Wales', 186),
('Northern Ireland', 186);


INSERT INTO States (Name, CountryId) 
VALUES
('Alabama', 187),
('Alaska', 187),
('Arizona', 187),
('Arkansas', 187),
('California', 187),
('Colorado', 187),
('Connecticut', 187),
('Delaware', 187),
('Florida', 187),
('Georgia', 187),
('Hawaii', 187),
('Idaho', 187),
('Illinois', 187),
('Indiana', 187),
('Iowa', 187),
('Kansas', 187),
('Kentucky', 187),
('Louisiana', 187),
('Maine', 187),
('Maryland', 187),
('Massachusetts', 187),
('Michigan', 187),
('Minnesota', 187),
('Mississippi', 187),
('Missouri', 187),
('Montana', 187),
('Nebraska', 187),
('Nevada', 187),
('New Hampshire', 187),
('New Jersey', 187),
('New Mexico', 187),
('New York', 187),
('North Carolina', 187),
('North Dakota', 187),
('Ohio', 187),
('Oklahoma', 187),
('Oregon', 187),
('Pennsylvania', 187),
('Rhode Island',187),
('South Carolina', 187),
('South Dakota', 187),
('Tennessee', 187),
('Texas', 187),
('Utah', 187),
('Vermont', 187),
('Virginia', 187),
('Washington', 187),
('West Virginia', 187),
('Wisconsin', 187),
('Wyoming', 187);


INSERT INTO States (Name, CountryId) 
VALUES
('Artigas', 188),
('Canelones', 188),
('Cerro Largo', 188),
('Colonia', 188),
('Durazno', 188),
('Flores', 188),
('Florida', 188),
('Lavalleja', 188),
('Maldonado', 188),
('Montevideo', 188),
('Paysandú', 188),
('Río Negro', 188),
('Rivera', 188),
('Rocha', 188),
('Salto', 188),
('San José', 188),
('Soriano', 188),
('Tacuarembó', 188),
('Treinta y Tres', 188);


INSERT INTO States (Name, CountryId) 
VALUES
('Andijan', 189),
('Bukhara', 189),
('Fergana', 189),
('Jizzakh', 189),
('Karakalpakstan', 189),
('Namangan', 189),
('Navoiy', 189),
('Qashqadaryo', 189),
('Samarqand', 189),
('Sirdaryo', 189),
('Surxondaryo', 189),
('Tashkent', 189),
('Xorazm', 189);


INSERT INTO States (Name, CountryId) 
VALUES
('Malampa', 190),
('Penama', 190),
('Sanma', 190),
('Shefa', 190),
('Tafea', 190),
('Torba', 190);


INSERT INTO States (Name, CountryId) 
VALUES
('Amazonas', 191),
('Anzoátegui', 191),
('Apure', 191),
('Aragua', 191),
('Barinas', 191),
('Bolívar', 191),
('Carabobo', 191),
('Cojedes', 191),
('Delta Amacuro', 191),
('Falcón', 191),
('Guárico', 191),
('Lara', 191),
('Mérida', 191),
('Miranda', 191),
('Monagas', 191),
('Nueva Esparta', 191),
('Portuguesa', 191),
('Sucre', 191),
('Táchira', 191),
('Trujillo', 191),
('Vargas', 191),
('Yaracuy', 191),
('Zulia', 191);


INSERT INTO States (Name, CountryId) 
VALUES
('Hanoi', 192),
('Ho Chi Minh City', 192),
('Hai Phong', 192),
('Da Nang', 192),
('Can Tho', 192),
('Thanh Hoa', 192),
('Nghe An', 192),
('Ha Tinh', 192),
('Quang Binh', 192),
('Quang Tri', 192),
('Thua Thien-Hue', 192),
('Quang Nam', 192),
('Binh Dinh', 192),
('Phu Yen', 192),
('Khanh Hoa', 192),
('Lam Dong', 192),
('Binh Thuan', 192),
('Dong Nai', 192),
('Ba Ria-Vung Tau', 192),
('Ben Tre', 192),
('An Giang', 192),
('Can Tho', 192),
('Kien Giang', 192);


INSERT INTO States (Name, CountryId) 
VALUES
('Aden', 193),
('Abyan', 193),
('Ad Dali\'', 193),
('Al Bayda\'', 193),
('Al Hudaydah', 193),
('Al Jawf', 193),
('Al Mahrah', 193),
('Al Mahwit', 193),
('Amanat Al Asimah', 193),
('Amran', 193),
('Dhale', 193),
('Hadhramaut', 193),
('Hajjah', 193),
('Ibb', 193),
('Lahij', 193),
('Ma\'rib', 193),
('Raymah', 193),
('Saada', 193),
('Shabwah', 193),
('Sanaa', 193),
('Socotra', 193),
('Taiz', 193);


INSERT INTO States (Name, CountryId) 
VALUES
('Central Province', 194),
('Copperbelt Province', 194),
('Eastern Province', 194),
('Luapula Province', 194),
('Lusaka Province', 194),
('Muchinga Province', 194),
('Northern Province', 194),
('North-Western Province', 194),
('Southern Province', 194),
('Western Province', 194);


INSERT INTO States (Name, CountryId) 
VALUES
('Harare', 195),
('Bulawayo', 195),
('Manicaland', 195),
('Mashonaland Central', 195),
('Mashonaland East', 195),
('Mashonaland West', 195),
('Masvingo', 195),
('Matabeleland North', 195),
('Matabeleland South', 195),
('Midlands', 195);
