
SELECT 
    COUNT(DISTINCT `UPI Banks`)
FROM
    upi;
SELECT 
    AVG(`Volume (Mn) By Costumers`),
    AVG(`Value (Cr) by Costumers`)
FROM
    upi;
SELECT 
    MIN(`Volume (Mn) By Costumers`),
    MAX(`Volume (Mn) by Costumers`),
    STDDEV(`Volume (Mn) by Costumers`),
    MIN(`Value (Cr) by Costumers`),
    MAX(`Value (Cr) by Costumers`),
    STDDEV(`Value (Cr) by Costumers`)
FROM
    upi;
SELECT 
    MIN(`Volume (Mn)`),
    MAX(`Volume (Mn)`),
    AVG(`Volume (Mn)`),
    MIN(`Value (Cr)`),
    MAX(`Value (Cr)`),
    AVG(`Value (Cr)`)
FROM
    upi;
SELECT 
    *
FROM
    upi
WHERE
    `Volume (Mn) By Costumers` != `Volume (Mn)`
        AND `Value (Cr) by Costumers` != `Value (Cr)`;
SELECT 
    *
FROM
    upi
WHERE
    `Volume (Mn) By Costumers` = `Volume (Mn)`
        AND `Value (Cr) by Costumers` = `Value (Cr)`;
SELECT 
    `UPI Banks`, `Volume (Mn) By Costumers`
FROM
    upi
WHERE
    `Volume (Mn) By Costumers` = `Volume (Mn)`
        AND `Value (Cr) by Costumers` = `Value (Cr)`
GROUP BY `UPI Banks`;
SELECT 
    `UPI Banks`, `Volume (Mn) By Costumers`, Month
FROM
    upi
WHERE
    `Volume (Mn) By Costumers` = `Volume (Mn)`
        AND `Value (Cr) by Costumers` = `Value (Cr)`
GROUP BY `UPI Banks`
ORDER BY `Volume (Mn) By Costumers` DESC , Month DESC;
SELECT 
    `UPI Banks`, `Volume (Mn) By Costumers`, Month
FROM
    upi
GROUP BY `UPI Banks`
ORDER BY `Volume (Mn) By Costumers` DESC;
SELECT 
    `UPI Banks`, `Value (Cr) by Costumers`, Month
FROM
    upi
GROUP BY `UPI Banks`
ORDER BY `Value (Cr) by Costumers` DESC;
SELECT 
    `UPI Banks`, `Volume (Mn)`, `Value (Cr)`, Month
FROM
    upi
GROUP BY `UPI Banks`
ORDER BY `Volume (Mn)` DESC;
SELECT 
    AVG(`Volume (Mn) By Costumers`), Month
FROM
    upi
GROUP BY Month;
SELECT 
    AVG(`Value (Cr) by Costumers`), Month
FROM
    upi
GROUP BY Month;