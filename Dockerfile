# Imagem que iremos utilizar para execução do nosso aplicativo
FROM mcr.microsoft.com/dotnet/core/runtime:2.2

# Diretório para destino dos arquivos publicados para o projeto
WORKDIR /opt/hello-world-docker-windows

# Copia todos os arquivos Copia todo os arquivos publicas para a pasta do container
# Estou usando a versão 2.2 do .NET Core (coloque a versão conforme o resultado da sua instalação ou versão selecionada)
# hello-world-docker-windows será o nome da nossa imagem e o nome da pasta da nossa publicação copiada para o container
COPY ./src/bin/Release/netcoreapp2.2/publish/ .

# Informa o que será executado dentro do nosso container
ENTRYPOINT ["dotnet", "HelloWorld.dll"]
