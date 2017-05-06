﻿Imports System.IO

Public Class frmAppSettings

  '===========================================================================================
  '   
  '   Filename : AppSettings.vb
  '
  '   Description: The Application uses the file RVMSetup.stg, generated by INNO Setup, to
  '                   provide default setup data. It then Defines and maintains application
  '                   level data elements that are saved and read automatically on application
  '                   startup and shutdown in the RVMSettings.ini file.
  '
  '   Called By:  AppInit : Initialise
  '               AppFinal : Finalise
  '               frmRVTypesDB : frmRVTypesDB_Load
  '
  '   Calls:
  '
  '   Version: 1.0.0
  '
  '   Date: 5 May 2017
  '
  '===========================================================================================

  '===========================================================================================
  '          PRIVATE CONSTANTS
  '========================================================================================

  '========================================================================================
  '          PUBLIC CONSTANTS
  '========================================================================================
  Public CStrSettingsFileExt As String = ".stg"
  Public cstrSettingsFileName As String = "RVMSettings"
  Public cstrSetupFileExt As String = ".sup"
  Public cstrSetupFileName As String = "RVMSetup"

  '========================================================================================
  '          PRIVATE VARIABLES
  '========================================================================================
  Private fApplicationFileName As String
  Private fApplicationFileExt As String
  Private fApplicationFullFileName As String
  Private fApplicationPath As String
  Private fApplicationFileNamePath As String

  Private fSettingsFileName As String     'Filename
  Private fSettingsFileExt As String      'File Extension
  Private fSettingsFullFileName As String 'Filename + Extension
  Private fSettingsFilePath               'Path to Filename 
  Private fSettingsFileNamePath           'Path including Filename

  Private fSetupFileName As String
  Private fSetupFileExt As String
  Private fSetupFullFileName As String
  Private fSetupFilePath
  Private fSetupFileNamePath As String
  Private fSetupFileVersion As String

  Private fRVMPath As String
  Private fRVMDataPath As String
  Private fRVMLogsPath As String

  Private fUseLastLog As Boolean = True
  ' Locate the =. If it is there we return the portion of the string after the = otherwise
  ' we return the complete string

  ' Private SetupFile As New HUTextFile

  '========================================================================================
  '          PUBLIC VARIABLES
  '========================================================================================
  Public InnoSetupFile As New HUSetupFiles

  '========================================================================================
  '          PRIVATE ROUTINES
  '========================================================================================
  'Private Function SetupStringData(vstrStringData As String) As String
  'End Function

  '========================================================================================
  '          PUBLIC ROUTINES
  '========================================================================================
  Public Sub InitSetupFileData()
    SetupFileName = cstrSetupFileName
    SetupFileExt = cstrSetupFileExt
    SetupFullFileName = cstrSetupFileName + cstrSetupFileExt
    SetupFilePath = ApplicationPath
    SetupFileNamePath = ApplicationPath + "\" + SetupFullFileName
  End Sub ' Public Sub InitSetupFileData

  '========================================================================================
  Public Sub InitSettingsFileData()

    SettingsFileName = cstrSettingsFileName
    SettingsFileExt = CStrSettingsFileExt
    SettingsFullFileName = cstrSettingsFileName + CStrSettingsFileExt
    SettingsFilePath = ApplicationPath + "\"
    SettingsFileNamePath = SettingsFilePath + SettingsFullFileName

  End Sub ' Public Sub InitSetttingsFileData


  '========================================================================================
  '          PROPERTY ROUTINES
  '========================================================================================
  Public Property ApplicationPath() As String
    Get
      Return fApplicationPath
    End Get
    Set(ByVal path As String)
      fApplicationPath = path
    End Set
  End Property 'Public Property fApplicationPath

  '========================================================================================
  Public Property SetupFileName() As String
    Get
      Return fSetupFileName
    End Get
    Set(ByVal FileName As String)
      fSetupFileName = FileName
    End Set
  End Property 'Public Property SetupFileName()

  '------------------------------------------------------------------------------------------
  Public Property SetupFileExt() As String
    Get
      Return fSetupFileExt
    End Get
    Set(ByVal FileExt As String)
      fSetupFileExt = FileExt
    End Set
  End Property 'Public Property SetupFileExt()

  '----------------------------------------------------------------------------------------
  Public Property SetupFullFileName() As String
    Get
      Return fSetupFullFileName
    End Get
    Set(ByVal SetupFullFileName As String)
      fSetupFullFileName = SetupFullFileName
    End Set
  End Property 'Public Property SetupFullFileName() As String

  '------------------------------------------------------------------------------------------
  Public Property SetupFilePath() As String
    Get
      Return fSetupFilePath
    End Get
    Set(ByVal FilePath As String)
      fSetupFilePath = FilePath
    End Set
  End Property 'Public Property SetupFilePath() As String

  '------------------------------------------------------------------------------------------
  Public Property SetupFileNamePath() As String
    Get
      Return fSetupFileNamePath
    End Get
    Set(ByVal SetupFileNamePath As String)
      fSetupFileNamePath = SetupFileNamePath
    End Set
  End Property 'Public Property SetupFileNamePath() As String

  '------------------------------------------------------------------------------------------
  Public Property SetupFileVersion() As String
    Get
      Return fSetupFileVersion
    End Get
    Set(ByVal SetupFileVersion As String)
      fSetupFileVersion = SetupFileVersion
    End Set
  End Property 'Public Property SetupFileVersion() As String

  '========================================================================================
  Public Property SettingsFileName() As String
    Get
      Return fSettingsFileName
    End Get
    Set(ByVal FileName As String)
      fSettingsFileName = FileName
    End Set
  End Property 'Public Property SettingsFileName()

  '------------------------------------------------------------------------------------------
  Public Property SettingsFileExt() As String
    Get
      Return fSettingsFileExt
    End Get
    Set(ByVal FileExt As String)
      fSettingsFileExt = FileExt
    End Set
  End Property 'Public Property SettingsFileExt()

  '----------------------------------------------------------------------------------------
  Public Property SettingsFullFileName() As String
    Get
      Return fSettingsFullFileName
    End Get
    Set(ByVal FullFileName As String)
      fSettingsFullFileName = FullFileName
    End Set
  End Property 'Public Property SettingsFileName() As String

  '------------------------------------------------------------------------------------------
  Public Property SettingsFilePath() As String
    Get
      Return fSettingsFilePath
    End Get
    Set(ByVal FilePath As String)
      fSettingsFilePath = FilePath
    End Set
  End Property 'Public Property SettingsFilePath() As String

  '----------------------------------------------------------------------------------------
  Public Property SettingsFileNamePath() As String
    Get
      Return fSettingsFileNamePath
    End Get
    Set(ByVal SettingsFileNamePath As String)
      fSettingsFileNamePath = SettingsFileNamePath
    End Set
  End Property 'Public Property SettingsFileNamePath() As String

  '========================================================================================
  Public Property RVMPath() As String
    Get
      Return fRVMPath
    End Get
    Set(ByVal path As String)
      fRVMPath = path
    End Set
  End Property 'Public Property RVMPath

  '========================================================================================
  Public Property RVMDataPath() As String
    Get
      Return fRVMDataPath
    End Get
    Set(ByVal path As String)
      fRVMDataPath = path
    End Set
  End Property 'Public Property RVMDataPath

  '========================================================================================
  Public Property RVMLogsPath() As String
    Get
      Return fRVMLogsPath
    End Get
    Set(ByVal path As String)
      fRVMLogsPath = path
    End Set
  End Property 'Public Property RVMLogsPath

  '========================================================================================
  Public Property UseLastLog() As Boolean
    Get
      Return fUseLastLog
    End Get
    Set(ByVal Value As Boolean)
      fUseLastLog = Value
    End Set
  End Property 'Public Property RVMLogsPath

  '========================================================================================
  '          MENU ROUTINES
  '========================================================================================

  '========================================================================================
  '          COMMAND BUTTON ROUTINES
  '========================================================================================
  Private Sub btnBrowse_Click(sender As Object, e As EventArgs) Handles btnBrowse.Click

  End Sub 'Private Sub btnBrowse_Click

  '========================================================================================
  Private Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
    Me.Close()
  End Sub 'Private Sub btnCancel_Click

  '========================================================================================
  Private Sub btnHelp_Click(sender As Object, e As EventArgs) Handles btnHelp.Click
    Me.Close()
  End Sub 'Private Sub btnHelp

  '==========================================================================================
  Private Sub btnOK_Click(sender As Object, e As EventArgs) Handles btnOK.Click
    Me.Close()
  End Sub 'Private Sub btnOK_Cli

  '========================================================================================
  '          CONTROL ROUTINES
  '========================================================================================

  '========================================================================================
  '          FILE ROUTINES
  '========================================================================================
  'Public Function OpenHUSetupFiles(SetupFileNamePath) As Boolean

  'If Not frmAppSettings.InnoSetupFile.OpenHUSetupFiles(frmAppSettings.SetupFileNamePath) Then
  '  'If Not frmAppSettings.InnoSetupFile.OpenHUSetupFiles("c:\test") Then
  '  MessageBox.Show("setup not file read")
  '  Return False
  'Else
  '  frmAppSettings.ReadSetupFile()
  '  MessageBox.Show("setup file read")
  '  Return True
  'End If 'if not innosetupfile.openhutextfile(fsetupfilenamepath)

  'End Function

  '========================================================================================
  'Private Function ReadString(vstrString As String) As String
  '  Return vstrString
  'End Function

  '----------------------------------------------------------------------------------------
  Public Function SetupFileExists() As Boolean

    ' MessageBox.Show(SetupFileNamePath)

    If My.Computer.FileSystem.FileExists(SetupFileNamePath) Then
      '   MessageBox.Show("Setup File Exists")
      Return True
    Else
      '   MessageBox.Show("Setup File Does Not Exist")
      Return False
    End If 'If My.Computer.FileSystem.FileExists

  End Function 'Public Function SetupFileExist

  '----------------------------------------------------------------------------------------
  Public Sub ReadSetupFile()

    Try
      ' Create an instance of Stream Reader to read from a file.
      ' The using statement also closes the Stream Reader.

      Using SetupFile_sr As StreamReader = New StreamReader(SetupFileNamePath)

        Dim vstrTStr As String
        Dim vstrProperty As String
        Dim vstrValue As String

        vstrTStr = SetupFile_sr.ReadLine()       'File Version number
        InnoSetupFile.ParseSetupStringData(vstrTStr, vstrProperty, vstrValue)
        SetupFileVersion = vstrValue

        vstrTStr = SetupFile_sr.ReadLine()       'File Version number
        InnoSetupFile.ParseSetupStringData(vstrTStr, vstrProperty, vstrValue)
        RVMPath = vstrValue

        vstrTStr = SetupFile_sr.ReadLine()       'File Version number
        InnoSetupFile.ParseSetupStringData(vstrTStr, vstrProperty, vstrValue)
        RVMDataPath = vstrValue

        vstrTStr = SetupFile_sr.ReadLine()       'File Version number
        InnoSetupFile.ParseSetupStringData(vstrTStr, vstrProperty, vstrValue)
        RVMLogsPath = vstrValue

      End Using ' Using SetupFile_sr As StreamReader
    Catch e As Exception
      'Let the user know what went wrong.
      MessageBox.Show("Read Setup File Failed = " + e.Message)
    End Try

  End Sub 'Public Sub ReadSetupFile

  '========================================================================================
  Public Function SettingsFileExists() As Boolean

    If My.Computer.FileSystem.FileExists(SettingsFileNamePath) Then
      Return True
    Else
      Return False
    End If 'If My.Computer.FileSystem.FileExists

  End Function 'Public Function SettingsFileExist

  '----------------------------------------------------------------------------------------
  Public Sub InstallDefaultSettings()

    MessageBox.Show("InstallDefaultSettings")

  End Sub ' Public Sub InstallDefaultSettings

  '----------------------------------------------------------------------------------------
  Public Function LoadAppSettings() As Boolean

    ' We check to see if there is a Settings.stg file there. If it is, we use that data. If
    ' it is not, we load the Defaukt data

    '   MessageBox.Show("LoadAppSettings")

    If SettingsFileExists() Then
      ReadSettingsFile()
      Return True
    Else
      MessageBox.Show("No Settings File found. loading Default data.")
      InstallDefaultSettings()
      Return False
    End If ' If Not SettingsFileExists

  End Function ' Public Function LoadAppSettings

  '----------------------------------------------------------------------------------------
  Public Sub ReadSettingsFile()

    MessageBox.Show("ReadSettingsFile")

    Try
      '  Create an instance of Stream Reader to read from a file.
      ' The using statement also closes the Stream Reader.

      Using sr As StreamReader = New StreamReader(SettingsFileNamePath)

        Dim line As String

        ' Read lines from the file until the end of
        ' the file is reached.

        'line = sr.ReadSetupString        'File Version number
        'MessageBox.Show("line = " + line)
        'RVMPath = sr.ReadLine()
        'RVMDataPath = sr.ReadLine()
        'RVMLogsPath = sr.ReadLine()
        'SettingsFileNamePath = sr.ReadLine()
        'UseLastLog = sr.ReadLine()
      End Using

    Catch e As Exception
      'Let the user know what went wrong.
      MessageBox.Show(e.Message)
    End Try

  End Sub ' Public Sub ReadSettingsFile()

  '----------------------------------------------------------------------------------------
  Public Sub WriteSettingsFile()

    MessageBox.Show("WriteSettingsFile")

    Dim OldSettingsFileName As String = "OLD" + SettingsFullFileName
    Dim OldSettingsFileNamePath As String = SettingsFilePath + OldSettingsFileName
    '  MessageBox.Show(SettingsFullFileName)
    '  MessageBox.Show(OldSettingsFileName)
    ' MessageBox.Show(OldSettingsFileNamePath)

    ' Delete any previous OLD file
    If My.Computer.FileSystem.FileExists(OldSettingsFileNamePath) Then
      '  MessageBox.Show("Deleting " + OldSettingsFileName)
      My.Computer.FileSystem.DeleteFile(OldSettingsFileNamePath)
    End If

    ' If the Settings file exists then we must rename it before creating a new one
    If SettingsFileExists() Then
      '  MessageBox.Show("Renaming old Settingsfile.")
      '   MessageBox.Show(SettingsFileNamePath)
      '   MessageBox.Show(OldSettingsFileName)
      Dim vstrTFileNamePath As String = SettingsFileNamePath
      My.Computer.FileSystem.RenameFile(vstrTFileNamePath, OldSettingsFileName)
      '  MessageBox.Show(vstrTFileNamePath)
    End If ' If SettingsFileExists

    Try
      'Create an instance of Stream Writer to read from a file.
      ' The using statement also closes the Stream Writer.
      Using SettingsFile As StreamWriter = New StreamWriter(SettingsFileNamePath)
        'Dim line As String
        ' Write records to the file 
        SettingsFile.WriteLine("Version Nr")
        SettingsFile.WriteLine(RVMPath)
        SettingsFile.WriteLine(RVMDataPath)
        SettingsFile.WriteLine(RVMLogsPath)
        SettingsFile.WriteLine(SettingsFileNamePath)
        SettingsFile.WriteLine(UseLastLog)
      End Using
    Catch e As Exception
      'Let the user know what went wrong.
      MessageBox.Show(e.Message)
      'Restore the previous file
      '     MessageBox.Show("Renaming old Settingsfile.")
      '     MessageBox.Show(OldSettingsFileName)
      '     MessageBox.Show(SettingsFileNamePath)
      'My.Computer.FileSystem.RenameFile(OldSettingsFileNamePath, SettingsFullFileName)
    End Try

    ' Delete the OLD file if we were successful
    If My.Computer.FileSystem.FileExists(OldSettingsFileName) Then
      My.Computer.FileSystem.DeleteFile(OldSettingsFileName)
    End If

    '   MessageBox.Show("Write Setings File Complete")

  End Sub 'Public Sub WriteSettingsFile

  '========================================================================================
  '          FORM ROUTINES
  '========================================================================================
  Private Sub frmAppSettings_Shown(sender As Object, e As EventArgs) Handles MyBase.Shown

    tbxApplicationPath.Text = ApplicationPath
    tbxRVMPath.Text = RVMPath
    tbxRVMDataPath.Text = RVMDataPath
    tbxRVMLogsPath.Text = RVMLogsPath
    chkUseLastLog.Checked = UseLastLog

  End Sub 'Private Sub frmAppSettings_Shown

  '========================================================================================

End Class 'Public Class frmAppSettings
