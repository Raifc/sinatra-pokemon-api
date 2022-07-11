# Uma API simples feita com Sinatra e Docker
Essa é uma API simples feita utilizando o framework Sinatra utilizando Postgres e com o Docker. 

## Executando a aplicação
Em seu terminal rode: `docker-compose build`

Após o comando acima, rode: `docker-compose up`

A aplicação ficará disponivel em `localhost:3030`

# Endpoint
## GET /api/v1/pokemons

### Exemplo de resposta (Requisição bem-sucedida)

```json
{
    "data": [
        {
            "id": 1,
            "identifier": "bulbasaur",
            "height": 7,
            "weight": 69,
            "base_experience": 64,
            "order": 1,
            "is_default": true,
            "created_at": "2022-07-11T01:47:26.161Z",
            "updated_at": "2022-07-11T01:47:26.161Z"
        }
        ...
}        
```

### Exemplo de resposta (Falha na requisição)

```json
{
    message: 'Something went wrong'
}
```

