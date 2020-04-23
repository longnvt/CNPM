using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Công_nghệ_phần_mềm_5
{
    public partial class Form1 : Form
    {
        int dem = 0;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            textBox1.Focus();
            textBox2.Focus();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        private void dangnhap()
        {
           
        }
        private void button1_Click(object sender, EventArgs e)
        {
            Form2 fm = new Form2();
            if (textBox1.Text == "QuanLy" && textBox2.Text == "123456")
            {
                MessageBox.Show("Đăng nhập thành công", "Thông báo");
                fm.ShowDialog();
            }
            else
            {
                dem++;
                MessageBox.Show("Bạn đã nhập sai tài khoản hoặc mật khẩu", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            if (dem==3)
            {
                MessageBox.Show("Bạn đã nhập sai quá nhiều lần", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                textBox1.Enabled = false;
                textBox1.Text = "";
                textBox2.Enabled = false;
                textBox2.Text = "";
                button1.Enabled = false;
            }
        }
    }
}
