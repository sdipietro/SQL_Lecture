-- CHALLENGE #1:
-- Select my id


-- CHALLENGE #2:
-- Select all of my possessions using my id


-- CHALLENGE #3:
-- Select the names of the SF instructors whose name starts with a M


-- CHALLENGE #4:
-- Get the distinct names of possessions


-- CHALLENGE #5:
-- Get the name & cost of the second most expensive possession 
-- whose name has at least two words


-- CHALLENGE #6:
-- Get the names of SF Instructors who do not have a pod leader


-- CHALLENGE #7:
-- Get average cost of all possessions


-- CHALLENGE #8:
-- Get the total cost of all possessions


-- CHALLENGE #9:
-- Count the total number of possessions


-- CHALLENGE #10:
-- Count the distinct types of possessions


-- CHALLENGE #11:
-- Show each possession using GROUP BY


-- CHALLENGE #12:
-- For each type of possession, show the type and number of items


-- CHALLENGE #13:
-- For each type of possession with more than 5 items, show the type and number of each


-- CHALLENGE #14
-- Of the most common item, list the ones that cost over $1000


-- CHALLENGE #15
-- How many types of possessions have a total cost over $200?



-- CHALLENGE #16
-- Who is the owner of the most expensive item?
SELECT 
    name
FROM
    ny_instructors
WHERE
    id = (
    SELECT
        owner_id
    FROM
        possessions
    ORDER BY
        cost DESC
    LIMIT
        1
    );


-- CHALLENGE #17
-- Show the name of all of the possessions and their owner

SELECT
    ny_instructors.name AS owner_name,
    possessions.name AS possession_name
FROM
    ny_instructors
JOIN possessions
    ON ny_instructors.id = possessions.owner_id;



-- CHALLENGE #18
-- Find the total number of possessions owned by each person

SELECT
    ny_instructors.name AS owner_name,
    COUNT(*) AS total_possessions
FROM
    possessions
JOIN ny_instructors
    ON ny_instructors.id = possessions.owner_id
GROUP BY
    ny_instructors.name;

-- CHALLENGE #19
-- Which SF instructor does not have any possessions?

SELECT
    ny_instructors.name
FROM
    ny_instructors
LEFT OUTER JOIN possessions
    ON ny_instructors.id = possessions.owner_id
WHERE
    possessions.id IS NULL;

-- CHALLENGE #20
-- Get all the friendships between SF and NY instructors



-- CHALLENGE #21
-- Get all of the app academy instructors who are also pod leaders
-- visualize
SELECT 
    id 
FROM 
    ny_instructors 
WHERE 
    name = "Darren"

SELECT
    *
FROM
    possessions
WHERE
    owner_id = 1

SELECT
    name
FROM
    ny_instructors
WHERE
    name LIKE 'D%'

SELECT
    DISTINCT(name)
FROM
    possessions

SELECT
    name, cost
FROM
    possessions
WHERE
    name LIKE '% %'
ORDER BY
    cost DESC

SELECT
    name
FROM
    ny_instructors
WHERE
    pod_leader_id IS NULL