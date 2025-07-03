using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using TripleITTransaction;
using TripleITConnection;
using System.Web.UI.HtmlControls;
using Newtonsoft.Json;
using System.Security.Principal;
using System.Activities.Statements;
using System.Activities.Expressions;
using Org.BouncyCastle.Asn1.Cmp;
using iTextSharp.text;

public partial class Member_Default : System.Web.UI.Page
{
    clsList objlist = new clsList();
    clsTimeZone objtime = new clsTimeZone();
    clsConnection objcon = new clsConnection();
    clsAccount objacc = new clsAccount();
    public List<clsaccount> objacclist = new List<clsaccount>();
    clsfunction objfun = new clsfunction();
    clsDashboard objdash = new clsDashboard();
    clsAMD objamd = new clsAMD();
    CoinPayments objcoin = new CoinPayments();
    clsDashboard objdashboard = new clsDashboard();
    string Sql = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            loadNews();
            loadDownLineBusniess();
            //ROIMaster();
            //P2PTransfer();
           WithdrawTransactions();
            //FundTransactions();
            TradeTransactions();
            loadTblretopup();
           PackMaster();
            //EquityMaster();
            //TodayRoi();

            //string roistatus = SessionData.Get<string>("ROIStatus");
            //loadROIStatus(roistatus);

            string username = SessionData.Get<string>("Newuser");


            myInput.Value = "http://bostonfx.io/register.aspx?Sponsor=" + username;
            lbreffsidLeft.Text = "http://bostonfx.io/register.aspx?Sponsor=" + username;


            lbAvailabledeposit.Text = objdashboard.TotalWallectBlance(username);
            lbdeposit.Text = objdashboard.DepositCredit(username, "Payment");
            lbWithdrawdeposit.Text = objdashboard.DepositDebit(username, "INCOME");

            //lbtotalrepurchase.Text = objdashboard.SelfBusiness(username);
          // lbwithdrawapprove.Text = objdashboard.WithdrawType(username, "Approved", "INCOME");

            lbTotalIncome.Text = objdashboard.TotalIncome(username);
            lbbalance.Text = objdashboard.TotalBlance(username);
          
            //lbteambuss.Text = objdashboard.TotalTeamBusness(username);
            lbLevelRoi.Text = objdashboard.IncomeType(username, "LEVELROI");
            lbDirectIncome.Text = objdashboard.IncomeType(username, "Direct");
            lbnetwork.Text = objdashboard.IncomeType(username, "NETWORK");
            lbRoi.Text = objdashboard.IncomeType(username, "ROI");
            lbroyalty.Text = objdashboard.IncomeType(username, "ROYALTY");
            lbrewardincome.Text = objdashboard.IncomeType(username, "REWARD");
            lbclubincome.Text = objdashboard.IncomeType(username, "CLUB");

            lbdirect.Text = objdashboard.TotalDirect(username);
            lbteam.Text = objdashboard.TotalTeam(username);
           // totalactiveteam.Text = objdashboard.TotalActiveTeam(username);
            lbinactiveteam.Text = objdashboard.TotalInActiveTeam(username);
            //if (Convert.ToDecimal(lbtodayroi.Text.Trim()) > 0)
            //{
            //    lbprofit.Visible = true;
            //} else if (Convert.ToDecimal(lbtodayroi.Text.Trim()) <= 0)
            //{
            //    lbloss.Visible = true;
            //}

            loadaccount(username);
            loadWithdraw(username);
            //loadPendingTransaction();
            lbInvestmentamt.Text = (Math.Round(Convert.ToDecimal(objdashboard.SelfBusiness(SessionData.Get<string>("Newuser"))), 2)).ToString();
            lbincome.Text = objdashboard.TotalIncome(SessionData.Get<string>("Newuser"));
            lbLeftinocme.Text = objdashboard.CappingBalance(SessionData.Get<string>("Newuser"));

        }
    }
   
    private void PackMaster()
    {
        try
        {
            string sql = "Select * from tblproduct";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            if (dt.Rows.Count > 0)
            {
                PackRepeater.DataSource = dt;
                PackRepeater.DataBind();
            }
            else
            {

            }

        }
        catch (Exception ex)
        { }
    }
    public string Isactive(int index)
    {
        string Abc = "carousel-item";
        if (index == 1)
        {
            Abc = "carousel-item active";
        }
        return Abc;
    }

    //public void TodayRoi()
    //{
    //    string total = "0";
    //    try
    //    {
    //        string username = SessionData.Get<string>("Newuser");
    //        string sql = "select credit from account where username='" + username + "' and date='" + objtime.returnStringServerMachTime() + "'";
    //        DataTable dt = objcon.ReturnDataTableSql(sql);
    //        if (dt.Rows.Count > 0)
    //        {
    //            if (dt.Rows[0]["credit"].ToString() != null)
    //            {
    //                if (Convert.ToDouble(dt.Rows[0]["credit"].ToString()) < 0)
    //                {
    //                    total = dt.Rows[0]["credit"].ToString();
    //                    total = total == "" ? "0" : total;
    //                    lbRoiToday.Text = total;
    //                    lbRoiToday.CssClass = "text-danger";
    //                    lbRoiStat.Text = "Loss";
    //                    lbRoiStat.CssClass = "text-danger";
    //                }
    //                else if (Convert.ToDouble(dt.Rows[0]["credit"].ToString()) > 0)
    //                {
    //                    total = dt.Rows[0]["credit"].ToString();
    //                    total = total == "" ? "0" : total;
    //                    lbRoiToday.Text = "+" + total;
    //                    lbRoiToday.CssClass = "text-success";
    //                    lbRoiStat.Text = "Profit";
    //                    lbRoiStat.CssClass = "text-success";
    //                }
    //            }
    //        }


    //    }
    //    catch (Exception ex)
    //    { }
    //}

    //private void ROIMaster()
    //{
    //    try
    //    {
    //        string sql = "exec [dbo].[ROIPackages] @USERNAME = '" + SessionData.Get<string>("Newuser") + "'";
    //        DataTable dt = objcon.ReturnDataTableSql(sql);

    //        if (dt.Rows.Count > 0)
    //        {
    //            Repeater2.DataSource = dt;
    //            Repeater2.DataBind();
    //        }
    //    }
    //    catch (Exception ex)
    //    {

    //    }
    //}

    //private void P2PTransfer()
    //{
    //    try
    //    {
    //        string sql = "Select Aid,Username,name,SoldDoller,profileImg,Currency,Total from [tblauction] where username!='" + SessionData.Get<string>("Newuser") + "' order by Doi asc ";
    //        DataTable dt = objcon.ReturnDataTableSql(sql);

    //        if (dt.Rows.Count > 0)
    //        {
    //            p2pRepeater.DataSource = dt;
    //            p2pRepeater.DataBind();
    //        }
    //    }
    //    catch (Exception ex)
    //    {

    //    }
    //}
    //private void FundTransactions()
    //{
    //    try
    //    {
    //        string sql = "Select * from tblwallet where username = '" + SessionData.Get<string>("Newuser") + "'";
    //        DataTable dt = objcon.ReturnDataTableSql(sql);

    //        if (dt.Rows.Count > 0)
    //        {
    //            FundRepeater.DataSource = dt;
    //            FundRepeater.DataBind();
    //        }
    //    }
    //    catch (Exception ex)
    //    {

    //    }
    //}
    private void TradeTransactions()
    {
        try
        {
            string sql = "Select * from account where username = '" + SessionData.Get<string>("Newuser") + "' and valu='ROI' order by date desc";
            DataTable dt = objcon.ReturnDataTableSql(sql);

            if (dt.Rows.Count > 0)
            {
                TradeRepeater.DataSource = dt;
                TradeRepeater.DataBind();
            }
        }
        catch (Exception ex)
        {

        }
    }
    private void WithdrawTransactions()
    {
        try
        {
            string sql = "Select * from tblrwithdraw where username = '" + SessionData.Get<string>("Newuser") + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);

            if (dt.Rows.Count > 0)
            {
                withdrawRepeater.DataSource = dt;
                withdrawRepeater.DataBind();
            }
        }
        catch (Exception ex)
        {

        }
    }
    //protected void btnunlock_Click(object sender, EventArgs e)
    //{
    //    string sql2 = "select ROIStatus,Status from register  where username='" + SessionData.Get<string>("Newuser") + "'";
    //    DataTable dt2 = objcon.ReturnDataTableSql(sql2);

    //    if (dt2.Rows.Count > 0)
    //    {

    //        if (dt2.Rows[0]["Status"].ToString() == "Active")
    //        {
    //            string abc = dt2.Rows[0]["ROIStatus"].ToString();
    //            if (dt2.Rows[0]["ROIStatus"].ToString() == "False")
    //            {
    //                string sql = "update register set ROIStatus='1' where username='" + SessionData.Get<string>("Newuser") + "'";
    //                int a = objcon.ExecuteSqlQuery(sql);
    //                if (a > 0)
    //                {
    //                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "Successclick('You have Turned ON BOT for Upcoming Weekly Trading !!!'); ", true);
    //                    loadDownLineBusniess();
    //                }
    //                else
    //                {
    //                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "Warningclick('Somthing Went Wrong !!!'); ", true);
    //                    loadDownLineBusniess();
    //                }

    //            }
    //            else if (dt2.Rows[0]["ROIStatus"].ToString() == "True")
    //            {
    //                string sql = "update register set ROIStatus='0' where username='" + SessionData.Get<string>("Newuser") + "'";
    //                int a = objcon.ExecuteSqlQuery(sql);
    //                if (a > 0)
    //                {
    //                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "Warningclick('You have Turned OFF BOT for Upcoming Weekly Trading !!!'); ", true);
    //                    loadDownLineBusniess();
    //                }
    //                else
    //                {
    //                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "Warningclick('Somthing Went Wrong !!!'); ", true);
    //                    loadDownLineBusniess();
    //                }
    //            }
    //        }
    //        else
    //        {
    //            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "Warningclick('You are not an Active Member !!! Please Activate your Account'); ", true);
    //        }


    //    }
    //}

    private void loadTblretopup()
    {
        string sql = "select * from tblretopup  where username='" + SessionData.Get<string>("Newuser") + "'";
        DataTable dt = objcon.ReturnDataTableSql(sql);

        if (dt.Rows.Count > 0)
        {
            //lbduration.Text = dt.Rows[0]["NoDays"].ToString();
            //lbGaurantee.Text = dt.Rows[0]["totalprofite"].ToString();
            DateTime PackDate = Convert.ToDateTime(dt.Rows[0]["DOR"].ToString());
            DateTime MemDate = PackDate.AddDays(30);
            DateTime TodayDate = Convert.ToDateTime(objtime.returnStringServerMachTime());
            //lbDemainingDays.Text = (MemDate - TodayDate).ToString("dd");
            //lbMemDate.Text = MemDate.ToString("dd-MM-yyyy");
        }
        else
        {

        }
    }
    private void loadDownLineBusniess()
    {
        try
        {
            string sql = "select status,reffid,username,email,mobile,dob,dateofjoin,name,country,packtype,JoinAmount,TotalRepurchase,rankname from register  where username='" + SessionData.Get<string>("Newuser") + "'";
            DataTable dt = objcon.ReturnDataTableSql(sql);

            if (dt.Rows.Count > 0)
            {

                //lbDOJ.Text = Convert.ToDateTime(dt.Rows[0]["dateofjoin"].ToString()).ToShortDateString();
                lbSponsorId.Text = dt.Rows[0]["reffid"].ToString();
                lbEmail.Text = dt.Rows[0]["email"].ToString();
                lbContact.Text = dt.Rows[0]["mobile"].ToString();
                lbStatus.Text = dt.Rows[0]["status"].ToString();
                lbrank.Text = dt.Rows[0]["rankname"].ToString();
                lbpackname.Text = dt.Rows[0]["PackType"].ToString();
                //lbPackamt.Text = dt.Rows[0]["JoinAmount"].ToString();
                
                //lbequity.Text = dt.Rows[0]["JoinAmount"].ToString();
                //string roistatus = dt.Rows[0]["ROIStatus"].ToString();
                //if (dt.Rows[0]["status"].ToString() == "Active")
                //{
                //    lbStatus.CssClass = "text-success";

                //}
                //else if (dt.Rows[0]["status"].ToString() == "Not Active")
                //{
                //    lbStatus.CssClass = "text-danger";

                //}

                //if (roistatus == "True")
                //{
                //    lbBotStatus.Text = "Trades Connected";
                //    lbBotStatus.CssClass = "text-success";
                //    btnunlock.Text = "Turn OFF";
                //    btnunlock.CssClass = "btn btn-xs btn-rounded btn-danger pad1";
                //}
                //else if (roistatus == "False")
                //{
                //    lbBotStatus.Text = "Trades Disconnected";
                //    lbBotStatus.CssClass = "text-danger";
                //    btnunlock.Text = "Turn ON";
                //    btnunlock.CssClass = "btn btn-xs btn-rounded btn-success pad1";
                //}


                if (dt.Rows[0]["rankname"].ToString() == "NONE")
                {
                    lbrank2.Text = "OPEL";
                }
                else if (dt.Rows[0]["rankname"].ToString() == "OPEL")
                {
                    lbrank2.Text = "PEARL";
                }
                else if (dt.Rows[0]["rankname"].ToString() == "PEARL")
                {
                    lbrank2.Text = "RUBY";
                }
                else if (dt.Rows[0]["rankname"].ToString() == "RUBY")
                {
                    lbrank2.Text = "EMERALD";
                }
                else if (dt.Rows[0]["rankname"].ToString() == "EMERALD")
                {
                    lbrank2.Text = "SAPPHIRE";
                }
                else if (dt.Rows[0]["rankname"].ToString() == "SAPPHIRE")
                {
                    lbrank2.Text = "PLATINUM";
                }
                else if (dt.Rows[0]["rankname"].ToString() == "PLATINUM")
                {
                    lbrank2.Text = "DIAMOND";
                }
                else if (dt.Rows[0]["rankname"].ToString() == "DIAMOND")
                {
                    lbrank2.Text = "BLUE DIAMOND";
                }
                
                else if (dt.Rows[0]["rankname"].ToString() == "BLUE DIAMOND")
                {
                    lbrank2.Text = " AMBASSDOR";
                }
                else if (dt.Rows[0]["rankname"].ToString() == "AMBASSDOR")
                {
                    lbrank2.Text = "CROWN AMBASSDOR";
                }

                //if (dt.Rows[0]["PackType"].ToString() == "Bronze")
                //{
                //    packimg.Src = "../SoftImg/Product/bronze.png";
                //}
                //else if (dt.Rows[0]["PackType"].ToString() == "Silver")
                //{
                //    packimg.Src = "../SoftImg/Product/silver.png";
                //}
                //else if (dt.Rows[0]["PackType"].ToString() == "Gold")
                //{
                //    packimg.Src = "../SoftImg/Product/gold.png";
                //}
                //else if (dt.Rows[0]["PackType"].ToString() == "Platinum")
                //{
                //    packimg.Src = "../SoftImg/Product/platinum.png";
                //}
                //else if (dt.Rows[0]["PackType"].ToString() == "Pearl")
                //{
                //    packimg.Src = "../SoftImg/Product/pearl.png";
                //}
                //else if (dt.Rows[0]["PackType"].ToString() == "Opal")
                //{
                //    packimg.Src = "../SoftImg/Product/Opal.png";
                //}
                //else if (dt.Rows[0]["PackType"].ToString() == "Emerald")
                //{
                //    packimg.Src = "../SoftImg/Product/Emerald.png";
                //}
                //else if (dt.Rows[0]["PackType"].ToString() == "Ruby")
                //{
                //    packimg.Src = "../SoftImg/Product/Ruby.png";
                //}
                //else if (dt.Rows[0]["PackType"].ToString() == "Sapphire")
                //{
                //    packimg.Src = "../SoftImg/Product/Sapphire.png";
                //}
                //else if (dt.Rows[0]["PackType"].ToString() == "Diamond")
                //{
                //    packimg.Src = "../SoftImg/Product/Diamond.png";
                //}

                //}

            }

        }
        catch (Exception ex)
        { }
    }

    private void loadNews()
    {
        try
        {
            string sql = "select news,tittle from tblnews order by id desc";
            DataTable dt = objcon.ReturnDataTableSql(sql);
            //repNews.DataSource = dt;
            //repNews.DataBind();
            lbnews.Text = dt.Rows[0]["news"].ToString();
            lbhead.Text = dt.Rows[0]["tittle"].ToString();

        }
        catch (Exception ex)
        { }
    }




    public void loadaccount(string username)
    {
        try
        {
            string sql = "Select Top 5 * from tblretopup where username = '" + username + "' order by DOR desc";
            DataTable dt = objcon.ReturnDataTableSql(sql);

            //Rep1.DataSource = dt;
            //Rep1.DataBind();

        }
        catch (Exception ex)
        {

        }
    }

    public void loadWithdraw(string username)
    {
        try
        {
            string sql = "Select Top 5 * from tblrwithdraw where username='" + username + "' order by DOR desc";
            DataTable dt = objcon.ReturnDataTableSql(sql);

            //Rep2.DataSource = dt;
           // Rep2.DataBind();


        }
        catch (Exception ex)
        {

        }


    }
    //private void loadPendingTransaction()
    //{
    //    try
    //    {
    //        string sql = " select top 1 UserName,AmountUSD,AmountBTC,txn_id,address,confirms_needed,timeout,checkout_url,status_url,qrcode_url,Status,DOI from [TblFundRequest] where username='" + SessionData.Get<string>("Newuser") + "' and status='Pending'  order by DOI asc";
    //        DataTable dt = objcon.ReturnDataTableSql(sql);
    //        if (dt.Rows.Count > 0)
    //        {
    //            string txn_id = dt.Rows[0]["txn_id"].ToString();
    //            Response.Redirect("BTCSuccess.aspx?TID=" + txn_id);
    //            var parentRow = objcoin.TransactionStatus(txn_id);

    //            string json = JsonConvert.SerializeObject(parentRow, Formatting.Indented);
    //            var parentData = JsonConvert.DeserializeObject<Root>(json);
    //            if (parentData.error == "ok")
    //            {
    //                string status = parentData.result.status_text;
    //                //if (status == "Complete")
    //                //{
    //                //    int a = objamd.BTCAPI(0, SessionData.Get<string>("Newuser"), 0, Convert.ToDouble(parentData.result.amount), txn_id, "", "", "", "", "", "", "Approved", "", "C");
    //                //    if (a > 0)
    //                //    {

    //                //    }
    //                //}
    //                //else if (parentData.result.status == -1)
    //                //{
    //                //    int a = objamd.BTCAPI(0, SessionData.Get<string>("Newuser"), 0, Convert.ToDouble(parentData.result.amount), txn_id, "", "", "", "", "", "", "Reject", "", "F");
    //                //    if (a > 0)
    //                //    {

    //                //    }

    //                //}
    //            }
    //            else
    //            {

    //            }
    //        }
    //        else
    //        {

    //        }

    //    }
    //    catch (Exception ex)
    //    {

    //    }

    //}


    protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Un-lock")
        {
            try
            {
                string rid = e.CommandArgument.ToString();
                Response.Redirect("ButtonLink.aspx?Rid=" + rid);
            }
            catch (Exception ex)
            {

            }
        }
    }
    
    protected void p2pRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Buy")
        {
            try
            {
                string username = e.CommandArgument.ToString();
                Response.Redirect("p2pbuynow.aspx?aid=" + username + "&theme=1");
                //string Username = e.CommandArgument.ToString();
                //Response.Redirect("fundtransfer.aspx?Username=" + Username + "&theme=1");
            }
            catch (Exception ex)
            {

            }
        }
    }

    public class Checkout
    {
        public string currency { get; set; }
        public long amount { get; set; }
        public int test { get; set; }
        public string item_number { get; set; }
        public string item_name { get; set; }
        public List<object> details { get; set; }
        public string invoice { get; set; }
        public string custom { get; set; }
        public string ipn_url { get; set; }
        public int amountf { get; set; }
    }

    public class Result
    {
        public int time_created { get; set; }
        public int time_expires { get; set; }
        public int status { get; set; }
        public string status_text { get; set; }
        public string type { get; set; }
        public string coin { get; set; }
        public long amount { get; set; }
        public string amountf { get; set; }
        public long received { get; set; }
        public string receivedf { get; set; }
        public int recv_confirms { get; set; }
        public string payment_address { get; set; }
        public int time_completed { get; set; }
        public string send_tx { get; set; }
        public string sender_ip { get; set; }
        public Checkout checkout { get; set; }
        public List<object> shipping { get; set; }
    }

    public class Root
    {
        public string error { get; set; }
        public Result result { get; set; }
    }

    
}