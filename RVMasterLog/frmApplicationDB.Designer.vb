<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmApplicationDB
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
    Me.components = New System.ComponentModel.Container()
    Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmApplicationDB))
    Me.btnOK = New System.Windows.Forms.Button()
    Me.btnCancel = New System.Windows.Forms.Button()
    Me.Panel1 = New System.Windows.Forms.Panel()
    Me.BindingNavigator1 = New System.Windows.Forms.BindingNavigator(Me.components)
    Me.BindingNavigatorMoveFirstItem = New System.Windows.Forms.ToolStripButton()
    Me.BindingNavigatorMovePreviousItem = New System.Windows.Forms.ToolStripButton()
    Me.BindingNavigatorSeparator = New System.Windows.Forms.ToolStripSeparator()
    Me.BindingNavigatorPositionItem = New System.Windows.Forms.ToolStripTextBox()
    Me.BindingNavigatorCountItem = New System.Windows.Forms.ToolStripLabel()
    Me.BindingNavigatorSeparator1 = New System.Windows.Forms.ToolStripSeparator()
    Me.BindingNavigatorMoveNextItem = New System.Windows.Forms.ToolStripButton()
    Me.BindingNavigatorMoveLastItem = New System.Windows.Forms.ToolStripButton()
    Me.BindingNavigatorSeparator2 = New System.Windows.Forms.ToolStripSeparator()
    Me.BindingNavigatorAddNewItem = New System.Windows.Forms.ToolStripButton()
    Me.BindingNavigatorDeleteItem = New System.Windows.Forms.ToolStripButton()
    Me.DataGridView1 = New System.Windows.Forms.DataGridView()
    Me.Panel1.SuspendLayout()
    CType(Me.BindingNavigator1, System.ComponentModel.ISupportInitialize).BeginInit()
    Me.BindingNavigator1.SuspendLayout()
    CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).BeginInit()
    Me.SuspendLayout()
    '
    'btnOK
    '
    Me.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK
    Me.btnOK.Image = CType(resources.GetObject("btnOK.Image"), System.Drawing.Image)
    Me.btnOK.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
    Me.btnOK.Location = New System.Drawing.Point(278, 350)
    Me.btnOK.Name = "btnOK"
    Me.btnOK.Size = New System.Drawing.Size(75, 23)
    Me.btnOK.TabIndex = 0
    Me.btnOK.Text = "&OK"
    Me.btnOK.UseVisualStyleBackColor = True
    '
    'btnCancel
    '
    Me.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel
    Me.btnCancel.Image = CType(resources.GetObject("btnCancel.Image"), System.Drawing.Image)
    Me.btnCancel.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft
    Me.btnCancel.Location = New System.Drawing.Point(400, 350)
    Me.btnCancel.Name = "btnCancel"
    Me.btnCancel.Size = New System.Drawing.Size(75, 23)
    Me.btnCancel.TabIndex = 1
    Me.btnCancel.Text = "&Cancel  "
    Me.btnCancel.TextAlign = System.Drawing.ContentAlignment.MiddleRight
    Me.btnCancel.UseVisualStyleBackColor = True
    '
    'Panel1
    '
    Me.Panel1.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
    Me.Panel1.Controls.Add(Me.DataGridView1)
    Me.Panel1.Controls.Add(Me.BindingNavigator1)
    Me.Panel1.Location = New System.Drawing.Point(56, 27)
    Me.Panel1.Name = "Panel1"
    Me.Panel1.Size = New System.Drawing.Size(419, 280)
    Me.Panel1.TabIndex = 2
    '
    'BindingNavigator1
    '
    Me.BindingNavigator1.AddNewItem = Me.BindingNavigatorAddNewItem
    Me.BindingNavigator1.CountItem = Me.BindingNavigatorCountItem
    Me.BindingNavigator1.DeleteItem = Me.BindingNavigatorDeleteItem
    Me.BindingNavigator1.Dock = System.Windows.Forms.DockStyle.Bottom
    Me.BindingNavigator1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.BindingNavigatorMoveFirstItem, Me.BindingNavigatorMovePreviousItem, Me.BindingNavigatorSeparator, Me.BindingNavigatorPositionItem, Me.BindingNavigatorCountItem, Me.BindingNavigatorSeparator1, Me.BindingNavigatorMoveNextItem, Me.BindingNavigatorMoveLastItem, Me.BindingNavigatorSeparator2, Me.BindingNavigatorAddNewItem, Me.BindingNavigatorDeleteItem})
    Me.BindingNavigator1.Location = New System.Drawing.Point(0, 255)
    Me.BindingNavigator1.MoveFirstItem = Me.BindingNavigatorMoveFirstItem
    Me.BindingNavigator1.MoveLastItem = Me.BindingNavigatorMoveLastItem
    Me.BindingNavigator1.MoveNextItem = Me.BindingNavigatorMoveNextItem
    Me.BindingNavigator1.MovePreviousItem = Me.BindingNavigatorMovePreviousItem
    Me.BindingNavigator1.Name = "BindingNavigator1"
    Me.BindingNavigator1.PositionItem = Me.BindingNavigatorPositionItem
    Me.BindingNavigator1.Size = New System.Drawing.Size(419, 25)
    Me.BindingNavigator1.TabIndex = 0
    Me.BindingNavigator1.Text = "BindingNavigator1"
    '
    'BindingNavigatorMoveFirstItem
    '
    Me.BindingNavigatorMoveFirstItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
    Me.BindingNavigatorMoveFirstItem.Image = CType(resources.GetObject("BindingNavigatorMoveFirstItem.Image"), System.Drawing.Image)
    Me.BindingNavigatorMoveFirstItem.Name = "BindingNavigatorMoveFirstItem"
    Me.BindingNavigatorMoveFirstItem.RightToLeftAutoMirrorImage = True
    Me.BindingNavigatorMoveFirstItem.Size = New System.Drawing.Size(23, 22)
    Me.BindingNavigatorMoveFirstItem.Text = "Move first"
    '
    'BindingNavigatorMovePreviousItem
    '
    Me.BindingNavigatorMovePreviousItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
    Me.BindingNavigatorMovePreviousItem.Image = CType(resources.GetObject("BindingNavigatorMovePreviousItem.Image"), System.Drawing.Image)
    Me.BindingNavigatorMovePreviousItem.Name = "BindingNavigatorMovePreviousItem"
    Me.BindingNavigatorMovePreviousItem.RightToLeftAutoMirrorImage = True
    Me.BindingNavigatorMovePreviousItem.Size = New System.Drawing.Size(23, 22)
    Me.BindingNavigatorMovePreviousItem.Text = "Move previous"
    '
    'BindingNavigatorSeparator
    '
    Me.BindingNavigatorSeparator.Name = "BindingNavigatorSeparator"
    Me.BindingNavigatorSeparator.Size = New System.Drawing.Size(6, 25)
    '
    'BindingNavigatorPositionItem
    '
    Me.BindingNavigatorPositionItem.AccessibleName = "Position"
    Me.BindingNavigatorPositionItem.AutoSize = False
    Me.BindingNavigatorPositionItem.Name = "BindingNavigatorPositionItem"
    Me.BindingNavigatorPositionItem.Size = New System.Drawing.Size(50, 23)
    Me.BindingNavigatorPositionItem.Text = "0"
    Me.BindingNavigatorPositionItem.ToolTipText = "Current position"
    '
    'BindingNavigatorCountItem
    '
    Me.BindingNavigatorCountItem.Name = "BindingNavigatorCountItem"
    Me.BindingNavigatorCountItem.Size = New System.Drawing.Size(35, 22)
    Me.BindingNavigatorCountItem.Text = "of {0}"
    Me.BindingNavigatorCountItem.ToolTipText = "Total number of items"
    '
    'BindingNavigatorSeparator1
    '
    Me.BindingNavigatorSeparator1.Name = "BindingNavigatorSeparator"
    Me.BindingNavigatorSeparator1.Size = New System.Drawing.Size(6, 25)
    '
    'BindingNavigatorMoveNextItem
    '
    Me.BindingNavigatorMoveNextItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
    Me.BindingNavigatorMoveNextItem.Image = CType(resources.GetObject("BindingNavigatorMoveNextItem.Image"), System.Drawing.Image)
    Me.BindingNavigatorMoveNextItem.Name = "BindingNavigatorMoveNextItem"
    Me.BindingNavigatorMoveNextItem.RightToLeftAutoMirrorImage = True
    Me.BindingNavigatorMoveNextItem.Size = New System.Drawing.Size(23, 22)
    Me.BindingNavigatorMoveNextItem.Text = "Move next"
    '
    'BindingNavigatorMoveLastItem
    '
    Me.BindingNavigatorMoveLastItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
    Me.BindingNavigatorMoveLastItem.Image = CType(resources.GetObject("BindingNavigatorMoveLastItem.Image"), System.Drawing.Image)
    Me.BindingNavigatorMoveLastItem.Name = "BindingNavigatorMoveLastItem"
    Me.BindingNavigatorMoveLastItem.RightToLeftAutoMirrorImage = True
    Me.BindingNavigatorMoveLastItem.Size = New System.Drawing.Size(23, 22)
    Me.BindingNavigatorMoveLastItem.Text = "Move last"
    '
    'BindingNavigatorSeparator2
    '
    Me.BindingNavigatorSeparator2.Name = "BindingNavigatorSeparator"
    Me.BindingNavigatorSeparator2.Size = New System.Drawing.Size(6, 25)
    '
    'BindingNavigatorAddNewItem
    '
    Me.BindingNavigatorAddNewItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
    Me.BindingNavigatorAddNewItem.Image = CType(resources.GetObject("BindingNavigatorAddNewItem.Image"), System.Drawing.Image)
    Me.BindingNavigatorAddNewItem.Name = "BindingNavigatorAddNewItem"
    Me.BindingNavigatorAddNewItem.RightToLeftAutoMirrorImage = True
    Me.BindingNavigatorAddNewItem.Size = New System.Drawing.Size(23, 22)
    Me.BindingNavigatorAddNewItem.Text = "Add new"
    '
    'BindingNavigatorDeleteItem
    '
    Me.BindingNavigatorDeleteItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
    Me.BindingNavigatorDeleteItem.Image = CType(resources.GetObject("BindingNavigatorDeleteItem.Image"), System.Drawing.Image)
    Me.BindingNavigatorDeleteItem.Name = "BindingNavigatorDeleteItem"
    Me.BindingNavigatorDeleteItem.RightToLeftAutoMirrorImage = True
    Me.BindingNavigatorDeleteItem.Size = New System.Drawing.Size(23, 22)
    Me.BindingNavigatorDeleteItem.Text = "Delete"
    '
    'DataGridView1
    '
    Me.DataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
    Me.DataGridView1.Location = New System.Drawing.Point(17, 16)
    Me.DataGridView1.Name = "DataGridView1"
    Me.DataGridView1.Size = New System.Drawing.Size(240, 222)
    Me.DataGridView1.TabIndex = 1
    '
    'frmApplicationDB
    '
    Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
    Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
    Me.ClientSize = New System.Drawing.Size(543, 426)
    Me.Controls.Add(Me.Panel1)
    Me.Controls.Add(Me.btnCancel)
    Me.Controls.Add(Me.btnOK)
    Me.Name = "frmApplicationDB"
    Me.Text = "frmApplicationDB"
    Me.Panel1.ResumeLayout(False)
    Me.Panel1.PerformLayout()
    CType(Me.BindingNavigator1, System.ComponentModel.ISupportInitialize).EndInit()
    Me.BindingNavigator1.ResumeLayout(False)
    Me.BindingNavigator1.PerformLayout()
    CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).EndInit()
    Me.ResumeLayout(False)

  End Sub

  Friend WithEvents btnOK As Button
  Friend WithEvents btnCancel As Button
  Friend WithEvents Panel1 As Panel
  Friend WithEvents BindingNavigator1 As BindingNavigator
  Friend WithEvents BindingNavigatorAddNewItem As ToolStripButton
  Friend WithEvents BindingNavigatorCountItem As ToolStripLabel
  Friend WithEvents BindingNavigatorDeleteItem As ToolStripButton
  Friend WithEvents BindingNavigatorMoveFirstItem As ToolStripButton
  Friend WithEvents BindingNavigatorMovePreviousItem As ToolStripButton
  Friend WithEvents BindingNavigatorSeparator As ToolStripSeparator
  Friend WithEvents BindingNavigatorPositionItem As ToolStripTextBox
  Friend WithEvents BindingNavigatorSeparator1 As ToolStripSeparator
  Friend WithEvents BindingNavigatorMoveNextItem As ToolStripButton
  Friend WithEvents BindingNavigatorMoveLastItem As ToolStripButton
  Friend WithEvents BindingNavigatorSeparator2 As ToolStripSeparator
  Friend WithEvents DataGridView1 As DataGridView
End Class
