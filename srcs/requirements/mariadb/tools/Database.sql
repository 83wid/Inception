CREATE DATABASE IF NOT EXISTS `nabouzah`;
CREATE USER IF NOT EXISTS 'nabouzah'@'%' IDENTIFIED BY 'nabouzah';
GRANT ALL PRIVILEGES ON `nabouzah`.* TO 'nabouzah'@'%';
FLUSH PRIVILEGES;
use nabouzah;