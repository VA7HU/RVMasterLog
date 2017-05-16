Imports System.Windows.Forms

Public Class HUMessages

  '========================================================================================
  '
  '   Filename : HUMessages.vb
  '
  '   Description:
  '
  '   Called By:
  '
  '   Calls:
  '
  '   Version: 1.0.0
  '
  '   Date: 17 May 2017
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
  Dim vbtnDefaultbuttons As MessageBoxButtons = MessageBoxButtons.OK
    Dim vbtnDefaultbutton1 As MessageBoxDefaultButton = MessageBoxDefaultButton.Button1
    Dim voptMessageBoxOptions As MessageBoxOptions = 0
    Dim vblnDefaultHelpButton As Boolean = False
    Dim vstrnDefaultHelpFile As String = ""
    Dim vblnDefaultHelpKeyword As String = ""

    '============================================
    '       ERROR MESSAGES
    '============================================
    Dim vstrDefaultErrorCaption As String = "ERROR"
    Dim vicnDefaultErrorIcon As MessageBoxIcon = MessageBoxIcon.Error

    '========================================================================================
    Public Overloads Sub HUErrorMsg(vstrMessage As String)
        MessageBox.Show(vstrMessage,
                        vstrDefaultErrorCaption,
                        vbtnDefaultbuttons,
                        vicnDefaultErrorIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vstrnDefaultHelpFile,
                        vblnDefaultHelpKeyword)
    End Sub

    '========================================================================================
    Public Overloads Sub HUErrorMsg(vstrMessage As String,
                                    vstrCaption As String)
        MessageBox.Show(vstrMessage,
                    vstrCaption,
                    vbtnDefaultbuttons,
                    vicnDefaultErrorIcon,
                    vbtnDefaultbutton1,
                    voptMessageBoxOptions,
                    vstrnDefaultHelpFile,
                    vblnDefaultHelpKeyword)
    End Sub

    '========================================================================================
    Public Overloads Sub HUErrorMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons)
        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultErrorIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions)
    End Sub

    '========================================================================================
    Public Overloads Sub HUErrorMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons,
                                    vblnHelpButton As Boolean)
        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultErrorIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vblnHelpButton)
    End Sub

    '========================================================================================
    Public Overloads Sub HUErrorMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons,
                                    vblnHelpFile As String)

        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultErrorIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vstrnDefaultHelpFile)
    End Sub

    '========================================================================================
    Public Overloads Sub HUErrorMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons,
                                    vstrHelpFile As String,
                                    vstrHelpKeyword As String)

        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultErrorIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vstrHelpFile,
                        vstrHelpKeyword)
    End Sub

    '============================================
    '       INFORMATION MESSAGES
    '============================================
    Dim vstrDefaultInformationCaption As String = "INFORMATION"
    Dim vicnDefaultInformationIcon As MessageBoxIcon = MessageBoxIcon.Information

    '========================================================================================
    Public Overloads Sub HUInformationMsg(vstrMessage As String)
        MessageBox.Show(vstrMessage,
                        vstrDefaultInformationCaption,
                        vbtnDefaultbuttons,
                        vicnDefaultInformationIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vstrnDefaultHelpFile,
                        vblnDefaultHelpKeyword)
    End Sub

    '========================================================================================
    Public Overloads Sub HUInformationMsg(vstrMessage As String,
                                    vstrCaption As String)
        MessageBox.Show(vstrMessage,
                    vstrCaption,
                    vbtnDefaultbuttons,
                    vicnDefaultInformationIcon,
                    vbtnDefaultbutton1,
                    voptMessageBoxOptions,
                    vstrnDefaultHelpFile,
                    vblnDefaultHelpKeyword)
    End Sub

    '========================================================================================
    Public Overloads Sub HUInformationMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons)
        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultInformationIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions)
    End Sub

    '========================================================================================
    Public Overloads Sub HUInformationMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons,
                                    vblnHelpButton As Boolean)
        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultInformationIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vblnHelpButton)
    End Sub

    '========================================================================================
    Public Overloads Sub HUInformationMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons,
                                    vblnHelpFile As String)

        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultInformationIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vstrnDefaultHelpFile)
    End Sub

    '========================================================================================
    Public Overloads Sub HUInformationMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons,
                                    vstrHelpFile As String,
                                    vstrHelpKeyword As String)

        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultInformationIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vstrHelpFile,
                        vstrHelpKeyword)
    End Sub

    '============================================
    '       CONFIRMATION MESSAGES
    '============================================
    Dim vstrDefaultConfirmationCaption As String = "CONFIRMATION"
    Dim vicnDefaultConfirmationIcon As MessageBoxIcon = MessageBoxIcon.Question

    '========================================================================================
    Public Overloads Sub HUConfirmationMsg(vstrMessage As String)
        MessageBox.Show(vstrMessage,
                        vstrDefaultConfirmationCaption,
                        vbtnDefaultbuttons,
                        vicnDefaultConfirmationIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vstrnDefaultHelpFile,
                        vblnDefaultHelpKeyword)
    End Sub

    '========================================================================================
    Public Overloads Sub HUConfirmationMsg(vstrMessage As String,
                                    vstrCaption As String)
        MessageBox.Show(vstrMessage,
                    vstrCaption,
                    vbtnDefaultbuttons,
                    vicnDefaultConfirmationIcon,
                    vbtnDefaultbutton1,
                    voptMessageBoxOptions,
                    vstrnDefaultHelpFile,
                    vblnDefaultHelpKeyword)
    End Sub

    '========================================================================================
    Public Overloads Sub HUConfirmationMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons)
        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultConfirmationIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions)
    End Sub

    '========================================================================================
    Public Overloads Sub HUConfirmationMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons,
                                    vblnHelpButton As Boolean)
        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultConfirmationIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vblnHelpButton)
    End Sub

    '========================================================================================
    Public Overloads Sub HUConfirmationMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons,
                                    vblnHelpFile As String)

        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultConfirmationIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vstrnDefaultHelpFile)
    End Sub

    '========================================================================================
    Public Overloads Sub HUConfirmationMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons,
                                    vstrHelpFile As String,
                                    vstrHelpKeyword As String)

        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultConfirmationIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vstrHelpFile,
                        vstrHelpKeyword)
    End Sub

    '============================================
    '       QUESTION MESSAGES
    '============================================
    Dim vstrDefaultQuestionCaption As String = "QUESTION"
    Dim vicnDefaultQuestionIcon As MessageBoxIcon = MessageBoxIcon.Question

    '========================================================================================
    Public Overloads Sub HUQuestionMsg(vstrMessage As String)
        MessageBox.Show(vstrMessage,
                        vstrDefaultQuestionCaption,
                        vbtnDefaultbuttons,
                        vicnDefaultQuestionIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vstrnDefaultHelpFile,
                        vblnDefaultHelpKeyword)
    End Sub

    '========================================================================================
    Public Overloads Sub HUQuestionMsg(vstrMessage As String,
                                    vstrCaption As String)
        MessageBox.Show(vstrMessage,
                    vstrCaption,
                    vbtnDefaultbuttons,
                    vicnDefaultQuestionIcon,
                    vbtnDefaultbutton1,
                    voptMessageBoxOptions,
                    vstrnDefaultHelpFile,
                    vblnDefaultHelpKeyword)
    End Sub

    '========================================================================================
    Public Overloads Sub HUQuestionMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons)
        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultQuestionIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions)
    End Sub

    '========================================================================================
    Public Overloads Sub HUQuestionMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons,
                                    vblnHelpButton As Boolean)
        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultQuestionIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vblnHelpButton)
    End Sub

    '========================================================================================
    Public Overloads Sub HUQuestionMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons,
                                    vblnHelpFile As String)

        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultQuestionIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vstrnDefaultHelpFile)
    End Sub

    '========================================================================================
    Public Overloads Sub HUQuestionMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons,
                                    vstrHelpFile As String,
                                    vstrHelpKeyword As String)

        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultQuestionIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vstrHelpFile,
                        vstrHelpKeyword)
    End Sub

    '============================================
    '       WARNING MESSAGES
    '============================================
    Dim vstrDefaultWarningCaption As String = "WARNING"
    Dim vicnDefaultWarningIcon As MessageBoxIcon = MessageBoxIcon.Warning

    '========================================================================================
    Public Overloads Sub HUWarningMsg(vstrMessage As String)
        MessageBox.Show(vstrMessage,
                        vstrDefaultWarningCaption,
                        vbtnDefaultbuttons,
                        vicnDefaultWarningIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vstrnDefaultHelpFile,
                        vblnDefaultHelpKeyword)
    End Sub

    '========================================================================================
    Public Overloads Sub HUWarningMsg(vstrMessage As String,
                                    vstrCaption As String)
        MessageBox.Show(vstrMessage,
                    vstrCaption,
                    vbtnDefaultbuttons,
                    vicnDefaultWarningIcon,
                    vbtnDefaultbutton1,
                    voptMessageBoxOptions,
                    vstrnDefaultHelpFile,
                    vblnDefaultHelpKeyword)
    End Sub

    '========================================================================================
    Public Overloads Sub HUWarningMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons)
        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultWarningIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions)
    End Sub

    '========================================================================================
    Public Overloads Sub HUWarningMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons,
                                    vblnHelpButton As Boolean)
        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultWarningIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vblnHelpButton)
    End Sub

    '========================================================================================
    Public Overloads Sub HUWarningMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons,
                                    vblnHelpFile As String)

        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultWarningIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vstrnDefaultHelpFile)
    End Sub

    '========================================================================================
    Public Overloads Sub HUWarningMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons,
                                    vstrHelpFile As String,
                                    vstrHelpKeyword As String)

        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultWarningIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vstrHelpFile,
                        vstrHelpKeyword)
    End Sub

    '============================================
    '       PAUSE MESSAGES
    '============================================
    Dim vstrDefaultPauseCaption As String = "PAUSE"
    Dim vicnDefaultPauseIcon As MessageBoxIcon = MessageBoxIcon.None

    '========================================================================================
    Public Overloads Sub HUPauseMsg(vstrMessage As String)
        MessageBox.Show(vstrMessage,
                        vstrDefaultPauseCaption,
                        vbtnDefaultbuttons,
                        vicnDefaultPauseIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vstrnDefaultHelpFile,
                        vblnDefaultHelpKeyword)
    End Sub

    '========================================================================================
    Public Overloads Sub HUPauseMsg(vstrMessage As String,
                                    vstrCaption As String)
        MessageBox.Show(vstrMessage,
                    vstrCaption,
                    vbtnDefaultbuttons,
                    vicnDefaultPauseIcon,
                    vbtnDefaultbutton1,
                    voptMessageBoxOptions,
                    vstrnDefaultHelpFile,
                    vblnDefaultHelpKeyword)
    End Sub

    '========================================================================================
    Public Overloads Sub HUPauseMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons)
        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultPauseIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions)
    End Sub

    '========================================================================================
    Public Overloads Sub HUPauseMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons,
                                    vblnHelpButton As Boolean)
        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultPauseIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vblnHelpButton)
    End Sub

    '========================================================================================
    Public Overloads Sub HUPauseMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons,
                                    vblnHelpFile As String)

        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultPauseIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vstrnDefaultHelpFile)
    End Sub

    '========================================================================================
    Public Overloads Sub HUPauseMsg(vstrMessage As String,
                                    vstrCaption As String,
                                    vbtnsButtons As MessageBoxButtons,
                                    vstrHelpFile As String,
                                    vstrHelpKeyword As String)

        MessageBox.Show(vstrMessage,
                        vstrCaption,
                        vbtnsButtons,
                        vicnDefaultPauseIcon,
                        vbtnDefaultbutton1,
                        voptMessageBoxOptions,
                        vstrHelpFile,
                        vstrHelpKeyword)
    End Sub

    '========================================================================================
    '          FILE ROUTINES
    '========================================================================================

    '========================================================================================
End Class ' Public Class HUMessages


