DROP TABLE IF EXISTS Member,
                     Book,
                     Publisher,
                     Phone, 
                     Author;

CREATE TABLE Member (
    MemberID INT               NOT NULL, 
    LastName VARCHAR(40)       NOT NULL, 
    FirstName VARCHAR(40)      NOT NULL, 
    DOB DATE                   NOT NULL,
    PRIMARY KEY (MemberID)
);

CREATE TABLE Book (
    ISBN VARCHAR(20)           NOT NULL, 
    Title VARCHAR(255)         NOT NULL, 
    YearPublished DATE         NOT NULL,
    PubID INT                  NOT NULL,
    FOREIGN KEY (PubID) REFERENCES Publisher(PubID),
    PRIMARY KEY (ISBN)
);

CREATE TABLE Publisher(
    PubID INT                  NOT NULL, 
    Pub_name VARCHAR(40)       NOT NULL,
    PRIMARY KEY (PubID)
);

CREATE TABLE Phone (
    PNumber VARCHAR(20)        NOT NULL, 
    PType VARCHAR(20)          NOT NULL,
    PRIMARY KEY (PNumber)
);
CREATE TABLE Author ( 
    AuthorID INT               NOT NULL, 
    LastName VARCHAR(40)       NOT NULL, 
    FirstName VARCHAR(40)      NOT NULL,
    PRIMARY KEY (AuthorID)
);

CREATE TABLE WrittenBy(
    ISBN VARCHAR(20), AuthorID INT,
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN),
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID), 
    PRIMARY KEY (ISBN, AuthorID)
);

CREATE TABLE BorrowedBy(
    MemberID INT               NOT NULL, 
    ISBN VARCHAR(20)           NOT NULL, 
    CheckoutDate DATE          NOT NULL, 
    CheckinDate DATE           NOT NULL,
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN),
    PRIMARY KEY (MemberID, ISBN, CheckoutDate)
);

CREATE TABLE AuthorPhone(
    AuthorID INT               NOT NULL, 
    PNumber VARCHAR(20)        NOT NULL,
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID),
    FOREIGN KEY (PNumber) REFERENCES Phone(PNumber)
    PRIMARY KEY (AuthorID, PNumber),
);

CREATE TABLE PublisherPhone (
    PubID INT                  NOT NULL, 
    PNumber VARCHAR(20)        NOT NULL,
    FOREIGN KEY (PubID) REFERENCES Publisher(PubID),
    FOREIGN KEY (PNumber) REFERENCES Phone(PNumber),
    PRIMARY KEY (PubID, PNumber)
);
