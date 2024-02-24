<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_up.aspx.cs" Inherits="logintcc.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="Signup.css" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title></title>
</head>
<body>
    <div class="wrapper">
        <form id="form1" runat="server">
            <div>
                <h1>Sign Up</h1>
                <br />
                <div class="input-box">
                    <div class="input-field">
                        <asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label><asp:TextBox ID="txtNome" runat="server" CssClass="txtbox"></asp:TextBox>
                        <div class="in"><i class='bx bxs-user'></i></div>
                    </div>
                    <div class="input-field">
                        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label><asp:TextBox ID="txtEmail" runat="server" AutoCompleteType="Email" CssClass="txtbox"></asp:TextBox>
                        <div class="in"><i class='bx bxs-envelope'></i></div>
                    </div>
                </div>
                <div class="input-box">

                    <div class="input-field">
                        <asp:Label ID="lblTele" runat="server" Text="Telefone:"></asp:Label><asp:TextBox ID="txtTele" runat="server" CssClass="txtbox" TextMode="Phone"></asp:TextBox>
                        <div class="in"><i class='bx bxs-phone'></i></div>
                    </div>
                    <div class="input-field">
                        <asp:Label ID="lblUf" runat="server" Text="UF:"></asp:Label>
                        <asp:DropDownList ID="ddlEstado" runat="server" DataSourceID="SqlDataSource1" DataTextField="estado" DataValueField="idestado" CssClass="txtbox-drop">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tcc0124ConnectionString %>" ProviderName="<%$ ConnectionStrings:tcc0124ConnectionString.ProviderName %>" SelectCommand="SELECT idestado, estado FROM estado"></asp:SqlDataSource>
                        <div class="in"><i class='bx bxs-business'></i></div>
                    </div>
                </div>
                <div class="input-box">
                    <div class="input-field">
                        <asp:Label ID="lblsenha" runat="server" Text="Senha:"></asp:Label>
                        <asp:TextBox ID="txtSenha" runat="server" CssClass="txtbox" TextMode="Password"></asp:TextBox>
                        <div class="in"><i class='bx bxs-lock-alt'></i></div>
                    </div>
                    <div class="input-field">
                        <asp:Label ID="Lblconfsenha" runat="server" Text="Confirma Senha:"></asp:Label>
                        <asp:TextBox ID="txtConfSenha" runat="server" CssClass="txtbox" TextMode="Password"></asp:TextBox>
                        <div class="in"><i class='bx bxs-lock-alt'></i></div>
                    </div>
                </div>
                <br />
                <br />
                <div class="remember-forgot">
                    <asp:CheckBox ID="ckbConcorda" runat="server" Text="Aceita receber novidades por email" CssClass="ckb" />
                </div>

                <br />


                <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="BtnCadastrar_Click" CssClass="btn" />
                <br />


                <div class="register-link">
                    <p>Já tem uma conta acesse <a href="Login.aspx">Login</a></p>
                </div>
                <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                <br />


            </div>
        </form>
    </div>
</body>
</html>
