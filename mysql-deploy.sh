 kubectl create namespace finance-db

 kubectl apply -f mysql-secret.yaml -n finance-db

 kubectl apply -f mysql-storage.yaml -n finance-db

 kubectl apply -f mysql-deployment.yaml -n finance-db

#  mysql -h mysql.finance-db.svc.cluster.local -uroot -p

# mysql -h mysql.finance-db.svc.cluster.local -uroot -p

# helm install mysql --set mysqlRootPassword=admin,mysqlUser=mysql,mysqlPassword=admin,mysqlDatabase=finance_db,persistence.existingClaim=b-mysql-pvc  -n finance-db bitnami/mysql

#  echo Password : $(kubectl get secret --namespace finance-db my-sql-mysql -o jsonpath="{.data.mysql-root-password}" | base64 --decode)

# kubectl run mysql-client --image=mysql:5.7 -it --rm --restart=Never -n finance-db -- /bin/bash

# export  MYSQL_ROOT_PASSWORD=FRfFSpKfNr
# mysql -h mysql.finance-db.svc.cluster.local -uroot -p"$MYSQL_ROOT_PASSWORD"

# CREATE DATABASE `finance_db` ;

CREATE TABLE `finance_process_step` (
  `finance_process_id` int NOT NULL AUTO_INCREMENT,
  `step_type` varchar(45) DEFAULT NULL,
  `queue_name` varchar(45) DEFAULT NULL,
  `message_response` blob NOT NULL,
  `response_date_time` datetime NOT NULL,
  `step_status` varchar(45) DEFAULT NULL,
  `host_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`finance_process_id`)
) ;