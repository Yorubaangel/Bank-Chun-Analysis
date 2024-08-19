SELECT *
FROM bank_churn;

-- Conditional statement for the ActiveStatus---------------
SELECT
IsActiveMember, IF (IsActiveMember = 1, 'Active', 'InActive'
	) AS ActiveStatus
FROM bank_churn;

ALTER TABLE bank_churn ADD COLUMN ActiveStatus VARCHAR(20);

UPDATE bank_churn
SET ActiveStatus = 
IF (IsActiveMember = 1, 
	'Active',
    'InActive'
);
-- --------------------------------------------------------------


-- Conditional statement for the CrdCardCategory--------------------
ALTER TABLE bank_churn ADD COLUMN CrCardCategory VARCHAR(50);

UPDATE bank_churn
SET CrCardCategory = 
IF (HasCrCard = 1, 
	'credit_card_holder',
    'non_credit_card_holder'
);
-- ----------------------------------------------------------------
-- Joining Both the Bank_chun table and the Customer_info table-----
SELECT 
RowNumber,
ci.CustomerId,
CreditScore,
GeographyID,
GenderID,
Age,
Tenure,
Balance,
NumOfProducts,
HasCrCard,
IsActiveMember,
EstimatedSalary,
Exited,
Date,
ActiveStatus,
CrCardCategory,
Surname,
ExitCategory,
Sex,
Location,
CrdMeasure
FROM bank_churn bc
JOIN customerinfo ci
	ON bc.CustomerId = ci.CustomerId;

-- -------------------------------------------------------------------



-- Creating ExitCategory column--------------------------------------
ALTER TABLE bank_churn ADD COLUMN ExitCategory VARCHAR(50);

UPDATE bank_churn
SET ExitCategory = 
IF (Exited = 1, 
	'Exit',
    'Retain'
);

-- ----------------------------------------------------------------------


-- Creating Sex column--------------------------------------
ALTER TABLE bank_churn ADD COLUMN Sex VARCHAR(50);

UPDATE bank_churn
SET Sex = 
IF (GenderID = 1, 
	'Male',
    'Female'
);

-- ----------------------------------------------------------------------
ALTER TABLE bank_churn ADD COLUMN CrdMeasure VARCHAR(50);

UPDATE bank_churn
SET CrdMeasure =
( 
	CASE
		WHEN CreditScore BETWEEN "800" AND "850" THEN "Excellent"
		WHEN CreditScore BETWEEN "740" AND "799" THEN "Very Good"
        WHEN CreditScore BETWEEN "670" AND "739" THEN "Good"
        WHEN CreditScore BETWEEN "580" AND "669" THEN "Fair"
        WHEN CreditScore BETWEEN "300" AND "579" THEN "Poor"
	END
);
-- ----------------------------------------------------------------------
ALTER TABLE bank_churn DROP COLUMN GenderCategory;

-- Creating GenderCategory column----------------------------------------
-- ALTER TABLE bank_churn ADD COLUMN Location VARCHAR(50);

-- UPDATE bank_churn
-- SET Location = 
-- IF (GeographyID = 1,'France', IF(GeographyID => 1,
    -- 'Spain'));

-- -------------------------------------------------------------------------