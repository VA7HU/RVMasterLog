Imports System.IO

Public Class HUSetupFiles

  '========================================================================================
  '
  '   Filename : HUSetupFiles.vb
  '
  '   Description:
  '
  '   Called By:  AppInit : Initialise
  '
  '   Calls:
  '
  '   Version:
  '
  '   Date: 6 May 2017
  '
  '========================================================================================

  '========================================================================================
  '          PRIVATE CONSTANTS
  '========================================================================================
  Dim cstrDefaultSetupFileName As String = "Setup"
  Dim cstrSetupFileExtension As String = ".sup"

  Dim cstrDefaultSettingsFileName As String = "Setttings"
  Dim cstrSettingsFileExtension As String = ".stg"

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
  Public Function OpenHUSettingsFiles(ByRef vstrFullFilePathName As String) As Boolean

    ' If vstrFullFilePathName does not exist, we display an Error message and Return Nothing
    ' or create a new Settings file.
    If Not My.Computer.FileSystem.FileExists(vstrFullFilePathName) Then
      MessageBox.Show("Settings File" _
                            + vbCr _
                             + vstrFullFilePathName _
                            + vbCr _
                            + "does not Exist")
      Return False
    End If 'If Not My.Computer.FileSystem.FileExists(vstrFullFilePathName) 

    My.Computer.FileSystem.OpenTextFileReader(vstrFullFilePathName)
    Dim sr As StreamReader = New StreamReader(vstrFullFilePathName)

    Return True

  End Function ' Public Function OpenHUSettingFiles(vstrFullFilepathName As String)

  '----------------------------------------------------------------------------------------
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
  Public Sub ParseSetupStringData(vstrStringData As String,
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

  End Sub ' Sub ParseSetupStringData() 

  '----------------------------------------------------------------------------------------
  Public Sub ParseSetupBooleanData(vstrStringData As String,
                             ByRef vstrProperty As String,
                             ByRef vblnValue As Boolean)
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
      vblnValue = CBool(Right(vstrStringData, Len(vstrStringData) - Pos))
    Else
      vstrProperty = Left(vstrStringData, (Pos - 1))
      vblnValue = CBool(Right(vstrStringData, Len(vstrStringData) - Pos))
    End If ' If Pos > 0

  End Sub ' Sub ParseSetupBooleanData()

  '----------------------------------------------------------------------------------------
  Public Sub ParseSetupIntegerData(vstrStringData As String,
                             ByRef vstrProperty As String,
                             ByRef vintValue As Integer)
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
      vintValue = CInt(Right(vstrStringData, Len(vstrStringData) - Pos))
    Else
      vstrProperty = Left(vstrStringData, (Pos - 1))
      vintValue = CInt(Right(vstrStringData, Len(vstrStringData) - Pos))
    End If ' If Pos > 0

  End Sub ' Sub ParseSetupIntegerData() 

  '----------------------------------------------------------------------------------------
  Public Sub ParseSetupDoubleData(vstrStringData As String,
                             ByRef vstrProperty As String,
                             ByRef vdblDouble As Integer)
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
      vdblDouble = CDbl(Right(vstrStringData, Len(vstrStringData) - Pos))
    Else
      vstrProperty = Left(vstrStringData, (Pos - 1))
      vdblDouble = CDbl(Right(vstrStringData, Len(vstrStringData) - Pos))
    End If ' If Pos > 0

  End Sub ' Sub ParseSetupDoubleData() 

  '========================================================================================
  Public Function FormatSetupStringData(vstrProperty As String, vstrValue As String) As String
    ' Each record consists of two parts. Both parts are concatenated using and equal sign
    ' and returned as the formatted string "vstrProperty=vstrValue"

    ' Format and return the String data
    Return vstrProperty + "=" + vstrValue

  End Function ' Function FormatSetupStringData() 

  '----------------------------------------------------------------------------------------
  Public Function FormatSetupBooleanData(vstrProperty As String, vblnValue As Boolean) As String
    ' Each record consists of two parts. Both parts are concatenated using and equal sign
    ' and returned as the formatted string "vstrProperty=vblnValue"

    ' Format and return the String data
    Dim vstrTStr As String
    If vblnValue = True Then
      vstrTStr = "True"
    Else
      vstrTStr = "False"
    End If
    Return vstrProperty + "=" + vstrTStr

  End Function ' Function FormatSetupBooleanData() 

  '----------------------------------------------------------------------------------------
  Public Function FormatSetupIntegerData(vstrProperty As String, vintValue As Integer) As String
    ' Each record consists of two parts. Both parts are concatenated using and equal sign
    ' and returned as the formatted string "vstrProperty=vintValue"

    ' Format and return the String data
    Dim vstrTStr As String
    Try
      vstrTStr = CInt(vintValue)
    Catch ex As Exception
      vstrTStr = "Integer Conversion Error"
    End Try
    Return vstrProperty + "=" + vstrTStr

  End Function ' Function FormatSetupBooleanData() 

  '----------------------------------------------------------------------------------------
  Public Function FormatSetupDoubleData(vstrProperty As String, vdblValue As Double) As String
    ' Each record consists of two parts. Both parts are concatenated using and equal sign
    ' and returned as the formatted string "vstrProperty=vdblValue"

    ' Format and return the String data
    Dim vstrTStr As String
    Try
      vstrTStr = CDbl(vdblValue)
    Catch ex As Exception
      vstrTStr = "Double Conversion Error"
    End Try
    Return vstrProperty + "=" + vstrTStr

  End Function ' Function FormatSetupDoubleData() 

  '========================================================================================

End Class ' Public Class HUSetupFiles
