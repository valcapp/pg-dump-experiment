CREATE TABLE IF NOT EXISTS customers (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS merchants (
    id SERIAL PRIMARY KEY
    , name VARCHAR(255)
    , website VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS transactions (
    id SERIAL PRIMARY KEY,
    amount DECIMAL(10, 2),
    customer INT REFERENCES customers(id),
    merchant INT REFERENCES merchants(id)
);

INSERT INTO customers (username) VALUES
('john'), ('brett'), ('anna'), ('zoe');

INSERT INTO merchants (name, website) VALUES
('amazon', 'https://www/amazon.com'),
('microsoft', 'http://www.microsoft.com'),
('foo', 'http://www.foo.com'),
('bar', 'http://www.bar.com');

-- generated with python:
--  for c, m in itertools.product(range(1, 5), range(1, 5)):
--     print(f'{(20*int(random.random()*10000)/1000, c, m,)},')
INSERT INTO transactions (amount, customer, merchant) VALUES
(113.38, 1, 1),
(46.36, 1, 2),
(195.38, 1, 3),
(176.5, 1, 4),
(30.68, 2, 1),
(76.94, 2, 2),
(158.36, 2, 3),
(43.28, 2, 4),
(11.86, 3, 1),
(13.12, 3, 2),
(172.52, 3, 3),
(19.32, 3, 4),
(63.48, 4, 1),
(160.94, 4, 2),
(175.68, 4, 3),
(28.64, 4, 4);

