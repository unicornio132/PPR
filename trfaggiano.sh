#!/bin/bash
# Autor: Thales Roberto Faggiano
USUARIO=Thales
SENHA=123
MENU=0
CARQ(){
clear
read -p "Digite o nome do arquivo\n" NOME
`> $NOME`
echo "Pressione [enter] para concluir"
read temp
}
AARQ(){
clear
read -p "Digite o nome do arquivo\n" NOME
`rm -rf $NOME`
echo "Pressione [enter] para concluir"
read temp
}
CGARQ(){
clear
read -p "Digite o nome do arquivo\n" NOME
`gzip $NOME`
echo "Pressione [enter] para concluir"
read temp
}
CBARQ(){
clear
read -p "Digite o nome do arquivo\n" NOME
`bzip2 $NOME`
echo "Pressione [enter] para concluir"
read temp
}
DGARQ(){
clear
read -p "Digite o nome do arquivo\n" NOME
`gunzip $NOME`
echo "Pressione [enter] para concluir"
read temp
}
DBARQ(){
clear
read -p "Digite o nome do arquivo\n" NOME
`bunzip2 $NOME`
echo "Pressione [enter] para concluir"
read temp
}
HARQ(){
clear
read -p "Digite o nome do arquivo\n" NOME
`sha256sum $NOME > $NOME.sha`
echo "Pressione [enter] para concluir"
read temp
}
CHARQ(){
clear
read -p "Digite o nome do arquivo\n" NOME
sha256sum -c $NOME
echo "Pressione [enter] para concluir"
read temp
}
read -p "Digite o usuário: " USER
read -p "Digite a senha: " PASS
if [ $USER == $USUARIO ]; then
 if [ $PASS == $SENHA ]; then
  while [ $MENU != 9 ]; do
	clear
	echo "1) Crie arquivo"
	echo "2) Apague arquivo"
	echo "3) Compacte com GZIP"
	echo "4) Compacte com BZIP2"
	echo "5) Descompacte GZIP"
	echo "6) Descompacte BZIP2"
	echo "7) Faca HASH"
	echo "8) Confirme HASH"
	echo "9) Sair"
	read MENU
	[ $MENU == 1 ] && CARQ
	[ $MENU == 2 ] && AARQ
	[ $MENU == 3 ] && CGARQ
	[ $MENU == 4 ] && CBARQ
	[ $MENU == 5 ] && DGARQ
	[ $MENU == 6 ] && DBARQ
	[ $MENU == 7 ] && HARQ
	[ $MENU == 8 ] && CHARQ
  done
 fi
fi
