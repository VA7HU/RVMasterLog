Imports System.IO

Public Class HUSettingsFile

  '========================================================================================
  '
  '   Filename : HUTextFiles.vb
  '
  '   Description:
  '
  '   Called By:
  '
  '   Calls:
  '
  '   Version:  1.0.0
  '
  '   Date: 9 Apr 2017
  '
  '========================================================================================

  '========================================================================================
  '          PRIVATE CONSTANTS
  '========================================================================================
  Dim cstrFileTypeConfig As String = "CONFIG"
  Dim cstrFileTypeData As String = "DATA"
  Dim cstrFileTypeNone As String = ""
  Dim cstrFileTypeOther As String = "OTHER"
  Dim cstrFileTypeSettings As String = "SETTINGS"

  Dim cstrDefaultConfigFileName = "Config"
  Dim cstrDefaultDataFileName = "Data"
  Dim cstrDefaultSettingsFileName = "Settings"


  Dim cstrConfigFileExtension As String = ".cfg"
  Dim cstrDataFileExtension As String = ".dta"
  Dim cstrSettingsFileExtension As String = ".stg"

  Dim cstrDefaultFileExtension As String = cstrSettingsFileExtenson
  Dim cstrDefaultFileName As String = cstrDefaultSettingsFileName

  '========================================================================================
  '          PUBLIC CONSTANTS
  '========================================================================================

  '========================================================================================
  '          PRIVATE VARIABLES
  '========================================================================================
  Dim vstrNewFileExtension As String
  Dim vstrNewFileName As String
  Dim vstrNewFilePath = As string
  
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
  Public Function OpenHUTextFile(vstrFileType As String) As String
    'Creates and Opens a default text file based on the FileType parameter passed.
    ' The default FileName will be "Settings.stg" using the application path with a
    ' Create flag of True. The New FileName is returned to the calling routine.

    Select Case vstrFileType
      Case cstrFileTypeConfig
        vstrNewFileExtension = cstrConfigFileExtension
        vstrNewFileName = frmAppSettings.ApplicationPath +
                          "/" +
                          cstrDefaultConfigFileName +
                          "." + vstrNewFileExtension
      Case cstrFileTypeData
        vstrNewFileExtension = cstrDataFileExtension
        vstrNewFileName = frmAppSettings.ApplicationPath +
                          "/" +
                          cstrDefaultDataFileName +
                          "." + vstrNewFileExtension
      Case cstrFileTypeNone
        vstrNewFileExtension = cstrSettingsFileExtension
        vstrNewFileName = frmAppSettings.ApplicationPath +
                          "/" +
                          cstrDefaultSettingsFileName +
                          "." + vstrNewFileExtension
      Case cstrFileTypeOther
        vstrNewFileExtension = cstrSettingsFileExtension
        vstrNewFileName = frmAppSettings.ApplicationPath +
                          "/" +
                          cstrDefaultSettingsFileName +
                          "." + vstrNewFileExtension
      Case cstrFileTypeSettings
        vstrNewFileExtension = cstrSettingsFileExtension
        vstrNewFileName = frmAppSettings.ApplicationPath +
                          "/" +
                          cstrDefaultSettingsFileName +
                          "." + vstrNewFileExtension
    End Select

    Return vstrNewFileName

  End Function ' Public Function OpenHUTextFile

  '----------------------------------------------------------------------------------------

  '  Public Function OpenHUTextFile(vstrFileType As String,
  '                            vstrFileName As String,
  '                          vblnCreate As Boolean) As Boolean
  '
  'Dim FileNameParameterExt As String
  'Dim FileNameParameter As String

  'Ensure that the FileName parameter has been passed

  'If Len(vstrFileName) < 1 Then
  ' MessageBox.Show("No FIlename Parameter")
  ' Return False
  'End If ' If Len(vstrFileName) < 1

  ' Now we must determine the new File Extension using both the FileType and FileName 
  ' parameters.
  '   Case 1 FileType - Use FileType
  '   Case 2 No FileType but FileName - use FileName
  '   Case 3 No FileType and No FileName - use Default

  'Select Case vstrFileType
  'Case cstrFileTypeConfig
  'Case cstrFileTypeData
  'Case cstrFileTypeSettings
  'Case cstrFileTypeOther
  'End Select ' Case vstrFileType



  '










  'Parse the FileName parameter
  'FileNameParameterExt = Path.GetExtension(vstrFileName)
  'FileNameParameter = Path.GetFileNameWithoutExtension(vstrFileName)

  'Case 1 There is a FileType so use FileType regardless
  'If (Len(vstrFileType) > 0) Then
  ' If the FIleName has an extension, we must replace it'
  'vstrNewFileName = FileNameParameter + "."
  'End If

  'Case 2 No File Type parameter and FIleName parameter has an extension so we use the complete
  ' FileName [arameter
  'If (Len(vstrFileType) < 1 And (Len(FileNameParameterExt) > 0)) Then
  'vstrNewFileName = vstrFileName
  'Return True
  'End If


  '   If Len(vstrFileType) < 1 Then

  '    If Len(vstrFileType) > 0 Then
  '    vstrFileExtension = vstrFileType
  '    vstrNewFileName =
  '    ElseIf Len(Ext) > 0 Then
  '    Else
  '    vstrFileExtension = cstrDefaultFileExtension
  '    End If ' If Len(vstrFileType) > 0

  ' Construct the complete path of the new FileName
  '    vstrNewFileName = 




  'Return True

  'End Function ' Public Function OpenHUTextFile

  '========================================================================================
  '          FILE ROUTINES
  '========================================================================================

  '========================================================================================

End Class
