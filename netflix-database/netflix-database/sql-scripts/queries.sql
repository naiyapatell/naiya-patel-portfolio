-- 1. Most popular subscription plan
SELECT account_subscription_type, COUNT(*) AS plan_count
FROM Account
GROUP BY account_subscription_type
ORDER BY plan_count DESC;

-- 2. TV series watched by premium subscribers
SELECT ts.series_name, a.account_subscription_type
FROM Watch_History wh
JOIN TV_Series ts ON wh.series_ID = ts.series_ID
JOIN Profile p ON wh.profile_ID = p.profile_ID
JOIN Account a ON p.account_ID = a.account_ID
WHERE a.account_subscription_type = 'Premium';

-- 3. Movies with longest contract
SELECT pc.company_name, m.movie_name, mc.contract_end_date
FROM Movie_Contract mc
JOIN Movies m ON mc.movie_ID = m.movie_ID
JOIN Production_Company pc ON mc.company_ID = pc.company_ID
ORDER BY mc.contract_end_date DESC
LIMIT 1;

-- 4. Profile with longest game time
SELECT p.profile_name, g.game_name, gh.game_total_time
FROM Game_History gh
JOIN Game g ON gh.game_ID = g.game_ID
JOIN Profile p ON gh.profile_ID = p.profile_ID
ORDER BY gh.game_total_time DESC
LIMIT 1;

-- 5. Average game rating
SELECT AVG(game_rating) AS avg_rating
FROM Game;

-- 6. Accounts with "pass" in password
SELECT * FROM Account
WHERE account_password LIKE '%pass%' OR account_password LIKE '%Pass%';

-- 7. Production company with min and max titles
(SELECT * FROM Production_Company ORDER BY company_number_titles ASC LIMIT 1)
UNION
(SELECT * FROM Production_Company ORDER BY company_number_titles DESC LIMIT 1);

-- 8. Count of movies grouped by language
SELECT movie_language, COUNT(*) AS total_movies
FROM Movies
GROUP BY movie_language;

-- 9. Accounts in Illinois
SELECT account_ID, account_email, account_phoneNum
FROM Payment p
JOIN Account a ON p.account_ID = a.account_ID
WHERE p.payment_billing_address LIKE '%IL%';

-- 10. Highest priced TV series contract
SELECT ts.series_name, sc.contract_price
FROM Series_Contract sc
JOIN TV_Series ts ON sc.series_ID = ts.series_ID
ORDER BY sc.contract_price DESC
LIMIT 1;
