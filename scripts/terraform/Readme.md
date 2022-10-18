Каталог с Terraform.

18.10.2022

Сначала из каталога s3, для создания бакета в YC

```bash
export YC_TOKEN=$(yc config get token)
terraform init
terraform plan
terraform apply --auto-approve
```

Далее из каталога stage

```bash
export YC_TOKEN=$(yc config get token)
terraform init
terraform workspace new stage
terraform init
terraform plan
terraform apply --auto-approve
terraform output -json > output.json
```

По итогу - создаются 7 виртуальных машин (6 - Ubuntu 22.04, proxy - ubuntu 18.04 NAT Instance).

Создаются сеть и две подсети 192.168.101.0/24 и 192.168.102.0/24.

Настраиваются маршруты между ними.

Арендуется белый IP.

Прописываются DNS YC в соответствии с заданием.

В output.json выводится информацию о всех выданных ip адресах, для дальнейшего использования с Ansible.

Состояние воркспейса stage сохраняется в S3 бакете YC.

По завершении не забыть удалить всё, сначала в каталоге stage затем в s3.

```bash
terraform destroy --auto-approve
```

