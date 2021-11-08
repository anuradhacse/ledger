CREATE TABLE IF NOT EXISTS `USER`
(
    `ID`           bigint(20)   NOT NULL AUTO_INCREMENT,
    `NAME`         varchar(200) NOT NULL,
    `ADDRESS`      varchar(200) NOT NULL,
    `PHONE_NUMBER` varchar(200) NOT NULL,
    `ID_NUMBER`    varchar(200) NOT NULL,
    PRIMARY KEY (`ID`)
);

CREATE TABLE IF NOT EXISTS `LEDGER`
(
    `ID`           bigint(20)   NOT NULL AUTO_INCREMENT,
    `USER_ID`      bigint(20)   NOT NULL,
    `CURRENCY`      varchar(4) NOT NULL,
    `AVAILABLE_BALANCE` decimal(10,2) NOT NULL DEFAULT 0,
    `ACCOUNT_NUMBER`    int(20) NOT NULL,
    PRIMARY KEY (`ID`),
    CONSTRAINT FK_USER_ID FOREIGN KEY (USER_ID) REFERENCES USER(ID)
);

CREATE TABLE IF NOT EXISTS `TRANSACTION`
(
    `ID`           bigint(20)   NOT NULL AUTO_INCREMENT,
    `LEDGER_ID`      bigint(20)   NOT NULL,
    `TRANSACTION_DATE`      datetime NOT NULL,
    `TRANSACTION_TYPE` varchar(2) NOT NULL,
    `AMOUNT` decimal(10,2) NOT NULL,
    `DESCRIPTION` varchar(200),
    PRIMARY KEY (`ID`),
    CONSTRAINT FK_LEDGER_ID FOREIGN KEY (LEDGER_ID) REFERENCES LEDGER(ID)
);