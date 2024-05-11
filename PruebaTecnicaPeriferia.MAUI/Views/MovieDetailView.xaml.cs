using PruebaTecnicaPeriferia.MAUI.ViewModels;

namespace PruebaTecnicaPeriferia.MAUI.Views;

public partial class MovieDetailView : ContentPage
{	

	public MovieDetailView(MovieDetailViewModel vm)
	{
		InitializeComponent();		
		BindingContext = vm;        
    }
    
}