#conexão com o banco de dados

#instalar o drive conector
#mysqlconnector

import mysql.connector

def conectar():
    conexao = mysql.connector.connect(
    #o drive tenta abir uma conexão
    host = "localhost",
    user = "root",
    password = "root",
    database = "projetoindustrial",
    port = 3306
    )
    return conexao