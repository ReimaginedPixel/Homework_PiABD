CREATE PROCEDURE dbo.AddProduct
    @ProductName NVARCHAR(255),
    @SupplierID INT,
    @CategoryID INT,
    @QuantityPerUnit NVARCHAR(50),
    @UnitPrice DECIMAL(10, 2),
    @UnitsInStock INT,
    @UnitsOnOrder INT,
    @ReorderLevel INT,
    @Discontinued BIT,
    @NewProductID INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Walidacja ceny
    IF @UnitPrice = 0
    BEGIN
        RAISERROR('Cena produktu nie mo¿e wynosiæ 0', 16, 1);
        RETURN;
    END;
    
    INSERT INTO Products (
        ProductName,
        SupplierID,
        CategoryID,
        QuantityPerUnit,
        UnitPrice,
        UnitsInStock,
        UnitsOnOrder,
        ReorderLevel,
        Discontinued
    )
    VALUES (
        @ProductName,
        @SupplierID,
        @CategoryID,
        @QuantityPerUnit,
        @UnitPrice,
        @UnitsInStock,
        @UnitsOnOrder,
        @ReorderLevel,
        @Discontinued
    );
    
    SET @NewProductID = SCOPE_IDENTITY();
END;
GO
-- Deklaracja zmiennej na ID nowego produktu
DECLARE @NewID INT;

-- Wywo³anie procedury
EXEC dbo.AddProduct
    @ProductName = 'Nowy Produkt',
    @SupplierID = 1,
    @CategoryID = 2,
    @QuantityPerUnit = '10 boxes x 20 bags',
    @UnitPrice = 25.50,
    @UnitsInStock = 100,
    @UnitsOnOrder = 0,
    @ReorderLevel = 10,
    @Discontinued = 0,
    @NewProductID = @NewID OUTPUT;

-- Wyœwietlenie ID dodanego produktu
SELECT @NewID AS NowyProduktID;