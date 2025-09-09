-- Insert Accounts
INSERT INTO Account VALUES
('101', 'keemi2@gmail.com', 'passPat123', '1234567890', 'Premium', '2020-06-10'),
('102', 'nayia3@gmail.com', 'passEL456', '0987654321', 'Basic', '2021-01-20'),
('103', 'brian4@gmail.com', 'SHaPwd789', '4567891230', 'Premium', '2022-09-05'),
('104', 'charlotte5@gmail.com', 'BaiPass321', '7890123456', 'Basic', '2019-11-15'),
('105', 'eugene6@gmail.com', 'egene45Pass', '3216549870', 'Premium', '2023-03-01');

-- Insert Payments
INSERT INTO Payment VALUES
('401', 'Credit Card', '2024-01-01', 14.99, 'Completed', '123 Main St, NY', '101'),
('402', 'PayPal', '2024-01-15', 7.99, 'Completed', '456 Oak Ave, CA', '102'),
('403', 'Credit Card', '2024-02-01', 14.99, 'Pending', '789 Pine Rd, IL', '103'),
('404', 'Debit Card', '2024-03-01', 7.99, 'Completed', '321 Maple Ln, TX', '104'),
('405', 'Credit Card', '2024-04-01', 14.99, 'Completed', '654 Elm St, FL', '105');

-- Insert Profiles
INSERT INTO Profile VALUES
('1', 'Naiya', 'avatar1', 5, '101'),
('2', 'Keemi', 'avatar2', 6, '102'),
('3', 'Brian', 'avatar3', 3, '103'),
('4', 'Charlotte', 'avatar4', 2, '104'),
('5', 'Eugene', 'avatar5', 6, '105');

-- Insert Watch History
INSERT INTO Watch_History VALUES
('701', 5, 98.2, '201', NULL, '1'),
('702', 4, 28.4, NULL, '302', '2'),
('703', 3, 50.6, '202', NULL, '3'),
('704', 5, 68.9, NULL, '305', '4'),
('705', 2, 22.2, '204', NULL, '5');

-- Insert Game History
INSERT INTO Game_History VALUES
('601', '1', 10, 1500, 20),
('602', '2', 8, 1200, 15),
('603', '3', 5, 800, 10),
('604', '4', 12, 1600, 25),
('605', '5', 9, 1300, 18);

-- Insert Games
INSERT INTO Game VALUES
('601', 'Galaxy Fighters', 'Action', '2022-06-15', 4),
('602', 'Cooking Master', 'Simulation', '2021-08-10', 5),
('603', 'Detective Hunt', 'Mystery', '2020-11-20', 4),
('604', 'Space Racer', 'Racing', '2019-05-25', 3),
('605', 'Romance Quest', 'Adventure', '2023-01-05', 2);

-- Insert Movies
INSERT INTO Movies VALUES
('501', 'Eternal Horizons', 120, 'Sci-Fi', 'English', 'Stellar Studios'),
('502', 'Crimson Dusk', 105, 'Drama', 'Spanish', 'CineLatino Productions'),
('503', 'Neon Chase', 110, 'Action', 'English', 'Velocity Films'),
('504', 'Whispers of Time', 95, 'Romance', 'French', 'Étoile Pictures'),
('505', 'Shadow Protocol', 130, 'Thriller', 'German', 'Nordlicht Entertainment');

-- Insert TV Series
INSERT INTO TV_Series VALUES
('201', 'The Chase', 3, 24, 'Thriller', 'English', 'Warner Bros'),
('202', 'Galaxy Quest', 5, 60, 'Sci-Fi', 'English', 'Paramount'),
('203', 'Foodie Life', 2, 16, 'Documentary', 'English', 'National Geo'),
('204', 'Love Saga', 4, 40, 'Romance', 'Spanish', 'Telemundo'),
('205', 'Detective Mind', 6, 72, 'Mystery', 'English', 'CBS');

-- Insert Production Companies
INSERT INTO Production_Company VALUES
('51', 'Warner Bros', 120, 'USA'),
('52', 'Paramount', 80, 'USA'),
('53', 'National Geo', 60, 'USA'),
('54', 'Telemundo', 45, 'Mexico'),
('55', 'CBS', 75, 'USA'),
('56', 'Pixar Animation Studios', 50, 'USA'),
('57', 'BBC Studios', 65, 'UK'),
('58', 'Studio Ghibli', 40, 'Japan'),
('59', 'Sony Pictures', 85, 'USA'),
('60', 'Bollywood Films', 70, 'India');

-- Insert Series Contracts
INSERT INTO Series_Contract VALUES
('51', '201', '2025-01-01', '2025-12-31', 50000.88),
('52', '202', '2025-02-15', '2026-02-14', 75000.22),
('53', '203', '2025-03-01', '2025-09-30', 62000.34),
('54', '204', '2025-04-01', '2025-10-01', 88000.21),
('55', '205', '2025-05-10', '2026-05-09', 93000.87);

-- Insert Movie Contracts
INSERT INTO Movie_Contract VALUES
('56', '501', '2025-01-10', '2025-12-10', 100000.99),
('57', '502', '2025-02-20', '2026-02-20', 120000.88),
('58', '503', '2025-03-15', '2025-09-15', 95000.22),
('59', '504', '2025-04-05', '2025-10-05', 110000.11),
('60', '505', '2025-05-25', '2026-05-25', 130000.21);

-- Insert Game Contracts
INSERT INTO Game_Contract VALUES
('53', '601', '2025-01-05', '2025-12-05', 115000.99),
('58', '602', '2025-02-10', '2026-02-10', 98000.21),
('52', '603', '2025-03-20', '2025-09-20', 105000.43),
('57', '604', '2025-04-15', '2025-10-15', 112000.23),
('60', '605', '2025-05-30', '2026-05-30', 120000.22);
