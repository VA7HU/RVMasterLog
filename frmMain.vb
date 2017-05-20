Public Class frmMain

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
  '
  '   Version: 1.0.0
  '
  '   Date: 19 May 2017
  '
  '========================================================================================

  '========================================================================================
  '          PRIVATE CONSTANTS
  '========================================================================================
  Private cstrAppClosingText = "RVMasterLog Closing"
  Private cstrAppClosingTitle = "Application Closing"

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
    Application.Exit()
  End Sub 'Private Sub mnuFileExit_Click

  '========================================================================================
  '         SETTINGS MENU
  '========================================================================================
  Private Sub mnuSettings_Click(sender As Object, e As EventArgs) Handles mnuSettings.Click
    frmAppSettings.Show()
  End Sub 'Private Sub mnuSettings_Click

  '========================================================================================
  '         CONFIGURATION MENU
  '========================================================================================
  Private Sub mnuConfigurationDatabaseRVTypes_Click(sender As Object, e As EventArgs)
    frmRVMDefaultTablesDB.ShowDialog()
  End Sub ' Private Sub mnuConfigurationDatabaseRVTypes_Click

  '----------------------------------------------------------------------------------------
  Private Sub DefaultRVTypeTableToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DefaultRVTypeTableToolStripMenuItem.Click
    frmRVMDefaultTablesDB.Show()
  End Sub ' Private Sub DefaultRVTypeTableToolStripMenuItem_Click

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
    'MessageBox.Show("RVMasterLog Closing")
    MessageBox.Show(cstrAppClosingText,
                      cstrAppClosingTitle,
                      MessageBoxButtons.OK,
                      MessageBoxIcon.Information)
    AppFinal.Finalise()
  End Sub ' Private Sub frmMain_FormClosing

  '----------------------------------------------------------------------------------------
  Private Sub frmMain_FormClosed(sender As Object, e As FormClosedEventArgs) Handles MyBase.FormClosed
    MessageBox.Show("Form Cosed")
  End Sub ' Private Sub frmMain_FormClosed

  '========================================================================================
End Class ' frmMain
