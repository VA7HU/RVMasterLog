<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmMain
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
    Me.mnuMain = New System.Windows.Forms.MenuStrip()
    Me.mnuFile = New System.Windows.Forms.ToolStripMenuItem()
    Me.mnuFileNew = New System.Windows.Forms.ToolStripMenuItem()
    Me.ToolStripSeparator1 = New System.Windows.Forms.ToolStripSeparator()
    Me.mnuFileExit = New System.Windows.Forms.ToolStripMenuItem()
    Me.mnuSettings = New System.Windows.Forms.ToolStripMenuItem()
    Me.ConfigurtionToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
    Me.DatabaseToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
    Me.mnuConfigurationDatabaseRVTypes = New System.Windows.Forms.ToolStripMenuItem()
    Me.ToolStrip1 = New System.Windows.Forms.ToolStrip()
    Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
    Me.mnuMain.SuspendLayout()
    Me.SuspendLayout()
    '
    'mnuMain
    '
    Me.mnuMain.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
    Me.mnuMain.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.mnuFile, Me.mnuSettings, Me.ConfigurtionToolStripMenuItem})
    Me.mnuMain.Location = New System.Drawing.Point(0, 0)
    Me.mnuMain.Name = "mnuMain"
    Me.mnuMain.Padding = New System.Windows.Forms.Padding(8, 2, 0, 2)
    Me.mnuMain.Size = New System.Drawing.Size(697, 29)
    Me.mnuMain.TabIndex = 0
    Me.mnuMain.Text = "MenuStrip1"
    '
    'mnuFile
    '
    Me.mnuFile.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.mnuFileNew, Me.ToolStripSeparator1, Me.mnuFileExit})
    Me.mnuFile.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
    Me.mnuFile.Name = "mnuFile"
    Me.mnuFile.Size = New System.Drawing.Size(46, 25)
    Me.mnuFile.Text = "&File"
    '
    'mnuFileNew
    '
    Me.mnuFileNew.Name = "mnuFileNew"
    Me.mnuFileNew.Size = New System.Drawing.Size(112, 26)
    Me.mnuFileNew.Text = "&New"
    '
    'ToolStripSeparator1
    '
    Me.ToolStripSeparator1.Name = "ToolStripSeparator1"
    Me.ToolStripSeparator1.Size = New System.Drawing.Size(109, 6)
    '
    'mnuFileExit
    '
    Me.mnuFileExit.Name = "mnuFileExit"
    Me.mnuFileExit.Size = New System.Drawing.Size(112, 26)
    Me.mnuFileExit.Text = "E&xit"
    '
    'mnuSettings
    '
    Me.mnuSettings.Name = "mnuSettings"
    Me.mnuSettings.Size = New System.Drawing.Size(66, 25)
    Me.mnuSettings.Text = "&Settings"
    '
    'ConfigurtionToolStripMenuItem
    '
    Me.ConfigurtionToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.DatabaseToolStripMenuItem})
    Me.ConfigurtionToolStripMenuItem.Name = "ConfigurtionToolStripMenuItem"
    Me.ConfigurtionToolStripMenuItem.Size = New System.Drawing.Size(92, 25)
    Me.ConfigurtionToolStripMenuItem.Text = "Configurtion"
    '
    'DatabaseToolStripMenuItem
    '
    Me.DatabaseToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.mnuConfigurationDatabaseRVTypes})
    Me.DatabaseToolStripMenuItem.Name = "DatabaseToolStripMenuItem"
    Me.DatabaseToolStripMenuItem.Size = New System.Drawing.Size(152, 22)
    Me.DatabaseToolStripMenuItem.Text = "Database"
    '
    'mnuConfigurationDatabaseRVTypes
    '
    Me.mnuConfigurationDatabaseRVTypes.Name = "mnuConfigurationDatabaseRVTypes"
    Me.mnuConfigurationDatabaseRVTypes.Size = New System.Drawing.Size(152, 22)
    Me.mnuConfigurationDatabaseRVTypes.Text = "RVTypes"
    '
    'ToolStrip1
    '
    Me.ToolStrip1.Location = New System.Drawing.Point(0, 29)
    Me.ToolStrip1.Name = "ToolStrip1"
    Me.ToolStrip1.Padding = New System.Windows.Forms.Padding(0, 0, 2, 0)
    Me.ToolStrip1.Size = New System.Drawing.Size(697, 25)
    Me.ToolStrip1.TabIndex = 1
    Me.ToolStrip1.Text = "ToolStrip1"
    '
    'StatusStrip1
    '
    Me.StatusStrip1.Location = New System.Drawing.Point(0, 337)
    Me.StatusStrip1.Name = "StatusStrip1"
    Me.StatusStrip1.Padding = New System.Windows.Forms.Padding(2, 0, 19, 0)
    Me.StatusStrip1.Size = New System.Drawing.Size(697, 22)
    Me.StatusStrip1.TabIndex = 2
    Me.StatusStrip1.Text = "StatusStrip1"
    '
    'frmMain
    '
    Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 16.0!)
    Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
    Me.ClientSize = New System.Drawing.Size(697, 359)
    Me.Controls.Add(Me.StatusStrip1)
    Me.Controls.Add(Me.ToolStrip1)
    Me.Controls.Add(Me.mnuMain)
    Me.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
    Me.MainMenuStrip = Me.mnuMain
    Me.Margin = New System.Windows.Forms.Padding(4)
    Me.MaximizeBox = False
    Me.Name = "frmMain"
    Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
    Me.Text = "Form1"
    Me.mnuMain.ResumeLayout(False)
    Me.mnuMain.PerformLayout()
    Me.ResumeLayout(False)
    Me.PerformLayout()

  End Sub

  Friend WithEvents mnuMain As MenuStrip
  Friend WithEvents ToolStrip1 As ToolStrip
  Friend WithEvents StatusStrip1 As StatusStrip
  Friend WithEvents mnuFile As ToolStripMenuItem
  Friend WithEvents mnuFileExit As ToolStripMenuItem
  Friend WithEvents mnuSettings As ToolStripMenuItem
  Friend WithEvents mnuFileNew As ToolStripMenuItem
  Friend WithEvents ToolStripSeparator1 As ToolStripSeparator
    Friend WithEvents ConfigurtionToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents DatabaseToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents mnuConfigurationDatabaseRVTypes As ToolStripMenuItem
End Class
