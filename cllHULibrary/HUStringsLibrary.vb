﻿Public Module HUStringsLibrary

  '========================================================================================
  '
  '   Filename : HUStringsLibrary.vb
  '
  '   Description:
  '
  '   Called By:
  '
  '   Calls:
  '
  '   Version:  1.0.0
  '
  '   Date: 29 May 2017
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
  Public Function HUTFStringToBool(vstrValue As String) As Boolean
    If vstrValue = "True" Then
      Return True
    Else
      Return False
    End If ' If vstrValue = "True"
  End Function ' Public Function HUTFStringToBool() As Boolean

  '----------------------------------------------------------------------------------------
  Public Function HUBooltoTFString(vblnValue As Boolean) As String
    If vblnValue = True Then
      Return "True"
    Else
      Return "False"
    End If ' If vblnValue = True
  End Function ' Public Function HUBooltoTFString(vstrValue As Boolean) As String

  '========================================================================================
  '          FILE ROUTINES
  '========================================================================================

  '========================================================================================

End Module ' Public Module HUStringsLibrary
