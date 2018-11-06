Add-Type -AssemblyName System.Windows.Forms

#region Form
$form = New-Object System.Windows.Forms.Form
$form.Size = '550,350'
$form.Text = "Test"
$form.StartPosition = 'CenterScreen'
#endregion Form

#region ToolStrip
$mainToolStrip = New-Object System.Windows.Forms.ToolStrip
$form.Controls.Add($mainToolStrip);

$Test1 = New-Object System.Windows.Forms.ToolStripbutton
$mainToolStrip.Items.Add($Test1);
$Test1.Text = 'Test 1'

$Test2 = New-Object System.Windows.Forms.ToolStripbutton
$mainToolStrip.Items.Add($Test2)
$Test2.Text = 'Test 2'

$Clear = New-Object System.Windows.Forms.ToolStripbutton
$mainToolStrip.Items.Add($clear);
$clear.Text = 'Clear'
#endregion ToolStrip

#region Labels
$textLabel1 = New-Object System.Windows.Forms.Label
$textLabel1.Location = '25,100'
$textLabel1.AutoSize = $true
$textLabel1.Text = 'This is a Test'

$textLabel2 = New-Object System.Windows.Forms.Label
$textLabel2.Location = '25,100'
$textLabel2.AutoSize = $true
$textLabel2.Text = 'This is a Test 2'
#endregion Labels

#region Event Code
$Test1.Add_Click({
	$form.Controls.Add($textLabel1);
	$form.Controls.Remove($textLabel2);
})

$Test2.Add_Click({
	$form.Controls.Add($textLabel2)
	$form.Controls.Remove($textLabel1)
})

$Clear.Add_Click({
	$form.Controls.Remove($textLabel1);
	$form.Controls.Remove($textLabel2);
})
#endregion Event Code

$form.ShowDialog()