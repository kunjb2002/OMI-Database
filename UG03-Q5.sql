--All the totals of ERA types, Identification data and Maxwell transfer
SELECT 
COUNT (CASE WHEN era='Modern' THEN 1 END) as "Modern Total",
COUNT (CASE WHEN era='Historic' THEN 1 END) as "Historic Total",
COUNT (CASE WHEN era='Prehistoric' THEN 1 END) as "Prehistoric Total",
COUNT (CASE WHEN if_identified='Yes' THEN 1 END) as "Identified Total",
COUNT (CASE WHEN if_identified='No' THEN 1 END) as "D.O.E. Total",
COUNT (CASE WHEN to_maxwell='Yes' THEN 1 END) as "Maxwell Total",
COUNT (CASE WHEN to_maxwell ='Yes' AND if_identified ='Yes' THEN 1 END) as "Maxwell Identified Total"
FROM casefile;