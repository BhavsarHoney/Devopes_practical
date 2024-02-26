
CREATE DATABASE  project_db;
Use project_db;
GRANT ALL PRIVILEGES ON project_db.* TO 'project_user'@'%' IDENTIFIED BY 'project_password';
FLUSH PRIVILEGES;