public class Uzytkownik
{

    public string Login { get; set; }
    public string Haslo { get; set; }


    public Uzytkownik(string login, string haslo)
    {

        Login = login;
        Haslo = haslo;

    }

}