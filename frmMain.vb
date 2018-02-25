﻿Public Class frmMain

  '========================================================================================
  '
  '   Filename : frmMain.vb
  '
  '   Description: Application Main module
  '
  '   Called By:  
  '
  '   Calls:  AppFinal  : Finalise
  '                       AppInit: Initialise 
  '           frmRVTypesDB : frmRVTypesDB.Show
  '           Libraries : 
  '
  '   Version: 1.0.0
  '
  '   Date: 25 Feb 2018
  '
  '========================================================================================

  '========================================================================================
  '          PRIVATE CONSTANTS
  '========================================================================================
  Private cstrAppClosingText = "RVMasterLog Closing"
  Private cstrAppClosingTitle = "Application Closing"
  Private cstrmnuFileExitClick = "mnuFileExit_Click"
  Private cstFormClosed = "Form Cosed"

  '========================================================================================
  '          PUBLIC CONSTANTS
  '========================================================================================

  '========================================================================================
  '          PRIVATE VARIABLES
  '/========================================================================================

  '========================================================================================
  '          PUBLIC VARIABLES
  '========================================================================================

  '========================================================================================
  '          PRIVATE ROUTINES
  '========================================================================================

  '========================================================================================
  '          PUBLIC ROUTINES
  '========================================================================================

  '========================================================================================
  '          PROPERTY ROUTINES
  '========================================================================================

  '========================================================================================
  '          MENU ROUTINES
  '========================================================================================

  '========================================================================================
  '         FILE MENU
  '========================================================================================
  Private Sub mnuFileExit_Click(sender As Object, e As EventArgs) Handles mnuFileExit.Click
    Libraries.HUMsgLib.HUInformationMessageOK(cstrmnuFileExitClick, Nothing)
    Application.Exit()
  End Sub 'Private Sub mnuFileExit_Click

  '========================================.================================================
  '         SETTINGS MENU
  '========================================================================================
  Private Sub mnuSettings_Click(sender As Object, e As EventArgs) Handles mnuSettings.Click
    frmAppSettings.Show()
  End Sub 'Private Sub mnuSettings_Click

  '========================================================================================
  '         CONFIGURATION MENU
  '========================================================================================
  Private Sub mnuConfigureRVTypesTable_Click(sender As Object, e As EventArgs) Handles mnuConfigureRVTypesTable.Click
    frmRVMDefaultTablesDB.Show()
  End Sub ' Private Sub mnuConfigureRVTypesTable_Click

  '========================================================================================
  '          COMMAND BUTTON ROUTINES
  '========================================================================================

  '========================================================================================
  '          CONTROL ROUTINES
  '========================================================================================

  '========================================================================================
  '          FILE ROUTINES
  '========================================================================================

  '========================================================================================
  '          FORM ROUTINES
  '========================================================================================
  Private Sub frmMain_Load(sender As Object, e As EventArgs) Handles MyBase.Load
    If Not AppInit.Initialise() Then
      Me.Close()
    End If 'If Not AppInit.Initialise
  End Sub 'Private Sub frmMain_Load

  '========================================================================================
  Private Sub frmMain_FormClosing(sender As Object, e As FormClosingEventArgs) Handles MyBase.FormClosing
    Libraries.HUMsgLib.HUInformationMessageOK("Form CLosing", Nothing)
    'MessageBox.Show(cstrAppClosingText,
    '                  cstrAppClosingTitle,
    '                  MessageBoxButtons.OK,
    '                  MessageBoxIcon.Information)
    AppFinal.Finalise()
  End Sub ' Private Sub frmMain_FormClosing

  '----------------------------------------------------------------------------------------
  Private Sub frmMain_FormClosed(sender As Object, e As FormClosedEventArgs) Handles MyBase.FormClosed
    Libraries.HUMsgLib.HUInformationMessageOK(cstFormClosed, Nothing)
    MessageBox.Show(cstFormClosed)
  End Sub ' Private Sub frmMain_FormClosed

  '========================================================================================
End Class 'Public Class frmMain
