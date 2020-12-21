--select * from MARKET.TempDataBank


SELECT DB.CompanyName
, MARKET.PercentYield(DB.NetProfit, DB.Sales) AS  NPM
, MARKET.PercentYield(DB.Y2DNetProfit, DB.Y2DSales) AS Y2DNPM
, MARKET.PercentYield(DB.Dividend, DB.Price) AS DividendYield
,DB.MarketCap
FROM MARKET.TempDataBank DB
WHERE DB.Sector LIKE 'mining%'
ORDER BY DB.MarketCap ASC

--*****************Order By Dividend yield **********************
SELECT DB.CompanyName
, MARKET.PercentYield(DB.NetProfit, DB.Sales) AS  NPM
, MARKET.PercentYield(DB.Y2DNetProfit, DB.Y2DSales) AS Y2DNPM
, MARKET.PercentYield(DB.Dividend, DB.Price) AS DividendYield
,DB.MarketCap
,CAST(ROUND((DB.RONW), 2,1) AS NUMERIC(36,2)) AS RONW
,DB.Price
,DB.FiftyTwoWeekHigh
,DB.FiftyTwoWeekLow
,MARKET.ToNumeric(DB.CurrentEquity/DB.FaceValue) AS NoOfSharesOutstanding
,DB.Sector
FROM MARKET.TempDataBank DB
ORDER BY DividendYield desc

--*****************Order By SECTOR **********************
SELECT DB.CompanyName
, MARKET.PercentYield(DB.NetProfit, DB.Sales) AS  NPM
, MARKET.PercentYield(DB.Y2DNetProfit, DB.Y2DSales) AS Y2DNPM
, MARKET.PercentYield(DB.Dividend, DB.Price) AS DividendYield
,DB.MarketCap
,CAST(ROUND((DB.RONW), 2,1) AS NUMERIC(36,2)) AS RONW
,MARKET.ToNumeric(DB.Price) AS Price
,MARKET.ToNumeric(DB.FiftyTwoWeekHigh) AS FiftyTwoWeekHigh
,MARKET.ToNumeric(DB.FiftyTwoWeekLow) AS FiftyTwoWeekLow
,MARKET.ToNumeric(DB.CurrentEquity/DB.FaceValue) AS NoOfSharesOutstanding
,DB.Sector
FROM MARKET.TempDataBank DB
ORDER BY DB.Sector ASC

