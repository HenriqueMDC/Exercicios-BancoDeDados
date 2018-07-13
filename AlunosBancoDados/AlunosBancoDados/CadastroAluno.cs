using AlunosBancoDados.Modelo;
using AlunosBancoDados.Repositorio;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AlunosBancoDados
{
    public partial class CadastroAluno : Form
    {
        private int codigo;

        public CadastroAluno(int codigo)
        {
            InitializeComponent();
            this.codigo = codigo;
            Aluno aluno = new AlunosRepositorio().ObterPeloCodigo(codigo);
            PreencherCampos(aluno);
        }

        private void PreencherCampos(Aluno aluno)
        {
            txtNome.Text = aluno.Nome;
            txtMatricula.Text = aluno.Matricula;
            txtNota1.Text = Convert.ToString(aluno.Nota1);
            txtNota2.Text = Convert.ToString(aluno.Nota2);
            txtNota3.Text = Convert.ToString(aluno.Nota3);
            txtFrequencia.Text = Convert.ToString(aluno.Frequencia);
            txtId.Text = Convert.ToString(aluno.Id);
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno();

            aluno.Nome = txtNome.Text;
            aluno.Matricula = txtMatricula.Text;
            aluno.Nota1 = Convert.ToDouble(txtNota1.Text);
            aluno.Nota2 = Convert.ToDouble(txtNota2.Text);
            aluno.Nota3 = Convert.ToDouble(txtNota3.Text);
            if (string.IsNullOrEmpty(txtId.Text))
            {
                int cadastrou = new AlunosRepositorio().Inserir(aluno);
                txtId.Text = Convert.ToString(cadastrou);
                MessageBox.Show("Registro cadastrado com sucesso");
            }
            else
            {
                int id = Convert.ToInt32(txtId.Text);
                aluno.Id = id;
                bool alterou = new AlunosRepositorio().Alterear(aluno);
                if (alterou)
                {
                    MessageBox.Show("Registro alterado com sucesso");
                }
                else
                {
                    MessageBox.Show("Não foi possível alterar");
                }
            }
        }

        private void txtMatricula_Leave(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtMatricula.Text))
            {
                try
                {

                    int id = Convert.ToInt32(txtId.Text);
                    Aluno aluno = new AlunosRepositorio().ObterPeloCodigo(id);
                    if (aluno != null)
                    {
                        PreencherCampos(aluno);
                    }
                    else
                    {
                        MessageBox.Show("Registro não existe");
                        txtId.Focus();

                        txtId.SelectionStart = 0;
                        txtId.SelectionLength = txtId.Text.Length;
                    }
                }
                catch (NotFiniteNumberException ex)
                {
                    MessageBox.Show("Digite um código válido");
                    txtId.Focus();
                    txtId.SelectionStart = 0;
                    txtId.SelectionLength = txtId.Text.Length;
                }
            }
        }

        private void preencherCampos(Aluno aluno)
        {
            txtNome.Text = aluno.Nome;
            txtMatricula.Text = aluno.Matricula;
            txtNota1.Text = Convert.ToString(aluno.Nota1);
            txtNota2.Text = Convert.ToString(aluno.Nota2);
            txtNota3.Text = Convert.ToString(aluno.Nota3);
            txtFrequencia.Text = Convert.ToString(aluno.Frequencia);
        }
    }
}
