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
  '   Date: 19 May 2017
  '
  '===========================================================================================

  '===========================================================================================
  '          PRIVATE CONSTANTS
  '========================================================================================

  '==============================
  '        MESSAGE TEXTS
  '==============================
  Dim cstrSetupFileReadFailureText = "Unable to read Setup file"
  Dim cstrSetupFileReadFailureTitle = "Read Setup File Failure"

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
  Private Shared fApplicationPath As String
  Private fApplicationFileNamePath As String

  Private fSettingsFileName As String     'Filename
  Private fSettingsFileExt As String      'File Extension
  Private fSettingsFullFileName As String 'Filename + Extension
  Private fSettingsFilePath               'Path to Filename 
  Private Shared fSettingsFileNamePath           'Path including Filename

  Private fSetupFileName As String
  Private fSetupFileExt As String
  Private fSetupFullFileName As String
  Private fSetupFilePath
  Private fSetupFileNamePath As String
  Private fSetupFileVersion As String

  Private Shared fRVMPath As String
  Private Shared fRVMDataPath As String
  Private Shared fRVMLogsPath As String
  Private Shared fUseLastLog As Boolean = True

  Private vblnOriginalUseLastLog As Boolean

  '========================================================================================
  '          PUBLIC VARIABLES
  '========================================================================================
  Public InnoSetupFile As New HUSetupFiles
  Public RVMSettingsFile As New HUSetupFiles

  '========================================================================================
  '          PRIVATE ROUTINES
  '========================================================================================

  '========================================================================================
  '          PUBLIC ROUTINES
  '========================================================================================
  Public Sub InitSetupFileData()
    pSetupFileName = cstrSetupFileName
    pSetupFileExt = cstrSetupFileExt
    pSetupFullFileName = cstrSetupFileName + cstrSetupFileExt
    pSetupFilePath = pApplicationPath
    pSetupFileNamePath = pApplicationPath + "\" + pSetupFullFileName
  End Sub ' Public Sub InitSetupFileData

  '========================================================================================
  Public Sub InitSettingsFileData()
    pSettingsFileName = cstrSettingsFileName
    pSettingsFileExt = CStrSettingsFileExt
    pSettingsFullFileName = cstrSettingsFileName + CStrSettingsFileExt
    pSettingsFilePath = pApplicationPath + "\"
    pSettingsFileNamePath = pSettingsFilePath + pSettingsFullFileName
  End Sub ' Public Sub InitSetttingsFileData

  '========================================================================================
  '          PROPERTY ROUTINES
  '========================================================================================
  Public Property pApplicationPath() As String
    Get
      Return fApplicationPath
    End Get
    Set(ByVal path As String)
      fApplicationPath = path
    End Set
  End Property 'Public Property pApplicationPath

  '========================================================================================
  Public Property pSetupFileName() As String
    Get
      Return fSetupFileName
    End Get
    Set(ByVal FileName As String)
      fSetupFileName = FileName
    End Set
  End Property 'Public Property pSetupFileName()

  '------------------------------------------------------------------------------------------
  Public Property pSetupFileExt() As String
    Get
      Return fSetupFileExt
    End Get
    Set(ByVal FileExt As String)
      fSetupFileExt = FileExt
    End Set
  End Property 'Public Property pSetupFileExt()

  '----------------------------------------------------------------------------------------
  Public Property pSetupFullFileName() As String
    Get
      Return fSetupFullFileName
    End Get
    Set(ByVal SetupFullFileName As String)
      fSetupFullFileName = SetupFullFileName
    End Set
  End Property 'Public Property pSetupFullFileName() As String

  '------------------------------------------------------------------------------------------
  Public Property pSetupFilePath() As String
    Get
      Return fSetupFilePath
    End Get
    Set(ByVal FilePath As String)
      fSetupFilePath = FilePath
    End Set
  End Property 'Public Property pSetupFilePath() As String

  '------------------------------------------------------------------------------------------
  Public Property pSetupFileNamePath() As String
    Get
      Return fSetupFileNamePath
    End Get
    Set(ByVal SetupFileNamePath As String)
      fSetupFileNamePath = SetupFileNamePath
    End Set
  End Property 'Public Property pSetupFileNamePath() As String

  '------------------------------------------------------------------------------------------
  Public Property pSetupFileVersion() As String
    Get
      Return fSetupFileVersion
    End Get
    Set(ByVal SetupFileVersion As String)
      fSetupFileVersion = SetupFileVersion
    End Set
  End Property 'Public Property pSetupFileVersion() As String

  '========================================================================================
  Public Property pSettingsFileName() As String
    Get
      Return fSettingsFileName
    End Get
    Set(ByVal FileName As String)
      fSettingsFileName = FileName
    End Set
  End Property 'Public Property pSettingsFileName()

  '------------------------------------------------------------------------------------------
  Public Property pSettingsFileExt() As String
    Get
      Return fSettingsFileExt
    End Get
    Set(ByVal FileExt As String)
      fSettingsFileExt = FileExt
    End Set
  End Property 'Public Property pSettingsFileExt()

  '----------------------------------------------------------------------------------------
  Public Property pSettingsFullFileName() As String
    Get
      Return fSettingsFullFileName
    End Get
    Set(ByVal FullFileName As String)
      fSettingsFullFileName = FullFileName
    End Set
  End Property 'Public Property pSettingsFileName() As String

  '------------------------------------------------------------------------------------------
  Public Property pSettingsFilePath() As String
    Get
      Return fSettingsFilePath
    End Get
    Set(ByVal FilePath As String)
      fSettingsFilePath = FilePath
    End Set
  End Property 'Public Property pSettingsFilePath() As String

  '----------------------------------------------------------------------------------------
  Public Property pSettingsFileNamePath() As String
    Get
      Return fSettingsFileNamePath
    End Get
    Set(ByVal SettingsFileNamePath As String)
      fSettingsFileNamePath = SettingsFileNamePath
    End Set
  End Property 'Public Property pSettingsFileNamePath() As String

  '========================================================================================
  Public Property pRVMPath() As String
    Get
      Return fRVMPath
    End Get
    Set(ByVal path As String)
      fRVMPath = path
    End Set
  End Property 'Public Property pRVMPath

  '========================================================================================
  Public Property pRVMDataPath() As String
    Get
      Return fRVMDataPath
    End Get
    Set(ByVal path As String)
      fRVMDataPath = path
    End Set
  End Property 'Public Property pRVMDataPath

  '========================================================================================
  Public Property pRVMLogsPath() As String
    Get
      Return fRVMLogsPath
    End Get
    Set(ByVal path As String)
      fRVMLogsPath = path
    End Set
  End Property 'Public Property pRVMLogsPath

  '========================================================================================
  Public Property pUseLastLog() As Boolean
    Get
      Return fUseLastLog
    End Get
    Set(ByVal Value As Boolean)
      fUseLastLog = Value
    End Set
  End Property 'Public Property pUseLastLog

  '========================================================================================
  '          MENU ROUTINES
  '========================================================================================

  '========================================================================================
  '          COMMAND BUTTON ROUTINES
  '========================================================================================
  Private Sub btnBrowse_Click(sender As Object, e As EventArgs) Handles btnBrowse.Click
    MessageBox.Show("Browse")
  End Sub 'Private Sub btnBrowse_Click

  '========================================================================================
  Private Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
    ' Confirm Cancel request is valid. If so, Restore original data and close the
    ' form. If not, Restore the original data and keep the form open.
    If MessageBox.Show("Confirm you wish to Cancel",
                        "Confirm Cancel",
                        MessageBoxButtons.YesNo,
                        MessageBoxIcon.Question,
                        MessageBoxDefaultButton.Button1) = DialogResult.Yes Then
      chkUseLastLog.Checked = vblnOriginalUseLastLog
      pUseLastLog = vblnOriginalUseLastLog
    Else
      pUseLastLog = chkUseLastLog.Checked
      Me.Close()
    End If ' MessageBox.Show
  End Sub 'Private Sub btnCancel_Click

  '========================================================================================
  Private Sub btnHelp_Click(sender As Object, e As EventArgs) Handles btnHelp.Click
    MessageBox.Show("Help not yet Implemented")
  End Sub 'Private Sub btnHelp

  '==========================================================================================
  Private Sub btnOK_Click(sender As Object, e As EventArgs) Handles btnOK.Click
    ' Save changeable data and close
    pUseLastLog = chkUseLastLog.Checked
    Me.Close()
  End Sub 'Private Sub btnOK_Cli

  '========================================================================================
  '          CONTROL ROUTINES
  '========================================================================================

  '========================================================================================
  '          FILE ROUTINES
  '========================================================================================

  '==============================
  '         SETUP FILE
  '==============================
  Public Function ReadSetupFile() As Boolean

    Try
      ' Create an instance of Stream Reader to read from a file.
      ' The using statement also closes the Stream Reader.

      Using SetupFile_sr As StreamReader = New StreamReader(pSetupFileNamePath)

        Dim vstrTStr As String
        Dim vstrProperty As String
        Dim vstrValue As String

        vstrTStr = SetupFile_sr.ReadLine()       'File Version number
        InnoSetupFile.ParseSetupStringData(vstrTStr, vstrProperty, vstrValue)
        pSetupFileVersion = vstrValue

        vstrTStr = SetupFile_sr.ReadLine()       'RVMPath
        InnoSetupFile.ParseSetupStringData(vstrTStr, vstrProperty, vstrValue)
        pRVMPath = vstrValue

        vstrTStr = SetupFile_sr.ReadLine()       'RVMDataPath
        InnoSetupFile.ParseSetupStringData(vstrTStr, vstrProperty, vstrValue)
        pRVMDataPath = vstrValue

        vstrTStr = SetupFile_sr.ReadLine()       'RVMLogsPath
        InnoSetupFile.ParseSetupStringData(vstrTStr, vstrProperty, vstrValue)
        pRVMLogsPath = vstrValue

        SetupFile_sr.Close()

      End Using ' Using SetupFile_sr As StreamReader

    Catch e As Exception
      'Let the user know what went wrong.
      MessageBox.Show(cstrSetupFileReadFailureText,
                      cstrSetupFileReadFailureTitle,
                      MessageBoxButtons.OK,
                      MessageBoxIcon.Error)
      Return False
    End Try

    Return True

  End Function ' Public Function ReadSetupFile() As Boolean

  '==============================
  '         SETTIMGS FILE
  '==============================
  Public Sub ReadSettingsFile()

    MessageBox.Show("ReadSettingsFile")

    Try
      '  Create an instance of Stream Reader to read from a file.
      ' The using statement also closes the Stream Reader.

      'Using SetupFile_sr As StreamReader = New StreamReader(pSetupFileNamePath)
      Using SettingsFile_sr As StreamReader = New StreamReader(pSettingsFileNamePath)

        Dim vstrTstr As String
        Dim vblnValue As Boolean
        Dim vstrProperty As String
        Dim vstrValue As String

        'pSetupFileVersion = SettingsFile_sr.ReadLine
        vstrTstr = SettingsFile_sr.ReadLine()       'File Version number
        MessageBox.Show(vstrTstr)
        RVMSettingsFile.ParseSettingsStringData(vstrTstr, vstrProperty, vstrValue)
        pSetupFileVersion = vstrTstr

        'pRVMPath = SettingsFile_sr.ReadLine()
        vstrTstr = SettingsFile_sr.ReadLine()
        MessageBox.Show(vstrTstr)
        RVMSettingsFile.ParseSettingsStringData(vstrTstr, vstrProperty, vstrValue)
        pRVMPath = vstrTstr

        'pRVMDataPath = SettingsFile_sr.ReadLine()
        vstrTstr = SettingsFile_sr.ReadLine()
        MessageBox.Show(vstrTstr)
        RVMSettingsFile.ParseSettingsStringData(vstrTstr, vstrProperty, vstrValue)
        pRVMDataPath = vstrTstr

        'pRVMLogsPath = SettingsFile_sr.ReadLine()
        vstrTstr = SettingsFile_sr.ReadLine()
        MessageBox.Show(vstrTstr)
        RVMSettingsFile.ParseSettingsStringData(vstrTstr, vstrProperty, vstrValue)
        pRVMLogsPath = vstrTstr

        'vstrline = RVMSettingsFile.FormatSettingBooleanData("UseLastLog", pUseLastLog)
        vstrTstr = SettingsFile_sr.ReadLine()
        MessageBox.Show(vstrTstr)
        RVMSettingsFile.ParseSettingsBooleanData(vstrTstr, vstrProperty, pUseLastLog)
        ' pRVMLogsPath = vblnValue

      End Using ' SettingsFile_sr As StreamReader

    Catch e As Exception
      'Let the user know what went wrong.
      MessageBox.Show(e.Message)
    End Try

  End Sub ' Public Sub ReadSettingsFile()

  '----------------------------------------------------------------------------------------
  Public Function WriteSettingsFile() As Boolean

    MessageBox.Show("WriteSettingsFile")
    MessageBox.Show(pSettingsFileNamePath)

    Try
      ' Open an instance of StreamWriter to write to a file.
      ' The using statement also closes the StreamWriter.

      Using SettingsFile_sw As StreamWriter = New StreamWriter(pSettingsFileNamePath)

        Dim vstrline As String
        'line = sr.ReadSetupString        'File Version number
        vstrline = RVMSettingsFile.FormatSettingStringData("Version", "001")
        SettingsFile_sw.WriteLine(vstrline)
        vstrline = RVMSettingsFile.FormatSettingStringData("RVMPath", pRVMPath)
        SettingsFile_sw.WriteLine(vstrline)
        vstrline = RVMSettingsFile.FormatSettingStringData("RVMDataPath", pRVMDataPath)
        SettingsFile_sw.WriteLine(vstrline)
        vstrline = RVMSettingsFile.FormatSettingStringData("RVMLogsPath", pRVMLogsPath)
        SettingsFile_sw.WriteLine(vstrline)
        If pUseLastLog Then
          vstrline = RVMSettingsFile.FormatSettingStringData("UseLastLog", "True")
        Else
          vstrline = RVMSettingsFile.FormatSettingStringData("UseLastLog", "False")
        End If ' If pUseLastLog
        SettingsFile_sw.WriteLine(vstrline)

      End Using ' SettingsFile_sw As StreamWriter

    Catch e As Exception
      'Let the user know what went wrong.
      MessageBox.Show(e.Message)
      Return False
    End Try

    Return True

  End Function 'Public Sub WriteSettingsFile

  '========================================================================================
  '          FORM ROUTINES
  '========================================================================================
  Private Sub frmAppSettings_Shown(sender As Object, e As EventArgs) Handles MyBase.Shown
    ' Load Text box data and save Original data that can be changed
    tbxApplicationPath.Text = pApplicationPath
    tbxRVMPath.Text = pRVMPath
    tbxRVMDataPath.Text = pRVMDataPath
    tbxRVMLogsPath.Text = pRVMLogsPath
    chkUseLastLog.Checked = pUseLastLog
    vblnOriginalUseLastLog = pUseLastLog
  End Sub 'Private Sub frmAppSettings_Shown

  '========================================================================================
End Class 'Public Class frmAppSettings
