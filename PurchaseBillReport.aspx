<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="PurchaseBillReport.aspx.cs" Inherits="Flower_Shop.PurchaseBillReport" %>
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

                            <div id="myTabContent" class="tab-content custom-product-edit">
                                <div class="product-tab-list tab-pane fade active in" id="description">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">
                                                <div id="dropzone1" class="pro-ad addcoursepro">                                               
                                                    <div class="row">
                                                                <div class="form-group col-lg-12">
                                                                     <h1>Purchase Bill Report</h1>                                                 
                                                                 </div>                                  
                                                     </div>
                                                    
                                                    <div class="form-group-inner">
                                                        <div class="row">
                                                            
                                                            <div class="col-lg-1 col-md-2 col-sm-1 col-xs-12">
                                                                <asp:Label ID="lbl_From" runat="server" Text="From Date" Font-Bold="true"></asp:Label>
                                                            </div>
                                                            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
                                                                <asp:TextBox ID="txt_From" runat="server" TextMode="Date" Class="datepicker form-control"></asp:TextBox>
                                                            </div>
                                                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-12">
                                                                 <asp:Label ID="lbl_To" runat="server" Text="To Date" Font-Bold="true"></asp:Label>
                                                            </div>
                                                            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
                                                                  <asp:TextBox ID="txt_To" runat="server" TextMode="Date" Class="datepicker form-control"></asp:TextBox>
                                                            </div>                                                                                                                                                                         
                                                          </div>
                                                        </div>                                                  
                                                    <div class="row">
                                                        <div class="col-lg-3"></div>
                                                             <div class="col-lg-9">
                                                                 <div class="login-horizental cancel-wp pull-left form-bc-ele">
                                                                     <asp:Button ID="btn_Search" runat="server" Text="Search" OnClick="btn_Search_Click"  Class="btn btn-success loginbtn" /> 
                                                                 </div>
                                                             </div>
                                                   </div>                                                                                          
                                                   <div class="row">
                                                            <div class="form-group col-lg-9">
                                                               <asp:Label ID="lbl_Error" runat="server"></asp:Label>
                                                               <asp:Label ID="Label2" runat="server"></asp:Label>
                                                            </div>                                                        
                                                             <asp:GridView ID="gv_PurchaseBillDetail" runat="server" CssClass="table table-bordered table-responsive" AutoGenerateColumns="False" DataKeyName="BillId" OnRowCommand="gv_PurchaseBillDetail_RowCommand" OnSelectedIndexChanged="gv_PurchaseBillDetail_SelectedIndexChanged" DataSourceID="SqlDataSource1">                                                                                                                       
                                                                    <Columns>
                                                                        <asp:TemplateField>
                                                                            <ItemTemplate>
                                                                                 <asp:Button Text="Select" ID="btn_Select" runat="server" Class="btn btn-success loginbtn" CommandName="SelectButton" CommandArgument="<%#((GridViewRow)Container).RowIndex  %>"   />
                                                                            </ItemTemplate>                                                                            
                                                                        </asp:TemplateField>
                                                                        <asp:BoundField DataField="BillId" HeaderText="BillId" ReadOnly="True" >                                                                       
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="BillNo" HeaderText="Bill No"   />
                                                                        <asp:BoundField DataField="BillMode" HeaderText="Bill Mode"   >                                                                       
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="BillDate" HeaderText="Bill Date"  DataFormatString="{0:dd/MM/yyyy}" />
                                                                        <asp:BoundField DataField="SupplierId" HeaderText="SupplierId"    />
                                                                        <asp:BoundField DataField="BillAmount" HeaderText="BillAmount"  />
                                                                          <asp:BoundField DataField="RoundupAmount" HeaderText="RoundupAmount" />                                                                                                                                                                                                                
                                                                        <asp:BoundField DataField="FinalAmount" HeaderText="FinalAmount"  />                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                                                                    </Columns>                                                                 
                                                             </asp:GridView>                                                                                                                                                                           
                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
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
