--select * from MARKET.TempDataBankNew

sp_rename '[MARKET].[TempDataBankNew]', 'TempDataBank'

SELECT DB.CompanyName
, DB.Sales
,DB.NetProfit
, MARKET.PercentYield(DB.NetProfit, DB.Sales) AS  NPM
, DB.Y2DSales
,DB.Y2DNetProfit
, MARKET.PercentYield(DB.Y2DNetProfit, DB.Y2DSales) AS Y2DNPM
, MARKET.PercentYield(DB.Dividend, DB.Price) AS DividendYield
,DB.MarketCap
,CAST(ROUND((DB.RONW), 2,1) AS NUMERIC(36,2)) AS RONW
,(DB.Price) AS Price
,(DB.FiftyTwoWeekHigh) AS FiftyTwoWeekHigh
,(DB.FiftyTwoWeekLow) AS FiftyTwoWeekLow
,Market.ToNumeric(DB.CurrentEquity/DB.FaceValue) AS NoOfSharesOutstanding
,DB.Sector
FROM MARKET.TempDataBank DB
WHERE DB.Sector LIKE 'Abrasives And Grinding Wheels%'
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
,(DB.CurrentEquity/DB.FaceValue) AS NoOfSharesOutstanding
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
,(DB.Price) AS Price
,(DB.FiftyTwoWeekHigh) AS FiftyTwoWeekHigh
,(DB.FiftyTwoWeekLow) AS FiftyTwoWeekLow
,Market.ToNumeric(DB.CurrentEquity/DB.FaceValue) AS NoOfSharesOutstanding
,DB.Sector
FROM MARKET.TempDataBank DB
ORDER BY DB.Sector ASC

