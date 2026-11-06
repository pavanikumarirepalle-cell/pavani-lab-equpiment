-- Reference schema matching the original Mamatha College database.
-- If these tables already exist, do NOT run CREATE statements over them.
CREATE DATABASE IF NOT EXISTS mamatha_lab_management;
USE mamatha_lab_management;

CREATE TABLE IF NOT EXISTS equipment (
  equipment_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  category VARCHAR(50) NOT NULL,
  quantity INT NOT NULL DEFAULT 0,
  available_quantity INT NOT NULL DEFAULT 0,
  status VARCHAR(20) NOT NULL DEFAULT 'Available'
);

CREATE TABLE IF NOT EXISTS users (
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  role VARCHAR(30) NOT NULL DEFAULT 'Student'
);

CREATE TABLE IF NOT EXISTS issue_records (
  issue_id INT PRIMARY KEY AUTO_INCREMENT,
  equipment_id INT NOT NULL,
  user_id INT NOT NULL,
  issue_date DATE NOT NULL,
  return_date DATE NULL,
  quantity INT NOT NULL DEFAULT 1,
  status VARCHAR(20) NOT NULL DEFAULT 'Issued',
  CONSTRAINT fk_issue_equipment FOREIGN KEY (equipment_id) REFERENCES equipment(equipment_id),
  CONSTRAINT fk_issue_user FOREIGN KEY (user_id) REFERENCES users(user_id)
);
