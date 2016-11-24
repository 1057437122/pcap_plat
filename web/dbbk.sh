dt=`date +%Y%m%d`
name=${dt}'-managerdb.sql'
mysqldump -umanagerpress -pmanagerpress -hmanager_db managerpress>/dbbk/${name}
