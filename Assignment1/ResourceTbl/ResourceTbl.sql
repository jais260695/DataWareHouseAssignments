
CREATE TABLE ResourceTbl(
ResNo VARCHAR2(8) CONSTRAINT ResNoNotNull NOT NULL,
ResName VARCHAR2(30) CONSTRAINT ResNameNotNull NOT NULL,
Rate INTEGER CONSTRAINT RateNotNull NOT NULL,
CONSTRAINT PK_RESOURCETBL PRIMARY KEY (ResNo),
CONSTRAINT UNIQUE_RESNAME UNIQUE (ResName),
CONSTRAINT CHECK_RATE CHECK (Rate > 0)
);