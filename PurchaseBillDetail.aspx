<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="PurchaseBillDetail.aspx.cs" Inherits="Flower_Shop.PurchaseBillDetail" %>
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
                                                                     <h1>Purchase Bill Details</h1>                                                            
                                                                    
                                                                       <div class="add-product">                                                                    
                                                                            <a href="PurchaseBill.aspx">Add Bill</a>
                                                                        </div>     
                                                                 </div>                                  
                                                      </div>                                                  
                                                        <div class="row">
                                                            <div class="form-group col-lg-9">
                                                               <asp:Label ID="lbl_Error" runat="server"></asp:Label>
                                                            </div>                                                            
                                                             <asp:GridView ID="gv_PurchaseBillDetail" runat="server" CssClass="table table-bordered table-responsive" AutoGenerateColumns="False"  
                                                                   DataSourceID="SqlDataSource1" DataKeyName="BillId" OnPageIndexChanging="gv_PurchaseBillDetail_PageIndexChanging" PageSize="10" AllowPaging="true" >                                                                                                                                                                                     
                                                                    <Columns>
                                                                        <asp:BoundField DataField="BillId" HeaderText="BillId" ReadOnly="True" SortExpression="BillId" >                                                                       
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="BillNo" HeaderText="Bill No"  SortExpression="BillNo" />
                                                                        <asp:BoundField DataField="BillMode" HeaderText="Bill Mode"  SortExpression="BillMode" >                                                                       
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="BillDate" HeaderText="Bill Date" SortExpression="BillDate" DataFormatString="{0:dd/MM/yyyy}" />
                                                                        <asp:BoundField DataField="SupplierId" HeaderText="SupplierId" Visible="false" SortExpression="SupplierId" />
                                                                        <asp:BoundField DataField="Name" HeaderText="Supplier Name"  SortExpression="Name" />                                                                                                                                             
                                                                        <asp:BoundField DataField="FinalAmount" HeaderText="FinalAmount" SortExpression="FinalAmount" />                                                                                                                                                                                                                                                                              
                                                                    </Columns>                                                                 
                                                             </asp:GridView>                                                                                                                
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
