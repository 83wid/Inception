CREATE DATABASE IF NOT EXISTS `inception`;
CREATE USER IF NOT EXISTS 'nabouzah'@'%' IDENTIFIED BY 'Bewid.1337';
GRANT ALL PRIVILEGES ON `inception`.* TO 'nabouzah'@'%';
FLUSH PRIVILEGES;
use inception;