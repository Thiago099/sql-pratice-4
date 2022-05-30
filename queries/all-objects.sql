SELECT IFNULL(`object_name`.`name`,object.id) object
FROM `object`
LEFT JOIN `object_name` ON `object_name`.`id_object` = `object`.`id`