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
    Me.MenuStrip1 = New System.Windows.Forms.MenuStrip()
    Me.FileToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
    Me.mnuFileExit = New System.Windows.Forms.ToolStripMenuItem()
    Me.mnuSettings = New System.Windows.Forms.ToolStripMenuItem()
    Me.ToolStrip1 = New System.Windows.Forms.ToolStrip()
    Me.StatusStrip1 = New System.Windows.Forms.StatusStrip()
    Me.mnuConfigure = New System.Windows.Forms.ToolStripMenuItem()
    Me.mnuConfigureRVTypesTable = New System.Windows.Forms.ToolStripMenuItem()
    Me.MenuStrip1.SuspendLayout()
    Me.SuspendLayout()
    '
    'MenuStrip1
    '
    Me.MenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.FileToolStripMenuItem, Me.mnuSettings, Me.mnuConfigure})
    Me.MenuStrip1.Location = New System.Drawing.Point(0, 0)
    Me.MenuStrip1.Name = "MenuStrip1"
    Me.MenuStrip1.Size = New System.Drawing.Size(623, 24)
    Me.MenuStrip1.TabIndex = 0
    Me.MenuStrip1.Text = "mnuMain"
    '
    'FileToolStripMenuItem
    '
    Me.FileToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.mnuFileExit})
    Me.FileToolStripMenuItem.Name = "FileToolStripMenuItem"
    Me.FileToolStripMenuItem.Size = New System.Drawing.Size(37, 20)
    Me.FileToolStripMenuItem.Text = "&File"
    '
    'mnuFileExit
    '
    Me.mnuFileExit.Name = "mnuFileExit"
    Me.mnuFileExit.Size = New System.Drawing.Size(92, 22)
    Me.mnuFileExit.Text = "E&xit"
    '
    'mnuSettings
    '
    Me.mnuSettings.Name = "mnuSettings"
    Me.mnuSettings.Size = New System.Drawing.Size(61, 20)
    Me.mnuSettings.Text = "&Settings"
    '
    'ToolStrip1
    '
    Me.ToolStrip1.Location = New System.Drawing.Point(0, 24)
    Me.ToolStrip1.Name = "ToolStrip1"
    Me.ToolStrip1.Size = New System.Drawing.Size(623, 25)
    Me.ToolStrip1.TabIndex = 1
    Me.ToolStrip1.Text = "ToolStrip1"
    '
    'StatusStrip1
    '
    Me.StatusStrip1.Location = New System.Drawing.Point(0, 334)
    Me.StatusStrip1.Name = "StatusStrip1"
    Me.StatusStrip1.Size = New System.Drawing.Size(623, 22)
    Me.StatusStrip1.TabIndex = 2
    Me.StatusStrip1.Text = "StatusStrip1"
    '
    'mnuConfigure
    '
    Me.mnuConfigure.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.mnuConfigureRVTypesTable})
    Me.mnuConfigure.Name = "mnuConfigure"
    Me.mnuConfigure.Size = New System.Drawing.Size(72, 20)
    Me.mnuConfigure.Text = "&Configure"
    '
    'mnuConfigureRVTypesTable
    '
    Me.mnuConfigureRVTypesTable.Name = "mnuConfigureRVTypesTable"
    Me.mnuConfigureRVTypesTable.Size = New System.Drawing.Size(152, 22)
    Me.mnuConfigureRVTypesTable.Text = "RV Types"
    '
    'frmMain
    '
    Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
    Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
    Me.ClientSize = New System.Drawing.Size(623, 356)
    Me.Controls.Add(Me.StatusStrip1)
    Me.Controls.Add(Me.ToolStrip1)
    Me.Controls.Add(Me.MenuStrip1)
    Me.MainMenuStrip = Me.MenuStrip1
    Me.Name = "frmMain"
    Me.Text = "Form1"
    Me.MenuStrip1.ResumeLayout(False)
    Me.MenuStrip1.PerformLayout()
    Me.ResumeLayout(False)
    Me.PerformLayout()

  End Sub

  Friend WithEvents MenuStrip1 As MenuStrip
  Friend WithEvents ToolStrip1 As ToolStrip
  Friend WithEvents StatusStrip1 As StatusStrip
  Friend WithEvents FileToolStripMenuItem As ToolStripMenuItem
  Friend WithEvents mnuFileExit As ToolStripMenuItem
  Friend WithEvents mnuSettings As ToolStripMenuItem
  Friend WithEvents mnuConfigure As ToolStripMenuItem
  Friend WithEvents mnuConfigureRVTypesTable As ToolStripMenuItem
End Class
