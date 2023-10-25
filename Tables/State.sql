CREATE TABLE State(
	StateName VARCHAR(50) PRIMARY KEY,
	Abbreviation VARCHAR(10),
	Capital VARCHAR(50),
	CountryID INT FOREIGN KEY REFERENCES Country(DialingCode)
)

INSERT INTO State
VALUES
	('Andhra Pradesh', 'AP', 'Amaravati', 91),
	('Arunachal Pradesh', 'AR', 'Itanagar', 91),
	('Assam', 'AS', 'Dispur', 91),
	('Bihar', 'BR', 'Patna', 91),
	('Chhattisgarh', 'CG', 'Raipur', 91),
	('Goa', 'GA', 'Panaji', 91),
	('Gujarat', 'GJ', 'Gandhinagar', 91),
	('Haryana', 'HR', 'Chandigarh', 91),
	('Himachal Pradesh', 'HP', 'Shimla', 91),
	('Jharkhand', 'JH', 'Ranchi', 91),
	('Karnataka', 'KA', 'Bengaluru', 91),
	('Kerala', 'KL', 'Thiruvananthapuram', 91),
	('Madhya Pradesh', 'MP', 'Bhopal', 91),
	('Maharashtra', 'MH', 'Mumbai', 91),
	('Manipur', 'MN', 'Imphal', 91),
	('Meghalaya', 'ML', 'Shillong', 91),
	('Mizoram', 'MZ', 'Aizawl', 91),
	('Nagaland', 'NL', 'Kohima', 91),
	('Odisha', 'OD', 'Bhubaneswar', 91),
	('Punjab', 'PB', 'Chandigarh', 91),
	('Rajasthan', 'RJ', 'Jaipur', 91),
	('Sikkim', 'SK', 'Gangtok', 91),
	('Tamil Nadu', 'TN', 'Chennai', 91),
	('Telangana', 'TG', 'Hyderabad', 91),
	('Tripura', 'TR', 'Agartala', 91),
	('Uttar Pradesh', 'UP', 'Lucknow', 91),
	('Uttarakhand', 'UT', 'Dehradun', 91),
	('West Bengal', 'WB', 'Kolkata', 91),
	('Andaman and Nicobar Islands', 'AN', 'Port Blair', 91),
	('Chandigarh', 'CH', 'Chandigarh', 91),
	('Dadra and Nagar Haveli and Daman and Diu', 'DN', 'Daman', 91),
	('Delhi', 'DL', 'New Delhi', 91),
	('Jammu and Kashmir', 'JK', 'Srinagar', 91),
	('Lakshadweep', 'LD', 'Kavaratti', 91),
	('Ladakh', 'LA', 'Leh', 91),
	('Puducherry', 'PY', 'Puducherry', 91);


INSERT INTO State 
VALUES
	('Western Province', 'WP', 'Colombo', 94),
	('Central Province', 'CP', 'Kandy', 94),
	('Southern Province', 'SP', 'Galle', 94),
	('Northern Province', 'NP', 'Jaffna', 94),
	('Eastern Province', 'EP', 'Trincomalee', 94),
	('North Western Province', 'NWP', 'Kurunegala', 94),
	('North Central Province', 'NCP', 'Anuradhapura', 94),
	('Uva Province', 'UP', 'Badulla', 94),
	('Sabaragamuwa Province', 'SP', 'Ratnapura', 94);


INSERT INTO State 
VALUES
	('Province No. 1', 'P1', 'Biratnagar', 977),
	('Province No. 2', 'P2', 'Janakpur', 977),
	('Bagmati Province', 'P3', 'Hetauda', 977),
	('Gandaki Province', 'P4', 'Pokhara', 977),
	('Province No. 5', 'P5', 'Butwal', 977),
	('Karnali Province', 'P6', 'Birendranagar', 977),
	('Sudurpashchim Province', 'P7', 'Dipayal', 977);


INSERT INTO State 
VALUES
	('Alberta', 'AB', 'Edmonton', 1),
	('British Columbia', 'BC', 'Victoria', 1),
	('Manitoba', 'MB', 'Winnipeg', 1),
	('New Brunswick', 'NB', 'Fredericton', 1),
	('Newfoundland and Labrador', 'NL', 'St. John''s', 1),
	('Northwest Territories', 'NT', 'Yellowknife', 1),
	('Nova Scotia', 'NS', 'Halifax', 1),
	('Nunavut', 'NU', 'Iqaluit', 1),
	('Ontario', 'ON', 'Toronto', 1),
	('Prince Edward Island', 'PE', 'Charlottetown', 1),
	('Quebec', 'QC', 'Quebec City', 1),
	('Saskatchewan', 'SK', 'Regina', 1),
	('Yukon', 'YT', 'Whitehorse', 1);


INSERT INTO State 
VALUES
	('Moscow', 'MC', 'Moscow', 7),
	('Saint Petersburg', 'SP', 'Saint Petersburg', 7),
	('Republic of Adygea', 'AD', 'Maykop', 7),
	('Republic of Altai', 'AL', 'Gorno-Altaysk', 7),
	('Altai Krai', 'AK', 'Barnaul', 7),
	('Amur Oblast', 'AO', 'Blagoveshchensk', 7),
	('Arkhangelsk Oblast', 'AR', 'Arkhangelsk', 7),
	('Astrakhan Oblast', 'AS', 'Astrakhan', 7),
	('Belgorod Oblast', 'BE', 'Belgorod', 7),
	('Bryansk Oblast', 'BR', 'Bryansk', 7),
	('Republic of Buryatia', 'BU', 'Ulan-Ude', 7),
	('Chechen Republic', 'CE', 'Grozny', 7)


INSERT INTO State  
VALUES
	('Sindh', 'SD', 'Karachi', 92),
	('Khyber Pakhtunkhwa', 'KP', 'Peshawar', 92),
	('Balochistan', 'BA', 'Quetta', 92),
	('Azad Jammu and Kashmir', 'AJK', 'Muzaffarabad', 92),
	('Gilgit-Baltistan', 'GB', 'Gilgit', 92);


INSERT INTO State 
	VALUES
	('Dhaka Division', 'DD', 'Dhaka', 880),
	('Chittagong Division', 'CD', 'Chittagong', 880),
	('Khulna Division', 'KD', 'Khulna', 880),
	('Barisal Division', 'BD', 'Barisal', 880),
	('Sylhet Division', 'SD', 'Sylhet', 880),
	('Rajshahi Division', 'RD', 'Rajshahi', 880),
	('Rangpur Division', 'RD', 'Rangpur', 880),

	('Kabul', 'KB', 'Kabul', 93),
	('Herat', 'HT', 'Herat', 93),
	('Balkh', 'BK', 'Mazar-i-Sharif', 93),
	('Kandahar', 'KD', 'Kandahar', 93),
	('Nangarhar', 'NG', 'Jalalabad', 93),

	('Thimphu', 'TH', 'Thimphu', 975),
	('Punakha', 'PK', 'Punakha', 975),
	('Paro', 'PA', 'Paro', 975),
	('Bumthang', 'BM', 'Jakar', 975);

INSERT INTO State
VALUES
	('Alabama', 'AL', 'Montgomery', 2),
	('Alaska', 'AK', 'Juneau', 2),
	('Arizona', 'AZ', 'Phoenix', 2),
	('Arkansas', 'AR', 'Little Rock', 2),
	('California', 'CA', 'Sacramento', 2),
	('Colorado', 'CO', 'Denver', 2),
	('Connecticut', 'CT', 'Hartford', 2),
	('Delaware', 'DE', 'Dover', 2),
	('Florida', 'FL', 'Tallahassee', 2),
	('Georgia', 'GA', 'Atlanta', 2),
	('Hawaii', 'HI', 'Honolulu', 2),
	('Idaho', 'ID', 'Boise', 2),
	('Illinois', 'IL', 'Springfield', 2),
	('Indiana', 'IN', 'Indianapolis', 2),
	('Iowa', 'IA', 'Des Moines', 2),
	('Kansas', 'KS', 'Topeka', 2),
	('Kentucky', 'KY', 'Frankfort', 2),
	('Louisiana', 'LA', 'Baton Rouge', 2),
	('Maine', 'ME', 'Augusta', 2),
	('Maryland', 'MD', 'Annapolis', 2),
	('Massachusetts', 'MA', 'Boston', 2),
	('Michigan', 'MI', 'Lansing', 2),
	('Minnesota', 'MN', 'St. Paul', 2),
	('Mississippi', 'MS', 'Jackson', 2),
	('Missouri', 'MO', 'Jefferson City', 2),
	('Montana', 'MT', 'Helena', 2),
	('Nebraska', 'NE', 'Lincoln', 2),
	('Nevada', 'NV', 'Carson City', 2),
	('New Hampshire', 'NH', 'Concord', 2),
	('New Jersey', 'NJ', 'Trenton', 2),
	('New Mexico', 'NM', 'Santa Fe', 2),
	('New York', 'NY', 'Albany', 2),
	('North Carolina', 'NC', 'Raleigh', 2),
	('North Dakota', 'ND', 'Bismarck', 2),
	('Ohio', 'OH', 'Columbus', 2),
	('Oklahoma', 'OK', 'Oklahoma City', 2),
	('Oregon', 'OR', 'Salem', 2),
	('Pennsylvania', 'PA', 'Harrisburg', 2),
	('Rhode Island', 'RI', 'Providence', 2),
	('South Carolina', 'SC', 'Columbia', 2),
	('South Dakota', 'SD', 'Pierre', 2),
	('Tennessee', 'TN', 'Nashville', 2),
	('Texas', 'TX', 'Austin', 2),
	('Utah', 'UT', 'Salt Lake City', 2),
	('Vermont', 'VT', 'Montpelier', 2),
	('Virginia', 'VA', 'Richmond', 2),
	('Washington', 'WA', 'Olympia', 2),
	('West Virginia', 'WV', 'Charleston', 2),
	('Wisconsin', 'WI', 'Madison', 2),
	('Wyoming', 'WY', 'Cheyenne', 2);

SELECT *  FROM State

DROP TABLE State