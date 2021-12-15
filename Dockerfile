FROM mcr.microsoft.com/azure-functions/dotnet:3.0.14492-appservice

ENV AzureWebJobsStorage=DefaultEndpointsProtocol=https;AccountName=myown132;AccountKey=cAULM1ouwecz5ZN+JyQ4weh9tbkGK0bJ6YEBYoQfCAQQuCwRNsCEilUl+cuOshpQC3W2r2Z6J1XAed9CfmZOXg==;BlobEndpoint=https://myown132.blob.core.windows.net/;QueueEndpoint=https://myown132.queue.core.windows.net/;TableEndpoint=https://myown132.table.core.windows.net/;FileEndpoint=https://myown132.file.core.windows.net/;
ENV AZURE_FUNCTIONS_ENVIRONMENT Development
ENV AzureWebJobsScriptRoot=/home/site/wwwroot
ENV AzureFunctionsJobHost__Logging__Console__IsEnabled=true
ENV FUNCTIONS_V2_COMPATIBILITY_MODE=true


COPY . /home/site/wwwroot
