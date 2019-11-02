# Desafio02

```


1) Expor a aplicação na porta 8087
2) A aplicação deverá ser exibir Hello <seu nome> com uma cor de fundo amarela. (yellow).
3) A aplicação roda nativamente na porta 9090
4) Na minha máquina de desenvolvimento eu tenho o python-pip python-dev build-essential instalado. Você pode usar o pip para instalar.. algo do tipo: pip install -r requirements.txt
5) Ahhh minha aplicação roda com o framework Flask, mas eu coloquei tudo no requirements.txt
6) Para rodar a aplicação é só fazer um python color.py 
7) a aplicação espera 2 variáveis, APP_NAME e APP_COLOR
8) Qualquer dúvida, fale com o Pedro, pois estou saindo de férias, pediram pra por em produção hoje mesmo, mesmo com alguns bugs conhecidos.


```



## DockerHub

### docker push pereiraze/desafio02



## Forma de subir o container docker

### docker run -p 8087:9090 -e APP_NAME=<app_name> -e APP_COLOR=<app_color> pereiraze/desafio02

```

<app_name> --> nome que você deseja que apareça na tela
<app_color> --> core de fundo em inglês (yellow, red, blue, black...)


```

