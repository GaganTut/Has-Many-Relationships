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
    WHERE p.created_at > '2015-01-01';

SELECT p.title AS post_title, p.url AS post_url, c.body AS comment_body
 FROM posts p INNER JOIN comments c
  ON p.id = c.post_id
    WHERE c.body LIKE '%USB%';

SELECT p.title AS post_title, u.first_name, u.last_name, c.body
 FROM posts p
  INNER JOIN users u
    ON p.user_id = u.id
  LEFT JOIN comments c
    ON p.id = c.post_id
      WHERE c.body LIKE '%matrix%';

SELECT u.first_name, u.last_name, c.body AS comment_body
  FROM users u
   INNER JOIN posts p
    ON u.id = p.user_id
  INNER JOIN comments c
    ON c.post_id = p.id
      WHERE c.body LIKE '%SSL%' AND p.content LIKE '%dolorum%';
*/
SELECT
  u.first_name as post_author_first_name,
  u.last_name as post_author_last_name,
  p.title as post_title,
  (
   SELECT u1.first_name
   FROM users u1
   WHERE u1.id = c.user_id
  ) as comment_author_username,
  c.body as comment_body

    FROM comments c
      INNER JOIN posts p ON c.post_id = p.id
      INNER JOIN users u ON p.user_id = u.id
        WHERE (c.body LIKE '%SSL%' OR c.body LIKE '%firewall%')
        AND p.content LIKE '%nemo%';