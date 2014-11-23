<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Department.aspx.cs" Inherits="Depa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>School Depertment</title>

    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">




                <div class="table-responsive">
                    <table class="table table-striped table-bordered">
                        <thead>

                            <tr>
                                <th>Depertment Id</th>
                                <th>Depaertment Name</th>


                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>


                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>

                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="btnSubmit" CssClass="bg-primary btn-lg" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>

                                    <asp:Button ID="btnSearch" CssClass="active alert-link btn-lg" runat="server" Text="Search" OnClick="btnSearch_Click" />

                                    <asp:Button ID="btnUpdate" CssClass=" alert-danger btn-lg" runat="server" Text="Update" OnClick="btnUpdate_Click" />

                                    <asp:Button ID="btnDelete" CssClass=" alert-success btn-sm" runat="server" Text="Remove" OnClick="btnDelete_Click" />
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </div>




            </div>

        </div>
        <div class="col-md-11">
            <asp:GridView ID="GridView1" CssClass=" table table-bordered table-condensed table-hover table-striped " runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                <AlternatingRowStyle BackColor="Blue" />
                <Columns>
                    <asp:BoundField ApplyFormatInEditMode="True" DataField="dId" HeaderText="Department Id" ValidateRequestMode="Enabled" />
                    <asp:BoundField ApplyFormatInEditMode="True" DataField="dName" HeaderText="Department Name" ValidateRequestMode="Enabled" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </div>
    </form>
    <link href="Css/bootstrap.css" rel="stylesheet" />
    <link href="Css/bootstrap-theme.css" rel="stylesheet" />
    <script src="js/bootstrap.js"></script>
</body>
</html>
