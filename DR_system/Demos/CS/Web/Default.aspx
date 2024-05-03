<%@ Page Title="Spire.Barcode Control-Demo" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebApplication3._Default" %>

<%@ Register Assembly="Spire.Barcode" Namespace="Spire.Barcode.WebUI" TagPrefix="cc1" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
    <div runat="server" style="padding:14px 0px 0px 30px">
    <asp:Label runat="server" Text="Spire.Barcode-Barcode Demo" Font-Bold="true" ForeColor="Black" Font-Names="Sans-Serif" Font-Size="15px"></asp:Label>
    </div>
    <div runat="server" class="right">
        <asp:Table ID="table1" runat="server" BorderStyle="None" Width="100%" HorizontalAlign="Center">
            <asp:TableRow runat="server" Height="40">
                <asp:TableCell runat="server" HorizontalAlign="Left">
        <asp:Label runat="server" ForeColor="DeepSkyBlue" Font-Size="Medium" Text="Barcode Settings ______________________________________________"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow2" runat="server" Height="40">
                <asp:TableCell ID="TableCell1" runat="server" HorizontalAlign="Left">
                    <asp:Label ID="Label1" runat="server" Font-Bold="true" Text="Barcode Type:"></asp:Label>
                    <asp:DropDownList ID="dropDownListType" runat="server" AutoPostBack="true" OnSelectedIndexChanged="OnTypeChanged">
                        <asp:ListItem Text="Code128" Value="Code128"></asp:ListItem>
                        <asp:ListItem Text="Codabar" Value="Codabar"></asp:ListItem>
                        <asp:ListItem Text="Code11" Value="Code11"></asp:ListItem>
                        <asp:ListItem Text="Code25" Value="Code25"></asp:ListItem>
                        <asp:ListItem Text="Interleaved25" Value="Interleaved25"></asp:ListItem>
                        <asp:ListItem Text="Code39" Value="Code39"></asp:ListItem>
                        <asp:ListItem Text="Code39Extended" Value="Code39Extended"></asp:ListItem>
                        <asp:ListItem Text="Code93" Value="Code93"></asp:ListItem>
                        <asp:ListItem Text="Code93Extended" Value="Code93Extended"></asp:ListItem>
                        <asp:ListItem Text="EAN8" Value="EAN8"></asp:ListItem>
                        <asp:ListItem Text="EAN13" Value="EAN13"></asp:ListItem>
                        <asp:ListItem Text="EAN128" Value="EAN128"></asp:ListItem>
                        <asp:ListItem Text="EAN14" Value="EAN14"></asp:ListItem>
                        <asp:ListItem Text="SCC14" Value="SCC14"></asp:ListItem>
                        <asp:ListItem Text="SSCC18" Value="SSCC18"></asp:ListItem>
                        <asp:ListItem Text="ITF14" Value="ITF14"></asp:ListItem>
                        <asp:ListItem Text="ITF6" Value="ITF6"></asp:ListItem>
                        <asp:ListItem Text="UPCA" Value="UPCA"></asp:ListItem>
                        <asp:ListItem Text="UPCE" Value="UPCE"></asp:ListItem>
                        <asp:ListItem Text="PostNet" Value="PostNet"></asp:ListItem>
                        <asp:ListItem Text="Planet" Value="Planet"></asp:ListItem>
                        <asp:ListItem Text="MSI" Value="MSI"></asp:ListItem>
                        <asp:ListItem Text="DataMatrix" Value="DataMatrix"></asp:ListItem>
                        <asp:ListItem Text="QRCode" Value="QRCode"></asp:ListItem>
                        <asp:ListItem Text="Pdf417" Value="Pdf417"></asp:ListItem>
                        <asp:ListItem Text="Pdf417Macro" Value="Pdf417Macro"></asp:ListItem>
                        <asp:ListItem Text="RSS14" Value="RSS14"></asp:ListItem>
                        <asp:ListItem Text="RSS14Truncated" Value="RSS14Truncated"></asp:ListItem>
                        <asp:ListItem Text="RSSLimited" Value="RSSLimited"></asp:ListItem>
                        <asp:ListItem Text="RSSExpanded" Value="RSSExpanded"></asp:ListItem>
                        <asp:ListItem Text="USPS" Value="USPS"></asp:ListItem>
                        <asp:ListItem Text="SwissPostParcel" Value="SwissPostParcel"></asp:ListItem>
                        <asp:ListItem Text="PZN" Value="PZN"></asp:ListItem>
                        <asp:ListItem Text="OPC" Value="OPC"></asp:ListItem>
                        <asp:ListItem Text="DeutschePostIdentcode" Value="DeutschePostIdentcode"></asp:ListItem>
                        <asp:ListItem Text="DeutschePostLeitcode" Value="DeutschePostLeitcode"></asp:ListItem>
                        <asp:ListItem Text="RoyalMail4State" Value="RoyalMail4State"></asp:ListItem>
                        <asp:ListItem Text="SingaporePost4State" Value="SingaporePost4State"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label Font-Bold="true" runat="server" ID="lblBorderType" Text=" Border Type:"></asp:Label>
                    <asp:DropDownList runat="server" ID="borderType" AutoPostBack="true" OnSelectedIndexChanged="OnBorderChanged">
                        <asp:ListItem Text="Solid" Value="Solid"></asp:ListItem>
                        <asp:ListItem Text="Dash" Value="Dash"></asp:ListItem>
                        <asp:ListItem Text="Dot" Value="Dot"></asp:ListItem>
                        <asp:ListItem Text="DashDot" Value="DashDot"></asp:ListItem>
                        <asp:ListItem Text="DashDotDot" Value="DashDot"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server" Height="40px">
                <asp:TableCell runat="server" Width="50%" HorizontalAlign="Left">
                <asp:Label ID="Label3" runat="server" Font-Bold="true" Text="Fore Color:"></asp:Label>
                    <asp:DropDownList Width="162" CssClass="down" runat="server" ID="DropDownListColor" AutoPostBack="true" OnSelectedIndexChanged="OnForeColorChanged">
                        <asp:ListItem>Black</asp:ListItem>
                        <asp:ListItem>AliceBlue</asp:ListItem>
                        <asp:ListItem>AntiqueWhite</asp:ListItem>
                        <asp:ListItem>Aqua</asp:ListItem>
                        <asp:ListItem>Aquamarine</asp:ListItem>
                        <asp:ListItem>Azure</asp:ListItem>
                        <asp:ListItem>Beige</asp:ListItem>
                        <asp:ListItem>Bisque</asp:ListItem>
                        <asp:ListItem>BlanchedAlmond</asp:ListItem>
                        <asp:ListItem>Blue</asp:ListItem>
                        <asp:ListItem>BlueViolet</asp:ListItem>
                        <asp:ListItem>Brown</asp:ListItem>
                        <asp:ListItem>BurlyWood</asp:ListItem>
                        <asp:ListItem>CadetBlue</asp:ListItem>
                        <asp:ListItem>Chocolate</asp:ListItem>
                        <asp:ListItem>Coral</asp:ListItem>
                        <asp:ListItem>DarkBlue</asp:ListItem>
                        <asp:ListItem>DarkGreen</asp:ListItem>
                        <asp:ListItem>Goldenrod</asp:ListItem>
                        <asp:ListItem>GreenYellow</asp:ListItem>
                        <asp:ListItem>SteelBlue</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label runat="server" Font-Bold="true" Text=" Font Family: "></asp:Label>
                    <asp:DropDownList runat="server" AutoPostBack="true" ID="dropFont" OnSelectedIndexChanged="OnFontChanged">
                         <asp:ListItem>Verdana</asp:ListItem>
                        <asp:ListItem>Cambria</asp:ListItem>
                        <asp:ListItem>Calibri</asp:ListItem>
                        <asp:ListItem>Arial</asp:ListItem>
                        <asp:ListItem>Arial Black</asp:ListItem>
                        <asp:ListItem>Arial Narrow</asp:ListItem>
                        <asp:ListItem>SimSun</asp:ListItem>
                        <asp:ListItem>Corbel</asp:ListItem>
                    </asp:DropDownList>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow1" runat="server" Height="40">
                <asp:TableCell runat="server" HorizontalAlign="Left">

                    <asp:Label runat="server" Text="BarCode Text:" Font-Bold="true"></asp:Label>

                    <asp:TextBox runat="server" ID="textBoxText" Text="12345" Width="70" AutoPostBack="true" OnTextChanged="OnTextChanged"></asp:TextBox>

                    <asp:Label ID="Label4" CssClass="down" Font-Bold="true" runat="server" Text="Bar Height:"></asp:Label>

                    <asp:TextBox ID="textBoxHeight" Text="15" runat="server" Width="40" AutoPostBack="true" OnTextChanged="OnBarHeightChanged"></asp:TextBox>
                   
                    <asp:Label ID="Label5" CssClass="down" Font-Bold="true" runat="server" Text="Font Size:"></asp:Label>
                    <asp:TextBox ID="textBoxFontSize" runat="server" Width="42" AutoPostBack="true" Text="8" OnTextChanged="OnFontSizeChanged"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server" HorizontalAlign="Left" Height="40">
                <asp:TableCell runat="server">
                    <asp:CheckBox runat="server" ID="checkShowText" Text="Show Text" Checked="true" AutoPostBack="true" OnCheckedChanged="OnShowTextChanged" CssClass="padding" />
                    <asp:CheckBox runat="server" ID="checkShowBorder" Text="Show Border" Checked="false"
                        CssClass="padding" AutoPostBack="true" OnCheckedChanged="OnShowBorderChanged" />
                    <asp:CheckBox runat="server" ID="checkShowSum" Text="Show CheckSum" Checked="true"
                        AutoPostBack="true" OnCheckedChanged="OnCheckSumChanged"  CssClass="padding" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    <div id="Div1" style="padding:25px 0px 0px 60px" runat="server">
    
        <cc1:BarCodeControl ID="BarCodeControl1" runat="server" />
     </div>
    <div style="padding:70px 0px 35px 50px">
        
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Scan" />

        <asp:Label ID="Label2" runat="server" Text="Barcode Text:" CssClass="margin"></asp:Label>
        <asp:Label ID="lblResult" runat="server" Text="Label" Visible="False"></asp:Label>

    </div>

    <div>
    <asp:Label CssClass="align" Width="110" Height="40" runat="server" BackColor="SteelBlue" Text="Description" Font-Bold="true" Font-Size="Large"  ForeColor="White" ></asp:Label>
    
    </div>
   
   <div class="line" runat="server" ></div>

   <div runat="server" class="paragraph" style="font-size:16px" >

   <p> 
   <br />
   Spire.Barcode control can be used to visualize text as Barcode and using the popular Barcode standards.In addition to,it can save the barcode as image and scan the barcode. It is designed to be maximum light and easy to use and still to do its job. 
   </p>

   <p>
   Here are some basic properties for configuring the Spire.Barcode control and its appearance.
   </p>

   <p>
   <asp:Label ID="Label8" runat="server" Text="Barcode Type-" Font-Bold="true"></asp:Label>
   <asp:Label ID="Label9" runat="server" Text="Use to change the type (standard) of the rendered barcode. See all possible types in the documentation provided in the related resources section."></asp:Label>
   </p>

<p>
   <asp:Label ID="Label10" runat="server" Text="Border Type-" Font-Bold="true"></asp:Label>
   <asp:Label ID="Label11" runat="server" Text="Use to change the border dashStyle (standard) of the rendered barcode. See all possible types in the documentation provided in the related resources section.Note:this will matter only if the "></asp:Label>
    Show Border is set to true.</p>

<p>
   <asp:Label ID="Label12" runat="server" Text="Fore Color-" Font-Bold="true"></asp:Label>
   <asp:Label ID="Label13" runat="server" Text="Use to change the foreColor (standard) of the rendered barcode. See all possible types in the documentation provided in the related resources section."></asp:Label>
   </p>

   <p>
   <asp:Label ID="Label14" runat="server" Text="Font Family-" Font-Bold="true"></asp:Label>
   <asp:Label ID="Label15" runat="server" Text="Use to change the font name (standard) of the text of rendered barcode. See all possible types in the documentation provided in the related resources section."></asp:Label>
   </p>

   <p>
   <asp:Label runat="server" Text="Text-" Font-Bold="true"></asp:Label>
   <asp:Label runat="server" Text="Use to set the text that will be encoded and rendered as a barcode. Note: If the value in the Text property is invalid for the selected type, the Barcode will appear as the default text(12345)."></asp:Label>
   </p>

    <p>
   <asp:Label ID="Label16" runat="server" Text="Bar Height-" Font-Bold="true"></asp:Label>
   <asp:Label ID="Label17" runat="server" Text="Use to specify the height of the control. By default it is set to 15, but you can use any Unit you like."></asp:Label>
   </p>

    <p>
   <asp:Label ID="Label22" runat="server" Text="Font Size-" Font-Bold="true"></asp:Label>
   <asp:Label ID="Label23" runat="server" Text="Use to specify the font size of the barcode text. By default it is set to 8, but you can use any Unit you like."></asp:Label>
   </p>

   <p>
   <asp:Label ID="Label6" runat="server" Text="Show Text-" Font-Bold="true"></asp:Label>
   <asp:Label ID="Label7" runat="server" Text="Set to true or false to show or hide the text under the barcode."></asp:Label>
   </p>

   <p>
   <asp:Label ID="Label18" runat="server" Text="Show Border-" Font-Bold="true"></asp:Label>
   <asp:Label ID="Label19" runat="server" Text="Set to true or false to show or hide the border of the barcode."></asp:Label>
   </p>

   <p>
   <asp:Label ID="Label20" runat="server" Text="Show CheckSum-" Font-Bold="true"></asp:Label>
   <asp:Label ID="Label21" runat="server" Text="Set to true or false to show or hide checksum at the end of the text. This will matter only if ShowText is set to true."></asp:Label>
   </p>

   </div>

</asp:Content>
