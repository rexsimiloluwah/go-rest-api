CREATE TABLE users(
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    email VARCHAR(200) NOT NULL,
    password VARCHAR(200) NOT NULL,
    bio VARCHAR(500),
    phone VARCHAR(100),
    picture VARCHAR(300),
    status VARCHAR(500),
    website VARCHAR(200),
    access_token VARCHAR(255),
    created_at DATETIME,
    updated_at DATETIME,
    deleted_at DATETIME
);

CREATE TABLE posts(
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    description VARCHAR(500) NOT NULL,
    content MEDIUMTEXT NOT NULL,
    user_id INT NOT NULL,
    created_at DATETIME,
    updated_at DATETIME,
    deleted_at DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(id)
);