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
    Me.SuspendLayout()
    '
    'btnCancle
    '
    Me.btnCancle.Image = CType(resources.GetObject("btnCancle.Image"), System.Drawing.Image)
    Me.btnCancle.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
    Me.btnCancle.Location = New System.Drawing.Point(486, 317)
    Me.btnCancle.Name = "btnCancle"
    Me.btnCancle.Size = New System.Drawing.Size(75, 23)
    Me.btnCancle.TabIndex = 0
    Me.btnCancle.Text = "     &Cancel"
    Me.btnCancle.UseVisualStyleBackColor = True
    '
    'frmAppSettings
    '
    Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
    Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
    Me.ClientSize = New System.Drawing.Size(607, 375)
    Me.Controls.Add(Me.btnCancle)
    Me.Name = "frmAppSettings"
    Me.Text = "frmAppSettings"
    Me.ResumeLayout(False)

  End Sub

  Friend WithEvents btnCancle As Button
End Class
