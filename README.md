QA Smarkio Desafio Smarkio - QA Jr.

Componentes necessários do projeto na sua máquina para conseguir realizar o teste.

Pré Requisitos Visual Studio Code (16.10.2) com as seguintes extensões:

Cucumber (Gherkin) Full Support 2.15.1
Ruby 0.28.1
Snippets and Syntax Highlight for Gherkin (Cucumber) 0.13.5
Ruby Language Colorization 0.1.0
VSCode Ruby 0.28.0

Configuração:

Baixar a versão 3.0.1-1 do ruby, com DevKit.

https://rubyinstaller.org/downloads/

Passos:

1 - Ao executar o download, você irá ver uma tela para escolher o diretório (utilizar diretório default) e 3 checkbox abaixo, 2 check's que configuram as variáveis de ambiente e adicionam arquivos .rb a instalação atual, e o ultimo é necessário dar um check, que está falando para utilizar o padrão UTF-8 (Padrão de caracteres, assim ele conseguira ler/utilizar caracteres especiais).

2 - Após a instalar, aparecerá um box descrito: run 'ridk install', deixe marcado e clique em "Finish", nesse passo, você já instalou o ruby, mas ainda é necessário instalar o DevKit (Kit de ferramentas para desenvolvimento).

    Abrirá um terminal então instale as 3 opções na ordem 1,2,3 que irá ser instalados pacotes e será realizado configurações, é possível fazer as mesmas configurações manuais ou por linha de comando, mas nas últimas versões do ruby, eles criaram essa interface para facilitar.

Instalando o Bundler:
O bundler é nossa gema que gerencia as dependências do projeto, ele utiliza como referência para o seu trabalho o arquivo Gemfile, que é onde você adiciona todas as dependências do seu projeto.

Pra você utiliza-lo é necessário instalar, executando o comando abaixo no terminal:

  - gem install bundler

O comando abaixo irá realizar o download e instalação de todas as gemas do arquivo GemFile.

  - bundle install

  Obs: Se estiver dando problema neste momento, executar o comando abaixo e depois o bundle install:

  - bundle update --bundler

Realizar o download do chromedriver e geckodriver nos respectivos sites, e colocar os arquivos dentro da pasta Ruby25-x64/bin.... Obs: o chrome headless (chrome sem interface, mas tira print screen do mesmo jeito, é muito utilizado para CI, que o servidor não tem uma interface) já vem baixado automaticamente junto com o chromedriver.

  - http://chromedriver.chromium.org/downloads
  - https://github.com/mozilla/geckodriver/releases

Executando testes
Para realizar execução dos testes é necessário realizar os comandos abaixo no terminal dentro da pasta do projeto.

Parametros:

cucumber: comando que inicia execução dos casos de teste.

Possibilidades de browser configurados, chrome, chrome_headless, firefox, ie.
- chrome=true: sinaliza que desejo executar os testes somente no navegador Chrome.(É possível configurar os outros navegadores no arquivo: ..\features\support\env.rb)

Rodar por feature, passar o caminho, Ex:

features/exemplo.feature

Rodar utilizando as tags:

-t @exemplo

Rodar por ambiente, ambientes são configurados dentro do arquivo support/env.rb e data/data.yml:
  ti=true
  qa=true
  prod=true

######### Exemplos de comando completo #########
## Rodar apenas a feature específica.
  cucumber features/exemplo.feature 
## Rodar todos os cenarios com a tags.
  cucumber -t @exemplo

Resultado do teste:

Existe uma pasta dentro do diretório que se chama "Report", nela você poderá verificar duas imagens, a primeira é o sucesso da busca e a segunda é do resultado final do teste.

Também existe um documento que será gerado com o nome de "relatorio.html", onde você poderá ver o teste validado em um formato mais amigavel.

Gem que serve de auxilio na criação do projeto e Configuração:(Pretest)

gem install pretest


O código usado foi baseado em ruby, cucumber e capybara. O teste simula o procedimento de busca e compra do produto camisa Palmeiras.

Arthur Salustiano - Projeto Teste de QA Jr - Smarkio
