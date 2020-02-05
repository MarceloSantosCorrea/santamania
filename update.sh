#!/usr/bin/env bash

clear
echo "==================================================================================="
echo "| Atualizando Ciclano.io                                                          |"
echo "==================================================================================="
echo "| Comandos Adicionais                                                             |"
echo "|       --migrate         : Para rodar as migrates                                |"
echo "|       --composer-update : Para atualizar as bibliotecas                         |"
echo "|       --node-prod       : Para compilar para PRODUÇÃO os arquivos VueJS         |"
echo "|       --node-dev        : Para compilar para DESENVOLVIMENTO os arquivos VueJS  |"
echo "==================================================================================="
echo

git add .
git commit -m "..."
git pull

for var in "$@"
do
    case "$var" in
          --migrate)
                php artisan migrate
                ;;
          --composer-update)
                composer update --no-dev
                ;;
          --node-prod)
                npm run production
                ;;
          --node-dev)
                npm run development
                ;;
     esac
done

chattr -i .env
chown www-data:www-data -R *
chown www-data:www-data -R ./.gitignore
chmod 555 -R *
chmod 775 -R storage
chmod 775 -R bootstrap
chattr +i .env

composer dumpautoload

echo "==================================================================================="
echo "| Atualizado com sucesso!                                                         |"
echo "==================================================================================="
