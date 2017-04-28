Imports System.Data.SQLite

Public Class frmRVMDefaultTablesDB

  '========================================================================================
  '
  '   Filename : frmRVMDefaultTablesDB.vb
  '
  '   Called By:
  '
  '   Calls: frmAppSettings.ApplicationPath
  '
  '   Version:  1.0.0
  '
  '   Date: 28 Apr 2017
  '
  '========================================================================================

  '========================================================================================
  '          PRIVATE CONSTANTS
  '========================================================================================
  Private CStrRMVDefaultTablesDBName As String = "RMVDefaultTables"
  Private CStrRMVDefaultTablesDBExt As String = ".sl3"
  ' Private cstrSetupFileExt As String = ".ini"
  ' Private cstrSetupFileName As String = "RVMSetup"

  '========================================================================================
  '          PRIVATE VARIABLES
  '========================================================================================
  Private fRMVDefaultTablesDBName As String 'DBname
  Private fRMVDefaultTablesDBExt As String 'DB Extension
  Private fRMVDefaultTablesFullFileName As String 'DBName + DBExtension
  Private fRMVDefaultTablesFilePath 'Path to DBName
  Private fRMVDefaultTablesNamePath As String 'Path including DBName

  '========================================================================================
  '          PRIVATE PROPERTIES
  '========================================================================================

  '========================================================================================
  '          PUBLIC CONSTANTS
  '========================================================================================

  '========================================================================================
  '          PUBLIC VARIABLES
  '========================================================================================

  '========================================================================================
  '          PUBLIC PROPERTIES
  '========================================================================================

  '========================================================================================
  '          PRIVATE ROUTINES
  '========================================================================================

  '========================================================================================
  '          PUBLIC ROUTINES
  '========================================================================================

  '========================================================================================
  '          PROPERTY ROUTINES
  '========================================================================================
  Private ReadOnly Property RMVDefaultTablesDBName() As String
    Get
      Return fRMVDefaultTablesDBName
    End Get
  End Property 'Private Property RMVDefaultTablesDBName()

  '------------------------------------------------------------------------------------------
  Private ReadOnly Property RMVDefaultTablesDBExt() As String
    Get
      Return fRMVDefaultTablesDBExt
    End Get
  End Property ' Private ReadOnly Property RMVDefaultTablesDBExt

  '----------------------------------------------------------------------------------------
  Private ReadOnly Property RMVDefaultTablesFullFileName() As String
    Get
      Return fRMVDefaultTablesFullFileName
    End Get
  End Property 'Private Property SetupFullFileName() As String

  '------------------------------------------------------------------------------------------
  Private ReadOnly Property RMVDefaultTablesFilePath() As String
    Get
      Return fRMVDefaultTablesFilePath
    End Get
  End Property 'Private Property RMVDefaultTablesFilePath()

  '------------------------------------------------------------------------------------------
  Private ReadOnly Property RMVDefaultTablesNamePath() As String
    Get
      Return fRMVDefaultTablesNamePath
    End Get
    'Set(ByVal DefaultTablesNamePath As String)
    'fRMVDefaultTablesNamePath = DefaultTablesNamePath
    'End Set
  End Property 'PubPrivatelic Property SetupFileNamePath() As String

  '========================================================================================

  '========================================================================================
  '          MENU ROUTINES
  '========================================================================================

  '========================================================================================
  '          COMMAND BUTTON ROUTINES
  '========================================================================================

  '========================================================================================
  '          CONTROL ROUTINES
  '========================================================================================

  '========================================================================================
  '          FILE ROUTINES
  '========================================================================================

  '========================================================================================
  '          FORM ROUTINES
  '========================================================================================
  Private Sub frmRVTypesDB_Shown(sender As Object, e As EventArgs) Handles MyBase.Shown

    fRMVDefaultTablesDBName = CStrRMVDefaultTablesDBName
    MessageBox.Show(fRMVDefaultTablesDBName)
    fRMVDefaultTablesDBExt = CStrRMVDefaultTablesDBExt
    MessageBox.Show(fRMVDefaultTablesDBExt)
    fRMVDefaultTablesFullFileName = RMVDefaultTablesDBName & RMVDefaultTablesDBExt
    MessageBox.Show(fRMVDefaultTablesFullFileName)
    fRMVDefaultTablesFilePath = frmAppSettings.ApplicationPath
    MessageBox.Show(fRMVDefaultTablesFilePath)
    fRMVDefaultTablesNamePath = fRMVDefaultTablesFilePath & "\" & fRMVDefaultTablesFullFileName
    MessageBox.Show(fRMVDefaultTablesNamePath)

    'Dim ConnectionString As String = fRMVDefaultTablesNamePath & ";Version=3;" 
    Dim ConnectionString As String = "Data Source=" & fRMVDefaultTablesNamePath & ";Version=3;"
    MessageBox.Show(ConnectionString)


    If My.Computer.FileSystem.FileExists(fRMVDefaultTablesNamePath) Then
      MessageBox.Show("Exists")
    Else
      MessageBox.Show("Doesnt Exist")
      Dim SQLconnect As New SQLite.SQLiteConnection()
      Dim SQLcommand As SQLiteCommand
      'Database Doesn't Exist so Created at Path
      Dim ds As String = "Data Source=" & fRMVDefaultTablesFullFileName & ";Version=3;"
      MessageBox.Show(ds)
      SQLconnect.ConnectionString = ds
      SQLconnect.Open()
      SQLconnect.Close()
      SQLconnect.ConnectionString = ds
      SQLconnect.Open()
      SQLcommand = SQLconnect.CreateCommand
      'SQL query to Create Table
      SQLcommand.CommandText = "CREATE TABLE DefaultRVTypeTable (
                                  RVTypeID TEXT PRIMARY KEY,
                                  RVTypeState TEXT,
                                  RVTypeName TEXT)"

      SQLcommand.ExecuteNonQuery()
      SQLcommand.Dispose()
      SQLconnect.Close()
    End If

  End Sub  ' Private Sub frmRVTypesDB_Shown

  '========================================================================================
End Class' Public Class frmRVTypesDB