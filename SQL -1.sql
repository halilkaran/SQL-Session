/*===================================================
													  SELECT
===================================================*/
	/* tracks tablosundaki track isimlerini (name) sorgulayınız */
	SELECT name FROM tracks;
	
	
	/* tracks tablosundaki besteci(Composer) ve şarkı isimlerini (name) sorgulayınız.*/
	SELECT Composer, name FROM tracks;
	
	/* tracks tablosundaki tüm bilgileri sorgulayınız */
	SELECT * FROM tracks;
	
	
/*===================================================
													DISTINCT
===================================================*/
	/*tracks tablosundaki composer bilgileri sorgulayınız (TEKRARLI OLABİLİR)*/
	SELECT Composer FROM tracks;
	
	/*tracks tablosundaki composer bilgileri sorgulayınız (TEKRARSIZ) */
	SELECT DISTINCT Composer FROM tracks;
	
	/*tracks tablosundaki AlbumId ve MediaTypeId bigilerini TEKRARSIZ olarak 
	sorgulayınız */
	SELECT DISTINCT AlbumId,MediaTypeId FROM tracks;
	
	
/*===================================================
														WHERE
====================================================*/

	/*Composer'ı Jimi Hendrix olan şarkıların isimlerini (name) sorgulayiniz*/
	SELECT name FROM tracks WHERE Composer='Jimi Hendrix';
	
	SELECT *

FROM invoices

WHERE total&gt;10

ORDER BY InvoiceDate DESC

LIMIT 10;

/*===================================================

								 LOGICAL OPERATORS (AND,OR,NOT)

====================================================*/

	

	/* invoices tablosunda ülkesi (BillingCountry) USA olmayan kayıtları total değerine

	göre  AZALAN sırada listeyiniz */ 	

		SELECT *

		FROM invoices

		WHERE NOT BillingCountry = 'USA' or BillingCountry = 'Germany'

		ORDER BY InvoiceId ASC;

		

		

	/* invoices tablosunda BillingState sutunu NS olmayan VEYA NULL olan tüm verileri 

	sorgulayınız.*/

	SELECT *

	FROM invoices

	WHERE NOT BillingState = 'AB' OR BillingState IS NULL;

	

	SELECT *

	FROM invoices

	WHERE InvoiceDate&gt;='2012-01-01' and InvoiceDate&lt;='2013-01-02 23:59:00';

	/*===================================================

								                   IN

====================================================*/

	/* customers tablosunda Belgium, Norway veya  Canada  ülkelerinden sipariş veren

		müşterilerin FirstName ve LastName bilgilerini listeyiniz	*/

		SELECT FirstName, LastName, country

		FROM customers		

		WHERE country IN( 'Belgium', 'Norway', 'Canada');

		

/*===================================================

								                    LIKE

====================================================*/

	/* tracks tablosunda Composer sutunu Bach ile biten kayıtların Name bilgilerini 

	listeyen sorguyu yazınız*/		

	

	SELECT name, Composer

	FROM tracks

	WHERE Composer like '%Bach';

	



	/* invoices tablosunda, 2010 ve 2019 arası bir tarihte (InvoiceDate) Sadece şubat

	aylarında gerçekleşmiş olan faturaların	tüm bilgilerini listeleyen sorguyu yazınız*/

	 

	 SELECT *

	 FROM invoices

	 WHERE InvoiceDate like '201_-02%';

	 /* customers tablosunda, isimleri (FirstName) üç harfli olan müşterilerin FirstName, 

	LastName ve City bilgilerini	listeleyen sorguyu yazınız*/

	 SELECT FirstName, LastName, City

	 FROM customers

	 WHERE FirstName like '___';

	 /* customers tablosunda, soyisimleri Sch veya Go ile başlayan müşterilerin FirstName, 

	LastName ve City bilgilerini listeleyen sorguyu yazınız*/

	SELECT FirstName, LastName, City

	 FROM customers

	 WHERE LastName like 'Sch%' or LastName like'Go%';
	