namespace PruebaTecnicaPeriferia.MAUI.Controls;

public partial class FlyoutHeaderControl : StackLayout
{
	public FlyoutHeaderControl()
	{
		InitializeComponent();

        lblUserName.Text = Preferences.Get("PreUsername", "").ToUpper();
        lblFecha.Text = DateTime.UtcNow.ToString("dddd d MMM yyyy");
    }
}