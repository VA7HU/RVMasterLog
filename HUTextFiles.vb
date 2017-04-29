Imports System.IO

Public Class HUTextFile

  '========================================================================================
  '
  '   Filename : HUTextFiles.vb
  '
  '   Description:
  '
  '     Setup File -  Read  - Designed to be READ ONLY and used to process Setup data 
  '                           created by external Installation software. The original file
  '                           will not be changed.
  '                   Write - No Write functionality implemented.
  '
  '   Called By:
  ' 
  '   Calls:
  '
  '   Version:  1.0.0
  '
  '   Date: 29 Apr 2017
  '
  '========================================================================================

  '========================================================================================
  '          PRIVATE CONSTANTS
  '========================================================================================
  'Dim cstrFileTypeConfig As String = "CONFIG"
  'Dim cstrFileTypeData As String = "DATA"
  'Dim cstrFileTypeNone As String = ""
  'Dim cstrFileTypeOther As String = "OTHER"
  'Dim cstrFileTypeSettings As String = "SETTINGS"
  'Dim cstrFileTypeSetup As String = "SETUP"

  Dim cstrDefaultConfigFileName As String = "Config"
  Dim cstrDefaultDataFileName As String = "Data"
  Dim cstrDefaultSettingsFileName As String = "Settings"
  Dim cstrDefaultSetupFileName As String = "Setup"
  Dim cblnDefaultCreateParam As Boolean = False

  Dim cstrConfigFileExtension As String = ".cfg"
  Dim cstrDataFileExtension As String = ".dta"
  Dim cstrSettingsFileExtension As String = ".stg"
  Dim cstrSetupFileExtension As String = ".sup"

  Dim cstrDefaultFileExtension As String = cstrSettingsFileExtension
  Dim cstrDefaultFileName As String = cstrDefaultSettingsFileName

  '========================================================================================
  '          PUBLIC CONSTANTS
  '========================================================================================

  '========================================================================================
  '          PRIVATE VARIABLES
  '========================================================================================
  Dim vstrOriginalFileExtension As String
  'Dim vstrOriginalFileName As String
  'Dim vstrOriginalFullFileName As String
  'Dim vstrOriginalFullFilePath As String

  '========================================================================================
  '          PUBLIC VARIABLES
  '========================================================================================

  '========================================================================================
  '          PRIVATE PROPERTIES
  '========================================================================================

  '========================================================================================
  '          PUBLIC PROPERTIES
  '========================================================================================

  '========================================================================================
  '          PRIVATE PROPERTY ROUTINES
  '========================================================================================

  '========================================================================================
  '          PUBLIC PROPERTY ROUTINES
  '========================================================================================

  '========================================================================================
  '          PRIVATE EVENT ROUTINES
  '========================================================================================

  '========================================================================================
  '          PUBLIC EVENT ROUTINES
  '========================================================================================

  '========================================================================================
  '          PRIVATE METHOD ROUTINES
  '========================================================================================

  '========================================================================================
  '          PUBLIC METHOD ROUTINES
  '========================================================================================

  '========================================================================================
  '          PRIVATE ROUTINES
  '========================================================================================

  '========================================================================================
  '          PUBLIC ROUTINES
  '========================================================================================

  '========================================================================================
  '          FILE ROUTINES 
  '========================================================================================
  Public Function OpenHUTextFile(ByRef vstrFullFilePathName As String) As Boolean

    ' If vstrFullFilePathName does not exist, we display and Error message and Return Nothing
    If Not My.Computer.FileSystem.FileExists(vstrFullFilePathName) Then
      MessageBox.Show("Setup File" _
                          + vbCr _
                           + vstrFullFilePathName _
                          + vbCr _
                          + "does not Exist")
      Return False
    End If 'If Not My.Computer.FileSystem.FileExists(vstrFullFilePathName) 

    ' Now we check to see if it is a Valid HUTextFile. If not we display and Error message
    ' And Return Nothing
    Dim vOriginalFileInfo = My.Computer.FileSystem.GetFileInfo(vstrFullFilePathName)
    vstrOriginalFileExtension = vOriginalFileInfo.Extension

    Select Case vstrOriginalFileExtension
      Case cstrConfigFileExtension
      Case cstrDataFileExtension
      Case cstrSettingsFileExtension 'cstrSettingsFileExtension
      Case cstrSetupFileExtension 'cstrSettingsFileExtension
      Case Else
        MessageBox.Show("Invalid Setup File Extension" _
                          + vbCr _
                           + vstrFullFilePathName)
        Return False
    End Select ' Case vstrOriginalFileExtension

    My.Computer.FileSystem.OpenTextFileReader(vstrFullFilePathName)
    Return True

  End Function ' Public Function ReadHUTextFile(vstrFullFilepathName As String)
  '========================================================================================

End Class ' Public Class HUTextFile
