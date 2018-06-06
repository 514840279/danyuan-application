
CREATE 
/*[ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]*/
VIEW `application`.`v_sys_comn_logs` AS 
(SELECT 
  `t`.`create_user` AS `create_user`,
  `t`.`ip` AS `ip`,
  `t`.`param_list` AS `param_list`,
  DATE_FORMAT(`t`.`create_time`, '%Y-%c-%d') AS `date1`,
  DATE_FORMAT(`t`.`create_time`, '%h:%i') AS `time1`,
  COUNT(1) AS `num`,
  `t`.`uuid` AS `id` 
FROM
  `sys_comn_logs` `t` 
WHERE (
    `t`.`class_method` = 'findAllTableRow'
  ) 
GROUP BY `t`.`create_user`,
  `t`.`ip`,
  `t`.`param_list`,
  DATE_FORMAT(`t`.`create_time`, '%Y-%c-%d'),
  DATE_FORMAT(`t`.`create_time`, '%h:%i') 
ORDER BY DATE_FORMAT(`t`.`create_time`, '%Y-%c-%d') DESC,
  DATE_FORMAT(`t`.`create_time`, '%h:%i') DESC) ;

