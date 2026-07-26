# Noderino Fun App!

This is a node app with a bunch of environment variables you can customize to learn!

- `DESIRED_PATH` - changes the path that the server listens to. 
- `PORT` - changes the port that the server listens to.
- `NUMBER` - changes an arbitrary number that is given to the server.

If you're running this app on a debian linux server (like ubuntu), don't forget to:
1. Install node:
`sudo apt update && sudo apt install nodejs -y && sudo apt install npm -y`
2. Install dependencies:
`npm install`
3. Run the server:
`node index.js`

Have fun! :rocket:

## terraform
Terraform provisions a minimal Azure App Service setup for a Node.js app deployed via GitHub Actions with OIDC (no stored secrets).

**Resources created:**

- Resource group (`{prefix}-rg`)
- Linux App Service Plan, Basic (B1) tier
- Linux Web App running Node 22-LTS, with Oryx build-on-deploy enabled
- Azure AD application + service principal, scoped as the GitHub Actions identity
- Federated identity credential trusting GitHub's OIDC issuer for a specific repo + branch (no client secret exchanged)
- Role assignment granting that service principal **Website Contributor** on the resource group only (not subscription-wide)

**Outputs** expose the app's hostname plus the three values (`client_id`, `tenant_id`, `subscription_id`) needed as GitHub Actions secrets.

The actual CI/CD workflow (`deploy.yml`) lives in the app repo, not in Terraform — it checks out the code, logs into Azure via short-lived OIDC tokens, and deploys the zipped package to the web app on every push to `main`.
