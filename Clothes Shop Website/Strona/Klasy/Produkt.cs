using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SklepStrona.Klasy
{
    public class Produkt
    {
        public int ID { get; set; }
        public string Nazwa { get; set; }
        public decimal Cena { get; set; }
        public string Kolor { get; set; }
        public string Rozmiar { get; set; }
        public string Kategoria { get; set; }

        public Produkt(int id)
        {
            this.ID = id;

            using (SqlConnection con = new SqlConnection(@"Server=(localdb)\v11.0;AttachDbFilename=|DataDirectory|BazaDanych.mdf;Database=BazaDanych;Trusted_Connection=Yes;"))
            {

                con.Open();
                //
                // The following code uses an SqlCommand based on the SqlConnection.
                //
                using (SqlCommand command = new SqlCommand("SELECT * FROM Towary WHERE ID='" + id + "'", con))
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        this.Nazwa = (String)reader["Nazwa"];
                        this.Kolor = (String)reader["Kolor"];
                        this.Cena = (Decimal)reader["Cena"];
                        this.Rozmiar = (String)reader["Rozmiar"];
                        this.Kategoria = (String)reader["Kategoria"];
                        



                    }
                }


            }
        }

    }
}