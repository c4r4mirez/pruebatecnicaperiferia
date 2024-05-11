using PruebaTecnicaPeriferia.MAUI.ViewModels;

namespace PruebaTecnicaPeriferia.MAUI.Views;

public partial class LoginView : ContentPage
{		
	public LoginView(LoginViewModel vm)
	{        
        InitializeComponent();
		BindingContext = vm;
	}
}