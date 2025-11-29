-- ####################################################################
-- # Basic CREATE TABLE statement
-- # See https://www.ibm.com/docs/en/db2-for-zos/13?topic=statements-create-table for complete syntax.
-- ####################################################################
CREATE TABLE Attendance (
    column-name data-type1 WITH DEFAULT constant,
    column-name data-type2 NOT NULL
)
    IN database-name.table-space-name
    CCSID ccsid-value
    BUFFERPOOL bpname