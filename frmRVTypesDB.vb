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
    fRMVDefaultTablesDBExt = CStrRMVDefaultTablesDBExt
    fRMVDefaultTablesFullFileName = RMVDefaultTablesDBName & RMVDefaultTablesDBExt
    fRMVDefaultTablesFilePath = frmAppSettings.ApplicationPath
    fRMVDefaultTablesNamePath = fRMVDefaultTablesFilePath & "\" & fRMVDefaultTablesFullFileName

    'Dim ConnectionString As String = fRMVDefaultTablesNamePath & ";Version=3;"
    Dim ConnectionString As String = "Data Source=" & fRMVDefaultTablesNamePath & ";Version=3;"
    MessageBox.Show(ConnectionString)

    Using Con As New SQLiteConnection(ConnectionString)
      Con.Open()
      Using cmd As New SQLiteCommand(Con)
        cmd.CommandText = "SELECT * FROM DefaultRVTypeTable"
        Dim rdr As SQLiteDataReader = cmd.ExecuteReader()
        'Using rdr
        'While (rdr.Read())
        'Console.WriteLine(rdr.GetInt32(0) & " " _
        '     & rdr.GetString(1) & " " & rdr.GetInt32(2))
        'End While
        'End Using
        'End Using
      End Using
      Con.Close()
    End Using
  End Sub  ' Private Sub frmRVTypesDB_Shown

  '========================================================================================
End Class' Public Class frmRVTypesDB