/*
Script de implementación para BookStore

Este código lo generó una herramienta.
Los cambios en este archivo pueden provocar un comportamiento incorrecto y se perderán si
el código se vuelve a generar.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "BookStore"
:setvar DefaultFilePrefix "BookStore"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detecte el modo SQLCMD y deshabilite la ejecución de scripts si no se admite el modo SQLCMD.
Para volver a habilitar el script después de habilitar el modo SQLCMD, ejecute lo siguiente:
ESTABLECER NOEXEC DESACTIVADO; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'El modo SQLCMD debe estar habilitado para ejecutar correctamente este script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Quitando Clave externa [dbo].[fk_addr_ctry]...';


GO
ALTER TABLE [dbo].[address] DROP CONSTRAINT [fk_addr_ctry];


GO
PRINT N'Quitando Clave externa [dbo].[fk_book_lang]...';


GO
ALTER TABLE [dbo].[book] DROP CONSTRAINT [fk_book_lang];


GO
PRINT N'Quitando Clave externa [dbo].[fk_book_pub]...';


GO
ALTER TABLE [dbo].[book] DROP CONSTRAINT [fk_book_pub];


GO
PRINT N'Quitando Clave externa [dbo].[fk_order_addr]...';


GO
ALTER TABLE [dbo].[cust_order] DROP CONSTRAINT [fk_order_addr];


GO
PRINT N'Quitando Clave externa [dbo].[fk_order_cust]...';


GO
ALTER TABLE [dbo].[cust_order] DROP CONSTRAINT [fk_order_cust];


GO
PRINT N'Quitando Clave externa [dbo].[fk_order_ship]...';


GO
ALTER TABLE [dbo].[cust_order] DROP CONSTRAINT [fk_order_ship];


GO
PRINT N'Quitando Clave externa [dbo].[fk_ca_addr]...';


GO
ALTER TABLE [dbo].[customer_address] DROP CONSTRAINT [fk_ca_addr];


GO
PRINT N'Quitando Clave externa [dbo].[fk_ca_cust]...';


GO
ALTER TABLE [dbo].[customer_address] DROP CONSTRAINT [fk_ca_cust];


GO
PRINT N'Quitando Clave externa [dbo].[fk_customer_address_addres_status_id]...';


GO
ALTER TABLE [dbo].[customer_address] DROP CONSTRAINT [fk_customer_address_addres_status_id];


GO
PRINT N'Quitando Clave externa [dbo].[fk_oh_order]...';


GO
ALTER TABLE [dbo].[order_history] DROP CONSTRAINT [fk_oh_order];


GO
PRINT N'Quitando Clave externa [dbo].[fk_oh_status]...';


GO
ALTER TABLE [dbo].[order_history] DROP CONSTRAINT [fk_oh_status];


GO
PRINT N'Quitando Clave externa [dbo].[fk_ol_book]...';


GO
ALTER TABLE [dbo].[order_line] DROP CONSTRAINT [fk_ol_book];


GO
PRINT N'Quitando Clave externa [dbo].[fk_ol_order]...';


GO
ALTER TABLE [dbo].[order_line] DROP CONSTRAINT [fk_ol_order];


GO
PRINT N'Actualización completada.';


GO
