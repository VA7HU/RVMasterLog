Public Class HUSetupFiles

  '========================================================================================
  '
  '   Filename : HUSetupFiles.vb
  '
  '   Description:
  '
  '   Called By:
  '
  '   Calls:
  '
  '   Version:
  '
  '   Date: 30 Apr 2017
  '
  '========================================================================================

  '========================================================================================
  '          PRIVATE CONSTANTS
  '========================================================================================

  '========================================================================================
  '          PUBLIC CONSTANTS
  '========================================================================================

  '========================================================================================
  '          PRIVATE VARIABLES
  '========================================================================================

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
  'Public Function OpenHUTextFile(ByRef vstrFullFilePathName As String) As Boolean

  '  ' If vstrFullFilePathName does not exist, we display and Error message and Return Nothing
  '  If Not My.Computer.FileSystem.FileExists(vstrFullFilePathName) Then
  '    MessageBox.Show("Setup File" _
  '                        + vbCr _
  '                         + vstrFullFilePathName _
  '                        + vbCr _
  '                        + "does not Exist")
  '    Return False
  '  End If 'If Not My.Computer.FileSystem.FileExists(vstrFullFilePathName) 

  '  ' Now we check to see if it is a Valid HUTextFile. If not we display and Error message
  '  ' And Return Nothing
  '  Dim vOriginalFileInfo = My.Computer.FileSystem.GetFileInfo(vstrFullFilePathName)
  '  vstrOriginalFileExtension = vOriginalFileInfo.Extension

  '  Select Case vstrOriginalFileExtension
  '    Case cstrConfigFileExtension
  '    Case cstrDataFileExtension
  '    Case cstrSettingsFileExtension 'cstrSettingsFileExtension
  '    Case cstrSetupFileExtension 'cstrSettingsFileExtension
  '    Case Else
  '      MessageBox.Show("Invalid Setup File Extension" _
  '                        + vbCr _
  '                         + vstrFullFilePathName)
  '      Return False
  '  End Select ' Case vstrOriginalFileExtension

  '  My.Computer.FileSystem.OpenTextFileReader(vstrFullFilePathName)
  '  Return True

  'End Function ' Public Function ReadHUTextFile(vstrFullFilepathName As String)

  '========================================================================================

  '========================================================================================

End Class ' Public Class HUSetupFiles
