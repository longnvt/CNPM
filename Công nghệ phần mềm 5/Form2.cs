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
    public partial class Form2 : Form
    {
        int them = 0;
        int sua = 0;
        int xoa = 0;
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-S78DLEL\SQLEXPRESS01;Initial Catalog=QuanLyNhanVien;Integrated Security=True");
        public Form2()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            them = 1;
            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
            textBox4.Text = "";
            textBox5.Text = "";
        }
        public void themnv()
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into NhanVien values('" + textBox1.Text + "',N'" + textBox2.Text + "',N'" + textBox3.Text + "','" + textBox4.Text + "',N'" + textBox5.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            disp_data();
            MessageBox.Show("Bạn Thêm Thành Công");
        }
        public void disp_data()
        {
            con.Open();
            string sql = "select * from NhanVien";  // lay het du lieu trong bang NhanVien
            SqlCommand cmd = new SqlCommand(sql, con); //bat dau truy van
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd); //chuyen du lieu ve
            DataTable dt = new DataTable(); //tạo một kho ảo để lưu trữ dữ liệu
            da.Fill(dt);  // đổ dữ liệu vào kho
            dataGridView1.DataSource = dt; //đổ dữ liệu vào datagridview
            con.Close();  // đóng kết nối
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            disp_data();
            this.Size = new Size(1269, 750);
        }
        public void xoanv()
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete NhanVien where MaNV= " + textBox1.Text + "";
            cmd.ExecuteNonQuery();
            con.Close();
            disp_data();
            MessageBox.Show("Bạn Xóa Thành Công");
        }
        private void button3_Click(object sender, EventArgs e)
        {
            xoa = 1;
            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
            textBox4.Text = "";
            textBox5.Text = "";
        }

        public void suavn()
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update NhanVien set HoTen= N'" + textBox2.Text + "',DiaChi= N'" + textBox3.Text + "',SDT='" + textBox4.Text + "',Email=N'" + textBox5.Text + "'where MaNV='" + textBox1.Text + "' ";
            cmd.ExecuteNonQuery();
            con.Close();
            disp_data();
            MessageBox.Show("Bạn Sửa Thành Công");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            sua = 1;
            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
            textBox4.Text = "";
            textBox5.Text = "";
        }

        private void button4_Click(object sender, EventArgs e)
        {
            con.Open();
            string sql = "select * from NhanVien where MaNV=" + textBox6.Text + "";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
            con.Close();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            if(them==1)
            {
                themnv();
            }
            if(sua==1)
            {
                suavn();
            }   
            if(xoa==1)
            {
                xoanv();
            }
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int index = e.RowIndex;
            if (index >=0)
            {
                textBox1.Text = (dataGridView1.Rows[index].Cells[0].Value.ToString());
                textBox2.Text = (dataGridView1.Rows[index].Cells[1].Value.ToString());
                textBox3.Text = (dataGridView1.Rows[index].Cells[2].Value.ToString());
                textBox4.Text = (dataGridView1.Rows[index].Cells[3].Value.ToString());
                textBox5.Text = (dataGridView1.Rows[index].Cells[4].Value.ToString());
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            this.Size = new Size(1564, 750);
        }

        private void button7_Click(object sender, EventArgs e)
        {
            Form3 f3 = new Form3();
            f3.ShowDialog();
        }

        private void button8_Click(object sender, EventArgs e)
        {
            Form4 f4 = new Form4();
            f4.ShowDialog();
        }

        private void button9_Click(object sender, EventArgs e)
        {
            Form5 f5 = new Form5();
            f5.ShowDialog();

        }

        private void button10_Click(object sender, EventArgs e)
        {
            Form6 f6 = new Form6();
            f6.ShowDialog();
        }
    }
}
