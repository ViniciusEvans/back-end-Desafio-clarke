# Back-end desafio Clarke energia

API back-end para conectar ao banco de dados, procurar dados, cadastrar novos clientes, logar na plataforma e validar token do cliente.

## Instalação

Instale o projeto com:

Se for ssh:

```bash
  git clone git@github.com:Seu-usuário/back-end-Desafio-clarke.git
  cd back-end-Desafio-clarke
```

Se for https:

```bash
  git clone https://github.com/seu-usuário/back-end-Desafio-clarke.git
  cd back-end-Desafio-clarke
```

Entre na pasta:

```bash
  cd back-end-Desafio-clarke
```

Instale as dependências do projeto com:

```bash
  npm install
```

Crie o banco de dados PostgreSQL e insira as informações com o schema na pasta raiz.

Configure as variáveis de ambiente criando um arquivo .env com os parâmetros:

```env
DB_HOST=
DB_USER=
DB_PASS=
DB_PORT=
DB_DATABASE=
DB_SEGREDO=
```

Rode a API com:

```bash
  npm start
```
