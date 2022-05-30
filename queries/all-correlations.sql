SELECT 
object_correlation.id,
`correlation`.`name` AS `correlation`,
IFNULL(`object_from_name`.`name`, object_from.id) AS `object_from`,
IFNULL(`object_to_name`.`name`, object_to.id) AS `object_to`
FROM `object_correlation`
LEFT JOIN `correlation` ON `correlation`.`id` = `object_correlation`.`id_correlation`
LEFT JOIN `object` AS `object_from` ON `object_from`.`id` = `object_correlation`.`id_object_from`
LEFT JOIN `object_name` AS `object_from_name` ON `object_from_name`.`id_object` = `object_from`.`id`
LEFT JOIN `object` AS `object_to` ON `object_to`.`id` = `object_correlation`.`id_object_to`
LEFT JOIN `object_name` AS `object_to_name` ON `object_to_name`.`id_object` = `object_to`.`id`
ORDER BY correlation