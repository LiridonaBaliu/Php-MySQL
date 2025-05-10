-- GAMES
CREATE TABLE games (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    developer VARCHAR(255) NOT NULL,
    release_year YEAR NOT NULL,
    genre VARCHAR(100),
    price DECIMAL(10,2),
    image_path VARCHAR(255),
    requirements TEXT,
    description TEXT
);

-- Insert games
INSERT INTO games (name, developer, release_year, genre, price, image_path, requirements, description) VALUES
('Grand Theft Auto V', 'Rockstar Games', 2013, 'Action-Adventure', 29.99, 'images/gta-v.jpg', NULL, 'An open-world action-adventure game where players take on the role of a criminal in a sprawling fictional city.'),
('FIFA 22', 'EA Sports', 2021, 'Sports', 59.99, 'images/fifa-22.jpg', NULL, 'A football simulation video game featuring teams from the world of soccer, developed by EA Sports.'),
('Counter-Strike: Global Offensive', 'Valve', 2012, 'Shooter', 14.99, 'images/csgo.jpg', NULL, 'A first-person shooter where players engage in tactical combat as part of a competitive online community.'),
('Elden Ring', 'FromSoftware', 2022, 'Action RPG', 59.99, 'images/elden-ring.jpg', NULL, 'An open-world action RPG where players explore a vast, fantasy world filled with challenging enemies and hidden secrets.'),
('Cyberpunk 2077', 'CD Projekt Red', 2020, 'RPG', 49.99, 'images/cyberpunk-2077.jpg', NULL, 'A futuristic RPG set in a cyberpunk world where players assume the role of a mercenary in a dystopian society.'),
('Red Dead Redemption 2', 'Rockstar Games', 2018, 'Action-Adventure', 59.99, 'images/red-dead-2.jpg', NULL, 'A western-themed action-adventure game that lets players immerse themselves in the life of an outlaw in a vast open world.'),
('The Witcher 3', 'CD Projekt Red', 2015, 'RPG', 39.99, 'images/witcher-3.jpg', NULL, 'A story-driven RPG following the adventures of Geralt of Rivia, a monster hunter in a dark fantasy world.'),
('God of War', 'Santa Monica Studio', 2018, 'Action-Adventure', 49.99, 'images/god-of-war.jpg', NULL, 'A third-person action-adventure game where players follow Kratos on his journey to defeat gods and mythological creatures.'),
('Minecraft', 'Mojang Studios', 2011, 'Sandbox/Survival', 29.99, 'images/minecraft.jpg', NULL, 'A sandbox game where players build, explore, and survive in a procedurally generated world made of blocks.'),
('Call of Duty: Modern Warfare', 'Infinity Ward', 2019, 'FPS', 59.99, 'images/cod-mw.jpg', NULL, 'A military first-person shooter game with intense multiplayer combat, set in a modern warfare setting.'),
('Assassins Creed Valhalla', 'Ubisoft Montreal', 2020, 'Action RPG', 44.99, 'images/ac-valhalla.jpg', NULL, 'An action RPG set in the Viking Age, where players follow the story of Eivor, a Viking raider, as they conquer and explore new lands.'),
('Spider-Man', 'Insomniac Games', 2018, 'Action-Adventure', 39.99, 'images/spiderman.jpg', NULL, 'An open-world superhero action game where players control Spider-Man, fighting villains and protecting New York City.'),
('Resident Evil 4 Remake', 'Capcom', 2023, 'Survival Horror', 49.99, 'images/re4-remake.jpg', NULL, 'A survival horror game where players experience the remake of the classic game, following Leon Kennedy through a terrifying zombie outbreak.');


-- users
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    emri VARCHAR(100),
    username VARCHAR(100) UNIQUE NOT NULL,
    email VARCHAR(150) UNIQUE,
    password VARCHAR(255) NOT NULL,
    confirm_password VARCHAR(255),
    is_admin BOOLEAN DEFAULT 0
);

--  orders
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    game_id INT NOT NULL,
    order_date DATETIME NOT NULL,
    status VARCHAR(50) DEFAULT 'Pending',
    quantity INT DEFAULT 1,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (game_id) REFERENCES games(id)
);
