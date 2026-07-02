#agora esse arquivo é um módulo
#Responsável por funcionalidades relacionadas aos funcionários
#

from database import conectar

'''def lista_funcionarios():

    conexao = conectar()

    #criar cursor
    cursor = conexao.cursor()

    #sql da consulta
    sql = """
    SELECT 
        f.id_funcionario,
        f.nome,
        f.cargo,
        s.nome AS setor
    FROM funcionario f
    JOIN setor s ON f.id_setor = s.id_setor
    """
    #executar sql
    cursor.execute(sql)

    #recuperar dados
    dados = cursor.fetchall()

    #exibir resultados
    for funcionario in dados:
        print(funcionario)

    #fechar conexão
    cursor.close()
    conexao.close()
'''
'''def cadastrar_funcionario(nome, cargo, id_setor):
    conexao = conectar()
    cursor = conexao.cursor()

    sql = """
    INSERT INTO funcionario (nome, cargo, id_setor)
    VALUES (%s, %s, %s)
    """
    valores = (nome, cargo, id_setor)

    cursor.execute(sql, valores)
    conexao.commit()

    print("Funcionário cadastrado com sucesso!")

    cursor.close()
    conexao.close()
'''

'''def atualizar_funcionario(id_funcionario, nome, cargo, id_setor):
    conexao = conectar()
    cursor = conexao.cursor()

    sql = """
    UPDATE funcionario
    SET nome = %s, cargo = %s, id_setor = %s
    WHERE id_funcionario = %s
    """
    valores = (nome, cargo, id_setor, id_funcionario)

    cursor.execute(sql, valores)
    conexao.commit()

    print("Funcionário atualizado com sucesso!")

    cursor.close()
    conexao.close()'''

def deletar_funcionario(nome, cargo, id_setor):
    conexao = conectar()
    cursor = conexao.cursor()

    sql = "DELETE FROM funcionario WHERE nome = %s AND cargo = %s AND id_setor = %s"
    valores = (nome, cargo, id_setor)

    cursor.execute(sql, valores)
    conexao.commit()

    print("Funcionário deletado com sucesso!")

    cursor.close()
    conexao.close()