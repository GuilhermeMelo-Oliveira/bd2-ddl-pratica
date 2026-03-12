alter table alunos
    add telefone VARCHAR(20);                        -- Desafio 1


alter table matriculas 
    MODIFY COLUMN curso VARCHAR(200);                -- Desafio 2



alter table matriculas
     ADD CONSTRAINT fk_matricula_aluno               -- Desafio 3
     FOREIGN KEY (aluno_id)
     REFERENCES alunos(id);



CREATE VIEW alunos_matricula AS
     SELECT a.id, a.nome, m.curso, m.data_matricula FROM alunos a       -- Desafio 4
     JOIN matriculas m ON a.id = m.aluno_id;

