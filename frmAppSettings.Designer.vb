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
    Me.btnCancle = New System.Windows.Forms.Button()
    Me.btnSave = New System.Windows.Forms.Button()
    Me.btnReset = New System.Windows.Forms.Button()
    Me.btnHelp = New System.Windows.Forms.Button()
    Me.TabControl1 = New System.Windows.Forms.TabControl()
    Me.tpSystemPaths = New System.Windows.Forms.TabPage()
    Me.Label4 = New System.Windows.Forms.Label()
    Me.Label3 = New System.Windows.Forms.Label()
    Me.Label2 = New System.Windows.Forms.Label()
    Me.btnBrowse = New System.Windows.Forms.Button()
    Me.Label1 = New System.Windows.Forms.Label()
    Me.tbxRVMPath = New System.Windows.Forms.TextBox()
    Me.tbxRVMLogbookPath = New System.Windows.Forms.TextBox()
    Me.tbxRVMDataPath = New System.Windows.Forms.TextBox()
    Me.tbxAppPath = New System.Windows.Forms.TextBox()
    Me.TabPage2 = New System.Windows.Forms.TabPage()
    Me.TabControl1.SuspendLayout()
    Me.tpSystemPaths.SuspendLayout()
    Me.SuspendLayout()
    '
    'btnCancle
    '
    Me.btnCancle.Image = CType(resources.GetObject("btnCancle.Image"), System.Drawing.Image)
    Me.btnCancle.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
    Me.btnCancle.Location = New System.Drawing.Point(626, 340)
    Me.btnCancle.Name = "btnCancle"
    Me.btnCancle.Size = New System.Drawing.Size(75, 23)
    Me.btnCancle.TabIndex = 0
    Me.btnCancle.Text = "     &Cancel"
    Me.btnCancle.UseVisualStyleBackColor = True
    '
    'btnSave
    '
    Me.btnSave.Image = CType(resources.GetObject("btnSave.Image"), System.Drawing.Image)
    Me.btnSave.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
    Me.btnSave.Location = New System.Drawing.Point(439, 340)
    Me.btnSave.Name = "btnSave"
    Me.btnSave.Size = New System.Drawing.Size(75, 23)
    Me.btnSave.TabIndex = 1
    Me.btnSave.Text = "  &Save"
    Me.btnSave.UseVisualStyleBackColor = True
    '
    'btnReset
    '
    Me.btnReset.Image = CType(resources.GetObject("btnReset.Image"), System.Drawing.Image)
    Me.btnReset.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
    Me.btnReset.Location = New System.Drawing.Point(532, 340)
    Me.btnReset.Name = "btnReset"
    Me.btnReset.Size = New System.Drawing.Size(75, 23)
    Me.btnReset.TabIndex = 2
    Me.btnReset.Text = "  &Reset"
    Me.btnReset.UseVisualStyleBackColor = True
    '
    'btnHelp
    '
    Me.btnHelp.Image = CType(resources.GetObject("btnHelp.Image"), System.Drawing.Image)
    Me.btnHelp.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
    Me.btnHelp.Location = New System.Drawing.Point(16, 340)
    Me.btnHelp.Name = "btnHelp"
    Me.btnHelp.Size = New System.Drawing.Size(75, 23)
    Me.btnHelp.TabIndex = 3
    Me.btnHelp.Text = "&Help"
    Me.btnHelp.UseVisualStyleBackColor = True
    '
    'TabControl1
    '
    Me.TabControl1.Controls.Add(Me.tpSystemPaths)
    Me.TabControl1.Controls.Add(Me.TabPage2)
    Me.TabControl1.Location = New System.Drawing.Point(12, 12)
    Me.TabControl1.Name = "TabControl1"
    Me.TabControl1.SelectedIndex = 0
    Me.TabControl1.Size = New System.Drawing.Size(693, 307)
    Me.TabControl1.TabIndex = 4
    '
    'tpSystemPaths
    '
    Me.tpSystemPaths.Controls.Add(Me.Label4)
    Me.tpSystemPaths.Controls.Add(Me.Label3)
    Me.tpSystemPaths.Controls.Add(Me.Label2)
    Me.tpSystemPaths.Controls.Add(Me.btnBrowse)
    Me.tpSystemPaths.Controls.Add(Me.Label1)
    Me.tpSystemPaths.Controls.Add(Me.tbxRVMPath)
    Me.tpSystemPaths.Controls.Add(Me.tbxRVMLogbookPath)
    Me.tpSystemPaths.Controls.Add(Me.tbxRVMDataPath)
    Me.tpSystemPaths.Controls.Add(Me.tbxAppPath)
    Me.tpSystemPaths.Location = New System.Drawing.Point(4, 22)
    Me.tpSystemPaths.Name = "tpSystemPaths"
    Me.tpSystemPaths.Padding = New System.Windows.Forms.Padding(3)
    Me.tpSystemPaths.Size = New System.Drawing.Size(685, 281)
    Me.tpSystemPaths.TabIndex = 0
    Me.tpSystemPaths.Text = "System Paths"
    Me.tpSystemPaths.UseVisualStyleBackColor = True
    '
    'Label4
    '
    Me.Label4.AutoSize = True
    Me.Label4.Location = New System.Drawing.Point(23, 127)
    Me.Label4.Name = "Label4"
    Me.Label4.Size = New System.Drawing.Size(110, 13)
    Me.Label4.TabIndex = 21
    Me.Label4.Text = "RVM Logbook Path : "
    '
    'Label3
    '
    Me.Label3.AutoSize = True
    Me.Label3.Location = New System.Drawing.Point(23, 92)
    Me.Label3.Name = "Label3"
    Me.Label3.Size = New System.Drawing.Size(91, 13)
    Me.Label3.TabIndex = 20
    Me.Label3.Text = "RVM Data Path : "
    '
    'Label2
    '
    Me.Label2.AutoSize = True
    Me.Label2.Location = New System.Drawing.Point(23, 56)
    Me.Label2.Name = "Label2"
    Me.Label2.Size = New System.Drawing.Size(65, 13)
    Me.Label2.TabIndex = 19
    Me.Label2.Text = "RVM Path : "
    '
    'btnBrowse
    '
    Me.btnBrowse.Image = CType(resources.GetObject("btnBrowse.Image"), System.Drawing.Image)
    Me.btnBrowse.Location = New System.Drawing.Point(638, 47)
    Me.btnBrowse.Name = "btnBrowse"
    Me.btnBrowse.Size = New System.Drawing.Size(30, 30)
    Me.btnBrowse.TabIndex = 18
    Me.btnBrowse.UseVisualStyleBackColor = True
    '
    'Label1
    '
    Me.Label1.AutoSize = True
    Me.Label1.Location = New System.Drawing.Point(23, 21)
    Me.Label1.Name = "Label1"
    Me.Label1.Size = New System.Drawing.Size(93, 13)
    Me.Label1.TabIndex = 17
    Me.Label1.Text = "Application Path : "
    '
    'tbxRVMPath
    '
    Me.tbxRVMPath.Location = New System.Drawing.Point(139, 52)
    Me.tbxRVMPath.Name = "tbxRVMPath"
    Me.tbxRVMPath.Size = New System.Drawing.Size(477, 20)
    Me.tbxRVMPath.TabIndex = 16
    '
    'tbxRVMLogbookPath
    '
    Me.tbxRVMLogbookPath.BackColor = System.Drawing.Color.LemonChiffon
    Me.tbxRVMLogbookPath.Location = New System.Drawing.Point(139, 123)
    Me.tbxRVMLogbookPath.Name = "tbxRVMLogbookPath"
    Me.tbxRVMLogbookPath.Size = New System.Drawing.Size(477, 20)
    Me.tbxRVMLogbookPath.TabIndex = 15
    '
    'tbxRVMDataPath
    '
    Me.tbxRVMDataPath.BackColor = System.Drawing.Color.LemonChiffon
    Me.tbxRVMDataPath.Location = New System.Drawing.Point(139, 88)
    Me.tbxRVMDataPath.Name = "tbxRVMDataPath"
    Me.tbxRVMDataPath.Size = New System.Drawing.Size(477, 20)
    Me.tbxRVMDataPath.TabIndex = 14
    '
    'tbxAppPath
    '
    Me.tbxAppPath.BackColor = System.Drawing.Color.LemonChiffon
    Me.tbxAppPath.Location = New System.Drawing.Point(139, 17)
    Me.tbxAppPath.Name = "tbxAppPath"
    Me.tbxAppPath.Size = New System.Drawing.Size(477, 20)
    Me.tbxAppPath.TabIndex = 13
    '
    'TabPage2
    '
    Me.TabPage2.Location = New System.Drawing.Point(4, 22)
    Me.TabPage2.Name = "TabPage2"
    Me.TabPage2.Padding = New System.Windows.Forms.Padding(3)
    Me.TabPage2.Size = New System.Drawing.Size(685, 281)
    Me.TabPage2.TabIndex = 1
    Me.TabPage2.Text = "TabPage2"
    Me.TabPage2.UseVisualStyleBackColor = True
    '
    'frmAppSettings
    '
    Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
    Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
    Me.ClientSize = New System.Drawing.Size(719, 375)
    Me.ControlBox = False
    Me.Controls.Add(Me.TabControl1)
    Me.Controls.Add(Me.btnHelp)
    Me.Controls.Add(Me.btnReset)
    Me.Controls.Add(Me.btnSave)
    Me.Controls.Add(Me.btnCancle)
    Me.Name = "frmAppSettings"
    Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
    Me.Text = "frmAppSettings"
    Me.TabControl1.ResumeLayout(False)
    Me.tpSystemPaths.ResumeLayout(False)
    Me.tpSystemPaths.PerformLayout()
    Me.ResumeLayout(False)

  End Sub

  Friend WithEvents btnCancle As Button
  Friend WithEvents btnSave As Button
  Friend WithEvents btnReset As Button
  Friend WithEvents btnHelp As Button
  Friend WithEvents TabControl1 As TabControl
  Friend WithEvents tpSystemPaths As TabPage
  Friend WithEvents TabPage2 As TabPage
  Friend WithEvents Label4 As Label
  Friend WithEvents Label3 As Label
  Friend WithEvents Label2 As Label
  Friend WithEvents btnBrowse As Button
  Friend WithEvents Label1 As Label
  Friend WithEvents tbxRVMPath As TextBox
  Friend WithEvents tbxRVMLogbookPath As TextBox
  Friend WithEvents tbxRVMDataPath As TextBox
  Friend WithEvents tbxAppPath As TextBox
End Class
