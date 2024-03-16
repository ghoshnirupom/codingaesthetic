CREATE PROCEDURE GenerateData
    @SortBy VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    IF @SortBy = 'Customer'
    BEGIN
        -- Generate data sorted by Customer
        SELECT Customer, Req, Activity, EntryDate
        FROM myTable
        ORDER BY Customer;
    END
    ELSE IF @SortBy = 'Assigned'
    BEGIN
        -- Generate data sorted by Assigned
        SELECT AssignedTo, Customer, Req, Activity, EntryDate
        FROM myTable
        ORDER BY AssignedTo;
    END
    ELSE
    BEGIN
        -- Default sorting (by Customer)
        SELECT Customer, Req, Activity, EntryDate
        FROM myTable
        ORDER BY Customer;
    END
END
