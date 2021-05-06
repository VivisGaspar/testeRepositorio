use hcode;

select * from tb_pessoas;
select * from tb_funcionarios;

create table tb_pessoas (
	idpessoa INT auto_increment NOT NULL,
    desnome varchar(256) NOT NULL,
    dtcadastro timestamp not null default current_timestamp(),
    constraint PK_pessoas primary key (idpessoa)
);

create table tb_funcionarios (
	idfuncionario int auto_increment not null,
	idpessoa int not null,
    vlsalario decimal(10,2) not null default 1000.00,
    dtadmissao date not null,
    constraint PK_funcionarios primary key (idfuncionario),
    constraint FK_funcionarios_pessoas foreign key (idpessoa)
		references tb_pessoas (idpessoa)
);