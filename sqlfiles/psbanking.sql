CREATE TABLE IF NOT EXISTS`ps_banking_transactions` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `identifier` VARCHAR(50) NOT NULL,
    `description` VARCHAR(255) NOT NULL,
    `type` VARCHAR(50) NOT NULL,
    `amount` DECIMAL(10, 2) NOT NULL,
    `date` DATE NOT NULL,
    `isIncome` BOOLEAN NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

CREATE TABLE IF NOT EXISTS `ps_banking_bills` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `identifier` VARCHAR(50) NOT NULL,
    `description` VARCHAR(255) NOT NULL,
    `type` VARCHAR(50) NOT NULL,
    `amount` DECIMAL(10, 2) NOT NULL,
    `date` DATE NOT NULL,
    `isPaid` BOOLEAN NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

CREATE TABLE IF NOT EXISTS`ps_banking_accounts` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `balance` BIGINT NOT NULL,
    `holder` VARCHAR(255) NOT NULL,
    `cardNumber` VARCHAR(255) NOT NULL,
    `users` JSON NOT NULL,
    `owner` JSON NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;