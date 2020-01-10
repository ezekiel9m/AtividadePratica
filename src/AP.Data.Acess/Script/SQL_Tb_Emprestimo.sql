
CREATE TABLE [dbo].[EMPRESTIMO] (
    [EMPID]          BIGINT NOT NULL,
    [DATAEMPRESTIMO] DATETIME   NOT NULL,
    [DATADEVOLUCAO]  DATETIME   NOT NULL,
    [VALORMULTA]     MONEY  NULL,
    [LIVROID]        BIGINT NOT NULL,
    [ALUNOID]        BIGINT NOT NULL,
    PRIMARY KEY CLUSTERED ([EMPID] ASC),
    CONSTRAINT [FK_LIVRO] FOREIGN KEY ([LIVROID]) REFERENCES [dbo].[LIVRO] ([LIVROID]),
    CONSTRAINT [FK_ALUNO] FOREIGN KEY ([ALUNOID]) REFERENCES [dbo].[ALUNO] ([ALUNOID])
);

