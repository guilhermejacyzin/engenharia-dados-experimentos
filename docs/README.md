# 🧪 Projeto: Ambiente de Engenharia de Dados Simulado na AWS EC2

Este repositório documenta a criação de um **ambiente fictício de engenharia de dados** configurado em uma **instância EC2 com Ubuntu na AWS**, com foco em:
- Instalação e simulação de banco de dados PostgreSQL
- Automatização de versionamento via Git e GitHub
- Documentação de boas práticas para experimentação

---

## ✅ Objetivos do Projeto

- Simular um ambiente de desenvolvimento em nuvem para engenharia de dados
- Versionar automaticamente alterações com Git
- Documentar a instalação e configuração de serviços como PostgreSQL
- Criar uma estrutura reutilizável para testes e estudos

---

## ☁️ Infraestrutura

| Recurso           | Configuração                                 |
|-------------------|----------------------------------------------|
| **Instância EC2** | Ubuntu Server 22.04                          |
| **Banco de dados**| PostgreSQL (instalado via `apt`)             |
| **Versionamento** | Git + GitHub CLI (`gh`)                      |
| **Automação**     | Script de commit automático via `cron`       |

---

## ⚙️ Componentes Instalados

### PostgreSQL

Instalado com:

```bash
sudo apt update
sudo apt install postgresql -y

Iniciado com 

sudo systemctl start postgresql


Script de Commit Automático
#!/bin/bash
cd /home/ubuntu/engenharia-dados-experimentos || exit 1
git add .
git commit -m "Commit automático - $(date '+%Y-%m-%d %H:%M:%S')" 2>/dev/null
git push origin master

Esse script foi agendado para rodar a cada 30 minutos com crontab:
*/30 * * * * /home/ubuntu/commit_automatico.sh >> /home/ubuntu/cron_commit.log 2>&1


🗃️ Estrutura do Banco de Dados
Foi gerado um dump de estrutura do PostgreSQL com:
sudo -u postgres pg_dump -s > docs/estrutura_banco.sql
🔸 O arquivo resultante está em docs/estrutura_banco.sql

🔸 Não contém dados reais; apenas estrutura de tabelas fictícias

📁 Estrutura do Projeto
engenharia-dados-experimentos/
├── docs/
│   ├── README.md                     # Este arquivo
│   ├── comandos_instalacao_postgres.sh
│   └── estrutura_banco.sql
├── script-teste.py                  # Arquivo de exemplo/teste
├── commit_automatico.sh             # Script de automação Git
└── cron_commit.log                  # Log de execuções do cron

🔐 Segurança e Cuidados
Nenhuma senha ou chave privada foi versionada

.gitignore protege arquivos sensíveis como .env, .csv, .bak

O ambiente é 100% fictício e usado apenas para fins educacionais

🧠 Lições aprendidas
Criação de ambientes simulados na AWS EC2

Instalação manual e via script de PostgreSQL

Uso prático de git, cron e gh (GitHub CLI)

Automação de tarefas em servidores Linux

👨‍💻 Autor
Guilherme Jacyzin
Explorando Engenharia de Dados, Cloud e Automação
📘 linkedin.com/in/guilhermejacyzin

📌 Aviso
Este projeto tem fins didáticos e experimentais.
Sinta-se à vontade para clonar, adaptar e usar como base para seus estudos.

