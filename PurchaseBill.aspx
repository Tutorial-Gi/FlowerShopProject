<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="PurchaseBill.aspx.cs" Inherits="Flower_Shop.PurchaseBill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="all-content-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="logo-pro">
                        <a href="#"><img class="main-logo" src="img/logo/logo.png" alt="" /></a>
                    </div>
                </div>
            </div>
            <div class="single-pro-review-area mt-t-30 mg-b-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-payment-inner-st">

                            <div id="myTabContents" class="tab-content custom-product-edit">
                                <div class="product-tab-list tab-pane fade active in" id="description1">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">
                                                <div id="dropzone2" class="pro-ad addcoursepro">
                                                    <div class="row">
                                                            <div class="form-group col-lg-6">
                                                                <h1>Purchase Bill</h1>
                                                            </div>
                                                     </div>
                                                     <asp:Label ID="lbl_Error" runat="server" ForeColor="Red" Font-Bold="true" Font-Size="Large" Visible="false"></asp:Label>
                                                     <asp:Label ID="lbl_Message" runat="server" ForeColor="Green" Font-Bold="true" Font-Size="Large" Visible="false"></asp:Label>                                                           
                                                        <asp:validationsummary runat="server" ValidationGroup="Bill"  CssClass="alert alert-danger" />
                                                        <div class="row">
                                                            <div class="form-group col-lg-3">
                                                                <asp:Label ID="lbl_PurchaseBillNo" Text="Bill No" Font-Bold="true" runat="server"></asp:Label>
                                                                <asp:TextBox ID="txt_PurchaseBillNo" class="form-control" runat="server"></asp:TextBox>
                                                                <asp:RequiredFieldValidator  runat="server" ErrorMessage="Please Enter Bill No" ControlToValidate="txt_PurchaseBillNo" ValidationGroup="Bill" ForeColor="red">*</asp:RequiredFieldValidator>                                               
                                                            </div>                                                              
                                                           <div class="form-group col-lg-3">
                                                                       <asp:Label ID="lbl_PurchaseBillDate" runat="server" Text="Bill Date" Font-Bold="true"></asp:Label>
                                                                       <asp:TextBox ID="txt_PurchaseBillDate" runat="server" TextMode="Date" Class="datepicker form-control"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_PurchaseBillDate" ErrorMessage="Please Enter the Bill Date" ValidationGroup="Bill" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>                                                        
                                                         <div class="row">                                                             
                                                            <div class="form-group col-lg-3">
                                                                 <asp:Label ID="lbl_SupplierName" runat="server"  Text="Supplier Name" Font-Bold="True"></asp:Label>
                                                                    <asp:DropDownList runat="server" ID="ddl_SupplierName"  AppendDataBoundItems="true"  Class="form-control custom-select-value"  AutoPostBack="true" >
                                                                     <asp:ListItem Text="Select Supplier Name" Value="-1"></asp:ListItem>                                                                    
                                                                     </asp:DropDownList>
                                                                 <asp:RequiredFieldValidator runat="server" ControlToValidate="ddl_SupplierName"  InitialValue="-1" ErrorMessage="Please Enter Supplier Name" ForeColor="red" ValidationGroup="Bill">*</asp:RequiredFieldValidator>
                                                             </div>                                                                                                                                                                   
                                                             <div class="form-group col-lg-3">
                                                                 <asp:Label ID="lbl_BillMode" Text="Bill Mode" Font-Bold="true" runat="server"></asp:Label>                                                               
                                                                 <asp:DropDownList ID="ddl_BillMode" runat="server" class="form-control custom-select-value" >
                                                                     <asp:ListItem>Cash</asp:ListItem>    
                                                                    <asp:ListItem>Credit</asp:ListItem>                                                                                                           
                                                                </asp:DropDownList>
                                                             </div>                                                      
                                                         </div>
                                                        <hr />
                                                        <div class="row">
                                                            <div class="form-group col-lg-6">
                                                                <h1>Bill Details</h1>                                                              
                                                            </div>
                                                        </div>
                                                       <asp:validationsummary runat="server" ValidationGroup="BillDetail"  CssClass="alert alert-danger" />
                                                        <div class="row">                                                           
                                                             <div class="form-group col-lg-2">
                                                               <asp:Label ID="lbl_PurchaseProductName" runat="server"  Text="Name" Font-Bold="True"></asp:Label>
                                                                    <asp:DropDownList runat="server" ID="ddl_ProductName"  AppendDataBoundItems="true"  Class="form-control custom-select-value">                                                                          
                                                                     <asp:ListItem Text="Select Product Name" Value="-1"></asp:ListItem>
                                                                     </asp:DropDownList>
                                                                 <asp:RequiredFieldValidator runat="server" ControlToValidate="ddl_ProductName"  InitialValue="-1" 
                                                                     ErrorMessage="Please Enter Product Name" ForeColor="red" ValidationGroup="BillDetail">*</asp:RequiredFieldValidator>
                                                             </div>
                                                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                <Triggers>
                                                                    <asp:AsyncPostBackTrigger ControlID="txt_Quantity" runat="server" EventName="TextChanged" />
                                                                    <asp:AsyncPostBackTrigger ControlID="txt_Rate" runat="server" EventName="TextChanged" />
                                                                    <asp:AsyncPostBackTrigger ControlID="txt_Discount" runat="server" EventName="TextChanged" />
                                                                </Triggers>
                                                                <ContentTemplate>
                                                                    <div class="form-group col-lg-2">
                                                                        <asp:Label ID="lbl_Quantity" Text="Quantity" Font-Bold="true" runat="server"></asp:Label>
                                                                        <asp:TextBox ID="txt_Quantity" class="form-control" runat="server" AutoPostBack="true"   OnTextChanged="Quantity_TextChanged" ></asp:TextBox>
                                                                        <asp:RequiredFieldValidator  runat="server" ErrorMessage="Please Enter Quantity" ControlToValidate="txt_Quantity"   ValidationGroup="BillDetail" ForeColor="red">*</asp:RequiredFieldValidator>
                                                                        <asp:CompareValidator  runat="server" ControlToValidate="txt_Quantity" ValueToCompare="0" Operator="GreaterThan"  Type="Integer" ErroMessage="Please Enter " ValidationGroup="BillDetail" ForeColor="red">*</asp:CompareValidator>
                                                                    </div>
                                                                    <div class="form-group col-lg-2">
                                                                        <asp:Label ID="lbl_Rate" Text="Rate" Font-Bold="true" runat="server"></asp:Label>
                                                                        <asp:TextBox ID="txt_Rate" class="form-control" runat="server" OnTextChanged="txt_Rate_TextChanged"  AutoPostBack="true" >

                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator  runat="server" ErrorMessage="Please Enter Rate" ControlToValidate="txt_Rate" 
                                                                            validationGroup="BillDetail" ForeColor="red">*</asp:RequiredFieldValidator>
                                                                        <asp:CompareValidator  runat="server" ControlToValidate="txt_Rate"  ValueToCompare="0" Operator="GreaterThan" Type="Integer"  ErroMessage="Please Enter Rate"   validationGroup="BillDetail" ForeColor="red">*</asp:CompareValidator>
                                                                    </div>
                                                                    <div class="form-group col-lg-2">
                                                                        <asp:Label ID="lbl_Discount" Text="Discount" Font-Bold="true" runat="server"></asp:Label>
                                                                        <asp:TextBox ID="txt_Discount" class="form-control" runat="server" OnTextChanged="txt_Discount_TextChanged" 
                                                                             AutoPostBack="true"  ></asp:TextBox>
                                                                    </div>
                                                                    <div class="form-group col-lg-2">
                                                                        <asp:Label ID="lbl_Total" Text="Total" Font-Bold="true" runat="server"></asp:Label>
                                                                        <asp:TextBox ID="txt_Total" class="form-control" readonly="true" runat="server" ></asp:TextBox>
                                                                    </div>
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>        
                                                                <div class="form-group col-lg-2">                                                                     
                                                                       <asp:Button ID="btn_PurchaseProductAdd" Text=" Product ADD" Class="btn btn-success loginbtn" OnClick="btn_PurchaseProductAdd_Click1"  ValidationGroup="BillDetail"  runat="server"/>
                                                                </div>
                                                        </div> 
                                                        <hr />                             
                                                        <div class="row">
                                                            <asp:GridView ID="gv_PurchaseBill" runat="server" OnRowDeleting="gv_PurchaseBill_RowDeleting" AutoGenerateColumns="False" CssClass="table table-bordered table-responsive" OnPageIndexChanging="gv_PurchaseBill_PageIndexChanging" PageSize="10" AllowPaging="true">                                                                                     
                                                                    <Columns>                                                                       
                                                                        <asp:BoundField DataField="ProductId" HeaderText="Product Name" Visible="false"  SortExpression="ProductId " />
                                                                        <asp:BoundField DataField="ProductName" HeaderText="Product Name"  SortExpression="ProductName " />
                                                                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                                                        <asp:BoundField DataField="Rate" HeaderText="Rate"  SortExpression="Rate" >
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="Discount" HeaderText="Discount"  SortExpression="Discount" />
                                                                        <asp:BoundField DataField="Total" HeaderText="Total"  SortExpression="Total" /> 
                                                                        <asp:CommandField ShowDeleteButton="true" ItemStyle-CssClass="btn-primary" ItemStyle-BackColor="#0066FF" ItemStyle-ForeColor="White" />                                                                     
                                                                    </Columns>                                                                 
                                                             </asp:GridView>                                                          
                                                        </div>
                                                        <div class="row">                                                                
                                                                 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                                        <asp:Label ID="lbl_BillAmount" Text="Bill Amount" Font-Bold="true" runat="server"></asp:Label>
                                                                        <asp:TextBox ID="txt_BillAmount" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                                                </div>
                                                                 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                                        <asp:Label ID="lbl_RoundUp" Text="RoundUp Amount" Font-Bold="true" runat="server"></asp:Label>
                                                                        <asp:TextBox ID="txt_RoundUp" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                                                </div>
                                                                 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                                        <asp:Label ID="lbl_FinalAmount" Text="Final Amount" Font-Bold="true" runat="server"></asp:Label>
                                                                        <asp:TextBox ID="txt_FinalAmount" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                                                     <asp:RequiredFieldValidator  runat="server" ErrorMessage="Please Enter Amount" ControlToValidate="txt_FinalAmount"  ValidationGroup="Bill" ForeColor="red">*</asp:RequiredFieldValidator>
                                                                      <asp:CompareValidator  runat="server" ControlToValidate="txt_FinalAmount"  ValueToCompare="0" Operator="GreaterThan"  Type="Integer"  ErroMessage="Please Enter Amount"   ValidationGroup="Bill" ForeColor="red">*</asp:CompareValidator>
                                                                  </div>
                                                        </div><br />
                                                        <div class="row">
                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">                                                                     
                                                               <asp:Button ID="btn_Submit" Text="Submit" Class="btn btn-success loginbtn" OnClick="btn_Submit_Click" ValidationGroup="Bill" runat="server"/>
                                                             </div>
                                                        </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div> 
        </div>      
</asp:Content>
