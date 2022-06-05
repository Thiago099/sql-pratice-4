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
	 ('meaning');

INSERT INTO meaning.`object` (name,color) VALUES
	 ('for',NULL),
	 ('collection',NULL),
	 ('range',NULL),
	 ('instruction','#acf'),
	 ('iterable','#ffc'),
	 ('value','#cfc'),
	 ('set',NULL),
	 ('get',NULL),
	 ('variable','#cff'),
	 ('literation','#fcf');
	 

INSERT INTO meaning.object_correlation (id_object_from,id_object_to,id_correlation) VALUES
	 (4,1,2),
	 (1,6,8),
	 (6,2,2),
	 (6,3,2),
	 (10,2,2),
	 (4,8,2),
	 (9,10,3),
	 (8,10,5),
	 (7,9,2),
	 (8,7,8);
INSERT INTO meaning.object_correlation (id_object_from,id_object_to,id_correlation) VALUES
	 (13,10,5),
	 (1,4,8),
	 (1,13,9);

