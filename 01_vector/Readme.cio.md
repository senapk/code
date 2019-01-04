# Vetor, Vector ou Lista

Processe os comandos abaixo e esteja atento aos requisitos.

Requisito:
    Utilize uma estrutura de armazenamento linear que permita elementos duplicados e mantenha a ordem de inserção.

- A primeira palavra da linha será sempre um comando escrito em minúsculo sem caracteres especiais.
- As linhas terão no máximo 1000 caracteres.
- No exemplo:
    - linhas vazias ou precedidas de # devem ser ignoradas.
    - Comandos são precedidos por $

TODO



```bash
#__case inicio !%
# O comando "$show" mostra os valores do vetor.
# O comando "$add V [V ...]" adiciona os valores no final do vetor.
$show
[ ]
$add 1 2 3 4
$show
[ 1 2 3 4 ]
$end
```

```bash
#__case add_mais_elementos !%
$add 4 5 6 8 1 2 2 9
$add 2 2 2 8 9 0 1 4
$add 3 3 2 1
$show
[ 4 5 6 8 1 2 2 9 2 2 2 8 9 0 1 4 3 3 2 1 ]
#$end

#__case find_elemento !%
# o comando "$find V [V ...]" retorna o índice da primeira ocorrência dos valores procurado ou -1 se ele não existir.
$find 7
[ -1 ]
$find 6 8 9
[ 2 3 7 ]
$find 2 0 1 7 10
[ 5 13 4 -1 -1 ]
$end
```

```bash
#__case remover_por_indice !%
# o comando "$rmi ind" remove o elemento dado o índice. Se o índice não existir, informe a falha.
$add 4 5 6 8 1 2 2 9
$rmi 0
$show
[ 5 6 8 1 2 2 9 ]
$rmi 5
$show
[ 5 6 8 1 2 9 ]
$rmi 5
$show
[ 5 6 8 1 2 ]
$rmi 2
$show
[ 5 6 1 2 ]
$rmi -1
fail
$rmi 4
fail
$show
[ 5 6 1 2 ]
$end
```

```bash
#__case remove_all !%
# o comando "$rma V" remove todos os elemento que contém esse valor. Observe que você deve caminhar pela estrutura UMA ÚNICA VEZ removendo os elementos. NÃO utilize find + remover por índice.
$add 2 2 2 2
$rma 2
$show
[ ]
$add 4 4 4 4 2 2 2 4 4 4 1 2 3 4
$rma 7
$show
[ 4 4 4 4 2 2 2 4 4 4 1 2 3 4 ]
$rma 2
$show
[ 4 4 4 4 4 4 4 1 3 4 ]
$rma 4
$show
[ 1 3 ]
$end
```

