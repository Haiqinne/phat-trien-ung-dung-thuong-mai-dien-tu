<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="themsv.aspx.cs" Inherits="WebApplication3.themsv" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Them sv
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <h2>Them sinh vien</h2>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="masv" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserted="InsertedCmd" Width="333px" OnItemInserting="ItemInserting">
        <EditItemTemplate>
            masv:
            <asp:Label ID="masvLabel1" runat="server" Text='<%# Eval("masv") %>' />
            <br />
            hoten:
            <asp:TextBox ID="hotenTextBox" runat="server" Text='<%# Bind("hoten") %>' />
            <br />
            diachi:
            <asp:TextBox ID="diachiTextBox" runat="server" Text='<%# Bind("diachi") %>' />
            <br />
            dienthoai:
            <asp:TextBox ID="dienthoaiTextBox" runat="server" Text='<%# Bind("dienthoai") %>' />
            <br />
            malop:
            <asp:TextBox ID="malopTextBox" runat="server" Text='<%# Bind("malop") %>' />
            <br />
            anh:
            <asp:TextBox ID="anhTextBox" runat="server" Text='<%# Bind("anh") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
<InsertItemTemplate>
    ho ten:
    <asp:TextBox ID="hotenTextBox" runat="server" Text='<%# Bind("hoten") %>' />
    <asp:RequiredFieldValidator ID="rfvHoTen" runat="server" 
        ControlToValidate="hotenTextBox" 
        ErrorMessage="(*) Vui lòng nhập họ tên" 
        ForeColor="Red" Display="Dynamic">
    </asp:RequiredFieldValidator>
    <br />

    dia chi:
    <asp:TextBox ID="diachiTextBox" runat="server" Text='<%# Bind("diachi") %>' />
    <asp:RequiredFieldValidator ID="rfvDiaChi" runat="server" 
        ControlToValidate="diachiTextBox" 
        ErrorMessage="(*) Thiếu địa chỉ" 
        ForeColor="Red" Display="Dynamic">
    </asp:RequiredFieldValidator>
    <br />

    dien thoai:
    <asp:TextBox ID="dienthoaiTextBox" runat="server" Text='<%# Bind("dienthoai") %>' />
    <asp:RequiredFieldValidator ID="rfvDienThoai" runat="server" 
        ControlToValidate="dienthoaiTextBox" 
        ErrorMessage="(*) Thiếu SĐT" 
        ForeColor="Red" Display="Dynamic">
    </asp:RequiredFieldValidator>
    <br />

    ma lop:
    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource12" DataTextField="tenlop" DataValueField="malop" SelectedValue='<%# Bind("malop") %>'>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdbConnectionString %>" SelectCommand="SELECT * FROM [lophoc]"></asp:SqlDataSource>
    <br />

    anh:
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />

    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
    &nbsp;
    <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />

</InsertItemTemplate>
        <ItemTemplate>
            masv:
            <asp:Label ID="masvLabel" runat="server" Text='<%# Eval("masv") %>' />
            <br />
            hoten:
            <asp:Label ID="hotenLabel" runat="server" Text='<%# Bind("hoten") %>' />
            <br />
            diachi:
            <asp:Label ID="diachiLabel" runat="server" Text='<%# Bind("diachi") %>' />
            <br />
            dienthoai:
            <asp:Label ID="dienthoaiLabel" runat="server" Text='<%# Bind("dienthoai") %>' />
            <br />
            malop:
            <asp:Label ID="malopLabel" runat="server" Text='<%# Bind("malop") %>' />
            <br />
            anh:
            <asp:Label ID="anhLabel" runat="server" Text='<%# Bind("anh") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdbConnectionString %>" DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @masv" InsertCommand="INSERT INTO [sinhvien] ([hoten], [diachi], [dienthoai], [malop], [anh]) VALUES (@hoten, @diachi, @dienthoai, @malop, @anh)" SelectCommand="SELECT * FROM [sinhvien]" UpdateCommand="UPDATE [sinhvien] SET [hoten] = @hoten, [diachi] = @diachi, [dienthoai] = @dienthoai, [malop] = @malop, [anh] = @anh WHERE [masv] = @masv">
        <DeleteParameters>
            <asp:Parameter Name="masv" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="hoten" Type="String" />
            <asp:Parameter Name="diachi" Type="String" />
            <asp:Parameter Name="dienthoai" Type="String" />
            <asp:Parameter Name="malop" Type="Int32" />
            <asp:Parameter Name="anh" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="hoten" Type="String" />
            <asp:Parameter Name="diachi" Type="String" />
            <asp:Parameter Name="dienthoai" Type="String" />
            <asp:Parameter Name="malop" Type="Int32" />
            <asp:Parameter Name="anh" Type="String" />
            <asp:Parameter Name="masv" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="errmsg" runat="server" ForeColor="red"></asp:Label>
</asp:Content>
