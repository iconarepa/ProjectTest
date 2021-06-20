-- Table: users
CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
)
  ENGINE = InnoDB;

-- Table: roles
create table roles (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
)
  ENGINE = InnoDB;

-- Table for mapping users and roles: user_roles
create table user_roles (
  user_id INT NOT NULL,
  role_id INT NOT NULL,

  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (role_id) REFERENCES roles (id),

  UNIQUE (user_id, role_id)
)
  ENGINE = InnoDB;

-- Insert data

INSERT INTO users VALUES (1, 'user', '$2y$12$7ZfOQEUBMfa2VuTlZ1AUxutcXDUsXINYhjeFiC9zs1pC0rbuWUw6S');

INSERT INTO roles VALUES (1, 'ROLE_USER');
INSERT INTO roles VALUES (2, 'ROLE_ADMIN');
INSERT INTO roles VALUES (3, 'ROLE_SUPERADMIN');

INSERT INTO user_roles VALUES (1, 2);