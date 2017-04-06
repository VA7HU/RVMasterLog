<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class frmRVTypesDB
  Inherits System.Windows.Forms.Form

  'Form overrides dispose to clean up the component list.
  <System.Diagnostics.DebuggerNonUserCode()>
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
  <System.Diagnostics.DebuggerStepThrough()>
  Private Sub InitializeComponent()
    Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmRVTypesDB))
    Me.btnClose = New System.Windows.Forms.Button()
    Me.btnCancel = New System.Windows.Forms.Button()
    Me.SuspendLayout()
    '
    'btnClose
    '
    Me.btnClose.DialogResult = System.Windows.Forms.DialogResult.OK
    Me.btnClose.Image = CType(resources.GetObject("btnClose.Image"), System.Drawing.Image)
    Me.btnClose.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
    Me.btnClose.Location = New System.Drawing.Point(153, 301)
    Me.btnClose.Name = "btnClose"
    Me.btnClose.Size = New System.Drawing.Size(75, 23)
    Me.btnClose.TabIndex = 0
    Me.btnClose.Text = "    &OK"
    Me.btnClose.UseVisualStyleBackColor = True
    '
    'btnCancel
    '
    Me.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel
    Me.btnCancel.Image = CType(resources.GetObject("btnCancel.Image"), System.Drawing.Image)
    Me.btnCancel.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
    Me.btnCancel.Location = New System.Drawing.Point(252, 301)
    Me.btnCancel.Name = "btnCancel"
    Me.btnCancel.Size = New System.Drawing.Size(75, 23)
    Me.btnCancel.TabIndex = 1
    Me.btnCancel.Text = "    &Cancel"
    Me.btnCancel.UseVisualStyleBackColor = True
    '
    'frmRVTypesDB
    '
    Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
    Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
    Me.ClientSize = New System.Drawing.Size(353, 384)
    Me.Controls.Add(Me.btnCancel)
    Me.Controls.Add(Me.btnClose)
    Me.Name = "frmRVTypesDB"
    Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
    Me.Text = "frmRVTypesDB"
    Me.ResumeLayout(False)

  End Sub

  Friend WithEvents btnClose As Button
  Friend WithEvents btnCancel As Button
End Class
