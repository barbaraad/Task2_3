SELECT *, first_quartile_numeric*second_quartile_numeric*third_quartile_numeric*fouth_quartile_numeric AS year_b FROM
(SELECT first_quartile,second_quartile,third_quartile,fouth_quartile,
       CASE WHEN first_quartile='A' THEN 1.2
            WHEN first_quartile='B' THEN 1.1
			WHEN first_quartile='C' THEN 1
			WHEN first_quartile='D' THEN 0.9
			WHEN first_quartile='E' THEN 0.8
       END AS first_quartile_numeric,
	   CASE WHEN second_quartile='A' THEN 1.2
            WHEN second_quartile='B' THEN 1.1
			WHEN second_quartile='C' THEN 1
			WHEN second_quartile='D' THEN 0.9
			WHEN second_quartile='E' THEN 0.8
       END AS second_quartile_numeric,
	   CASE WHEN third_quartile='A' THEN 1.2
            WHEN third_quartile='B' THEN 1.1
			WHEN third_quartile='C' THEN 1
			WHEN third_quartile='D' THEN 0.9
			WHEN third_quartile='E' THEN 0.8
       END AS third_quartile_numeric,
	   CASE WHEN fouth_quartile='A' THEN 1.2
            WHEN fouth_quartile='B' THEN 1.1
			WHEN fouth_quartile='C' THEN 1
			WHEN fouth_quartile='D' THEN 0.9
			WHEN fouth_quartile='E' THEN 0.8
       END AS fouth_quartile_numeric
    FROM evaluations) q_b;