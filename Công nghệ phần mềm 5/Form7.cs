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
    public partial class Form7 : Form
    {
        public Form7()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text != "123456789")
            {
                MessageBox.Show("Số điện thoại không đúng , Yêu cầu nhập lại!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);

            }
            else if (textBox2.Text != textBox3.Text)
            {
                MessageBox.Show("Mật khẩu không khớp với xấc nhận mật khẩu , Yêu cầu nhập lại!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);

            }
            else
            {
                Form1.b = textBox2.Text;
                MessageBox.Show("Lấy lại mật khẩu thành công!", "Thông báo");
                this.Close();

            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
