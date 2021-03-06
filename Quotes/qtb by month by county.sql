SELECT LocationCounty, month(UpdateDt) as MonthQ, year(UpdateDt) as YearQ,
count (distinct [ApplicationNumber]) as Quotes,
	count (distinct PolicyNumber) as NB

  FROM [ARS].[dbo].[tblQuoteData]
   where 
  original = 1
  and ValidQuote = 1
  and UniqueQuote = 1
  and UpdateDt >='12/01/2019'
  and UpdateDt <= '02/29/2020'
  and ProviderCd like 'AG%'
and LocationCounty like 'Pin%'
group by LocationCounty, month(UpdateDt), year(UpdateDt)
order by 3,2
