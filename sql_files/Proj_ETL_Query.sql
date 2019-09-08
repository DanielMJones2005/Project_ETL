CREATE VIEW article_rank AS
SELECT neuroscience.title as neuro_title, neuroscience.keywords, journal_data.rank

FROM neuroscience
INNER JOIN journal_data
ON neuroscience.title = journal_data.title


SELECT *
FROM article_rank



DROP VIEW article_rank;