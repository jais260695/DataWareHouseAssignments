
SELECT PLANNO, EVENTPLAN.EVENTNO, WORKDATE,ACTIVITY 
FROM EVENTPLAN INNER JOIN EVENTREQUEST 
ON EVENTPLAN.EVENTNO=EVENTREQUEST.EVENTNO
INNER JOIN FACILITY 
ON EVENTREQUEST.FACNO=FACILITY.FACNO
WHERE (WORKDATE BETWEEN '01-DEC-13' AND '31-DEC-13' )
AND FACNAME='Basketball arena';

