namespace AlunosBancoDados
{
    partial class ListaAlunos
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.gbFiltros = new System.Windows.Forms.GroupBox();
            this.rbNota2 = new System.Windows.Forms.RadioButton();
            this.rbNota1 = new System.Windows.Forms.RadioButton();
            this.rbNome = new System.Windows.Forms.RadioButton();
            this.lblPesquisa = new System.Windows.Forms.Label();
            this.txtPesquisa = new System.Windows.Forms.TextBox();
            this.btnAtualizar = new System.Windows.Forms.Button();
            this.btnExcluir = new System.Windows.Forms.Button();
            this.btnEditar = new System.Windows.Forms.Button();
            this.btnCadastrar = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.rbNota3 = new System.Windows.Forms.RadioButton();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.rbDESC = new System.Windows.Forms.RadioButton();
            this.rbASC = new System.Windows.Forms.RadioButton();
            this.Id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nome = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.MatriculaColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.raca = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.contaBancaria = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Nota3Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.MediaColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.FrequenciaColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SituacaoColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.gbFiltros.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // gbFiltros
            // 
            this.gbFiltros.Controls.Add(this.rbNota3);
            this.gbFiltros.Controls.Add(this.rbNota2);
            this.gbFiltros.Controls.Add(this.rbNota1);
            this.gbFiltros.Controls.Add(this.rbNome);
            this.gbFiltros.Location = new System.Drawing.Point(139, 9);
            this.gbFiltros.Name = "gbFiltros";
            this.gbFiltros.Size = new System.Drawing.Size(283, 36);
            this.gbFiltros.TabIndex = 20;
            this.gbFiltros.TabStop = false;
            this.gbFiltros.Text = "Filtros";
            // 
            // rbNota2
            // 
            this.rbNota2.AutoSize = true;
            this.rbNota2.Location = new System.Drawing.Point(128, 15);
            this.rbNota2.Name = "rbNota2";
            this.rbNota2.Size = new System.Drawing.Size(57, 17);
            this.rbNota2.TabIndex = 2;
            this.rbNota2.TabStop = true;
            this.rbNota2.Text = "Nota 2";
            this.rbNota2.UseVisualStyleBackColor = true;
            this.rbNota2.CheckedChanged += new System.EventHandler(this.rbNota2_CheckedChanged);
            // 
            // rbNota1
            // 
            this.rbNota1.AutoSize = true;
            this.rbNota1.Location = new System.Drawing.Point(65, 15);
            this.rbNota1.Name = "rbNota1";
            this.rbNota1.Size = new System.Drawing.Size(57, 17);
            this.rbNota1.TabIndex = 1;
            this.rbNota1.TabStop = true;
            this.rbNota1.Text = "Nota 1";
            this.rbNota1.UseVisualStyleBackColor = true;
            this.rbNota1.CheckedChanged += new System.EventHandler(this.rbNota1_CheckedChanged);
            // 
            // rbNome
            // 
            this.rbNome.AutoSize = true;
            this.rbNome.Location = new System.Drawing.Point(6, 15);
            this.rbNome.Name = "rbNome";
            this.rbNome.Size = new System.Drawing.Size(53, 17);
            this.rbNome.TabIndex = 0;
            this.rbNome.TabStop = true;
            this.rbNome.Text = "Nome";
            this.rbNome.UseVisualStyleBackColor = true;
            this.rbNome.CheckedChanged += new System.EventHandler(this.rbNome_CheckedChanged);
            // 
            // lblPesquisa
            // 
            this.lblPesquisa.AutoSize = true;
            this.lblPesquisa.Location = new System.Drawing.Point(12, 9);
            this.lblPesquisa.Name = "lblPesquisa";
            this.lblPesquisa.Size = new System.Drawing.Size(53, 13);
            this.lblPesquisa.TabIndex = 19;
            this.lblPesquisa.Text = "Pesquisa:";
            // 
            // txtPesquisa
            // 
            this.txtPesquisa.Location = new System.Drawing.Point(15, 25);
            this.txtPesquisa.Name = "txtPesquisa";
            this.txtPesquisa.Size = new System.Drawing.Size(118, 20);
            this.txtPesquisa.TabIndex = 18;
            this.txtPesquisa.Leave += new System.EventHandler(this.txtPesquisa_Leave);
            // 
            // btnAtualizar
            // 
            this.btnAtualizar.Location = new System.Drawing.Point(258, 270);
            this.btnAtualizar.Name = "btnAtualizar";
            this.btnAtualizar.Size = new System.Drawing.Size(75, 23);
            this.btnAtualizar.TabIndex = 16;
            this.btnAtualizar.Text = "Atualizar";
            this.btnAtualizar.UseVisualStyleBackColor = true;
            this.btnAtualizar.Click += new System.EventHandler(this.btnAtualizar_Click);
            // 
            // btnExcluir
            // 
            this.btnExcluir.Location = new System.Drawing.Point(177, 270);
            this.btnExcluir.Name = "btnExcluir";
            this.btnExcluir.Size = new System.Drawing.Size(75, 23);
            this.btnExcluir.TabIndex = 15;
            this.btnExcluir.Text = "Excluir";
            this.btnExcluir.UseVisualStyleBackColor = true;
            this.btnExcluir.Click += new System.EventHandler(this.btnExcluir_Click);
            // 
            // btnEditar
            // 
            this.btnEditar.Location = new System.Drawing.Point(96, 270);
            this.btnEditar.Name = "btnEditar";
            this.btnEditar.Size = new System.Drawing.Size(75, 23);
            this.btnEditar.TabIndex = 14;
            this.btnEditar.Text = "Editar";
            this.btnEditar.UseVisualStyleBackColor = true;
            this.btnEditar.Click += new System.EventHandler(this.btnEditar_Click);
            // 
            // btnCadastrar
            // 
            this.btnCadastrar.Location = new System.Drawing.Point(15, 270);
            this.btnCadastrar.Name = "btnCadastrar";
            this.btnCadastrar.Size = new System.Drawing.Size(75, 23);
            this.btnCadastrar.TabIndex = 13;
            this.btnCadastrar.Text = "Cadastrar";
            this.btnCadastrar.UseVisualStyleBackColor = true;
            this.btnCadastrar.Click += new System.EventHandler(this.btnCadastrar_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Id,
            this.nome,
            this.MatriculaColumn1,
            this.raca,
            this.contaBancaria,
            this.Nota3Column1,
            this.MediaColumn1,
            this.FrequenciaColumn1,
            this.SituacaoColumn1});
            this.dataGridView1.Location = new System.Drawing.Point(12, 65);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(677, 199);
            this.dataGridView1.TabIndex = 12;
            // 
            // rbNota3
            // 
            this.rbNota3.AutoSize = true;
            this.rbNota3.Location = new System.Drawing.Point(191, 15);
            this.rbNota3.Name = "rbNota3";
            this.rbNota3.Size = new System.Drawing.Size(57, 17);
            this.rbNota3.TabIndex = 3;
            this.rbNota3.TabStop = true;
            this.rbNota3.Text = "Nota 3";
            this.rbNota3.UseVisualStyleBackColor = true;
            this.rbNota3.CheckedChanged += new System.EventHandler(this.rbNota3_CheckedChanged);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.rbDESC);
            this.groupBox1.Controls.Add(this.rbASC);
            this.groupBox1.Location = new System.Drawing.Point(428, 9);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(75, 50);
            this.groupBox1.TabIndex = 10;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Ordenar";
            // 
            // rbDESC
            // 
            this.rbDESC.AutoSize = true;
            this.rbDESC.Location = new System.Drawing.Point(6, 33);
            this.rbDESC.Name = "rbDESC";
            this.rbDESC.Size = new System.Drawing.Size(54, 17);
            this.rbDESC.TabIndex = 1;
            this.rbDESC.TabStop = true;
            this.rbDESC.Text = "DESC";
            this.rbDESC.UseVisualStyleBackColor = true;
            this.rbDESC.CheckedChanged += new System.EventHandler(this.rbDESC_CheckedChanged);
            // 
            // rbASC
            // 
            this.rbASC.AutoSize = true;
            this.rbASC.Location = new System.Drawing.Point(6, 15);
            this.rbASC.Name = "rbASC";
            this.rbASC.Size = new System.Drawing.Size(46, 17);
            this.rbASC.TabIndex = 0;
            this.rbASC.TabStop = true;
            this.rbASC.Text = "ASC";
            this.rbASC.UseVisualStyleBackColor = true;
            this.rbASC.CheckedChanged += new System.EventHandler(this.rbASC_CheckedChanged);
            // 
            // Id
            // 
            this.Id.HeaderText = "ID";
            this.Id.Name = "Id";
            this.Id.ReadOnly = true;
            this.Id.Visible = false;
            // 
            // nome
            // 
            this.nome.HeaderText = "Nome";
            this.nome.Name = "nome";
            this.nome.ReadOnly = true;
            // 
            // MatriculaColumn1
            // 
            this.MatriculaColumn1.HeaderText = "Matrícula";
            this.MatriculaColumn1.Name = "MatriculaColumn1";
            this.MatriculaColumn1.ReadOnly = true;
            // 
            // raca
            // 
            this.raca.FillWeight = 50F;
            this.raca.HeaderText = "Nota 1";
            this.raca.Name = "raca";
            this.raca.ReadOnly = true;
            // 
            // contaBancaria
            // 
            this.contaBancaria.FillWeight = 50F;
            this.contaBancaria.HeaderText = "Nota 2";
            this.contaBancaria.Name = "contaBancaria";
            this.contaBancaria.ReadOnly = true;
            this.contaBancaria.Width = 130;
            // 
            // Nota3Column1
            // 
            this.Nota3Column1.FillWeight = 50F;
            this.Nota3Column1.HeaderText = "Nota 3";
            this.Nota3Column1.Name = "Nota3Column1";
            this.Nota3Column1.ReadOnly = true;
            // 
            // MediaColumn1
            // 
            this.MediaColumn1.HeaderText = "Média";
            this.MediaColumn1.Name = "MediaColumn1";
            this.MediaColumn1.ReadOnly = true;
            // 
            // FrequenciaColumn1
            // 
            this.FrequenciaColumn1.HeaderText = "Frequencia";
            this.FrequenciaColumn1.Name = "FrequenciaColumn1";
            this.FrequenciaColumn1.ReadOnly = true;
            // 
            // SituacaoColumn1
            // 
            this.SituacaoColumn1.HeaderText = "Situação";
            this.SituacaoColumn1.Name = "SituacaoColumn1";
            this.SituacaoColumn1.ReadOnly = true;
            // 
            // ListaAlunos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(701, 319);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.gbFiltros);
            this.Controls.Add(this.lblPesquisa);
            this.Controls.Add(this.txtPesquisa);
            this.Controls.Add(this.btnAtualizar);
            this.Controls.Add(this.btnExcluir);
            this.Controls.Add(this.btnEditar);
            this.Controls.Add(this.btnCadastrar);
            this.Controls.Add(this.dataGridView1);
            this.Name = "ListaAlunos";
            this.Text = "ListaAlunos";
            this.Load += new System.EventHandler(this.ListaAlunos_Load);
            this.gbFiltros.ResumeLayout(false);
            this.gbFiltros.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox gbFiltros;
        private System.Windows.Forms.RadioButton rbNota3;
        private System.Windows.Forms.RadioButton rbNota2;
        private System.Windows.Forms.RadioButton rbNota1;
        private System.Windows.Forms.RadioButton rbNome;
        private System.Windows.Forms.Label lblPesquisa;
        private System.Windows.Forms.TextBox txtPesquisa;
        private System.Windows.Forms.Button btnAtualizar;
        private System.Windows.Forms.Button btnExcluir;
        private System.Windows.Forms.Button btnEditar;
        private System.Windows.Forms.Button btnCadastrar;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.RadioButton rbDESC;
        private System.Windows.Forms.RadioButton rbASC;
        private System.Windows.Forms.DataGridViewTextBoxColumn Id;
        private System.Windows.Forms.DataGridViewTextBoxColumn nome;
        private System.Windows.Forms.DataGridViewTextBoxColumn MatriculaColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn raca;
        private System.Windows.Forms.DataGridViewTextBoxColumn contaBancaria;
        private System.Windows.Forms.DataGridViewTextBoxColumn Nota3Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn MediaColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn FrequenciaColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn SituacaoColumn1;
    }
}