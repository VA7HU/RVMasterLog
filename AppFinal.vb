﻿Module AppFinal

  '========================================================================================
  '
  '   Filename : AppFinal.vb
  '
  '   Description: Application Finalize
  '
  '   Called By:  frmMain : frmMain_FormClosing
  '
  '   Calls:  HUSetupFiles : OpenHUSettingsFile
  '                           WriteSettingsFile
  '
  '   Version: 1.0.0
  '
  '   Date: 6 May 2017
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
  Public Sub Finalise()

    MessageBox.Show("Finalise")

    frmAppSettings.InnoSetupFile.OpenHUSettingsFiles(frmAppSettings.SettingsFileNamePath)
    frmAppSettings.WriteSettingsFile()

  End Sub ' Public Sub Finalise()

  '========================================================================================
  '          PROPERTY ROUTINES
  '========================================================================================

  '========================================================================================
  '          FILE ROUTINES
  '========================================================================================

  '========================================================================================

End Module ' Module AppFinal
