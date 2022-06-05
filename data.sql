INSERT INTO meaning.correlation (name) VALUES
	 ('adjective'),
	 ('instance'),
	 ('subject'),
	 ('causality'),
	 ('changes'),
	 ('contains'),
	 ('actor'),
	 ('needs'),
	 ('gives'),
	 ('parameter');
INSERT INTO meaning.correlation (name) VALUES
	 ('meaning'),
	 ('from'),
	 ('to'),
	 ('each'),
	 ('for'),
	 ('uses'),
	 ('execute');
	 
INSERT INTO meaning.`object` (name,color) VALUES
	 ('for','#acf'),
	 ('instruction','#acf'),
	 ('litration rule','#ffc'),
	 ('collection rule',NULL),
	 ('range rule',NULL),
	 ('number','#cfc'),
	 ('element',NULL),
	 ('start',NULL),
	 ('end',NULL),
	 ('literable','#fcc');
INSERT INTO meaning.`object` (name,color) VALUES
	 ('collection',NULL),
	 ('range',NULL),
	 ('iteration variable','#cfc');


INSERT INTO meaning.object_correlation (id_object_from,id_object_to,id_correlation) VALUES
	 (2,1,2),
	 (1,2,17),
	 (3,6,2),
	 (3,7,2),
	 (8,9,2),
	 (8,10,2),
	 (8,11,2),
	 (6,9,14),
	 (7,10,12),
	 (7,11,13);
INSERT INTO meaning.object_correlation (id_object_from,id_object_to,id_correlation) VALUES
	 (1,3,16),
	 (13,15,2),
	 (13,14,2),
	 (6,14,15),
	 (7,15,15),
	 (14,9,8),
	 (15,11,8),
	 (15,10,8),
	 (1,13,8),
	 (1,17,9);
