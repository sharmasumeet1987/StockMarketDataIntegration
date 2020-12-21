

CREATE TABLE MARKET.Audited
(
	BSESymbol varchar(40) NOT NULL,
	CompanyName varchar(50) NOT NULL,
	FaceValue smallmoney,
	Year smallint,
	CurrentEquity money,
	BookValue money,
	Sales money,
	NetProfit money,
	EPS smallmoney,
	Dividend smallmoney,
	DebtEquityRatio decimal(5,2),
	RONW decimal(5,2),
	LatQtrYear smallint,
	LatQtrSales money,
	LatQtrNetProfit money,
	Y2DYearMonth varchar(10) NULL,
	Y2DSales money,
	Y2DSalesGrowth decimal(10,2),
	Y2DNetProfit money,
	Y2DNetProfitGrowth decimal(10,2),
	PromoterHolding decimal(5,2),
	PledgedHolding decimal(5,2),
	InstitutionalHolding decimal(5,2),
	NoOfShareHolders int,
	MarketCap money,
	Price money,
	FiftyTwoWeekHigh money,
	EnterpriseValue money,
	PERatio decimal(7,2),
	Sector int



)


CREATE TABLE MARKET.Sector 
(
	ID INT NOT NULL,
	Name VARCHAR(250)
)


SELECT * FROM MARKET.sector

ALTER TABLE MARKET.sector ADD NewColumn INT IDENTITY(1,1)

ALTER TABLE MARKET.sector DROP COLUMN ID

EXEC sp_rename 'MARKET.sector.NewColumn', 'ID', 'COLUMN'