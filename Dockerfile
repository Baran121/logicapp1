FROM mcr.microsoft.com/azure-functions/dotnet:3.0.14492-appservice

ENV AzureWebJobsStorage=DefaultEndpointsProtocol=https;AccountName=myown131;AccountKey=KzuCcEra458VF3Dn0K/QqQRh3KxSgsrEDBGXAwcEg5niICZX0dymQXTzJlHQTytCKaurZv75cAHSLNCuRdqKwA==;BlobEndpoint=https://myown131.blob.core.windows.net/;QueueEndpoint=https://myown131.queue.core.windows.net/;TableEndpoint=https://myown131.table.core.windows.net/;FileEndpoint=https://myown131.file.core.windows.net/;
ENV AZURE_FUNCTIONS_ENVIRONMENT Development
ENV AzureWebJobsScriptRoot=/home/site/wwwroot
ENV AzureFunctionsJobHost__Logging__Console__IsEnabled=true
ENV FUNCTIONS_V2_COMPATIBILITY_MODE=true


COPY . /home/site/wwwroot
