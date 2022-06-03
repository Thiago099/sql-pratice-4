WITH generalization AS
(
	WITH RECURSIVE gen AS 
	(
	  SELECT 	  object_correlation.id_object_from, 
	              object_correlation.id_object_to ,
	              1 AS depth
	  FROM 		  object_correlation
	  UNION ALL
	  SELECT 		object_correlation.id_object_from, 
	               gen.id_object_to,
	               gen.depth + 1
	  FROM 		   gen
	  INNER JOIN 	object_correlation ON gen.id_object_from = object_correlation.id_object_to AND id_correlation = 2
	)
	SELECT      * 
	FROM        gen
	ORDER BY    id_object_to
), 
closest_parent AS(
SELECT id_object_to, MIN(depth) min_depth FROM generalization
GROUP BY id_object_to
),
object_alias AS (
SELECT generalization.id_object_to id_object ,object_name.name alias FROM generalization
INNER JOIN closest_parent ON closest_parent.id_object_to = generalization.id_object_to AND closest_parent.min_depth = generalization.depth
INNER JOIN object_name ON object_name.id_object = generalization.id_object_from
)
SELECT
IFNULL(CONCAT('# ',`object_name`.`name`,' ',object.id), IFNULL(CONCAT((SELECT alias FROM object_alias WHERE id_object = object.id),' ',object.id),object.id)) AS `object_to`
FROM `object`
LEFT JOIN `object_name` ON `object_name`.`id_object` = `object`.`id`