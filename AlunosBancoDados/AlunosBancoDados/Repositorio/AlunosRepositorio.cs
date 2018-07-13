using AlunosBancoDados.Modelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AlunosBancoDados.Repositorio
{
    class AlunosRepositorio
    {
        private string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\104963\Documents\ExercicioBancoDados.mdf;Integrated Security=True;Connect Timeout=30";
        private SqlConnection connection = null;

        public AlunosRepositorio()
        {
            connection = new SqlConnection(connectionString);
        }

        public int Inserir(Aluno alunos)
        {
            connection.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = @"INSERT INTO alunos (nome, id_matricula, nota_1, nota_2, nota_3, (nota_1 + nota_2 + nota_3) / 3, frequencia)
            OUTPUT INSERTED.ID
            VALUES (@NOME, @ID_MATRICULA, @NOTA_1, @nOTA_2, @NOTA_3, @FREQUENCIA)";

            command.Parameters.AddWithValue("@NOME", alunos.Nome);
            command.Parameters.AddWithValue("@ID_MATRICULA", alunos.Matricula);
            command.Parameters.AddWithValue("@NOTA_1", alunos.Nota1);
            command.Parameters.AddWithValue("@NOTA_2", alunos.Nota2);
            command.Parameters.AddWithValue("@NOTA_3", alunos.Nota3);
            command.Parameters.AddWithValue("@MEDIA", alunos.Media);
            command.Parameters.AddWithValue("@FREQUENCIA", alunos.Frequencia);

            int id = Convert.ToInt32(command.ExecuteScalar().ToString());
            connection.Close();
            return id;
        }

        public bool Alterear(Aluno aluno)
        {
            connection.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = @"UPDATE alunos SET
nome = @NOME,
id_matricula = @ID_MATRICULA,
nota_1 = @NOTA_1,
nota_2 = @NOTA_2,
nota_3 = @NOTA_3;
media = @MEDIA,
frequencia = @FREQUENCIA
WHERE id_matricula = @ID_MATRICULA";
            command.Parameters.AddWithValue("@NOME", aluno.Nome);
            command.Parameters.AddWithValue("@ID_MATRICULA", aluno.Matricula);
            command.Parameters.AddWithValue("@NOTA_1", aluno.Nota1);
            command.Parameters.AddWithValue("@NOTA_2", aluno.Nota2);
            command.Parameters.AddWithValue("@NOTA_3", aluno.Nota3);
            command.Parameters.AddWithValue("@MEDIA", aluno.Media);
            command.Parameters.AddWithValue("@FREQUENCIA", aluno.Frequencia);
            int quantidadeAlterada = command.ExecuteNonQuery();
            connection.Close();
            return quantidadeAlterada == 1;
        }

        public List<Aluno> ObterTodos(string textoParaPesquisar = "%%", string colunaOrdenacao = "nome", string tipoOrdenacao = "ASC")
        {
            textoParaPesquisar = "%" + textoParaPesquisar + "%";
            List<Aluno> alunos = new List<Aluno>();
            connection.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = @"SELECT
id, nome, id_matricula, nota_1, nota_2, nota_3, (nota_1 + nota_2 + nota_3) / 3, frequencia
FROM alunos
WHERE nome LIKE @PESQUISA
ORDER BY " + colunaOrdenacao + " " + tipoOrdenacao;
            command.Parameters.AddWithValue("@PESQUISA", textoParaPesquisar);

            DataTable tabelaEmMemoria = new DataTable();
            tabelaEmMemoria.Load(command.ExecuteReader());
            for (int i = 0; i < tabelaEmMemoria.Rows.Count; i++)
            {
                Aluno aluno = new Aluno();
                aluno.Id = Convert.ToInt32(tabelaEmMemoria.Rows[i][0].ToString());
                aluno.Nome = tabelaEmMemoria.Rows[i][1].ToString();
                aluno.Matricula = Convert.ToString(tabelaEmMemoria.Rows[i][2].ToString());
                aluno.Nota1 = Convert.ToDouble(tabelaEmMemoria.Rows[i][3].ToString());
                aluno.Nota2 = Convert.ToDouble(tabelaEmMemoria.Rows[i][4].ToString());
                aluno.Nota3 = Convert.ToDouble(tabelaEmMemoria.Rows[i][5].ToString());
                aluno.Media = Convert.ToDouble(tabelaEmMemoria.Rows[i][6].ToString());
                aluno.Frequencia = Convert.ToByte(tabelaEmMemoria.Rows[i][7].ToString());
                alunos.Add(aluno);
            }
            connection.Close();
            return alunos;
        }

        public Aluno ObterPeloCodigo(int codigo)
        {
            connection.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = @"SELECT
id, nome, id_matricula, nota_1, nota_2, nota_3, (nota_1 + nota_2 + nota_3) / 3, frequencia
FROM alunos
WHERE id = @ID";
            command.Parameters.AddWithValue("@ID", codigo);


            DataTable tabelaEmMemoria = new DataTable();
            tabelaEmMemoria.Load(command.ExecuteReader());
            if (tabelaEmMemoria.Rows.Count == 0)
	        {
                return null;
	        }

            Aluno aluno = new Aluno();
            aluno.Id = Convert.ToInt32(tabelaEmMemoria.Rows[0][0].ToString());
            aluno.Nome = tabelaEmMemoria.Rows[0][1].ToString();
            aluno.Matricula = Convert.ToString(tabelaEmMemoria.Rows[0][2].ToString());
            aluno.Nota1 = Convert.ToDouble(tabelaEmMemoria.Rows[0][3].ToString());
            aluno.Nota2 = Convert.ToDouble(tabelaEmMemoria.Rows[0][4].ToString());
            aluno.Nota3 = Convert.ToDouble(tabelaEmMemoria.Rows[0][5].ToString());
            aluno.Media = Convert.ToDouble(tabelaEmMemoria.Rows[0][6].ToString());
            aluno.Frequencia = Convert.ToByte(tabelaEmMemoria.Rows[0][7].ToString());
            connection.Close();
            return aluno;
        }

        public bool Apagar(int codigo)
        {
            connection.Open();

            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = "DELETE FROM alunos WHERE id = @CODIGO";

            command.Parameters.AddWithValue("@CODIGO", codigo);
            int quantidade = command.ExecuteNonQuery();

            connection.Close();

            return quantidade == 1;
        }

        public double ObterTotalMedia()
        {
            connection.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = "SELECT SUM(nota_1, nota_2, nota_3) FROM alunos";

            double total = Convert.ToDouble(command.ExecuteScalar());
            connection.Close();
            return total;
        }
    }
}
