#!/bin/bash
MENU=0
ORA(){
clear
read -p "Digite o nome do arquivo" NOME
sort $NOME
echo "Pressione [enter] para finalizar"
read temp
}
ORN(){
clear
read -p "Digite o nome do arquivo" NOME
sort -n $NOME
echo "Pressione [enter] para finalizar"
read temp
}
CLD(){
clear
read -p "Digite o nome do arquivo" NOME
uniq -c $NOME
echo "Pressione [enter] para finalizar"
read temp
}
MLD(){
clear
read -p "Digite o nome do arquivo" NOME
uniq -d $NOME
echo "Pressione [enter] para finalizar"
read temp
}
EUC(){
clear
read -p "Digite o nome do arquivo" NOME
sort $NOME
read -p "Qual coluna quer mostrar?" NUM
cat $NOME | cut -d ' ' -f$NUM
echo "Pressione [enter] para finalizar"
read temp
}
MAD(){
clear
read -p "Digite o nome do arquivo" NOME
read -p "Digite o nome do arquivo" NOME2
diff $NOME $NOME2
echo "Pressione [enter] para finalizar"
read temp
}

while [ $MENU != 7 ]; do
	echo "1) Organize Alfabeticamente"
	echo "2) Organize Numericamente"
	echo "3) Conte linhas Duplicadas"
	echo "4) Mostre linhas Duplicadas"
	echo "5) Escolha uma coluna"
	echo "6) Mostre a diferença"
	echo "7) Sair"
	read MENU

	[ $MENU == 1 ] && ORA
	[ $MENU == 2 ] && ORN
	[ $MENU == 3 ] && CLD
	[ $MENU == 4 ] && MLD
	[ $MENU == 5 ] && EUC
	[ $MENU == 6 ] && MAD
done
