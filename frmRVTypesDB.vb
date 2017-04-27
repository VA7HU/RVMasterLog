Imports System.Data.SQLite

Public Class frmRVTypesDB

  '========================================================================================
  '
  '   Filename : frmRVTypesDB.vb
  '
  '   Description:
  '
  '   Called By:
  '
  '   Calls: frmAppSettings.ApplicationPath
  '
  '   Version:  1.0.0
  '
  '   Date: 27 Apr 2017
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
  Public Property RMVDefaultTablesDBName() As String
    Get
      Return fRMVDefaultTablesDBName
    End Get
    Set(ByVal DBName As String)
      fRMVDefaultTablesDBName = DBName
    End Set
  End Property 'Public Property RMVDefaultTablesDBName()

  '------------------------------------------------------------------------------------------
  Public Property RMVDefaultTablesDBExt() As String
    Get
      Return fRMVDefaultTablesDBExt
    End Get
    Set(ByVal DefaultTablesDBExt As String)
      fRMVDefaultTablesDBExt = DefaultTablesDBExt
    End Set
  End Property 'RMVDefaultTablesDBExt()

  '----------------------------------------------------------------------------------------
  Public Property RMVDefaultTablesFullFileName() As String
    Get
      Return fRMVDefaultTablesFullFileName
    End Get
    Set(ByVal DefaultTablesFullFileName As String)
      fRMVDefaultTablesFullFileName = DefaultTablesFullFileName
    End Set
  End Property 'Public Property SetupFullFileName() As String

  '------------------------------------------------------------------------------------------
  Public Property RMVDefaultTablesFilePath() As String
    Get
      Return fRMVDefaultTablesFilePath
    End Get
    Set(ByVal DefaultTablesFilePath As String)
      fRMVDefaultTablesFilePath = DefaultTablesFilePath
    End Set
  End Property 'Public Property RMVDefaultTablesFilePath()

  '------------------------------------------------------------------------------------------
  Public Property RMVDefaultTablesNamePath() As String
    Get
      Return RMVDefaultTablesNamePath
    End Get
    Set(ByVal DefaultTablesNamePath As String)
      fRMVDefaultTablesNamePath = DefaultTablesNamePath
    End Set
  End Property 'Public Property SetupFileNamePath() As String

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

    RMVDefaultTablesNamePath = frmAppSettings.ApplicationPath

    '  Dim connection As String = "Data Source=" & Form1.connstring & ";Version=3"
    Dim connection As String = RMVDefaultTablesNamePath & ";Version=3"
    MessageBox.Show(connection)

    '  Dim SQLConn As New SQLiteConnection
    '  Dim SQLcmd As New SQLiteCommand
    ' Dim SQLdr As SQLiteDataReader

    ' SQLConn.ConnectionString = connection
    ' SQLConn.Open()

    ' SQLcmd.Connection = SQLConn
    ' SQLcmd.CommandText = SQLstr
    ' SQLdr = SQLcmd.ExecuteReader()
    ' While SQLdr.Read()
    'MessageBox.Show(SQLdr(fieldIndexHere).ToString)
    'Form1.ListBox1.Text = SQLdr(fieldIndexHere).ToString
    'End While

    'SQLdr.Close()
    'SQLConn.Close()

  End Sub  ' Private Sub frmRVTypesDB_Shown

  '========================================================================================
End Class' Public Class frmRVTypesDB