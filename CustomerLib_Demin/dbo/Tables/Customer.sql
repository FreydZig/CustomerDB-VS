CREATE TABLE [dbo].[Customer] (
    [CustomerId]           INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]            NVARCHAR (50)  NULL,
    [LastName]             NVARCHAR (50)  NOT NULL,
    [PhoneNumber]          NVARCHAR (12)  NULL,
    [Email]                NVARCHAR (255) NULL,
    [TotalPurchasesAmount] MONEY          NULL,
    PRIMARY KEY CLUSTERED ([CustomerId] ASC),
    CHECK ([Email] like '%@%.%'),
    CHECK ([TotalPurchasesAmount]>=(0)),
    CHECK (len([FirstName])<=(50)),
    CHECK (len([LastName])<=(50)),
    CHECK (len([LastName])>(0)),
    CHECK (len([PhoneNumber])<=(15) AND [PhoneNumber] like '+%')
);

