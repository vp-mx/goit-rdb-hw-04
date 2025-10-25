INSERT INTO authors (author_name) VALUES
  ('Тарас Шевченко'),
  ('Іван Франко'),
  ('Леся Українка'),
  ('Михайло Коцюбинський'),
  ('Василь Симоненко'),
  ('Іван Нечуй-Левицький'),
  ('Пантелеймон Куліш');

INSERT INTO genres (genre_name) VALUES
  ('Поезія'),
  ('Повість'),
  ('Драма-феєрія'),
  ('Новела'),
  ('Філософська лірика'),
  ('Пригодницька повість'),
  ('Філософія');

INSERT INTO books (title, publication_year, author_id, genre_id) VALUES
  ('Кобзар', 1940, 3, 3),
  ('Мойсей', 1905, 4, 3),
  ('Захар Беркут', 1901, 4, 4),
  ('Лісова пісня', 1911, 5, 5),
  ('Тіні забутих предків', 1911, 6, 6),
  ('Fata Morgana', 1903, 6, 2),
  ('Ти знаєш, що ти людина?', 1962, 7, 7),
  ('Кайдашева сім’я', 1978, 5, 4),
  ('Чорна рада', 1945, 2, 2);


INSERT INTO users (username, email) VALUES
  ('taras_r', 'taras@kobzar.ua'),
  ('lesya_f', 'lesya@lisova.ua');

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date) VALUES
  (3, 1, '2025-10-15', NULL),
  (6, 2, '2025-10-20', '2025-10-24');