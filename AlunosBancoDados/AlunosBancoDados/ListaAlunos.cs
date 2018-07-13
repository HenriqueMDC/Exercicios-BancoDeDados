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
    public partial class ListaAlunos : Form
    {
        public ListaAlunos()
        {
            InitializeComponent();
        }

        private void btnAtualizar_Click(object sender, EventArgs e)
        {
            atualizarLista();
        }

        private void btnCadastrar_Click(object sender, EventArgs e)
        {
            new CadastroAluno(0).ShowDialog();
        }

        private void atualizarLista()
        {
            string coluna = "nome";

            if (rbNome.Checked)
            {
                coluna = "nome";
            }
            else if (rbNota1.Checked)
            {
                coluna = "nota_1";
            }
            else if (rbNota2.Checked)
            {
                coluna = "nota_2";
            }
            else if (rbNota3.Checked)
            {
                coluna = "nota_3";
            }

            string ordenacao = "ASC";

            if (rbASC.Checked)
            {
                ordenacao = "ASC";
            }
            else
            {
                ordenacao = "DESC";
            }

            dataGridView1.Rows.Clear();

            List<Aluno> alunos = new AlunosRepositorio().ObterTodos
                (txtPesquisa.Text, coluna, ordenacao);
            foreach (Aluno aluno in alunos)
            {
                dataGridView1.Rows.Add(new object[]{
                    aluno.Id,
                    aluno.Nome,
                    aluno.Matricula,
                    aluno.Nota1,
                    aluno.Nota2,
                    aluno.Nota3,
                    aluno.Media
                });
            }
        }

        private void rbNome_CheckedChanged(object sender, EventArgs e)
        {
            atualizarLista();
        }

        private void rbNota1_CheckedChanged(object sender, EventArgs e)
        {
            atualizarLista();
        }

        private void rbNota2_CheckedChanged(object sender, EventArgs e)
        {
            atualizarLista();
        }

        private void rbNota3_CheckedChanged(object sender, EventArgs e)
        {
            atualizarLista();
        }

        private void rbASC_CheckedChanged(object sender, EventArgs e)
        {
            atualizarLista();
        }

        private void rbDESC_CheckedChanged(object sender, EventArgs e)
        {
            atualizarLista();
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            int linhaSelecionada = dataGridView1.CurrentRow.Index;
            int codigo = Convert.ToInt32(dataGridView1.Rows[linhaSelecionada].Cells[0].Value.ToString());
            new CadastroAluno(codigo).ShowDialog();
        }

        private void txtPesquisa_Leave(object sender, EventArgs e)
        {
            atualizarLista();
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            int linhaSelecionada = dataGridView1.CurrentRow.Index;
            int codigo = Convert.ToInt32(dataGridView1.Rows[linhaSelecionada].Cells[0].Value.ToString());
            bool excluido = new AlunosRepositorio().Apagar(codigo);
            if (excluido)
            {
                dataGridView1.Rows.RemoveAt(linhaSelecionada);
                MessageBox.Show("Registro excluido com sucesso");
            }
            else
            {
                MessageBox.Show("Não foi possível apagar");
            }
        }

        private void ListaAlunos_Load(object sender, EventArgs e)
        {
            atualizarLista();
        }
    }
}
