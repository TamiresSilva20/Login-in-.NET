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
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            
                // Simulando um novo login 
                string email = txtEmail.Text;
            string senha = txtSenha.Text;
            string conf_Senha = txtConfSenha.Text;
            if (senha != conf_Senha)
            {
                lblMensagem.Text = "A senha e a confirmação de senha não coincidem.";
                return;
            }

            using (MySqlConnection conn = new MySqlConnection("server=localhost;user=root;database=tcc0124;port=3306;password=Root;"))
           {
                    conn.Open();

                    using (MySqlCommand cmd = new MySqlCommand())
                    {
                        cmd.Connection = conn;

                        // Verificar se o email e a senha correspondem a um usuário na tabela Usuario
                        cmd.CommandText = "SELECT COUNT(*) FROM Usuario WHERE email = @email AND senha = @senha AND conf_senha=@conf_senha";
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@senha", senha);
                    cmd.Parameters.AddWithValue("@conf_senha", conf_Senha);
                    int count = Convert.ToInt32(cmd.ExecuteScalar());

                        if (count > 0)
                        {
                        // O email e a senha correspondem a um usuário existente
                        // Agora, você pode inserir os dados na tabela login
                        ///cmd.Parameters.Clear();
                      ///  cmd.CommandText = "INSERT INTO login (idemail) VALUES (@loginEmail)";
                      ///  cmd.Parameters.AddWithValue("@loginEmail", email);  // Usar um novo nome de parâmetro para evitar conflitos

                        cmd.ExecuteNonQuery();


                        Response.Redirect("http://criaecoitaqua.com.br/");
                    }
                        else
                        {
                            // As credenciais não correspondem a nenhum usuário
                            lblMensagem.Text = "Credenciais inválidas. Verifique seu email e senha.";
                        }
                    }
                }
            }

        }
    }
