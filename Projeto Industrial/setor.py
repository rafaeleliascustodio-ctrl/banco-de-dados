from database import conectar

def listar_setor():
    conexao = conectar()
    cursor = conexao.cursor()

    sql = "SELECT * FROM setor"
    cursor.execute(sql)

    setores = cursor.fetchall()

    for setor in setores:
        print(setor)

    cursor.close()
    conexao.close()

def criar_setor():
    conexao = conectar()
    cursor = conexao.cursor()

    nome_setor = input("Digite o nome do setor: ")
    localizacao = input("Digite a localização do setor: ")

    sql = "INSERT INTO setor (nome, localizacao) VALUES (%s, %s)"
    valores = (nome_setor, localizacao)

    cursor.execute(sql, valores)
    conexao.commit()

    print(f"Setor '{nome_setor}' criado com sucesso!")

    cursor.close()
    conexao.close()

def atualizar_setor(id_setor, nome, localizacao):
    conexao = conectar()
    cursor = conexao.cursor()

    sql = "UPDATE setor SET nome = %s, localizacao = %s WHERE id_setor = %s"
    valores = (nome, localizacao, id_setor)

    cursor.execute(sql, valores)
    conexao.commit()

    print("setor atualizado com sucesso!")

    cursor.close()
    conexao.close()