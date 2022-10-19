# /bin/bash
#export TF_VAR_yandex_access_key=$(terraform output -json access_key)
#export TF_VAR_yandex_secret_key=$(terraform output -json secret_key)
export access_key=$(terraform output -json access_key) && echo 'Export access_key compleate'
export secret_key=$(terraform output -json secret_key) && echo 'Export secret_key compleate'
