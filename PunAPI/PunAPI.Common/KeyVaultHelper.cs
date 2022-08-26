using Azure.Identity;
using Azure.Security.KeyVault.Secrets;
using System;
using System.Threading.Tasks;

namespace PunAPI.Common
{
    public static class KeyVaultHelper
    {
        public static async Task<string> GetConnectionString(string secretName)
        {
            var kvUri = "https://punaaskeyvault.vault.azure.net/";

            var client = new SecretClient(new Uri(kvUri), new DefaultAzureCredential());

            var secret = await client.GetSecretAsync(secretName);
            return secret.Value.Value;
        }
    }
}
