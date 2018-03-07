SELECT EVENTREQUEST.EVENTNO, DATEHELD, COUNT(*) 
FROM EVENTREQUEST 
INNER JOIN EVENTPLAN 
ON EVENTREQUEST.EVENTNO = EVENTPLAN.EVENTNO 
WHERE WORKDATE BETWEEN '01-DEC-13' AND '31-DEC-13'
GROUP BY EVENTREQUEST.EVENTNO, DATEHELD 
HAVING COUNT(*)>1;