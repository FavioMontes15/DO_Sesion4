--Jenkins ejecute el sql
--en que servido? -> localhost

USE Kaggle
GO

IF NOT EXISTS(SELECT*FROM SYS.TABLES WHERE object_id=OBJECT_ID(N'dbo.starbucks') AND type='U')
		CREATE TABLE dbo.starbucks(
						Beverage_category VARCHAR(200),
						Beverage VARCHAR(200),
						Beverage_prep VARCHAR(200),
						Calories INT,
						Total_Fat_g VARCHAR(10),
						Trans_Fat_g DECIMAL,
						Saturated_Fat_g DECIMAL,
						Sodium_mg DECIMAL,
						Total_Carbohydrates_g INT,
						Cholesterol_mg INT,
						Dietary_Fibre_g INT,
						Sugars_g INT,
						Protein_g DECIMAL,
						Vitamin_A_DV VARCHAR(10), 
						Vitamin_C_DV VARCHAR(10),
						Calcium_DV VARCHAR(10),
						Iron_DV VARCHAR(10),
						Caffeine_mg VARCHAR(10)
)

TRUNCATE TABLE dbo.starbucks
go

--IMPORTAR LA DATA DE MI ARCHIVO CSV starbucks
BULK INSERT dbo.starbucks FROM 'C:\Users\FAVIO\Desktop\proyecto_parcial\python\dataset\starbucks.csv'

WITH
(
 FIRSTROW = 2, --empieza a insertar data desde la fila 2, porque la 1era fila es la cabecera del archivo
 FIELDTERMINATOR = ',', --delimitador de las columnas
 ROWTERMINATOR = '0x0a' --delimitador de las filas, salto de linea
)
GO
select*from dbo.starbucks