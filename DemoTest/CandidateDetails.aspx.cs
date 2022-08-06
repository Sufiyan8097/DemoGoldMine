using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DemoTest
{
    public partial class CandidateDetails : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HrConnect"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               // GetData();
            }
        }

        //public void GetData()
        //{
        //    SqlCommand cmmd = new SqlCommand("select Id,Dsg from Designation  order by dsg asc", conn);
        //    SqlDataAdapter dat = new SqlDataAdapter(cmmd);
        //    DataTable dt = new DataTable();
        //    dat.Fill(dt);
        //    ddApplied.DataSource = dt;
        //   // ddApplied.DataBind();
        //    ddApplied.DataTextField = "Dsg";
        //    ddApplied.DataValueField = "Id";
        //    ddApplied.DataBind();


        //}

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string fileName = "";
            foreach (HttpPostedFile postedFile in FileUpload1.PostedFiles)
            {
                 fileName = Path.GetFileName(postedFile.FileName);
            }
            string strcmd = "Insert into CandidateDetails(CandidateName,Experience,CTC,Applied,Expected,UploadResume) values(@canName,@exp,@ctc,@applied,@expected,@UploadResume)";
            SqlCommand cmmd = new SqlCommand(strcmd, conn);
            cmmd.Parameters.AddWithValue("@canName", txtcandidatename.Text);
            cmmd.Parameters.AddWithValue("@exp", Convert.ToDecimal(txtexper.Text));
            cmmd.Parameters.AddWithValue("@ctc", Convert.ToDecimal(txtctc.Text));
            cmmd.Parameters.AddWithValue("@applied", ddApplied.SelectedItem.Text);
            cmmd.Parameters.AddWithValue("@expected", txtexpectedctc.Text);
            cmmd.Parameters.AddWithValue("@UploadResume", fileName);
            conn.Open();
            cmmd.ExecuteNonQuery();
            conn.Close();

            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Data Upload Successfully');", true);
            ClearData();
        }

        public void ClearData()
        {
            txtcandidatename.Text = "";
            txtexper.Text = "";
            txtctc.Text = "";
            txtexpectedctc.Text = "";
            ddApplied.SelectedIndex = 0;
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("HRLogin.aspx");
        }
    }
}