using PruebaTecnicaPeriferia.MAUI.ViewModels;
using PruebaTecnicaPeriferia.MAUI.Views;

namespace PruebaTecnicaPeriferia.MAUI
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();
            BindingContext = new AppShellViewModel();

            Routing.RegisterRoute(nameof(LoginView), typeof(LoginView));
            Routing.RegisterRoute(nameof(MoviesView), typeof(MoviesView));
            Routing.RegisterRoute(nameof(MovieDetailView), typeof(MovieDetailView));            
        }
    }
}
