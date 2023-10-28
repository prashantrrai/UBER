CREATE DATABASE UBER;
USE UBER;
DROP DATABASE UBER;

CREATE TABLE Country(
	CountryId INT IDENTITY PRIMARY KEY,
	CountryName varchar(50) NOT NULL UNIQUE,
	Abbreviation VARCHAR(20) NOT NULL UNIQUE,
	Currency varchar(50) NOT NULL,
	DialingCode INT NOT NULL,
	TimeZone nvarchar(MAX),
	Flag nvarchar(MAX)
)

INSERT INTO Country (Abbreviation, CountryName, Currency, DialingCode, TimeZone, Flag)
VALUES
	('AFG', 'Afghanistan', 'Afghani', 93, 'https://www.worldometers.info/img/flags/af-flag.gif'),	
	('BGD', 'Bangladesh', 'Taka', 880, 'https://www.worldometers.info/img/flags/bg-flag.gif'),
	('BTN', 'Bhutan', 'Ngultrum', 975, 'https://www.worldometers.info/img/flags/bt-flag.gif'),
	('CAN', 'Canada', 'Canadian dollar', 1, 'https://www.worldometers.info/img/flags/ca-flag.gif'),
	('IND', 'India', 'Indian Rupee', 91, 'https://www.worldometers.info/img/flags/in-flag.gif'),
	('NP', 'Nepal', 'Nepalese Rupee', 977, 'https://www.worldometers.info/img/flags/np-flag.gif'),
	('PAK', 'Pakistan', 'Pakistani Rupee', 92, 'https://www.worldometers.info/img/flags/pk-flag.gif'),
	('LNK', 'Sri Lanka', 'Sri Lankan Rupee', 94, 'https://www.worldometers.info/img/flags/ce-flag.gif'),
	('RU', 'Russia', 'Ruble', 7, 'https://www.worldometers.info/img/flags/rs-flag.gif')

INSERT INTO Country (Abbreviation, CountryName, Currency, DialingCode, Flag)
VALUES
('USA', 'United States of America', 'US Dollar', 2, 'https://www.worldometers.info/img/flags/us-flag.gif')

UPDATE Country
SET DialingCode = 1
WHERE Abbreviation='USA'



INSERT INTO Country (CountryName, Abbreviation, Currency, DialingCode, TimeZone, Flag)
VALUES
('Afghanistan', 'AFG', 'Afghani', 93, 'UTC+04:30', 'https://www.worldometers.info/img/flags/af-flag.gif'),
('Albania', 'ALB', 'Lek', 355, 'UTC+01:00', 'https://www.worldometers.info/img/flags/al-flag.gif'),
('Algeria', 'DZA', 'Algerian Dinar', 213, 'UTC+01:00', 'https://www.worldometers.info/img/flags/ag-flag.gif'),
('Andorra', 'AND', 'Euro', 376, 'UTC+01:00', 'https://www.worldometers.info/img/flags/an-flag.gif'),
('Angola', 'AGO', 'Kwanza', 244, 'UTC+01:00', 'https://www.worldometers.info/img/flags/ao-flag.gif'),
('Antigua and Barbuda', 'ATG', 'East Caribbean Dollar', 1, 'UTC-04:00', 'https://www.worldometers.info/img/flags/ac-flag.gif'),
('Argentina', 'ARG', 'Argentine Peso', 54, 'UTC-03:00', 'https://www.worldometers.info/img/flags/ar-flag.gif'),
('Armenia', 'ARM', 'Armenian Dram', 374, 'UTC+04:00', 'https://www.worldometers.info/img/flags/am-flag.gif'),
('Australia', 'AUS', 'Australian Dollar', 61, 'UTC+08:00 to UTC+11:00', 'https://www.worldometers.info/img/flags/as-flag.gif'),
('Austria', 'AUT', 'Euro', 43, 'UTC+01:00', 'https://www.worldometers.info/img/flags/au-flag.gif'),
('Azerbaijan', 'AZE', 'Azerbaijani Manat', 994, 'UTC+04:00', 'https://www.worldometers.info/img/flags/aj-flag.gif'),
('Bahamas', 'BHS', 'Bahamian Dollar', 1, 'UTC-05:00', 'https://www.worldometers.info/img/flags/bf-flag.gif'),
('Bahrain', 'BHR', 'Bahraini Dinar', 973, 'UTC+03:00', 'https://www.worldometers.info/img/flags/ba-flag.gif'),
('Bangladesh', 'BGD', 'Taka', 880, 'UTC+06:00', 'https://www.worldometers.info/img/flags/bg-flag.gif'),
('Barbados', 'BRB', 'Barbadian Dollar', 1, 'UTC-04:00', 'https://www.worldometers.info/img/flags/bb-flag.gif'),
('Belarus', 'BLR', 'Belarusian Ruble', 375, 'UTC+03:00', 'https://www.worldometers.info/img/flags/bo-flag.gif'),
('Belgium', 'BEL', 'Euro', 32, 'UTC+01:00', 'https://www.worldometers.info/img/flags/be-flag.gif'),
('Belize', 'BLZ', 'Belize Dollar', 501, 'UTC-06:00', 'https://www.worldometers.info/img/flags/bh-flag.gif'),
('Benin', 'BEN', 'West African CFA Franc', 229, 'UTC+01:00', 'https://www.worldometers.info/img/flags/bn-flag.gif'),
('Bhutan', 'BTN', 'Ngultrum', 975, 'UTC+06:00', 'https://www.worldometers.info/img/flags/bt-flag.gif'),
('Bolivia', 'BOL', 'Boliviano', 591, 'UTC-04:00', 'https://www.worldometers.info/img/flags/bl-flag.gif'),
('Bosnia and Herzegovina', 'BIH', 'Bosnia and Herzegovina Convertible Mark', 387, 'UTC+01:00', 'https://www.worldometers.info/img/flags/bk-flag.gif'),
('Botswana', 'BWA', 'Pula', 267, 'UTC+02:00', 'https://www.worldometers.info/img/flags/bc-flag.gif'),
('Brazil', 'BRA', 'Brazilian Real', 55, 'UTC-02:00 to UTC-05:00', 'https://www.worldometers.info/img/flags/br-flag.gif'),
('Brunei', 'BRN', 'Brunei Dollar', 673, 'UTC+08:00', 'https://www.worldometers.info/img/flags/bx-flag.gif'),
('Bulgaria', 'BGR', 'Bulgarian Lev', 359, 'UTC+02:00', 'https://www.worldometers.info/img/flags/bu-flag.gif'),
('Burkina Faso', 'BFA', 'West African CFA Franc', 226, 'UTC+00:00', 'https://www.worldometers.info/img/flags/uv-flag.gif'),
('Burundi', 'BDI', 'Burundi Franc', 257, 'UTC+02:00', 'https://www.worldometers.info/img/flags/by-flag.gif'),
('Cambodia', 'KHM', 'Riel', 855, 'UTC+07:00', 'https://www.worldometers.info/img/flags/cb-flag.gif'),
('Cameroon', 'CMR', 'Central African CFA Franc', 237, 'UTC+01:00', 'https://www.worldometers.info/img/flags/cm-flag.gif'),
('Canada', 'CAN', 'Canadian Dollar', 1, 'UTC-03:30 to UTC-08:00', 'https://www.worldometers.info/img/flags/ca-flag.gif'),
('Cape Verde', 'CPV', 'Cape Verdean Escudo', 238, 'UTC-01:00', 'https://www.worldometers.info/img/flags/cv-flag.gif'),
('Central African Republic', 'CAF', 'Central African CFA Franc', 236, 'UTC+01:00', 'https://www.worldometers.info/img/flags/ct-flag.gif'),
('Chad', 'TCD', 'Central African CFA Franc', 235, 'UTC+01:00', 'https://www.worldometers.info/img/flags/cd-flag.gif'),
('Chile', 'CHL', 'Chilean Peso', 56, 'UTC-03:00 to UTC-05:00', 'https://www.worldometers.info/img/flags/ci-flag.gif'),
('China', 'CHN', 'Yuan Renminbi', 86, 'UTC+08:00', 'https://www.worldometers.info/img/flags/ch-flag.gif'),
('Colombia', 'COL', 'Colombian Peso', 57, 'UTC-05:00', 'https://www.worldometers.info/img/flags/co-flag.gif'),
('Comoros', 'COM', 'Comoran Franc', 269, 'UTC+03:00', 'https://www.worldometers.info/img/flags/cn-flag.gif'),
('Congo', 'COG', 'Central African CFA Franc', 242, 'UTC+01:00', 'https://www.worldometers.info/img/flags/cg-flag.gif'),
('Costa Rica', 'CRI', 'Costa Rican Colon', 506, 'UTC-06:00', 'https://www.worldometers.info/img/flags/cs-flag.gif'),
('Croatia', 'HRV', 'Kuna', 385, 'UTC+01:00', 'https://www.worldometers.info/img/flags/hr-flag.gif'),
('Cuba', 'CUB', 'Cuban Peso', 53, 'UTC-05:00', 'https://www.worldometers.info/img/flags/cu-flag.gif'),
('Cyprus', 'CYP', 'Euro', 357, 'UTC+02:00', 'https://www.worldometers.info/img/flags/cy-flag.gif'),
('Czech Republic', 'CZE', 'Koruna', 420, 'UTC+01:00', 'https://www.worldometers.info/img/flags/ez-flag.gif'),
('Denmark', 'DNK', 'Danish Krone', 45, 'UTC+01:00', 'https://www.worldometers.info/img/flags/da-flag.gif'),
('Djibouti', 'DJI', 'Djibouti Franc', 253, 'UTC+03:00', 'https://www.worldometers.info/img/flags/dj-flag.gif'),
('Dominica', 'DMA', 'East Caribbean Dollar', 1, 'UTC-04:00', 'https://www.worldometers.info/img/flags/do-flag.gif'),
('Dominican Republic', 'DOM', 'Dominican Peso', 1, 'UTC-04:00', 'https://www.worldometers.info/img/flags/dr-flag.gif'),
('East Timor', 'TLS', 'US Dollar', 670, 'UTC+09:00', 'https://www.worldometers.info/img/flags/tt-flag.gif'),
('Ecuador', 'ECU', 'US Dollar', 593, 'UTC-05:00', 'https://www.worldometers.info/img/flags/ec-flag.gif'),
('Egypt', 'EGY', 'Egyptian Pound', 20, 'UTC+02:00', 'https://www.worldometers.info/img/flags/eg-flag.gif'),
('El Salvador', 'SLV', 'US Dollar', 503, 'UTC-06:00', 'https://www.worldometers.info/img/flags/es-flag.gif'),
('Equatorial Guinea', 'GNQ', 'Central African CFA Franc', 240, 'UTC+01:00', 'https://www.worldometers.info/img/flags/ek-flag.gif'),
('Eritrea', 'ERI', 'Nakfa', 291, 'UTC+03:00', 'https://www.worldometers.info/img/flags/er-flag.gif'),
('Estonia', 'EST', 'Euro', 372, 'UTC+02:00', 'https://www.worldometers.info/img/flags/en-flag.gif'),
('Ethiopia', 'ETH', 'Ethiopian Birr', 251, 'UTC+03:00', 'https://www.worldometers.info/img/flags/et-flag.gif'),
('Fiji', 'FJI', 'Fijian Dollar', 679, 'UTC+12:00', 'https://www.worldometers.info/img/flags/fj-flag.gif'),
('Finland', 'FIN', 'Euro', 358, 'UTC+02:00', 'https://www.worldometers.info/img/flags/fi-flag.gif'),
('France', 'FRA', 'Euro', 33, 'UTC+01:00', 'https://www.worldometers.info/img/flags/fr-flag.gif'),
('Gabon', 'GAB', 'Central African CFA Franc', 241, 'UTC+01:00', 'https://www.worldometers.info/img/flags/gb-flag.gif'),
('Gambia', 'GMB', 'Dalasi', 220, 'UTC+00:00', 'https://www.worldometers.info/img/flags/ga-flag.gif'),
('Georgia', 'GEO', 'Lari', 995, 'UTC+04:00', 'https://www.worldometers.info/img/flags/gg-flag.gif'),
('Germany', 'DEU', 'Euro', 49, 'UTC+01:00', 'https://www.worldometers.info/img/flags/gm-flag.gif'),
('Ghana', 'GHA', 'Ghanaian Cedi', 233, 'UTC+00:00', 'https://www.worldometers.info/img/flags/gh-flag.gif'),
('Greece', 'GRC', 'Euro', 30, 'UTC+02:00', 'https://www.worldometers.info/img/flags/gr-flag.gif'),
('Grenada', 'GRD', 'East Caribbean Dollar', 1, 'UTC-04:00', 'https://www.worldometers.info/img/flags/gj-flag.gif'),
('Guatemala', 'GTM', 'Quetzal', 502, 'UTC-06:00', 'https://www.worldometers.info/img/flags/gt-flag.gif'),
('Guinea', 'GIN', 'Guinean Franc', 224, 'UTC+00:00', 'https://www.worldometers.info/img/flags/gv-flag.gif'),
('Guinea-Bissau', 'GNB', 'West African CFA Franc', 245, 'UTC+00:00', 'https://www.worldometers.info/img/flags/pu-flag.gif'),
('Guyana', 'GUY', 'Guyanese Dollar', 592, 'UTC-04:00', 'https://www.worldometers.info/img/flags/gy-flag.gif'),
('Haiti', 'HTI', 'Gourde', 509, 'UTC-05:00', 'https://www.worldometers.info/img/flags/ha-flag.gif'),
('Honduras', 'HND', 'Lempira', 504, 'UTC-06:00', 'https://www.worldometers.info/img/flags/ho-flag.gif'),
('Hungary', 'HUN', 'Forint', 36, 'UTC+01:00', 'https://www.worldometers.info/img/flags/hu-flag.gif'),
('Iceland', 'ISL', 'Iceland Krona', 354, 'UTC+00:00', 'https://www.worldometers.info/img/flags/ic-flag.gif'),
('India', 'IND', 'Indian Rupee', 91, 'UTC+05:30', 'https://www.worldometers.info/img/flags/in-flag.gif'),
('Indonesia', 'IDN', 'Rupiah', 62, 'UTC+07:00 to UTC+09:00', 'https://www.worldometers.info/img/flags/id-flag.gif'),
('Iran', 'IRN', 'Iranian Rial', 98, 'UTC+03:30', 'https://www.worldometers.info/img/flags/ir-flag.gif'),
('Iraq', 'IRQ', 'Iraqi Dinar', 964, 'UTC+03:00', 'https://www.worldometers.info/img/flags/iz-flag.gif'),
('Ireland', 'IRL', 'Euro', 353, 'UTC+00:00', 'https://www.worldometers.info/img/flags/ei-flag.gif'),
('Israel', 'ISR', 'New Israeli Shekel', 972, 'UTC+02:00', 'https://www.worldometers.info/img/flags/is-flag.gif'),
('Italy', 'ITA', 'Euro', 39, 'UTC+01:00', 'https://www.worldometers.info/img/flags/it-flag.gif'),
('Ivory Coast', 'CIV', 'West African CFA Franc', 225, 'UTC+00:00', 'https://www.worldometers.info/img/flags/iv-flag.gif'),
('Jamaica', 'JAM', 'Jamaican Dollar', 1, 'UTC-05:00', 'https://www.worldometers.info/img/flags/jm-flag.gif'),
('Japan', 'JPN', 'Yen', 81, 'UTC+09:00', 'https://www.worldometers.info/img/flags/ja-flag.gif'),
('Jordan', 'JOR', 'Jordanian Dinar', 962, 'UTC+02:00', 'https://www.worldometers.info/img/flags/jo-flag.gif'),
('Kazakhstan', 'KAZ', 'Tenge', 7, 'UTC+05:00 to UTC+06:00', 'https://www.worldometers.info/img/flags/kz-flag.gif'),
('Kenya', 'KEN', 'Kenyan Shilling', 254, 'UTC+03:00', 'https://www.worldometers.info/img/flags/ke-flag.gif'),
('Kiribati', 'KIR', 'Australian Dollar', 686, 'UTC+12:00', 'https://www.worldometers.info/img/flags/kr-flag.gif'),
('Korea, North', 'PRK', 'North Korean Won', 850, 'UTC+09:00', 'https://www.worldometers.info/img/flags/kn-flag.gif'),
('Korea, South', 'KOR', 'South Korean Won', 82, 'UTC+09:00', 'https://www.worldometers.info/img/flags/ks-flag.gif'),
('Kuwait', 'KWT', 'Kuwaiti Dinar', 965, 'UTC+03:00', 'https://www.worldometers.info/img/flags/ku-flag.gif'),
('Kyrgyzstan', 'KGZ', 'Som', 996, 'UTC+06:00', 'https://www.worldometers.info/img/flags/kg-flag.gif'),
('Laos', 'LAO', 'Lao Kip', 856, 'UTC+07:00', 'https://www.worldometers.info/img/flags/la-flag.gif'),
('Latvia', 'LVA', 'Euro', 371, 'UTC+02:00', 'https://www.worldometers.info/img/flags/lg-flag.gif'),
('Lebanon', 'LBN', 'Lebanese Pound', 961, 'UTC+02:00', 'https://www.worldometers.info/img/flags/le-flag.gif'),
('Lesotho', 'LSO', 'Loti', 266, 'UTC+02:00', 'https://www.worldometers.info/img/flags/lt-flag.gif'),
('Liberia', 'LBR', 'Liberian Dollar', 231, 'UTC+00:00', 'https://www.worldometers.info/img/flags/lr-flag.gif'),
('Libya', 'LBY', 'Libyan Dinar', 218, 'UTC+02:00', 'https://www.worldometers.info/img/flags/ly-flag.gif'),
('Liechtenstein', 'LIE', 'Swiss Franc', 423, 'UTC+01:00', 'https://www.worldometers.info/img/flags/ls-flag.gif'),
('Lithuania', 'LTU', 'Euro', 370, 'UTC+02:00', 'https://www.worldometers.info/img/flags/lh-flag.gif'),
('Luxembourg', 'LUX', 'Euro', 352, 'UTC+01:00', 'https://www.worldometers.info/img/flags/lu-flag.gif'),
('Macedonia', 'MKD', 'Denar', 389, 'UTC+01:00', 'https://www.worldometers.info/img/flags/mk-flag.gif'),
('Madagascar', 'MDG', 'Malagasy Ariary', 261, 'UTC+03:00', 'https://www.worldometers.info/img/flags/ma-flag.gif'),
('Malawi', 'MWI', 'Malawian Kwacha', 265, 'UTC+02:00', 'https://www.worldometers.info/img/flags/mi-flag.gif'),
('Malaysia', 'MYS', 'Ringgit', 60, 'UTC+08:00', 'https://www.worldometers.info/img/flags/my-flag.gif'),
('Maldives', 'MDV', 'Rufiyaa', 960, 'UTC+05:00', 'https://www.worldometers.info/img/flags/mv-flag.gif'),
('Mali', 'MLI', 'West African CFA Franc', 223, 'UTC+00:00', 'https://www.worldometers.info/img/flags/ml-flag.gif'),
('Malta', 'MLT', 'Euro', 356, 'UTC+01:00', 'https://www.worldometers.info/img/flags/mt-flag.gif'),
('Marshall Islands', 'MHL', 'US Dollar', 692, 'UTC+12:00', 'https://www.worldometers.info/img/flags/rm-flag.gif'),
('Mauritania', 'MRT', 'Ouguiya', 222, 'UTC+00:00', 'https://www.worldometers.info/img/flags/mr-flag.gif'),
('Mauritius', 'MUS', 'Mauritian Rupee', 230, 'UTC+04:00', 'https://www.worldometers.info/img/flags/mp-flag.gif'),
('Mexico', 'MEX', 'Mexican Peso', 52, 'UTC-08:00 to UTC-06:00', 'https://www.worldometers.info/img/flags/mx-flag.gif'),
('Micronesia', 'FSM', 'US Dollar', 691, 'UTC+10:00', 'https://www.worldometers.info/img/flags/fm-flag.gif'),
('Moldova', 'MDA', 'Moldovan Leu', 373, 'UTC+02:00', 'https://www.worldometers.info/img/flags/md-flag.gif'),
('Monaco', 'MCO', 'Euro', 377, 'UTC+01:00', 'https://www.worldometers.info/img/flags/mn-flag.gif'),
('Mongolia', 'MNG', 'Togrog', 976, 'UTC+08:00', 'https://www.worldometers.info/img/flags/mg-flag.gif'),
('Montenegro', 'MNE', 'Euro', 382, 'UTC+01:00', 'https://www.worldometers.info/img/flags/mj-flag.gif'),
('Morocco', 'MAR', 'Moroccan Dirham', 212, 'UTC+00:00', 'https://www.worldometers.info/img/flags/mo-flag.gif'),
('Mozambique', 'MOZ', 'Mozambican Metical', 258, 'UTC+02:00', 'https://www.worldometers.info/img/flags/mz-flag.gif'),
('Myanmar', 'MMR', 'Kyat', 95, 'UTC+06:30', 'https://www.worldometers.info/img/flags/bm-flag.gif'),
('Namibia', 'NAM', 'Namibian Dollar', 264, 'UTC+02:00', 'https://www.worldometers.info/img/flags/wa-flag.gif'),
('Nauru', 'NRU', 'Australian Dollar', 674, 'UTC+12:00', 'https://www.worldometers.info/img/flags/nr-flag.gif'),
('Nepal', 'NPL', 'Nepalese Rupee', 977, 'UTC+05:45', 'https://www.worldometers.info/img/flags/np-flag.gif'),
('Netherlands', 'NLD', 'Euro', 31, 'UTC+01:00', 'https://www.worldometers.info/img/flags/nl-flag.gif'),
('New Zealand', 'NZL', 'New Zealand Dollar', 64, 'UTC+12:00', 'https://www.worldometers.info/img/flags/nz-flag.gif'),
('Nicaragua', 'NIC', 'Cordoba Oro', 505, 'UTC-06:00', 'https://www.worldometers.info/img/flags/nu-flag.gif'),
('Niger', 'NER', 'West African CFA Franc', 227, 'UTC+01:00', 'https://www.worldometers.info/img/flags/ng-flag.gif'),
('Nigeria', 'NGA', 'Naira', 234, 'UTC+01:00', 'https://www.worldometers.info/img/flags/ni-flag.gif'),
('Norway', 'NOR', 'Norwegian Krone', 47, 'UTC+01:00', 'https://www.worldometers.info/img/flags/no-flag.gif'),
('Oman', 'OMN', 'Rial', 968, 'UTC+04:00', 'https://www.worldometers.info/img/flags/mu-flag.gif'),
('Pakistan', 'PAK', 'Pakistani Rupee', 92, 'UTC+05:00', 'https://www.worldometers.info/img/flags/pk-flag.gif'),
('Palau', 'PLW', 'US Dollar', 680, 'UTC+09:00', 'https://www.worldometers.info/img/flags/ps-flag.gif'),
('Panama', 'PAN', 'Balboa', 507, 'UTC-05:00', 'https://www.worldometers.info/img/flags/pm-flag.gif'),
('Papua New Guinea', 'PNG', 'Kina', 675, 'UTC+10:00', 'https://www.worldometers.info/img/flags/pp-flag.gif'),
('Paraguay', 'PRY', 'Guarani', 595, 'UTC-04:00', 'https://www.worldometers.info/img/flags/pa-flag.gif'),
('Peru', 'PER', 'Nuevo Sol', 51, 'UTC-05:00', 'https://www.worldometers.info/img/flags/pe-flag.gif'),
('Philippines', 'PHL', 'Peso', 63, 'UTC+08:00', 'https://www.worldometers.info/img/flags/rp-flag.gif'),
('Poland', 'POL', 'Zloty', 48, 'UTC+01:00', 'https://www.worldometers.info/img/flags/pl-flag.gif'),
('Portugal', 'PRT', 'Euro', 351, 'UTC+00:00', 'https://www.worldometers.info/img/flags/po-flag.gif'),
('Qatar', 'QAT', 'Qatari Rial', 974, 'UTC+03:00', 'https://www.worldometers.info/img/flags/qa-flag.gif'),
('Romania', 'ROU', 'Leu', 40, 'UTC+02:00', 'https://www.worldometers.info/img/flags/ro-flag.gif'),
('Russia', 'RUS', 'Ruble', 7, 'UTC+02:00 to UTC+12:00', 'https://www.worldometers.info/img/flags/rs-flag.gif'),
('Rwanda', 'RWA', 'Rwandan Franc', 250, 'UTC+02:00', 'https://www.worldometers.info/img/flags/rw-flag.gif'),
('Saint Kitts and Nevis', 'KNA', 'East Caribbean Dollar', 869, 'UTC-04:00', 'https://www.worldometers.info/img/flags/sc-flag.gif'),
('Saint Lucia', 'LCA', 'East Caribbean Dollar', 758, 'UTC-04:00', 'https://www.worldometers.info/img/flags/st-flag.gif'),
('Saint Vincent and the Grenadines', 'VCT', 'East Caribbean Dollar', 784, 'UTC-04:00', 'https://www.worldometers.info/img/flags/vc-flag.gif'),
('Samoa', 'WSM', 'Tala', 685, 'UTC+13:00', 'https://www.worldometers.info/img/flags/ws-flag.gif'),
('San Marino', 'SMR', 'Euro', 378, 'UTC+01:00', 'https://www.worldometers.info/img/flags/sm-flag.gif'),
('Sao Tome and Principe', 'STP', 'Dobra', 239, 'UTC+00:00', 'https://www.worldometers.info/img/flags/tp-flag.gif'),
('Saudi Arabia', 'SAU', 'Saudi Riyal', 966, 'UTC+03:00', 'https://www.worldometers.info/img/flags/sa-flag.gif'),
('Senegal', 'SEN', 'West African CFA Franc', 221, 'UTC+00:00', 'https://www.worldometers.info/img/flags/sg-flag.gif'),
('Serbia', 'SRB', 'Dinar', 381, 'UTC+01:00', 'https://www.worldometers.info/img/flags/ri-flag.gif'),
('Seychelles', 'SYC', 'Seychellois Rupee', 248, 'UTC+04:00', 'https://www.worldometers.info/img/flags/se-flag.gif'),
('Sierra Leone', 'SLE', 'Leone', 232, 'UTC+00:00', 'https://www.worldometers.info/img/flags/sl-flag.gif'),
('Singapore', 'SGP', 'Singapore Dollar', 65, 'UTC+08:00', 'https://www.worldometers.info/img/flags/sn-flag.gif'),
('Slovakia', 'SVK', 'Euro', 421, 'UTC+01:00', 'https://www.worldometers.info/img/flags/lo-flag.gif'),
('Slovenia', 'SVN', 'Euro', 386, 'UTC+01:00', 'https://www.worldometers.info/img/flags/si-flag.gif'),
('Solomon Islands', 'SLB', 'Solomon Islands Dollar', 677, 'UTC+11:00', 'https://www.worldometers.info/img/flags/bp-flag.gif'),
('Somalia', 'SOM', 'Somali Shilling', 252, 'UTC+03:00', 'https://www.worldometers.info/img/flags/so-flag.gif'),
('South Africa', 'ZAF', 'South African Rand', 27, 'UTC+02:00', 'https://www.worldometers.info/img/flags/sf-flag.gif'),
('South Sudan', 'SSD', 'South Sudanese Pound', 211, 'UTC+03:00', 'https://www.worldometers.info/img/flags/od-flag.gif'),
('Spain', 'ESP', 'Euro', 34, 'UTC+01:00', 'https://www.worldometers.info/img/flags/sp-flag.gif'),
('Sri Lanka', 'LKA', 'Sri Lankan Rupee', 94, 'UTC+05:30', 'https://www.worldometers.info/img/flags/ce-flag.gif'),
('Sudan', 'SDN', 'Sudanese Pound', 249, 'UTC+02:00', 'https://www.worldometers.info/img/flags/su-flag.gif'),
('Suriname', 'SUR', 'Surinamese Dollar', 597, 'UTC-03:00', 'https://www.worldometers.info/img/flags/ns-flag.gif'),
('Swaziland', 'SWZ', 'Lilangeni', 268, 'UTC+02:00', 'https://www.worldometers.info/img/flags/wz-flag.gif'),
('Sweden', 'SWE', 'Swedish Krona', 46, 'UTC+01:00', 'https://www.worldometers.info/img/flags/sw-flag.gif'),
('Switzerland', 'CHE', 'Swiss Franc', 41, 'UTC+01:00', 'https://www.worldometers.info/img/flags/sz-flag.gif'),
('Syria', 'SYR', 'Syrian Pound', 963, 'UTC+02:00', 'https://www.worldometers.info/img/flags/sy-flag.gif'),
('Taiwan', 'TWN', 'New Taiwan Dollar', 886, 'UTC+08:00', 'https://www.worldometers.info/img/flags/tw-flag.gif'),
('Tajikistan', 'TJK', 'Somoni', 992, 'UTC+05:00', 'https://www.worldometers.info/img/flags/ti-flag.gif'),
('Tanzania', 'TZA', 'Tanzanian Shilling', 255, 'UTC+03:00', 'https://www.worldometers.info/img/flags/tz-flag.gif'),
('Thailand', 'THA', 'Baht', 66, 'UTC+07:00', 'https://www.worldometers.info/img/flags/th-flag.gif'),
('Togo', 'TGO', 'CFA Franc', 228, 'UTC+00:00', 'https://www.worldometers.info/img/flags/to-flag.gif'),
('Tonga', 'TON', 'Pa''anga', 676, 'UTC+13:00', 'https://www.worldometers.info/img/flags/tn-flag.gif'),
('Trinidad and Tobago', 'TTO', 'Trinidad and Tobago Dollar', 1, 'UTC-04:00', 'https://www.worldometers.info/img/flags/td-flag.gif'),
('Tunisia', 'TUN', 'Tunisian Dinar', 216, 'UTC+01:00', 'https://www.worldometers.info/img/flags/ts-flag.gif'),
('Turkey', 'TUR', 'Turkish Lira', 90, 'UTC+03:00', 'https://www.worldometers.info/img/flags/tu-flag.gif'),
('Turkmenistan', 'TKM', 'Manat', 993, 'UTC+05:00', 'https://www.worldometers.info/img/flags/tx-flag.gif'),
('Tuvalu', 'TUV', 'Australian Dollar', 688, 'UTC+12:00', 'https://www.worldometers.info/img/flags/tv-flag.gif'),
('Uganda', 'UGA', 'Uganda Shilling', 256, 'UTC+03:00', 'https://www.worldometers.info/img/flags/ug-flag.gif'),
('Ukraine', 'UKR', 'Hryvnia', 380, 'UTC+02:00', 'https://www.worldometers.info/img/flags/up-flag.gif'),
('United Arab Emirates', 'ARE', 'UAE Dirham', 971, 'UTC+04:00', 'https://www.worldometers.info/img/flags/ae-flag.gif'),
('United Kingdom', 'GBR', 'Pound Sterling', 44, 'UTC+00:00', 'https://www.worldometers.info/img/flags/uk-flag.gif'),
('United States', 'USA', 'US Dollar', 1, 'UTC-05:00 to UTC-10:00', 'https://www.worldometers.info/img/flags/us-flag.gif'),
('Uruguay', 'URY', 'Uruguayan Peso', 598, 'UTC-03:00', 'https://www.worldometers.info/img/flags/uy-flag.gif'),
('Uzbekistan', 'UZB', 'Uzbekistan Som', 998, 'UTC+05:00', 'https://www.worldometers.info/img/flags/uz-flag.gif'),
('Vanuatu', 'VUT', 'Vatu', 678, 'UTC+11:00', 'https://www.worldometers.info/img/flags/nh-flag.gif'),
('Vatican City', 'VAT', 'Euro', 379, 'UTC+01:00', 'https://www.worldometers.info/img/flags/va-flag.gif'),
('Venezuela', 'VEN', 'Bolivar', 58, 'UTC-04:00', 'https://www.worldometers.info/img/flags/ve-flag.gif'),
('Vietnam', 'VNM', 'Dong', 84, 'UTC+07:00', 'https://www.worldometers.info/img/flags/vm-flag.gif'),
('Yemen', 'YEM', 'Yemeni Rial', 967, 'UTC+03:00', 'https://www.worldometers.info/img/flags/ym-flag.gif'),
('Zambia', 'ZMB', 'Kwacha', 260, 'UTC+02:00', 'https://www.worldometers.info/img/flags/za-flag.gif'),
('Zimbabwe', 'ZWE', 'Zimbabwean Dollar', 263, 'UTC+02:00', 'https://www.worldometers.info/img/flags/zi-flag.gif');


SELECT * FROM Country WHERE DialingCode = 91

CREATE UNIQUE INDEX IX_Country
ON Country (CountryName, DialingCode)

SET STATISTICS TIME ON SELECT * FROM Country WHERE DialingCode = 91;


DROP  INDEX Country.IX_Country

DECLARE @StartTime DATETIME;
DECLARE @EndTime DATETIME;

SET @StartTime = GETDATE();

-- Your query here
SELECT * FROM Country WHERE CountryId = 91;

SET @EndTime = GETDATE();

SELECT DATEDIFF(MILLISECOND, @StartTime, @EndTime) AS ExecutionTimeInMilliseconds;


DROP TABLE Country