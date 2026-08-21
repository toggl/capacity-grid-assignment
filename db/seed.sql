-- Deterministic seed. setseed() fixes random() so every run produces the same
-- database, which means two people scoring the same submission see the same numbers.
SELECT setseed(0.42);

INSERT INTO projects (id, name) VALUES
  (1,  'Atlas'),    (2,  'Beacon'),  (3,  'Corvus'),  (4,  'Dryad'),
  (5,  'Ember'),    (6,  'Fathom'),  (7,  'Gantry'),  (8,  'Halyard'),
  (9,  'Ingot'),    (10, 'Jetty'),   (11, 'Kiln'),    (12, 'Lantern');
SELECT setval('projects_id_seq', 12);

INSERT INTO people (id, name, weekly_hours) VALUES
  (1, 'Ana Ferreira',  40),
  (2, 'Bo Lindqvist',  40),
  (3, 'Cem Aydin',     20),
  (4, 'Dee Okafor',    40),
  (5, 'Eli Nakamura',   0);
SELECT setval('people_id_seq', 5);

INSERT INTO assignments (person_id, project_id, start_date, end_date, hours_per_day) VALUES
  (1, 1, '2025-12-29', '2026-01-04', 8),
  (2, 1, '2026-01-05', '2026-01-07', 8),
  (3, 2, '2026-01-05', '2026-01-05', 4),
  (4, 1, '2026-01-05', '2026-01-09', 6),
  (4, 3, '2026-01-07', '2026-01-09', 5),
  (5, 2, '2026-01-05', '2026-01-09', 4),
  (2, 3, '2026-01-09', '2026-01-12', 8),
  (1, 2, '2026-01-12', '2026-01-16', 6),
  (3, 1, '2026-01-12', '2026-01-14', 4),
  (4, 2, '2026-01-12', '2026-01-16', 8);

-- The rest of the company. Roughly 500 people across 40 countries.
-- Nordic
INSERT INTO people (name, weekly_hours)
SELECT
  f.n || ' ' || l.n,
  (ARRAY[40, 40, 40, 40, 40, 32, 24, 20])[1 + ((f.i * 3 + l.i) % 8)]
FROM unnest(ARRAY['Sanne', 'Søren', 'Tobias', 'Ulrik', 'Vigdis', 'Nils', 'Ingrid', 'Jakob']) WITH ORDINALITY AS f(n, i)
CROSS JOIN unnest(ARRAY['Kjærgaard', 'Lindqvist', 'Nygård', 'Sørensen', 'Hagen', 'Öberg', 'Þórsdóttir', 'Virtanen']) WITH ORDINALITY AS l(n, i)
LIMIT 61;

-- Iberian and Latin American
INSERT INTO people (name, weekly_hours)
SELECT
  f.n || ' ' || l.n,
  (ARRAY[40, 40, 40, 40, 40, 32, 24, 20])[1 + ((f.i * 3 + l.i) % 8)]
FROM unnest(ARRAY['Guillermo', 'Inés', 'Joaquín', 'Lucía', 'Mateo', 'Rafael', 'Sofía', 'Ximena']) WITH ORDINALITY AS f(n, i)
CROSS JOIN unnest(ARRAY['Álvarez', 'Fernández', 'Gonçalves', 'Nogueira', 'Ordóñez', 'Ruiz', 'Sepúlveda', 'de Almeida Rodrigues']) WITH ORDINALITY AS l(n, i)
LIMIT 61;

-- African
INSERT INTO people (name, weekly_hours)
SELECT
  f.n || ' ' || l.n,
  (ARRAY[40, 40, 40, 40, 40, 32, 24, 20])[1 + ((f.i * 3 + l.i) % 8)]
FROM unnest(ARRAY['Kwame', 'Thabo', 'Ngozi', 'Femi', 'Sipho', 'Yewande', 'Zola', 'Obiageli']) WITH ORDINALITY AS f(n, i)
CROSS JOIN unnest(ARRAY['Okonkwo', 'Mensah', 'Diallo', 'Adeyemi', 'Nkemelu', 'Osei', 'Mabaso', 'Achebe']) WITH ORDINALITY AS l(n, i)
LIMIT 61;

-- South Asian
INSERT INTO people (name, weekly_hours)
SELECT
  f.n || ' ' || l.n,
  (ARRAY[40, 40, 40, 40, 40, 32, 24, 20])[1 + ((f.i * 3 + l.i) % 8)]
FROM unnest(ARRAY['Priya', 'Rohan', 'Sanjana', 'Vikram', 'Neha', 'Karthik', 'Ishaan', 'Tanvi']) WITH ORDINALITY AS f(n, i)
CROSS JOIN unnest(ARRAY['Raghunathan', 'Chatterjee', 'Venkataraman', 'Iyer', 'Deshpande', 'Bhattacharya', 'Nair', 'Krishnamurthy']) WITH ORDINALITY AS l(n, i)
LIMIT 61;

-- East Asian
INSERT INTO people (name, weekly_hours)
SELECT
  f.n || ' ' || l.n,
  (ARRAY[40, 40, 40, 40, 40, 32, 24, 20])[1 + ((f.i * 3 + l.i) % 8)]
FROM unnest(ARRAY['Hiroshi', 'Yuki', 'Wei', 'Hyun-woo', 'Min-ji', 'Jia', 'Takumi', 'Seo-yeon']) WITH ORDINALITY AS f(n, i)
CROSS JOIN unnest(ARRAY['Tanaka', 'Yamamoto', 'Zhang', 'Kobayashi', 'Park', 'Choi', 'Watanabe', 'Liu']) WITH ORDINALITY AS l(n, i)
LIMIT 61;

-- Middle Eastern and Turkish
INSERT INTO people (name, weekly_hours)
SELECT
  f.n || ' ' || l.n,
  (ARRAY[40, 40, 40, 40, 40, 32, 24, 20])[1 + ((f.i * 3 + l.i) % 8)]
FROM unnest(ARRAY['Fatima', 'Omar', 'Zeynep', 'Tariq', 'Yasmin', 'Karim', 'Leila', 'Mehmet']) WITH ORDINALITY AS f(n, i)
CROSS JOIN unnest(ARRAY['Haddad', 'Yilmaz', 'Demir', 'Al-Rashid', 'Farouk', 'Nazari', 'Khalil', 'Öztürk']) WITH ORDINALITY AS l(n, i)
LIMIT 61;

-- Central and Eastern European
INSERT INTO people (name, weekly_hours)
SELECT
  f.n || ' ' || l.n,
  (ARRAY[40, 40, 40, 40, 40, 32, 24, 20])[1 + ((f.i * 3 + l.i) % 8)]
FROM unnest(ARRAY['Kasia', 'Nikola', 'Tomasz', 'Zofia', 'Milan', 'Vera', 'Jarek', 'Ivana']) WITH ORDINALITY AS f(n, i)
CROSS JOIN unnest(ARRAY['Nowak', 'Kowalczyk', 'Petrov', 'Novák', 'Horvat', 'Kovačević', 'Wiśniewski', 'Šimunović']) WITH ORDINALITY AS l(n, i)
LIMIT 61;

-- Western European
INSERT INTO people (name, weekly_hours)
SELECT
  f.n || ' ' || l.n,
  (ARRAY[40, 40, 40, 40, 40, 32, 24, 20])[1 + ((f.i * 3 + l.i) % 8)]
FROM unnest(ARRAY['Siobhán', 'Niamh', 'Fergus', 'Rory', 'Wren', 'Maeve', 'Hugo', 'Thérèse']) WITH ORDINALITY AS f(n, i)
CROSS JOIN unnest(ARRAY['O''Brien', 'Mac Giolla Bhríde', 'Fitzgerald', 'Dubois', 'Lefèvre', 'Whitfield', 'Sinclair', 'van der Meulen']) WITH ORDINALITY AS l(n, i)
LIMIT 61;

-- Names stored in their own script, as they are in the real roster.
INSERT INTO people (name, weekly_hours)
SELECT n, (ARRAY[40, 32, 40, 24, 40, 20, 40])[i]
FROM unnest(ARRAY['田中 陽子', 'Нина Петрова', 'نور الحسن', 'אורי לוי', '김민준', 'Ολυμπία Παπαδάκη', 'Nguyễn Thị Hương']) WITH ORDINALITY AS t(n, i);

INSERT INTO assignments (person_id, project_id, start_date, end_date, hours_per_day)
SELECT
  p.id,
  1 + floor(random() * 12)::int,
  d::date,
  (d::date + (3 + floor(random() * 11))::int),
  (ARRAY[2, 4, 6, 8])[1 + floor(random() * 4)::int]
FROM people p
CROSS JOIN generate_series('2025-06-02'::date, '2026-12-28'::date, interval '21 days') AS d
WHERE p.id > 5
  AND random() < 0.6;
