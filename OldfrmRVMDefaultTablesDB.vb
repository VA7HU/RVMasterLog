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
  '   Date: 19 May 2017
  '
  '========================================================================================

  '========================================================================================
  '          PRIVATE CONSTANTS
  '========================================================================================
  Private CStrRVMDefaultTablesDBName As String = "RMVDefaultTables"
  Private CStrRVMDefaultTablesDBExt As String = ".sl3"
  ' Private cstrSetupFileExt As String = ".ini"
  ' Private cstrSetupFileName As String = "RVMSetup"

  '========================================================================================
  '          PRIVATE VARIABLES
  '========================================================================================
  Private fRVMDefaultTablesDBName As String 'DBname
  Private fRVMDefaultTablesDBExt As String 'DB Extension
  Private fRVMDefaultTablesFullFileName As String 'DBName + DBExtension
  Private fRVMDefaultTablesFilePath 'Path to DBName
  Private fRVMDefaultTablesNamePath As String 'Path including DBName

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
  Private Sub InitRVMDefaultTablesDB()

    fRVMDefaultTablesDBName = CStrRVMDefaultTablesDBName
    MessageBox.Show(fRVMDefaultTablesDBName)
    fRVMDefaultTablesDBExt = CStrRVMDefaultTablesDBExt
    MessageBox.Show(fRVMDefaultTablesDBExt)
    fRVMDefaultTablesFullFileName = RVMDefaultTablesDBName & RVMDefaultTablesDBExt
    MessageBox.Show(fRVMDefaultTablesFullFileName)
    fRVMDefaultTablesFilePath = frmAppSettings.pRVMDataPath
    MessageBox.Show(fRVMDefaultTablesFilePath)
    fRVMDefaultTablesNamePath = fRVMDefaultTablesFilePath + "\" + fRVMDefaultTablesFullFileName
    MessageBox.Show("XXX " + fRVMDefaultTablesNamePath)

  End Sub 'Private Sub InitRVMDefaultTablesDB()

  '========================================================================================
  '          PUBLIC ROUTINES
  '========================================================================================

  '========================================================================================
  '          PROPERTY ROUTINES
  '========================================================================================
  Private ReadOnly Property RVMDefaultTablesDBName() As String
    Get
      Return fRVMDefaultTablesDBName
    End Get
  End Property 'Private Property RVMDefaultTablesDBName()

  '------------------------------------------------------------------------------------------
  Private ReadOnly Property RVMDefaultTablesDBExt() As String
    Get
      Return fRVMDefaultTablesDBExt
    End Get
  End Property ' Private ReadOnly Property RVMDefaultTablesDBExt

  '----------------------------------------------------------------------------------------
  Private ReadOnly Property RVMDefaultTablesFullFileName() As String
    Get
      Return fRVMDefaultTablesFullFileName
    End Get
  End Property 'Private ReadOnly Property RVMDefaultTablesFullFileName

  '------------------------------------------------------------------------------------------
  Private ReadOnly Property RVMDefaultTablesFilePath() As String
    Get
      Return fRVMDefaultTablesFilePath
    End Get
  End Property 'Private Property RVMDefaultTablesFilePath()

  '------------------------------------------------------------------------------------------
  Private ReadOnly Property RVMDefaultTablesNamePath() As String
    Get
      Return fRVMDefaultTablesNamePath
    End Get
    'Set(ByVal DefaultTablesNamePath As String)
    'fRMVDefaultTablesNamePath = DefaultTablesNamePath
    'End Set
  End Property 'Private ReadOnly Property RVMDefaultTablesNamePath()

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
  Public Function RVMDefaultTablesDBExists() As Boolean
    If My.Computer.FileSystem.FileExists(RVMDefaultTablesNamePath) Then
      Return True
    Else
      Return False
    End If ' If My.Computer.FileSystem.FileExists(RVMDefaultTablesNamePath)
  End Function ' Public Function RVMDefaultTablesDBExists()

  '----------------------------------------------------------------------------------------
  Public Sub CreateRVMDefaultTablesDB()

    InitRVMDefaultTablesDB()

    'Dim ConnectionString As String = fRMVDefaultTablesNamePath & ";Version=3;" 
    Dim ConnectionString As String = "Data Source=" + fRVMDefaultTablesNamePath + ";Version=3;"
    MessageBox.Show(ConnectionString)

    If My.Computer.FileSystem.FileExists(fRVMDefaultTablesNamePath) Then
      MessageBox.Show("Exists")
    Else
      MessageBox.Show("Doesnt Exist")
      Dim SQLconnect As New SQLite.SQLiteConnection()
      Dim SQLcommand As SQLiteCommand
      'Database Doesn't Exist so Created at Path
      Dim ds As String = "Data Source=" & fRVMDefaultTablesFullFileName & ";Version=3;"
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
    End If ' If My.Computer.FileSystem.FileExists(fRVMDefaultTablesNamePath)

  End Sub 'Public Sub CreateRVMDefaultTablesDB()

  '========================================================================================
  '          FORM ROUTINES
  '========================================================================================
  Private Sub frmRVTypesDB_Shown(sender As Object, e As EventArgs) Handles MyBase.Shown

    'fRVMDefaultTablesDBName = CStrRVMDefaultTablesDBName
    'MessageBox.Show(fRVMDefaultTablesDBName)
    'fRVMDefaultTablesDBExt = CStrRVMDefaultTablesDBExt
    'MessageBox.Show(fRVMDefaultTablesDBExt)
    'fRVMDefaultTablesFullFileName = RVMDefaultTablesDBName & RVMDefaultTablesDBExt
    'MessageBox.Show(fRVMDefaultTablesFullFileName)
    'fRVMDefaultTablesFilePath = frmAppSettings.RVMDataPath
    'MessageBox.Show(fRVMDefaultTablesFilePath)
    'fRVMDefaultTablesNamePath = fRVMDefaultTablesFilePath & "\" & fRVMDefaultTablesFullFileName
    'MessageBox.Show(fRVMDefaultTablesNamePath)

  End Sub  ' Private Sub frmRVTypesDB_Shown

  Private Sub frmRVMDefaultTablesDB_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    'fRVMDefaultTablesDBName = CStrRVMDefaultTablesDBName
    'MessageBox.Show(fRVMDefaultTablesDBName)
    'fRVMDefaultTablesDBExt = CStrRVMDefaultTablesDBExt
    'MessageBox.Show(fRVMDefaultTablesDBExt)
    'fRVMDefaultTablesFullFileName = RVMDefaultTablesDBName & RVMDefaultTablesDBExt
    'MessageBox.Show(fRVMDefaultTablesFullFileName)
    'fRVMDefaultTablesFilePath = frmAppSettings.RVMDataPath
    'MessageBox.Show(fRVMDefaultTablesFilePath)
    'fRVMDefaultTablesNamePath = fRVMDefaultTablesFilePath & "\" & fRVMDefaultTablesFullFileName
    'MessageBox.Show(fRVMDefaultTablesNamePath)

  End Sub

  '========================================================================================
End Class' Public Class frmRVTypesDB