CREATE DATABASE wordpress;
CREATE user wordpressuser;
SET PASSWORD for wordpressuser = PASSWORD('DB_USER_PASS');
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpressuser'@'%' IDENTIFIED by 'DB_USER_PASS';

SET PASSWORD FOR 'root'@'localhost' = PASSWORD('DB_ROOT_PASS');
FLUSH PRIVILEGES;