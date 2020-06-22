  # Desafio QA - ZenKlub

1. [Instalação e Configuração](https://github.com/luanlinares/challenge_qa_zk#instala%C3%A7%C3%A3o-e-configura%C3%A7%C3%A3o)  

2. [Execução dos Testes Automatizados](https://github.com/luanlinares/challenge_qa_zk/blob/master/README.md#execução-dos-testes-automatizados)  

3. [Estrutura do Projeto](https://github.com/luanlinares/challenge_qa_zk/blob/master/README.md#estrutura-do-projeto)

4. [Considerações Gerais](https://github.com/luanlinares/challenge_qa_zk/blob/master/README.md#considerações-gerais) 

4. [Extras](https://github.com/luanlinares/challenge_qa_zk/blob/master/README.md#extras)  


> # Instalação e Configuração

**Ruby**

Esse projeto foi realizado utilizando Ruby como linguagem em sua versão 2.6.6

*Para Instalação no Windows, realize os seguintes passos:*

1. Accesse https://rubyinstaller.org/downloads/.

2. Faça o download do arquivo indicado, com a opção de devkit.

3. Instalação. 
    
    a. Ative a instalação padrão, marcando todas as opções

4. Accesse o terminal e verifique se a instalação foi realizada corretamente
    
   Execute o comando

    `ruby -v`

 Se a sua instalação foi realizada corretamente, você deve visualizar algo parecido com:
        
        ruby 2.6.6p146 (2020-03-31 revision 67876) [x64-mingw32]

*Para Instalação no Linux, realize os seguintes passos:*

1. Execute o seguinte comando no terminal
   
   `rbenv install 2.6.6`

2. Accesse o terminal e verifique se a instalação foi realizada corretamente
    
   Execute o comando

    `ruby -v`

*Importante:*

Caso tenha alguma versão do Ruby ja instalada, não é necessario reinstalar. Apenas atualizar para a versão mais recente. 

**Bundler**

Responsável por gerenciar as instalações das dependências. 

Para instalar o bundler, basta executar o seguinte comando:
 
 `gem install bundler`


**ChromeDriver**

O projeto está configurado para ser executado no navegador Google Chrome. Sendo assim é necessário realizar o download do ChromeDriver de acordo com a versão do seu navegador [neste link](https://chromedriver.chromium.org/downloads). 

O arquivo chromedriver, preferencialmente deve ser armazenado na pasta Ruby/bin.


**IDE - Visual Studio Code**

Nesse projeto, utilizamos a IDE VSCode para escrever nossos testes. Para instalar basta acessar o link abaixo para fazer o download do mesmo:

https://code.visualstudio.com/download

**Plugins**

Ruby;

ruby-rubocop;

Cucumber (Gherkin) Full Support;

Snippets and Syntax Highlight for Gherkin (Cucumber).


**Dependências**

As dependências utilizadas no projeto estão no arquivo 'gemfile', são elas: 

byebug

capybara

cucumber

selenium-webdriver

site_prism

rubocop


**Clone o projeto**

1. Clone o project:
    
    * Usando SSH:
        
        `git@github.com:luanlinares/challenge_qa_zk.git`

    * Usando https:
        
        `https://github.com/luanlinares/challenge_qa_zk.git`


>  # Execução dos Testes Automatizados

**Na pasta automation_tests**

*Bundle Install* → Irá instalar todas as dependências necessárias para execução dos testes.

*Cucumber* → Irá executar todos os cenários de teste do projeto exibindo o resultado no terminal

*cucumber --format html --out=report.html* → Irá executar todos os cenários de teste e ao final, um relatório em formato HTML será gerado na pasta tests.


>  # Estrutura do Projeto

**Features**
Pasta principal do projeto com toda a estrutura necessária para execução. Contém as seguintes subpastas. 

*pages* → Contém arquivos auxiliares, onde serão armazenadas as classes e métodos de teste, podendo ser reutilizados em qualquer arquivo.

*specs* → Armazena os arquivos .feature, que descrevem os cenários de teste utilizando BDD. 

*step_definitions* → Faz a chamnada dos métodos e classes das pages para executar os cenários descritos nos arquivos .feature

*support* → Contém os arquivos de configuração do projeto, onde são determinados os navegadores, url padrão, tempo máximo de espera, 
ações realizadas antes e depois de cada cenário, entre outros. 


**Gemfile e Gemfile.lock**
Arquivos que armazenam as dependências necessárias para rodar o projeto. 


**Report.html**
Arquivo de relatório da execução dos testes. 



>  # Considerações Gerais

**Quais testes foram realizados?**
 
1. Login na plataforma.
2. Validação de agendamento inexistente.
3. Visualização detalhada do perfil do primeiro profissional listado na busca. 

>  # Extras

**O que contém a pasta extras?**

1. Vídeo da execução do teste.
2. Relatório extra de teste de performance, utilizando a ferramenta .
3. Relatório extra de teste de acessibilidade, utilizando a ferramenta . 


