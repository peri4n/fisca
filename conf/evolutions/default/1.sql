# --- Quotes schema

# --- !Ups

CREATE TABLE symbol (
  id SERIAL,
  ticker VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO symbol (ticker, name) VALUES ('DD', 'E. I. du Pont de Nemours and Company');
INSERT INTO symbol (ticker, name) VALUES ('PFE', 'Pfizer Inc.');
INSERT INTO symbol (ticker, name) VALUES ('HD', 'The Home Depot Inc.');
INSERT INTO symbol (ticker, name) VALUES ('IBM', 'International Business Machines Corporation');
INSERT INTO symbol (ticker, name) VALUES ('V', 'Visa Inc.');
INSERT INTO symbol (ticker, name) VALUES ('AAPL', 'Apple Inc.');
INSERT INTO symbol (ticker, name) VALUES ('CSCO', 'Cisco Systems Inc.');
INSERT INTO symbol (ticker, name) VALUES ('MMM', '3M Company');
INSERT INTO symbol (ticker, name) VALUES ('VZ', 'Verizon Communications Inc.');
INSERT INTO symbol (ticker, name) VALUES ('JNJ', 'Johnson & Johnson');
INSERT INTO symbol (ticker, name) VALUES ('BA', 'The Boeing Company');
INSERT INTO symbol (ticker, name) VALUES ('MRK', 'Merck & Co. Inc.');
INSERT INTO symbol (ticker, name) VALUES ('UTX', 'United Technologies Corporation');
INSERT INTO symbol (ticker, name) VALUES ('MSFT', 'Microsoft Corporation');
INSERT INTO symbol (ticker, name) VALUES ('CVX', 'Chevron Corporation');
INSERT INTO symbol (ticker, name) VALUES ('MCD', 'McDonald''s Corporation');
INSERT INTO symbol (ticker, name) VALUES ('KO', 'The Coca-Cola Company');
INSERT INTO symbol (ticker, name) VALUES ('PG', 'The Procter & Gamble Company');
INSERT INTO symbol (ticker, name) VALUES ('TRV', 'The Travelers Companies Inc.');
INSERT INTO symbol (ticker, name) VALUES ('CAT', 'Caterpillar Inc.');
INSERT INTO symbol (ticker, name) VALUES ('DIS', 'The Walt Disney Company');
INSERT INTO symbol (ticker, name) VALUES ('GE', 'General Electric Company');
INSERT INTO symbol (ticker, name) VALUES ('INTC', 'Intel Corporation');
INSERT INTO symbol (ticker, name) VALUES ('NKE', 'NIKE Inc.');
INSERT INTO symbol (ticker, name) VALUES ('JPM', 'JPMorgan Chase & Co.');
INSERT INTO symbol (ticker, name) VALUES ('UNH', 'UnitedHealth Group Incorporated');
INSERT INTO symbol (ticker, name) VALUES ('WMT', 'Wal-Mart Stores Inc.');
INSERT INTO symbol (ticker, name) VALUES ('AXP', 'American Express Company');
INSERT INTO symbol (ticker, name) VALUES ('GS', 'The Goldman Sachs Group Inc.');
INSERT INTO symbol (ticker, name) VALUES ('XOM', 'Exxon Mobil Corporation');

CREATE TABLE quote (
  id SERIAL,
  symbol INTEGER REFERENCES symbol(id),
  date DATE NOT NULL,
  open DOUBLE PRECISION NOT NULL,
  high DOUBLE PRECISION NOT NULL,
  low DOUBLE PRECISION NOT NULL,
  adj_close DOUBLE PRECISION NOT NULL,
  volume INTEGER NOT NULL,
  PRIMARY KEY (id)
);

# --- !Downs

DROP TABLE symbol CASCADE;

DROP TABLE quote CASCADE;

