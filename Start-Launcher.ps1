Add-Type -AssemblyName System.Windows.Forms
# Create the form
$form = New-Object System.Windows.Forms.Form
$form.Text = 'Etwahl Launcher'
$form.Size = New-Object System.Drawing.Size(300,600)
$form.StartPosition = 'CenterScreen'
$form.BackColor = 'Indigo'
$form.Font = New-Object System.Drawing.Font('Consolas', 12)

# Créer le contrôle TabControl
$tabControl = New-Object System.Windows.Forms.TabControl
$tabControl.Dock = [System.Windows.Forms.DockStyle]::Fill
$tabControl.ItemSize = New-Object System.Drawing.Size(100, 30)

# Créer le premier onglet
$tabPageAI = New-Object System.Windows.Forms.TabPage
$tabPageAI.Text = 'AI'
$tabPageAI.BackColor = 'Indigo'

# Create the button
$buttonAI = New-Object System.Windows.Forms.Button
$buttonAI.Location = New-Object System.Drawing.Point(10,10)
$buttonAI.Size = New-Object System.Drawing.Size(100,50)
$buttonAI.BackColor = 'DeepSkyBlue'
$buttonAI.Text = 'Test'
$buttonAI.Font = New-Object System.Drawing.Font('Consolas', 12, [System.Drawing.FontStyle]::Bold)

# Add an event that triggers when the button is clicked
$buttonAI.Add_Click({
    if ($buttonAI.ForeColor -ne 'Red') {
        $buttonAI.ForeColor = 'Red'
    }
    else {
        $buttonAI.ForeColor = 'Black'
    }
})

# Add the controls to the form
$tabPageAI.Controls.Add($buttonAI)

# Créer le deuxième onglet
$tabPageScripts = New-Object System.Windows.Forms.TabPage
$tabPageScripts.Text = 'Scripts rapides'
$tabPageScripts.BackColor = 'DarkBlue'

# Create the button
$buttonScript = New-Object System.Windows.Forms.Button
$buttonScript.Location = New-Object System.Drawing.Point(10,10)
$buttonScript.Size = New-Object System.Drawing.Size(100,50)
$buttonScript.BackColor = 'Yellow'
$buttonScript.Text = 'Test'
$buttonScript.Font = New-Object System.Drawing.Font('Consolas', 12, [System.Drawing.FontStyle]::Bold)

$tabPageScripts.Controls.Add($buttonScript)

$tabControl.TabPages.Add($tabPageAI)
$tabControl.TabPages.Add($tabPageScripts)

$form.Controls.Add($tabControl)

# Show the form
$form.ShowDialog()