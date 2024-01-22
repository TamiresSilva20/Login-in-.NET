using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;


namespace logintcc
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void BtnCadastrar_Click(object sender, EventArgs e)
        {

            using (MySqlConnection conn = new MySqlConnection("server=localhost;user=root;database=tcc0124;port=3306;password=Root;"))
            {
                conn.Open();

                using (MySqlCommand cmd = new MySqlCommand())
                {
                    cmd.Connection = conn;
                    cmd.CommandText = "Select * from Usuario where email = @email  ";
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);

                    using (MySqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.HasRows)
                        {
                            lblMensagem.Text = "Email já Cadastrado";
                            dr.Close();
                        }

                        else
                        {
                            dr.Close();
                            cmd.Parameters.Clear();
                            cmd.CommandText = "insert into Usuario(email,nome,telefone,idestado,senha,conf_senha,concorda) values (@email, @nome, @telefone, @idestado, @senha,@conf_senha,@concorda)";

                            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                            cmd.Parameters.AddWithValue("@nome", txtNome.Text);
                            cmd.Parameters.AddWithValue("@telefone", txtTele.Text);
                            cmd.Parameters.AddWithValue("@idestado", ddlEstado.SelectedValue);
                            cmd.Parameters.AddWithValue("@senha", txtSenha.Text);
                            cmd.Parameters.AddWithValue("@conf_senha", txtConfSenha.Text);
                            cmd.Parameters.AddWithValue("@concorda", ckbConcorda.Checked);

                            cmd.ExecuteNonQuery();
                            lblMensagem.Text = " Registro incluido com sucesso";
                        }
                        conn.Close();

                        conn.Dispose();

                    }
                }
            }
        }

    }
    }

