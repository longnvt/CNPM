using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Công_nghệ_phần_mềm_5
{
    public partial class Form4 : Form
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-S78DLEL\SQLEXPRESS01;Initial Catalog=QuanLyNhanVien;Integrated Security=True");

        public void disp_data()
        {
            con.Open();
            string sql = "select * from ChiTietPhongBan where MaPhong = " + textBox5.Text; ;  // lay het du lieu trong bang NhanVien
            SqlCommand cmd = new SqlCommand(sql, con); //bat dau truy van
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd); //chuyen du lieu ve
            DataTable dt = new DataTable(); //tạo một kho ảo để lưu trữ dữ liệu
            da.Fill(dt);  // đổ dữ liệu vào kho
            dataGridView1.DataSource = dt; //đổ dữ liệu vào datagridview
            con.Close();  // đóng kết nối
        }
        public Form4()
        {
            InitializeComponent();
        }

        private void Form4_Load(object sender, EventArgs e)
        {
            con.Open();
            string sql = "select * from ChiTietPhongBan "; ;  // lay het du lieu trong bang NhanVien
            SqlCommand cmd = new SqlCommand(sql, con); //bat dau truy van
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd); //chuyen du lieu ve
            DataTable dt = new DataTable(); //tạo một kho ảo để lưu trữ dữ liệu
            da.Fill(dt);  // đổ dữ liệu vào kho
            dataGridView1.DataSource = dt; //đổ dữ liệu vào datagridview
            con.Close();  // đóng kết nối
        }

        private void button1_Click(object sender, EventArgs e)
        {
            disp_data();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int index = e.RowIndex;
            if (index >= 0)
            {
                textBox1.Text = (dataGridView1.Rows[index].Cells[0].Value.ToString());
                textBox2.Text = (dataGridView1.Rows[index].Cells[1].Value.ToString());
                textBox3.Text = (dataGridView1.Rows[index].Cells[2].Value.ToString());
                textBox4.Text = (dataGridView1.Rows[index].Cells[3].Value.ToString());
            }
        }
    }
}
