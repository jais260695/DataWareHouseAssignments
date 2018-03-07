
SELECT EVENTREQUEST.EVENTNO, DATEHELD, STATUS, ESTCOST 
FROM FACILITY INNER JOIN EVENTREQUEST
ON FACILITY.FACNO=EVENTREQUEST.FACNO
INNER JOIN EVENTPLAN
ON EVENTREQUEST.EVENTNO=EVENTPLAN.EVENTNO
INNER JOIN EMPLOYEE 
ON EMPLOYEE.EMPNO=EVENTPLAN.EMPNO
WHERE EMPNAME='Mary Manager' 
AND FACNAME='Basketball arena'
AND (DATEHELD BETWEEN '01-OCT-13' AND '31-DEC-13');

