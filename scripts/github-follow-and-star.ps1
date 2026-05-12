$ErrorActionPreference = "Stop"

$gh = Join-Path $env:USERPROFILE ".local\\bin\\gh-advhouse.cmd"

# This script requires a GitHub token that allows:
# - followers: write
# - starring: write

$followAccounts = @(
  "adobe",
  "AdobeDocs",
  "aws",
  "Canva",
  "linkedin",
  "microsoft",
  "reddit",
  "Infosys",
  "mediamonks",
  "google",
  "figma",
  "Accenture",
  "salesforce",
  "Netflix",
  "Shopify",
  "vercel",
  "cloudflare",
  "github",
  "openai",
  "IBM"
)

$starRepos = @(
  "adobe/react-spectrum",
  "adobe/leonardo",
  "AdobeDocs/uxp-photoshop",
  "google/material-design-icons",
  "figma/plugin-samples",
  "figma/code-connect",
  "IBM/plex",
  "Shopify/react-native-skia",
  "reddit/redditsans",
  "reddit/achilles-sdk",
  "linkedin/Liger-Kernel",
  "linkedin/school-of-sre",
  "linkedin/css-blocks",
  "Netflix/chaosmonkey",
  "Netflix/eureka",
  "aws/aws-cli",
  "aws/aws-cdk",
  "aws/serverless-application-model",
  "microsoft/vscode",
  "microsoft/TypeScript",
  "microsoft/markitdown",
  "microsoft/generative-ai-for-beginners",
  "vercel/next.js",
  "vercel/swr",
  "cloudflare/pingora",
  "Shopify/liquid",
  "google/styleguide",
  "google/zx",
  "Infosys/Infosys-Agentic-Foundry",
  "Infosys/Infosys-Responsible-AI-Toolkit",
  "Accenture/AmpliGraph",
  "salesforce/LAVIS",
  "openai/openai-cookbook",
  "github/github-mcp-server",
  "mediamonks/muban",
  "mediamonks/fast-image-sequence",
  "mediamonks/frontend-coding-standards"
)

Write-Host "Following accounts..."
foreach ($account in $followAccounts) {
  try {
    & $gh api "/user/following/$account" --method PUT | Out-Null
    Write-Host "FOLLOW OK: $account"
  } catch {
    Write-Host "FOLLOW FAIL: $account"
  }
}

Write-Host ""
Write-Host "Starring repositories..."
foreach ($repo in $starRepos) {
  try {
    & $gh api "/user/starred/$repo" --method PUT | Out-Null
    Write-Host "STAR OK: $repo"
  } catch {
    Write-Host "STAR FAIL: $repo"
  }
}
