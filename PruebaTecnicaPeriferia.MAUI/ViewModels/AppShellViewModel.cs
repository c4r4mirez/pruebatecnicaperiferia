using CommunityToolkit.Mvvm.Input;
using PruebaTecnicaPeriferia.MAUI.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PruebaTecnicaPeriferia.MAUI.ViewModels
{
    public partial class AppShellViewModel
    {
        [RelayCommand]
        async Task Logout()
        {
            try
            {                
                var rpt = await Shell.Current.DisplayAlert("Logout", "¿Are you sure you want to logout?", "Accept", "Cancel");

                if (rpt == false)
                    return;                                                

                await Shell.Current.GoToAsync($"//{nameof(LoginView)}");
            }
            catch (Exception ex)
            {
                await Shell.Current.DisplayAlert("Error", ex.Message, "OK");
            }
        }
    }
}
