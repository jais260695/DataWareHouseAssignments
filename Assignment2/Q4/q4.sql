SELECT EVENTNO, DATEAUTH, STATUS
FROM EVENTREQUEST 
WHERE (STATUS='Approved' OR STATUS='Denied') 
AND (DATEAUTH BETWEEN '01-JUL-13' AND '31-JUL-13');