INSERT INTO meaning.correlation
(id, name)
VALUES(1, 'adjective');
INSERT INTO meaning.correlation
(id, name)
VALUES(2, 'instance');
INSERT INTO meaning.correlation
(id, name)
VALUES(3, 'subject');
INSERT INTO meaning.correlation
(id, name)
VALUES(4, 'causality');
INSERT INTO meaning.correlation
(id, name)
VALUES(5, 'changes');
INSERT INTO meaning.correlation
(id, name)
VALUES(6, 'contains');
INSERT INTO meaning.correlation
(id, name)
VALUES(7, 'actor');
INSERT INTO meaning.correlation
(id, name)
VALUES(8, 'needs');
INSERT INTO meaning.correlation
(id, name)
VALUES(9, 'gives');
INSERT INTO meaning.correlation
(id, name)
VALUES(10, 'parameter');
INSERT INTO meaning.correlation
(id, name)
VALUES(11, 'meaning');
INSERT INTO meaning.correlation
(id, name)
VALUES(12, 'from');
INSERT INTO meaning.correlation
(id, name)
VALUES(13, 'to');
INSERT INTO meaning.correlation
(id, name)
VALUES(14, 'each');
INSERT INTO meaning.correlation
(id, name)
VALUES(15, 'for');
INSERT INTO meaning.correlation
(id, name)
VALUES(16, 'uses');
INSERT INTO meaning.correlation
(id, name)
VALUES(17, 'execute');
INSERT INTO meaning.`object`
(id, name, color)
VALUES(1, 'for', '#acf');
INSERT INTO meaning.`object`
(id, name, color)
VALUES(2, 'instruction', '#acf');
INSERT INTO meaning.`object`
(id, name, color)
VALUES(3, 'litration rule', '#ffc');
INSERT INTO meaning.`object`
(id, name, color)
VALUES(6, 'collection rule', NULL);
INSERT INTO meaning.`object`
(id, name, color)
VALUES(7, 'range rule', NULL);
INSERT INTO meaning.`object`
(id, name, color)
VALUES(8, 'number', '#cfc');
INSERT INTO meaning.`object`
(id, name, color)
VALUES(9, 'element', NULL);
INSERT INTO meaning.`object`
(id, name, color)
VALUES(10, 'start', NULL);
INSERT INTO meaning.`object`
(id, name, color)
VALUES(11, 'end', NULL);
INSERT INTO meaning.`object`
(id, name, color)
VALUES(13, 'literable', '#fcc');
INSERT INTO meaning.`object`
(id, name, color)
VALUES(14, 'collection', NULL);
INSERT INTO meaning.`object`
(id, name, color)
VALUES(15, 'range', NULL);
INSERT INTO meaning.`object`
(id, name, color)
VALUES(17, 'iteration variable', '#cfc');
INSERT INTO meaning.object_correlation
(id, id_object_from, id_object_to, id_correlation)
VALUES(1, 2, 1, 2);
INSERT INTO meaning.object_correlation
(id, id_object_from, id_object_to, id_correlation)
VALUES(2, 1, 2, 17);
INSERT INTO meaning.object_correlation
(id, id_object_from, id_object_to, id_correlation)
VALUES(7, 3, 6, 2);
INSERT INTO meaning.object_correlation
(id, id_object_from, id_object_to, id_correlation)
VALUES(9, 3, 7, 2);
INSERT INTO meaning.object_correlation
(id, id_object_from, id_object_to, id_correlation)
VALUES(10, 8, 9, 2);
INSERT INTO meaning.object_correlation
(id, id_object_from, id_object_to, id_correlation)
VALUES(11, 8, 10, 2);
INSERT INTO meaning.object_correlation
(id, id_object_from, id_object_to, id_correlation)
VALUES(12, 8, 11, 2);
INSERT INTO meaning.object_correlation
(id, id_object_from, id_object_to, id_correlation)
VALUES(13, 6, 9, 14);
INSERT INTO meaning.object_correlation
(id, id_object_from, id_object_to, id_correlation)
VALUES(14, 7, 10, 12);
INSERT INTO meaning.object_correlation
(id, id_object_from, id_object_to, id_correlation)
VALUES(15, 7, 11, 13);
INSERT INTO meaning.object_correlation
(id, id_object_from, id_object_to, id_correlation)
VALUES(16, 1, 3, 16);
INSERT INTO meaning.object_correlation
(id, id_object_from, id_object_to, id_correlation)
VALUES(18, 13, 15, 2);
INSERT INTO meaning.object_correlation
(id, id_object_from, id_object_to, id_correlation)
VALUES(19, 13, 14, 2);
INSERT INTO meaning.object_correlation
(id, id_object_from, id_object_to, id_correlation)
VALUES(20, 6, 14, 15);
INSERT INTO meaning.object_correlation
(id, id_object_from, id_object_to, id_correlation)
VALUES(21, 7, 15, 15);
INSERT INTO meaning.object_correlation
(id, id_object_from, id_object_to, id_correlation)
VALUES(22, 14, 9, 8);
INSERT INTO meaning.object_correlation
(id, id_object_from, id_object_to, id_correlation)
VALUES(23, 15, 11, 8);
INSERT INTO meaning.object_correlation
(id, id_object_from, id_object_to, id_correlation)
VALUES(24, 15, 10, 8);
INSERT INTO meaning.object_correlation
(id, id_object_from, id_object_to, id_correlation)
VALUES(25, 1, 13, 8);
INSERT INTO meaning.object_correlation
(id, id_object_from, id_object_to, id_correlation)
VALUES(28, 1, 17, 9);
