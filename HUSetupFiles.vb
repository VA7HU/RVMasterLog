Imports System.IO

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
  '   Date: 4 May 2017
  '
  '========================================================================================

  '========================================================================================
  '          PRIVATE CONSTANTS
  '========================================================================================
  Dim cstrDefaultSetupFileName As String = "Setup"
  Dim cstrSetupFileExtension As String = ".sup"

  '========================================================================================
  '          PUBLIC CONSTANTS
  '========================================================================================

  '========================================================================================
  '          PRIVATE VARIABLES
  '========================================================================================
  'Dim vstrOriginalFileExtension As String
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
  Public Function OpenHUSetupFiles(ByRef vstrFullFilePathName As String) As Boolean

    ' If vstrFullFilePathName does not exist, we display an Error message and Return Nothing
    If Not My.Computer.FileSystem.FileExists(vstrFullFilePathName) Then
      MessageBox.Show("Setup File" _
                            + vbCr _
                             + vstrFullFilePathName _
                            + vbCr _
                            + "does not Exist")
      Return False
    End If 'If Not My.Computer.FileSystem.FileExists(vstrFullFilePathName) 

    My.Computer.FileSystem.OpenTextFileReader(vstrFullFilePathName)
    Dim sr As StreamReader = New StreamReader(vstrFullFilePathName)

    Return True

  End Function ' Public Function OpenHUSetupFiles(vstrFullFilepathName As String)

  '========================================================================================
  Public Sub SetupStringData(vstrStringData As String,
                             ByRef vstrProperty As String,
                             ByRef vstrValue As String)
    ' Each record consists of one or two parts. If only one part exists it is returned as 
    ' it is returned as the Value. If both parts (separated by the equals sign) exists,
    ' then the first part is returned as the Property and the second part is returned as
    ' the Value'

    ' first find the POS of the equals sign
    Dim Pos As Integer
    Pos = InStr(vstrStringData, "=")

    ' Now deternine number of returned parts
    If Pos = 0 Then
      vstrProperty = Nothing
      vstrValue = Right(vstrStringData, Len(vstrStringData) - Pos)
    Else
      vstrProperty = Left(vstrStringData, (Pos - 1))
      vstrValue = Right(vstrStringData, Len(vstrStringData) - Pos)
    End If ' If Pos > 0

  End Sub ' Public Function SetupStringData() As String

  '========================================================================================

End Class ' Public Class HUSetupFiles
