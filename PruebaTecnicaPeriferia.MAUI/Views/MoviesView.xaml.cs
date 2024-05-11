using PruebaTecnicaPeriferia.MAUI.ViewModels;

namespace PruebaTecnicaPeriferia.MAUI.Views;

public partial class MoviesView : ContentPage
{
	public MoviesView(MoviesViewModel vm)
	{
		InitializeComponent();
		BindingContext = vm;
	}
}