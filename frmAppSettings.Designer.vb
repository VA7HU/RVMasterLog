<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmAppSettings
  Inherits System.Windows.Forms.Form

  'Form overrides dispose to clean up the component list.
  <System.Diagnostics.DebuggerNonUserCode()> _
  Protected Overrides Sub Dispose(ByVal disposing As Boolean)
    Try
      If disposing AndAlso components IsNot Nothing Then
        components.Dispose()
      End If
    Finally
      MyBase.Dispose(disposing)
    End Try
  End Sub

  'Required by the Windows Form Designer
  Private components As System.ComponentModel.IContainer

  'NOTE: The following procedure is required by the Windows Form Designer
  'It can be modified using the Windows Form Designer.  
  'Do not modify it using the code editor.
  <System.Diagnostics.DebuggerStepThrough()> _
  Private Sub InitializeComponent()
    Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmAppSettings))
    Me.ToolStrip1 = New System.Windows.Forms.ToolStrip()
    Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
    Me.TabControl1 = New System.Windows.Forms.TabControl()
    Me.tpApplicationSettings = New System.Windows.Forms.TabPage()
    Me.btnBrowse = New System.Windows.Forms.Button()
    Me.chkUseLastLog = New System.Windows.Forms.CheckBox()
    Me.Label5 = New System.Windows.Forms.Label()
    Me.Label6 = New System.Windows.Forms.Label()
    Me.Label7 = New System.Windows.Forms.Label()
    Me.Label8 = New System.Windows.Forms.Label()
    Me.tbxRVMLogsPath = New System.Windows.Forms.TextBox()
    Me.tbxRVMDataPath = New System.Windows.Forms.TextBox()
    Me.tbxRVMPath = New System.Windows.Forms.TextBox()
    Me.tbxApplicationPath = New System.Windows.Forms.TextBox()
    Me.tpDefaultCOMPortSettings = New System.Windows.Forms.TabPage()
    Me.btnOK = New System.Windows.Forms.Button()
    Me.btnHelp = New System.Windows.Forms.Button()
    Me.btnCancel = New System.Windows.Forms.Button()
    Me.TabControl1.SuspendLayout()
    Me.tpApplicationSettings.SuspendLayout()
    Me.SuspendLayout()
    '
    'ToolStrip1
    '
    Me.ToolStrip1.Location = New System.Drawing.Point(0, 0)
    Me.ToolStrip1.Name = "ToolStrip1"
    Me.ToolStrip1.Padding = New System.Windows.Forms.Padding(0, 0, 2, 0)
    Me.ToolStrip1.Size = New System.Drawing.Size(712, 25)
    Me.ToolStrip1.TabIndex = 2
    Me.ToolStrip1.Text = "ToolStrip1"
    '
    'StatusStrip1
    '
    Me.StatusStrip1.Location = New System.Drawing.Point(0, 326)
    Me.StatusStrip1.Name = "StatusStrip1"
    Me.StatusStrip1.Padding = New System.Windows.Forms.Padding(2, 0, 19, 0)
    Me.StatusStrip1.Size = New System.Drawing.Size(712, 22)
    Me.StatusStrip1.TabIndex = 3
    Me.StatusStrip1.Text = "StatusStrip1"
    '
    'TabControl1
    '
    Me.TabControl1.Controls.Add(Me.tpApplicationSettings)
    Me.TabControl1.Controls.Add(Me.tpDefaultCOMPortSettings)
    Me.TabControl1.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
    Me.TabControl1.Location = New System.Drawing.Point(16, 14)
    Me.TabControl1.Margin = New System.Windows.Forms.Padding(4)
    Me.TabControl1.Name = "TabControl1"
    Me.TabControl1.SelectedIndex = 0
    Me.TabControl1.Size = New System.Drawing.Size(673, 257)
    Me.TabControl1.TabIndex = 4
    '
    'tpApplicationSettings
    '
    Me.tpApplicationSettings.Controls.Add(Me.btnBrowse)
    Me.tpApplicationSettings.Controls.Add(Me.chkUseLastLog)
    Me.tpApplicationSettings.Controls.Add(Me.Label5)
    Me.tpApplicationSettings.Controls.Add(Me.Label6)
    Me.tpApplicationSettings.Controls.Add(Me.Label7)
    Me.tpApplicationSettings.Controls.Add(Me.Label8)
    Me.tpApplicationSettings.Controls.Add(Me.tbxRVMLogsPath)
    Me.tpApplicationSettings.Controls.Add(Me.tbxRVMDataPath)
    Me.tpApplicationSettings.Controls.Add(Me.tbxRVMPath)
    Me.tpApplicationSettings.Controls.Add(Me.tbxApplicationPath)
    Me.tpApplicationSettings.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
    Me.tpApplicationSettings.Location = New System.Drawing.Point(4, 29)
    Me.tpApplicationSettings.Margin = New System.Windows.Forms.Padding(4)
    Me.tpApplicationSettings.Name = "tpApplicationSettings"
    Me.tpApplicationSettings.Padding = New System.Windows.Forms.Padding(4)
    Me.tpApplicationSettings.Size = New System.Drawing.Size(665, 224)
    Me.tpApplicationSettings.TabIndex = 0
    Me.tpApplicationSettings.Text = "Application Settings"
    Me.tpApplicationSettings.UseVisualStyleBackColor = True
    '
    'btnBrowse
    '
    Me.btnBrowse.Enabled = False
    Me.btnBrowse.Image = CType(resources.GetObject("btnBrowse.Image"), System.Drawing.Image)
    Me.btnBrowse.Location = New System.Drawing.Point(602, 56)
    Me.btnBrowse.Name = "btnBrowse"
    Me.btnBrowse.Size = New System.Drawing.Size(36, 23)
    Me.btnBrowse.TabIndex = 18
    Me.btnBrowse.UseVisualStyleBackColor = True
    '
    'chkUseLastLog
    '
    Me.chkUseLastLog.AutoSize = True
    Me.chkUseLastLog.Checked = True
    Me.chkUseLastLog.CheckState = System.Windows.Forms.CheckState.Checked
    Me.chkUseLastLog.Location = New System.Drawing.Point(26, 174)
    Me.chkUseLastLog.Margin = New System.Windows.Forms.Padding(4)
    Me.chkUseLastLog.Name = "chkUseLastLog"
    Me.chkUseLastLog.Size = New System.Drawing.Size(106, 20)
    Me.chkUseLastLog.TabIndex = 17
    Me.chkUseLastLog.Text = "Use Last Log"
    Me.chkUseLastLog.UseVisualStyleBackColor = True
    '
    'Label5
    '
    Me.Label5.AutoSize = True
    Me.Label5.Location = New System.Drawing.Point(23, 139)
    Me.Label5.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
    Me.Label5.Name = "Label5"
    Me.Label5.Size = New System.Drawing.Size(107, 16)
    Me.Label5.TabIndex = 16
    Me.Label5.Text = "RVM Logs Path :"
    '
    'Label6
    '
    Me.Label6.AutoSize = True
    Me.Label6.Location = New System.Drawing.Point(23, 98)
    Me.Label6.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
    Me.Label6.Name = "Label6"
    Me.Label6.Size = New System.Drawing.Size(106, 16)
    Me.Label6.TabIndex = 15
    Me.Label6.Text = "RVM Data Path :"
    '
    'Label7
    '
    Me.Label7.AutoSize = True
    Me.Label7.Location = New System.Drawing.Point(23, 57)
    Me.Label7.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
    Me.Label7.Name = "Label7"
    Me.Label7.Size = New System.Drawing.Size(74, 16)
    Me.Label7.TabIndex = 14
    Me.Label7.Text = "RVM Path :"
    '
    'Label8
    '
    Me.Label8.AutoSize = True
    Me.Label8.Location = New System.Drawing.Point(23, 18)
    Me.Label8.Margin = New System.Windows.Forms.Padding(4, 0, 4, 0)
    Me.Label8.Name = "Label8"
    Me.Label8.Size = New System.Drawing.Size(143, 16)
    Me.Label8.TabIndex = 13
    Me.Label8.Text = "Application Data Path :"
    '
    'tbxRVMLogsPath
    '
    Me.tbxRVMLogsPath.Location = New System.Drawing.Point(174, 133)
    Me.tbxRVMLogsPath.Margin = New System.Windows.Forms.Padding(4)
    Me.tbxRVMLogsPath.Name = "tbxRVMLogsPath"
    Me.tbxRVMLogsPath.ReadOnly = True
    Me.tbxRVMLogsPath.Size = New System.Drawing.Size(410, 22)
    Me.tbxRVMLogsPath.TabIndex = 12
    '
    'tbxRVMDataPath
    '
    Me.tbxRVMDataPath.Location = New System.Drawing.Point(174, 95)
    Me.tbxRVMDataPath.Margin = New System.Windows.Forms.Padding(4)
    Me.tbxRVMDataPath.Name = "tbxRVMDataPath"
    Me.tbxRVMDataPath.ReadOnly = True
    Me.tbxRVMDataPath.Size = New System.Drawing.Size(410, 22)
    Me.tbxRVMDataPath.TabIndex = 11
    '
    'tbxRVMPath
    '
    Me.tbxRVMPath.Location = New System.Drawing.Point(174, 57)
    Me.tbxRVMPath.Margin = New System.Windows.Forms.Padding(4)
    Me.tbxRVMPath.Name = "tbxRVMPath"
    Me.tbxRVMPath.ReadOnly = True
    Me.tbxRVMPath.Size = New System.Drawing.Size(410, 22)
    Me.tbxRVMPath.TabIndex = 10
    '
    'tbxApplicationPath
    '
    Me.tbxApplicationPath.Location = New System.Drawing.Point(174, 18)
    Me.tbxApplicationPath.Margin = New System.Windows.Forms.Padding(4)
    Me.tbxApplicationPath.Name = "tbxApplicationPath"
    Me.tbxApplicationPath.ReadOnly = True
    Me.tbxApplicationPath.Size = New System.Drawing.Size(410, 22)
    Me.tbxApplicationPath.TabIndex = 9
    '
    'tpDefaultCOMPortSettings
    '
    Me.tpDefaultCOMPortSettings.Location = New System.Drawing.Point(4, 29)
    Me.tpDefaultCOMPortSettings.Margin = New System.Windows.Forms.Padding(4)
    Me.tpDefaultCOMPortSettings.Name = "tpDefaultCOMPortSettings"
    Me.tpDefaultCOMPortSettings.Padding = New System.Windows.Forms.Padding(4)
    Me.tpDefaultCOMPortSettings.Size = New System.Drawing.Size(665, 224)
    Me.tpDefaultCOMPortSettings.TabIndex = 1
    Me.tpDefaultCOMPortSettings.Text = "Default COM Port Settings"
    Me.tpDefaultCOMPortSettings.UseVisualStyleBackColor = True
    '
    'btnOK
    '
    Me.btnOK.Image = CType(resources.GetObject("btnOK.Image"), System.Drawing.Image)
    Me.btnOK.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
    Me.btnOK.Location = New System.Drawing.Point(423, 292)
    Me.btnOK.Margin = New System.Windows.Forms.Padding(4)
    Me.btnOK.Name = "btnOK"
    Me.btnOK.Size = New System.Drawing.Size(100, 28)
    Me.btnOK.TabIndex = 5
    Me.btnOK.Text = "&OK"
    Me.btnOK.UseVisualStyleBackColor = True
    '
    'btnHelp
    '
    Me.btnHelp.Image = CType(resources.GetObject("btnHelp.Image"), System.Drawing.Image)
    Me.btnHelp.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
    Me.btnHelp.Location = New System.Drawing.Point(40, 292)
    Me.btnHelp.Margin = New System.Windows.Forms.Padding(4)
    Me.btnHelp.Name = "btnHelp"
    Me.btnHelp.Size = New System.Drawing.Size(100, 28)
    Me.btnHelp.TabIndex = 6
    Me.btnHelp.Text = "&Help"
    Me.btnHelp.UseVisualStyleBackColor = True
    '
    'btnCancel
    '
    Me.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel
    Me.btnCancel.Image = CType(resources.GetObject("btnCancel.Image"), System.Drawing.Image)
    Me.btnCancel.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
    Me.btnCancel.Location = New System.Drawing.Point(575, 292)
    Me.btnCancel.Margin = New System.Windows.Forms.Padding(4)
    Me.btnCancel.Name = "btnCancel"
    Me.btnCancel.Size = New System.Drawing.Size(100, 28)
    Me.btnCancel.TabIndex = 7
    Me.btnCancel.Text = "&Cancel"
    Me.btnCancel.UseVisualStyleBackColor = True
    '
    'frmAppSettings
    '
    Me.AcceptButton = Me.btnOK
    Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 16.0!)
    Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
    Me.CancelButton = Me.btnCancel
    Me.ClientSize = New System.Drawing.Size(712, 348)
    Me.ControlBox = False
    Me.Controls.Add(Me.btnCancel)
    Me.Controls.Add(Me.btnHelp)
    Me.Controls.Add(Me.btnOK)
    Me.Controls.Add(Me.TabControl1)
    Me.Controls.Add(Me.StatusStrip1)
    Me.Controls.Add(Me.ToolStrip1)
    Me.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
    Me.Margin = New System.Windows.Forms.Padding(4)
    Me.MaximizeBox = False
    Me.Name = "frmAppSettings"
    Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
    Me.Text = "frmAppSettings"
    Me.TabControl1.ResumeLayout(False)
    Me.tpApplicationSettings.ResumeLayout(False)
    Me.tpApplicationSettings.PerformLayout()
    Me.ResumeLayout(False)
    Me.PerformLayout()

  End Sub
  Friend WithEvents ToolStrip1 As ToolStrip
  Friend WithEvents StatusStrip1 As StatusStrip
  Friend WithEvents TabControl1 As TabControl
  Friend WithEvents tpApplicationSettings As TabPage
  Friend WithEvents tpDefaultCOMPortSettings As TabPage
  Friend WithEvents btnOK As Button
  Friend WithEvents btnHelp As Button
  Friend WithEvents btnCancel As Button
  Friend WithEvents chkUseLastLog As CheckBox
  Friend WithEvents Label5 As Label
  Friend WithEvents Label6 As Label
  Friend WithEvents Label7 As Label
  Friend WithEvents Label8 As Label
  Friend WithEvents tbxRVMLogsPath As TextBox
  Friend WithEvents tbxRVMDataPath As TextBox
  Friend WithEvents tbxRVMPath As TextBox
  Friend WithEvents tbxApplicationPath As TextBox
  Friend WithEvents btnBrowse As Button
End Class
