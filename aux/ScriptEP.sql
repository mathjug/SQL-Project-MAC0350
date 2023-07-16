-- ========================= CRIANDO E PREENCHENDO A TABELA "Pessoa" =========================

CREATE TABLE Pessoa (
	ID serial,
	CPF CHAR(11) NOT NULL,
	Nome character varying(255),
	Endereço character varying(255),
	Instituição character varying(255),
	Data_Nascimento date,
	Login character varying(255) NOT NULL,
	Senha character varying(255) NOT NULL,
	PRIMARY KEY(ID),
	UNIQUE(CPF, Login)
);

INSERT INTO Pessoa
VALUES (DEFAULT, '11111111111', 'Nome1', 'Cidade1', 'Uni1', '2003-01-01', 'login1', 'senha1'),
	(DEFAULT, '22222222222', 'Nome2', 'Cidade2', 'Uni2', '2003-01-02', 'login2', 'senha2'),
	(DEFAULT, '33333333333', 'Nome3', 'Cidade3', 'Uni3', '2003-01-03', 'login3', 'senha3'),
	(DEFAULT, '44444444444', 'Nome4', 'Cidade4', 'Uni4', '2003-01-04', 'login4', 'senha4'),
	(DEFAULT, '55555555555', 'Nome5', 'Cidade5', 'Uni5', '2003-01-05', 'login5', 'senha5'),
	(DEFAULT, '66666666666', 'Nome6', 'Cidade6', 'Uni6', '2003-01-06', 'login6', 'senha6'),
	(DEFAULT, '77777777777', 'Nome7', 'Cidade7', 'Uni7', '2003-01-07', 'login7', 'senha7'),
	(DEFAULT, '88888888888', 'Nome8', 'Cidade8', 'Uni8', '2003-01-08', 'login8', 'senha8'),
	(DEFAULT, '99999999999', 'Nome9', 'Cidade9', 'Uni9', '2003-01-09', 'login9', 'senha9'),
	(DEFAULT, '10101010100', 'Nome10', 'Cidade10', 'Uni10', '2003-01-01', 'login10', 'senha10'),
	(DEFAULT, '11111111110', 'Nome11', 'Cidade11', 'Uni11', '2003-01-01', 'login11', 'senha11'),
	(DEFAULT, '12121212120', 'Nome12', 'Cidade12', 'Uni12', '2003-01-02', 'login12', 'senha12'),
	(DEFAULT, '13131313130', 'Nome13', 'Cidade13', 'Uni13', '2003-01-03', 'login13', 'senha13'),
	(DEFAULT, '14141414140', 'Nome14', 'Cidade14', 'Uni14', '2003-01-04', 'login14', 'senha14'),
	(DEFAULT, '15151515150', 'Nome15', 'Cidade15', 'Uni15', '2003-01-05', 'login15', 'senha15'),
	(DEFAULT, '16161616160', 'Nome16', 'Cidade16', 'Uni16', '2003-01-06', 'login16', 'senha16'),
	(DEFAULT, '17171717170', 'Nome17', 'Cidade17', 'Uni17', '2003-01-07', 'login17', 'senha17'),
	(DEFAULT, '18181818180', 'Nome18', 'Cidade18', 'Uni18', '2003-01-08', 'login18', 'senha18'),
	(DEFAULT, '19191919190', 'Nome19', 'Cidade19', 'Uni19', '2003-01-09', 'login19', 'senha19'),
	(DEFAULT, '20202020200', 'Nome20', 'Cidade20', 'Uni20', '2003-01-01', 'login20', 'senha20'),
	(DEFAULT, '21212121210', 'Nome21', 'Cidade21', 'Uni21', '2003-01-01', 'login21', 'senha21'),
	(DEFAULT, '22222222220', 'Nome22', 'Cidade22', 'Uni22', '2003-01-02', 'login22', 'senha22'),
	(DEFAULT, '23232323230', 'Nome23', 'Cidade23', 'Uni23', '2003-01-03', 'login23', 'senha23'),
	(DEFAULT, '24242424240', 'Nome24', 'Cidade24', 'Uni24', '2003-01-04', 'login24', 'senha24'),
	(DEFAULT, '25252525250', 'Nome25', 'Cidade25', 'Uni25', '2003-01-05', 'login25', 'senha25'),
	(DEFAULT, '26262626260', 'Nome26', 'Cidade26', 'Uni26', '2003-01-06', 'login26', 'senha26'),
	(DEFAULT, '27272727270', 'Nome27', 'Cidade27', 'Uni27', '2003-01-07', 'login27', 'senha27'),
	(DEFAULT, '28282828280', 'Nome28', 'Cidade28', 'Uni28', '2003-01-08', 'login28', 'senha28'),
	(DEFAULT, '29292929290', 'Nome29', 'Cidade29', 'Uni29', '2003-01-09', 'login29', 'senha29'),
	(DEFAULT, '30303030300', 'Nome30', 'Cidade30', 'Uni30', '2003-01-01', 'login30', 'senha30');

-- ========================= CRIANDO E PREENCHENDO A TABELA "Perfil" =========================

CREATE TABLE Perfil (
	ID serial,
	Codigo VARCHAR(20) NOT NULL,
	Tipo VARCHAR(255),
	PRIMARY KEY(ID),
	UNIQUE(Codigo)
);

INSERT INTO Perfil
VALUES (DEFAULT, 'JK', 'Acadêmico'),
	(DEFAULT, 'MF', 'Acadêmico'),
	(DEFAULT, 'PA', 'Acadêmico'),
	(DEFAULT, 'CM', 'Acadêmico'),
	(DEFAULT, 'JA', 'Acadêmico');

-- ========================= CRIANDO E PREENCHENDO A TABELA "Serviço" =========================

CREATE TYPE ServiceType as ENUM('Visualização', 'Inserção', 'Remoção', 'Alteração');

CREATE TABLE Serviço (
	ID serial,
	Codigo VARCHAR(20) NOT NULL,
	Descrição character varying(255),
	Tipo ServiceType,
	ID_Perfil BIGINT NOT NULL,
	FOREIGN KEY(ID_Perfil) REFERENCES Perfil(ID),
	PRIMARY KEY(ID),
	UNIQUE(Codigo)
);

INSERT INTO Serviço
VALUES (DEFAULT, 'JK1', 'Visualizar dados', 'Visualização', 1),
	(DEFAULT, 'JK2', 'Inserir dados', 'Inserção', 1),
	(DEFAULT, 'JK3', 'Remover dados', 'Remoção', 1),
	(DEFAULT, 'JK4', 'Alterar dados', 'Alteração', 1),
	(DEFAULT, 'MF1', 'Visualizar dados', 'Visualização', 2),
	(DEFAULT, 'MF2', 'Alterar dados', 'Alteração', 2),
	(DEFAULT, 'CM1', 'Visualizar dados', 'Visualização', 4),
	(DEFAULT, 'CM2', 'Inserir dados', 'Inserção', 4),
	(DEFAULT, 'CM3', 'Remover dados', 'Remoção', 4),
	(DEFAULT, 'JA1', 'Visualizar dados', 'Visualização', 5);

-- ==================== CRIANDO E PREENCHENDO A TABELA "Pessoa_usa_Perfil" ====================

CREATE TABLE Pessoa_usa_Perfil (
	ID_Pessoa BIGINT NOT NULL,
	ID_Perfil BIGINT NOT NULL,
	FOREIGN KEY(ID_Pessoa) REFERENCES Pessoa(ID),
	FOREIGN KEY(ID_Perfil) REFERENCES Perfil(ID),
	PRIMARY KEY(ID_Pessoa, ID_Perfil)
);

INSERT INTO Pessoa_usa_Perfil
VALUES (1, 1),
	(1, 2),
	(5, 1),
	(5, 3),
	(5, 4),
	(7, 2),
	(12, 5),
	(18, 1),
	(18, 2),
	(18, 3),
	(18, 4),
	(19, 1),
	(19, 2),
	(19, 3),
	(19, 4),
	(19, 5),
	(23, 1),
	(23, 2);

-- ==================== CRIANDO E PREENCHENDO A TABELA "Pessoa_usa_Serviço" ===================

CREATE TABLE Pessoa_usa_Serviço (
	ID_Pessoa BIGINT NOT NULL,
	ID_Serviço BIGINT NOT NULL,
	Date_Time timestamp NOT NULL,
	FOREIGN KEY(ID_Pessoa) REFERENCES Pessoa(ID),
	FOREIGN KEY(ID_Serviço) REFERENCES Serviço(ID),
	PRIMARY KEY(ID_Pessoa, ID_Serviço, Date_Time)
);

INSERT INTO Pessoa_usa_Serviço
VALUES (1, 1, '2023-07-10 15:30:00'),
	(1, 3, '2023-07-18 17:30:00'),
	(5, 2, '2023-08-18 17:30:00'),
	(5, 7, '2023-09-20 18:00:00'),
	(7, 6, '2021-07-18 12:47:00'),
	(7, 6, '2019-07-11 17:30:00'),
	(18, 1, '2023-11-07 19:23:00'),
	(18, 2, '2023-07-18 20:30:00'),
	(18, 5, '2020-12-21 12:01:00'),
	(18, 7, '2023-07-19 18:40:50'),
	(19, 1, '2021-02-08 12:30:00'),
	(19, 1, '2022-01-18 04:23:00'),
	(19, 8, '2002-09-28 08:56:00'),
	(19, 9, '2003-09-24 19:29:00'),
	(19, 10, '2023-12-18 03:30:00'),
	(23, 6, '2022-04-18 10:10:00');
	
-- ======================= CRIANDO E PREENCHENDO A TABELA "Funcionario" =======================

CREATE TABLE Funcionario (
	ID_Pessoa BIGINT NOT NULL,
	Função_Técnica character varying(255),
	PRIMARY KEY(ID_Pessoa),
	FOREIGN KEY(ID_Pessoa) REFERENCES Pessoa(ID)
);

INSERT INTO Funcionario
VALUES (28, 'Manutenção elétrica'),
	(29, 'Segurança'),
	(30, 'Limpeza');

-- ========================= CRIANDO E PREENCHENDO A TABELA "Docente" =========================

CREATE TABLE Docente (
	ID_Pessoa BIGINT NOT NULL,
	Especialidade character varying(255),
	PRIMARY KEY(ID_Pessoa),
	FOREIGN KEY(ID_Pessoa) REFERENCES Pessoa(ID)
);

INSERT INTO Docente
VALUES (1, 'Estatística'),
	(2, 'Cálculo'),
	(3, 'Química'),
	(4, 'Química 2'),
	(5, 'IA'),
	(6, 'ML'),
	(7, 'Grafos');

-- ========================== CRIANDO E PREENCHENDO A TABELA "Aluno" ==========================

CREATE TABLE Aluno (
	ID_Pessoa BIGINT NOT NULL,
	Curso character varying(255),
	Nota_de_Ingresso FLOAT,
	PRIMARY KEY(ID_Pessoa),
	FOREIGN KEY(ID_Pessoa) REFERENCES Pessoa(ID)
);

INSERT INTO Aluno
VALUES (8, 'Curso4', 8),
	(9, 'Curso5', 9),
	(10, 'Curso1', 10),
	(11, 'Curso2', 0),
	(12, 'Curso3', 1),
	(13, 'Curso4', 2),
	(14, 'Curso5', 3),
	(15, 'Curso1', 4),
	(16, 'Curso2', 5),
	(17, 'Curso3', 6),
	(18, 'Curso4', 7),
	(19, 'Curso5', 8),
	(20, 'Curso1', 9),
	(21, 'Curso2', 10),
	(22, 'Curso3', 0),
	(23, 'Curso4', 1),
	(24, 'Curso5', 2),
	(25, 'Curso1', 3),
	(26, 'Curso2', 4),
	(27, 'Curso3', 5);

-- ======================= CRIANDO E PREENCHENDO A TABELA "Disciplina" ========================

CREATE TABLE Disciplina (
	ID serial NOT NULL,
	Codigo CHAR(7) NOT NULL,
	Nome character varying(255),
	Ementa character varying(255),
	Data_de_Criação date,
	PRIMARY KEY(ID),
	UNIQUE(Codigo)
);

INSERT INTO Disciplina
VALUES (DEFAULT, 'MAC0110', 'IntroComp1', 'Básico de programação 1', '2020-10-19'),
	(DEFAULT, 'MAC0111', 'IntroComp2', 'Básico de programação 2', '2020-10-20'),
	(DEFAULT, 'MAC0112', 'IntroComp3', 'Básico de programação 3', '2020-10-21'),
	(DEFAULT, 'MAC0113', 'IntroComp4', 'Básico de programação 4', '2020-10-22'),
	(DEFAULT, 'MAC0114', 'IntroComp5', 'Básico de programação 5', '2020-10-23'),
	(DEFAULT, 'MAC0115', 'IntroComp6', 'Básico de programação 6', '2020-10-24'),
	(DEFAULT, 'MAC0116', 'IntroComp7', 'Básico de programação 7', '2020-10-25'),
	(DEFAULT, 'MAC0117', 'IntroComp8', 'Básico de programação 8', '2020-10-26'),
	(DEFAULT, 'MAC0118', 'IntroComp9', 'Básico de programação 9', '2020-10-27'),
	(DEFAULT, 'MAC0119', 'IntroComp10', 'Básico de programação 10', '2020-10-28'),
	(DEFAULT, 'MAC0120', 'IntroComp11', 'Básico de programação 11', '2020-10-29');

-- ======================= CRIANDO E PREENCHENDO A TABELA "Oferecimento" ======================

CREATE TABLE Oferecimento (
	ID_Aluno BIGINT NOT NULL,
	ID_Docente BIGINT NOT NULL,
	ID_Disciplina BIGINT NOT NULL,
	Data_Inicio date NOT NULL,
	Data_Fim date NOT NULL,
	Nota FLOAT,
	FOREIGN KEY(ID_Aluno) REFERENCES Aluno(ID_Pessoa),
	FOREIGN KEY(ID_Docente) REFERENCES Docente(ID_Pessoa),
	FOREIGN KEY(ID_Disciplina) REFERENCES Disciplina(ID),
	PRIMARY KEY(ID_Aluno, ID_Docente, ID_Disciplina, Data_Inicio)
);


INSERT INTO Oferecimento
VALUES (8, 1, 1, '2020-06-18', '2020-10-19', 9.4),
	(15, 1, 1, '2020-06-18', '2020-10-19', 10),
	(10, 1, 1, '2020-06-18', '2020-10-19', 5.7),
	(12, 1, 1, '2021-06-18', '2021-10-19', 6.5),
	(11, 1, 1, '2021-06-18', '2021-10-19', 4.9),
	(8, 3, 1, '2022-06-18', '2022-10-19', 7.8),
	(19, 3, 1, '2022-06-18', '2022-10-19', 9.6),
	(20, 3, 1, '2022-06-18', '2022-10-19', 9.8),
	(25, 2, 2, '2020-06-18', '2020-10-19', 3.2),
	(26, 2, 2, '2020-06-18', '2020-10-19', 3.3),
	(9, 2, 2, '2021-06-18', '2021-10-19', 7.6),
	(10, 2, 2, '2017-06-18', '2017-10-19', 0.3),
	(23, 5, 3, '2015-06-18', '2015-10-19', 10),
	(24, 5, 3, '2021-06-18', '2021-10-19', 10),
	(25, 5, 3, '2021-06-18', '2021-10-19', 0),
	(23, 4, 4, '2020-06-18', '2020-10-19', 0),
	(9, 4, 4, '2020-06-18', '2020-10-19', 2),
	(8, 4, 4, '2020-06-18', '2020-10-19', 0),
	(27, 6, 4, '2021-06-18', '2021-10-19', 4.5),
	(21, 6, 4, '2021-06-18', '2021-10-19', 7.7),
	(22, 1, 5, '2020-06-18', '2020-10-19', 9.5),
	(18, 1, 5, '2020-06-18', '2020-10-19', 0.3),
	(18, 6, 5, '2022-06-18', '2022-10-19', 4.8),
	(13, 3, 6, '2020-06-18', '2020-10-19', 7.9),
	(17, 3, 6, '2020-06-18', '2020-10-19', 8.2),
	(14, 4, 7, '2020-06-18', '2020-10-19', 8.9),
	(16, 1, 8, '2015-06-18', '2015-10-19', 0.4),
	(22, 2, 8, '2015-06-18', '2015-10-19', 9.7),
	(10, 3, 8, '2015-06-18', '2015-10-19', 5.5);


-- ======================================== FUNÇÕES PARA CONSULTAS ========================================

-- ========================= CONSULTA 1 =========================
CREATE FUNCTION serviços_por_perfil()
RETURNS TABLE (ID_Perfil BIGINT, Codigo_Perfil VARCHAR, ID_Serviço INT, Codigo_Serviço VARCHAR) AS $$
	SELECT s.ID_Perfil as ID_Perfil, p.Codigo as Codigo_Perfil, s.ID as ID_Serviço, s.Codigo as Codigo_Serviço
	FROM Serviço s, Perfil p
	WHERE s.ID_perfil = p.ID
	ORDER BY s.ID_Perfil ASC;
$$ LANGUAGE SQL;


-- ========================= CONSULTA 2 =========================
CREATE FUNCTION serviços_usados_perfil()
RETURNS TABLE (ID_Perfil INT, CodigoPerfil VARCHAR, TotalServiços BIGINT) AS $$
	SELECT p.ID as ID_Perfil, p.Codigo AS CodigoPerfil, COUNT(s.ID) AS TotalServiços
	FROM Perfil p, Serviço s, Pessoa_usa_Serviço h
	WHERE h.ID_Serviço = s.ID AND s.ID_Perfil = p.ID
	GROUP BY p.ID
	ORDER BY TotalServiços ASC;
$$ LANGUAGE SQL;

-- ==================== CONSULTA 3 (2 casos) ====================

-- I) CONSIDERANDO CADA PROFESSOR COMO UMA TURMA DIFERENTE
CREATE FUNCTION disciplinas_mais_oferecidas1()
RETURNS TABLE (ID_Disc BIGINT, Cod_Disc CHAR, ID_Docente BIGINT, Nome_docente VARCHAR, ID_Aluno BIGINT, Nome_aluno VARCHAR) AS $$
	SELECT ID_Disc, d.Codigo AS Cod_Disc, o.ID_Docente AS ID_Docente, docente.Nome AS Nome_docente, o.ID_Aluno AS ID_Aluno, aluno.Nome AS Nome_aluno
	FROM Oferecimento o, Disciplina d, Pessoa docente, Pessoa aluno, (
		SELECT DISTINCT ID_Disc, COUNT(*) AS N_Oferecimentos
		FROM (
			SELECT DISTINCT o.id_disciplina AS ID_Disc, o.ID_Docente, o.Data_Inicio
			FROM Oferecimento o
			) AS subquery
		GROUP BY ID_Disc
		ORDER BY N_Oferecimentos DESC
		LIMIT 5
		) AS subquery2
	WHERE d.ID = ID_Disc AND o.ID_Disciplina = ID_Disc AND docente.ID = o.ID_Docente AND aluno.ID = o.ID_Aluno;
$$ LANGUAGE SQL;

-- II) CONSIDERANDO APENAS DATAS DE INÍCIO DIVERGENTES COMO TURMAS DIFERENTES
CREATE FUNCTION disciplinas_mais_oferecidas2()
RETURNS TABLE (ID_Disc BIGINT, Cod_Disc CHAR, ID_Docente BIGINT, Nome_docente VARCHAR, ID_Aluno BIGINT, Nome_aluno VARCHAR) AS $$
	SELECT ID_Disc, d.Codigo AS Cod_Disc, o.ID_Docente AS ID_Docente, docente.Nome AS Nome_docente, o.ID_Aluno AS ID_Aluno, aluno.Nome AS Nome_aluno
	FROM Oferecimento o, Disciplina d, Pessoa docente, Pessoa aluno, (
		SELECT DISTINCT ID_Disc, COUNT(*) AS N_Oferecimentos
		FROM (
			SELECT DISTINCT o.id_disciplina AS ID_Disc, o.Data_Inicio
			FROM Oferecimento o
			) AS subquery
		GROUP BY ID_Disc
		ORDER BY N_Oferecimentos DESC
		LIMIT 5
		) AS subquery2
	WHERE d.ID = ID_Disc AND o.ID_Disciplina = ID_Disc AND docente.ID = o.ID_Docente AND aluno.ID = o.ID_Aluno;
$$ LANGUAGE SQL;

-- ========================= CONSULTA 4 =========================
CREATE FUNCTION docentes_desde_2020()
RETURNS TABLE (ID_Docente BIGINT, Nome_Docente VARCHAR, N_Disciplinas BIGINT) AS $$
	SELECT ID_Docente, p.Nome as Nome_Docente, COUNT(*) AS N_Disciplinas
	FROM Pessoa p, (
	  SELECT DISTINCT ID_Docente, ID_Disciplina, Data_Inicio
	  FROM Oferecimento
	  WHERE Data_Inicio >= '2020-05-01' AND Data_Fim <= '2023-05-31'
	) AS subquery
	WHERE p.ID = ID_Docente
	GROUP BY ID_Docente, p.Nome
	ORDER BY N_Disciplinas DESC
	LIMIT 5;
$$ LANGUAGE SQL;

