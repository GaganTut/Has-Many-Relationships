/*SELECT * FROM users;

SELECT * FROM posts;

SELECT users.first_name, users.last_name, posts.*
  FROM posts INNER JOIN users
    ON posts.user_id = users.id
      WHERE user_id = 200;

SELECT users.username, posts.*
  FROM posts INNER JOIN users
    ON posts.user_id = users.id
      WHERE users.first_name = 'Norene'
        AND users.last_name = 'Schmitt';

SELECT username
  FROM users LEFT JOIN posts
    ON users.id = posts.user_id
      WHERE posts.created_at > '2015-01-01';

SELECT u.username, p.title, p.content
  FROM users u LEFT JOIN posts p
    ON u.id = p.user_id
      WHERE u.created_at > '2015-01-01';

SELECT c.*, p.title AS PostTitle
 FROM posts p LEFT JOIN comments c
  ON p.id = c.post_id;

SELECT p.title AS post_title, p.url AS post_url, c.body AS comment_body
 FROM posts p INNER JOIN comments c
  ON p.id = c.post_id
    WHERE p.created_at < '2015-01-01';


SELECT p.title AS post_title, p.url AS post_url, c.body AS comment_body
 FROM posts p INNER JOIN comments c
  ON p.id = c.post_id
    WHERE p.created_at > '2015-01-01';*/

SELECT p.title AS post_title, p.url AS post_url, c.body AS comment_body
 FROM posts p INNER JOIN comments c
  ON p.id = c.post_id
    WHERE c.body LIKE '%USB%';