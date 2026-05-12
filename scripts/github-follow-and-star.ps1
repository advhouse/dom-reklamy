param(
  [ValidateSet("1", "2", "3", "all")]
  [string]$Wave = "all"
)

$ErrorActionPreference = "Stop"

$gh = Join-Path $env:USERPROFILE ".local\\bin\\gh-advhouse.cmd"

# This script requires a GitHub token that allows:
# - followers: write
# - starring: write

$wave1FollowAccounts = @(
  "adobe",
  "AdobeDocs",
  "aws",
  "Canva",
  "linkedin",
  "microsoft",
  "google",
  "figma"
)

$wave1StarRepos = @(
  "adobe/react-spectrum",
  "adobe/leonardo",
  "AdobeDocs/uxp-photoshop",
  "google/material-design-icons",
  "figma/plugin-samples",
  "figma/code-connect",
  "microsoft/vscode",
  "microsoft/TypeScript",
  "aws/aws-cdk",
  "aws/aws-cli",
  "google/styleguide",
  "vercel/next.js"
)

$wave2FollowAccounts = @(
  "reddit",
  "Infosys",
  "mediamonks",
  "Accenture",
  "salesforce",
  "Netflix"
)

$wave2StarRepos = @(
  "reddit/redditsans",
  "reddit/achilles-sdk",
  "linkedin/Liger-Kernel",
  "linkedin/school-of-sre",
  "Netflix/chaosmonkey",
  "Netflix/eureka",
  "Infosys/Infosys-Agentic-Foundry",
  "Infosys/Infosys-Responsible-AI-Toolkit",
  "Accenture/AmpliGraph",
  "salesforce/LAVIS",
  "mediamonks/muban",
  "mediamonks/fast-image-sequence"
)

$wave3FollowAccounts = @(
  "Shopify",
  "vercel",
  "cloudflare",
  "github",
  "openai",
  "IBM"
)

$wave3StarRepos = @(
  "IBM/plex",
  "Shopify/react-native-skia",
  "Shopify/liquid",
  "cloudflare/pingora",
  "vercel/swr",
  "google/zx",
  "microsoft/markitdown",
  "microsoft/generative-ai-for-beginners",
  "openai/openai-cookbook",
  "github/github-mcp-server",
  "mediamonks/frontend-coding-standards",
  "aws/serverless-application-model",
  "linkedin/css-blocks"
)

switch ($Wave) {
  "1" {
    $followAccounts = $wave1FollowAccounts
    $starRepos = $wave1StarRepos
    $waveLabel = "Wave 1"
  }
  "2" {
    $followAccounts = $wave2FollowAccounts
    $starRepos = $wave2StarRepos
    $waveLabel = "Wave 2"
  }
  "3" {
    $followAccounts = $wave3FollowAccounts
    $starRepos = $wave3StarRepos
    $waveLabel = "Wave 3"
  }
  default {
    $followAccounts = $wave1FollowAccounts + $wave2FollowAccounts + $wave3FollowAccounts
    $starRepos = $wave1StarRepos + $wave2StarRepos + $wave3StarRepos
    $waveLabel = "All waves"
  }
}

Write-Host "Running $waveLabel"
Write-Host ""

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
