using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DemoTest
{
    public partial class HRLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HrConnect"].ConnectionString);
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlCommand cmmd = new SqlCommand("select * from HrLogin where HrLogin=@hrlogin and Password=@pass", conn);
            conn.Open();
            cmmd.Parameters.AddWithValue("@hrlogin", txtlogin.Text.ToString());
            cmmd.Parameters.AddWithValue("@pass", txtpass.Text.ToString());

            SqlDataAdapter dat = new SqlDataAdapter(cmmd);
            DataTable dt = new DataTable();
            dat.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("CandidateDetails.aspx");
             }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Invalid Creditionls Login');", true);
            }
            conn.Close();
            ClearData();

        }

        public void ClearData()
        {
            txtlogin.Text = "";
            txtpass.Text = "";
        }

        protected void btntllogin_Click(object sender, EventArgs e)
        {
            SqlCommand cmmd = new SqlCommand("select * from TlLogin where TLLogin=@tllogin and Password=@pass", conn);
            conn.Open();
            cmmd.Parameters.AddWithValue("@tllogin", txtlogin.Text.ToString());
            cmmd.Parameters.AddWithValue("@pass", txtpass.Text.ToString());

            SqlDataAdapter dat = new SqlDataAdapter(cmmd);
            DataTable dt = new DataTable();
            dat.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("DetailCandidate.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Invalid Creditionls Login');", true);
            }
            conn.Close();
            ClearData();
        }
    }
}