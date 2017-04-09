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
  Dim cstrFileTypeSettings As String = "SETTINGS"
  Dim cstrFileTypeOther As String = "OTHER"

  Dim cstrConfigFileExyension As String = ".cfg"
  Dim cstrSettingsFileExtenson As String = ".stg"
  Dim cstrDataFileExtenson As String = ".dta"

  Dim cstrDefaultFileExtension As String = cstrSettingsFileExtenson

  '========================================================================================
  '          PUBLIC CONSTANTS
  '============================= ===================================================

  '========================================================================================
  '          PRIVATE VARIABLES
  '========================================================================================
  Dim vstrFileExtension As String
  Dim vstrNewFileName As String

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
  Public Function OpenHUSettingsFile(vstrFileType As String,
                             vstrFileName As String,
                            vblnCreate As Boolean) As Boolean

    Dim FileNameParameterExt As String
    Dim FileNameParameter As String

    'Ensure that the FileName parameter has been passed

    If Len(vstrFileName) < 1 Then
      MessageBox.Show("No FIlename Parameter")
      Return False
    End If ' If Len(vstrFileName) < 1

    ' Now we must determine the new File Extension using both the FileType and FileName 
    ' parameters.
    '   Case 1 FileType - Use FileType
    '   Case 2 No FileType but FileName - use FileName
    '   Case 3 No FileType and No FileName - use Default

    Select Case vstrFileType
      Case cstrFileTypeConfig
      Case cstrFileTypeData
      Case cstrFileTypeSettings
      Case cstrFileTypeOther
    End Select ' Case vstrFileType














    'Parse the FileName parameter
    FileNameParameterExt = Path.GetExtension(vstrFileName)
    FileNameParameter = Path.GetFileNameWithoutExtension(vstrFileName)

    'Case 1 There is a FileType so use FileType regardless
    If (Len(vstrFileType) > 0) Then
      ' If the FIleName has an extension, we must replace it
      vstrNewFileName = FileNameParameter + "."
    End If

    'Case 2 No File Type parameter and FIleName parameter has an extension so we use the complete
    ' FileName [arameter
    If (Len(vstrFileType) < 1 And (Len(FileNameParameterExt) > 0)) Then
      vstrNewFileName = vstrFileName
      Return True
    End If


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




    Return True

  End Function ' Public Function OpenHUSettingsFile

  '========================================================================================
  '          FILE ROUTINES
  '========================================================================================

  '========================================================================================

End Class
