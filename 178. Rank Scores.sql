SELECT
    score,
    -- DENSE_RANK() assigns a rank to each row within a partition (none specified here, so the whole table).
    -- It assigns the same rank to tied values and leaves no gaps in the ranking sequence.
    DENSE_RANK() OVER (ORDER BY score DESC) AS 'rank'
FROM
    Scores
ORDER BY
    score DESC;
