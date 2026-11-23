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
PRINT N'Creando Tabla [dbo].[address_status1]...';


GO
CREATE TABLE [dbo].[address_status1] (
    [status_id]      INT          NOT NULL,
    [address_status] VARCHAR (30) NULL,
    [rowversion]     TIMESTAMP    NOT NULL,
    CONSTRAINT [pk_addr_status] PRIMARY KEY CLUSTERED ([status_id] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[address1]...';


GO
CREATE TABLE [dbo].[address1] (
    [address_id]    INT           NOT NULL,
    [street_number] VARCHAR (10)  NULL,
    [street_name]   VARCHAR (200) NULL,
    [city]          VARCHAR (100) NULL,
    [country_id]    INT           NULL,
    [rowversion]    TIMESTAMP     NOT NULL,
    CONSTRAINT [pk_address] PRIMARY KEY CLUSTERED ([address_id] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[author1]...';


GO
CREATE TABLE [dbo].[author1] (
    [author_id]   INT           NOT NULL,
    [author_name] VARCHAR (400) NULL,
    [rowversion]  TIMESTAMP     NOT NULL,
    CONSTRAINT [pk_author] PRIMARY KEY CLUSTERED ([author_id] ASC)
);


GO
PRINT N'Actualización completada.';


GO
