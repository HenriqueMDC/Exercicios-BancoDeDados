using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AlunosBancoDados.Modelo
{
    class Aluno
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Matricula { get; set; }
        public double Nota1 { get; set; }
        public double Nota2 { get; set; }
        public double Nota3 { get; set; }
        public byte Frequencia { get; set; }
        public double Media { get; set; }
    }
}
