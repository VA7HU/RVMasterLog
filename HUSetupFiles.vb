﻿Imports System.IO

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
  '   Date: 3 May 2017
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
  Public Function SetupStringData(vstrStringData As String) As String
    ' return the data to the right of the equals sign
    ' Find the POS of the equals sign
    Dim Pos As String
    Pos = InStr(vstrStringData, "=")
    MessageBox.Show(Pos)
    Return (Pos)
  End Function ' Public Function ReadSetupString() As String

  '========================================================================================

End Class ' Public Class HUSetupFiles
