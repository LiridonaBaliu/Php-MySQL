

--Orders--
CREATE TABLE `orders` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `full_name` VARCHAR(100) NOT NULL,
    `contact` VARCHAR(20) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `address` TEXT NOT NULL,
    `food_title` VARCHAR(100) NOT NULL,
    `quantity` INT NOT NULL,
    `total_price` DECIMAL(10,2) NOT NULL,
    `order_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



--Foods--
CREATE TABLE `foods` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `food_name` VARCHAR(100) NOT NULL,
    `food_desc` TEXT NOT NULL,
    `food_price` DECIMAL(10,2) NOT NULL,
    `food_image` VARCHAR(255) NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



--users--
CREATE TABLE `users` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(50) NOT NULL UNIQUE,
    `password` VARCHAR(255) NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

