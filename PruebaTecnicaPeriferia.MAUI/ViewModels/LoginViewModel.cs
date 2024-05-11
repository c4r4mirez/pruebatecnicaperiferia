using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using PruebaTecnicaPeriferia.EFCore.DataAccess;
using PruebaTecnicaPeriferia.Entities.POCOEntities;
using PruebaTecnicaPeriferia.MAUI.Controls;
using PruebaTecnicaPeriferia.MAUI.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PruebaTecnicaPeriferia.MAUI.ViewModels
{
    public partial class LoginViewModel : BaseViewModel
    {
        #region Properites
        private readonly PruebaTecnicaDBContext _dbContext;

        [ObservableProperty]
        string user = "admin";

        [ObservableProperty]
        string password = "admin";
        #endregion

        #region Constructor
        public LoginViewModel(PruebaTecnicaDBContext dbContext)
        {
            _dbContext = dbContext;
        }
        #endregion

        #region Commands        
        [RelayCommand]
        async Task AddUser()
        {
            try
            {
                if (string.IsNullOrEmpty(User) || string.IsNullOrEmpty(Password))
                {
                    await Shell.Current.DisplayAlert("Aler!", "User and Password is mandatory", "Ok");
                    return;
                }

                _dbContext.Users.Add(new UserModel
                {
                    Id = Guid.NewGuid().ToString("N"),
                    User = User,
                    Password = Password
                });

                _dbContext.SaveChanges();
            }
            catch (Exception ex)
            {
                await Shell.Current.DisplayAlert("Error", ex.Message, "Ok");
            }
        }

        [RelayCommand]
        async Task Login()
        {
            try
            {
                var rpt = _dbContext.Users.FirstOrDefault(u => u.User == User && u.Password == Password);

                if (rpt != null)
                {
                    Preferences.Set("PreUsername", rpt.User);

                    await CreateMenu();
                    await GoToMovies();
                }
                else
                {
                    ShowMessage("User or Password incorrect");
                }
            }
            catch (Exception ex)
            {
                await Shell.Current.DisplayAlert("Error", ex.Message, "Ok");
            }
        }
        #endregion

        #region Methods
        async Task CreateMenu()
        {
            // Agrega el control de encabezado al AppShell
            AppShell.Current.FlyoutHeader = new FlyoutHeaderControl();

            // Remueve los menú en caso de existir
            var menu = AppShell.Current.Items.Where(f => f.Route == nameof(MoviesView)).FirstOrDefault();
            if (menu != null) AppShell.Current.Items.Remove(menu);                        

            var flyoutItem = new FlyoutItem()
            {
                Title = "Home",
                Route = nameof(MoviesView),
                FlyoutDisplayOptions = FlyoutDisplayOptions.AsMultipleItems,
                Items =
                {
                    new ShellContent
                    {
                         Icon = "iconmovie.png",
                         Title = "Popular Movies",
                         ContentTemplate = new DataTemplate(typeof(MoviesView))
                    },
                    new ShellContent
                    {
                        Icon = "iconcamera.png",
                        Title = "Camera",
                        ContentTemplate = new DataTemplate(typeof(MoviesView))
                    }
                }
            };

            AppShell.Current.Items.Add(flyoutItem);
        }

        async Task GoToMovies()
        {            
            await Shell.Current.GoToAsync($"//{nameof(MoviesView)}"); // se usa con $"// " para que sea una página raíz            
            //await Shell.Current.GoToAsync(nameof(MoviesView), false);
        }

        private void ShowMessage(string message)
        {
            Shell.Current.DisplayAlert("¡Information!", message, "Ok");
        }
        #endregion

    }
}
