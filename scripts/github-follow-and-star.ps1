param(
  [ValidateSet("1", "2", "3", "mandatory", "cannes", "awards", "design", "pr", "digital", "advertising", "media", "developers", "ai", "agi", "all", "all-directions")]
  [string]$Wave = "all",
  [switch]$ListOnly
)

$ErrorActionPreference = "Stop"

$gh = Join-Path $env:USERPROFILE ".local\\bin\\gh-advhouse.cmd"

# This script requires a GitHub token that allows:
# - followers: write
# - starring: write

$mandatoryFollowAccounts = @(
  "adobe",
  "AdobeDocs",
  "aws",
  "Canva",
  "linkedin",
  "microsoft",
  "google",
  "figma",
  "github",
  "openai",
  "vercel",
  "cloudflare"
)

$mandatoryStarRepos = @(
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
  "vercel/next.js",
  "cloudflare/pingora",
  "openai/openai-cookbook",
  "github/github-mcp-server"
)

$cannesFollowAccounts = @(
  "reddit",
  "Infosys",
  "mediamonks",
  "Accenture",
  "salesforce",
  "Netflix"
)

$cannesStarRepos = @(
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

$awardsFollowAccounts = @(
  "Shopify",
  "IBM",
  "akqa"
)

$awardsStarRepos = @(
  "IBM/plex",
  "Shopify/react-native-skia",
  "Shopify/liquid",
  "google/zx",
  "microsoft/markitdown",
  "microsoft/generative-ai-for-beginners",
  "mediamonks/frontend-coding-standards",
  "aws/serverless-application-model",
  "linkedin/css-blocks"
)

$designFollowAccounts = @(
  "adobe",
  "figma",
  "Canva",
  "canva-public",
  "canva-sdks",
  "mui",
  "IBM",
  "primer",
  "Shopify",
  "google"
)

$designStarRepos = @(
  "adobe/react-spectrum",
  "adobe/spectrum-css",
  "figma/plugin-samples",
  "figma/code-connect",
  "figma/community-resources",
  "mui/material-ui",
  "IBM/plex",
  "primer/react",
  "Shopify/react-native-skia",
  "google/material-design-icons"
)

$prFollowAccounts = @(
  "reddit",
  "linkedin",
  "mediamonks",
  "HubSpot",
  "Automattic",
  "spotify",
  "salesforce"
)

$prStarRepos = @(
  "reddit/devvit",
  "reddit/redditsans",
  "linkedin/rest.li",
  "datahub-project/datahub",
  "HubSpot/HubSpot-public-api-spec-collection",
  "HubSpot/slack-client",
  "Automattic/jetpack",
  "spotify/basic-pitch",
  "salesforce/LAVIS",
  "mediamonks/muban"
)

$digitalFollowAccounts = @(
  "vercel",
  "cloudflare",
  "Shopify",
  "microsoft",
  "google",
  "aws",
  "openai",
  "github",
  "salesforce",
  "figma"
)

$digitalStarRepos = @(
  "vercel/next.js",
  "vercel/ai",
  "cloudflare/pingora",
  "cloudflare/cloudflared",
  "Shopify/liquid",
  "Shopify/hydrogen",
  "microsoft/TypeScript",
  "aws/aws-cdk",
  "google/zx",
  "openai/openai-cookbook"
)

$advertisingFollowAccounts = @(
  "adobe",
  "Canva",
  "mediamonks",
  "figma",
  "linkedin",
  "reddit",
  "salesforce",
  "Shopify"
)

$advertisingStarRepos = @(
  "adobe/react-spectrum",
  "Canva/rules_nodejs",
  "mediamonks/muban",
  "figma/code-connect",
  "linkedin/Liger-Kernel",
  "reddit/devvit",
  "salesforce/LAVIS",
  "Shopify/hydrogen"
)

$mediaFollowAccounts = @(
  "reddit",
  "spotify",
  "Automattic",
  "Netflix",
  "vercel",
  "cloudflare",
  "github"
)

$mediaStarRepos = @(
  "reddit/devvit",
  "reddit/redditsans",
  "spotify/basic-pitch",
  "Automattic/jetpack",
  "Netflix/eureka",
  "vercel/next.js",
  "cloudflare/cloudflared",
  "github/docs"
)

$developersFollowAccounts = @(
  "github",
  "microsoft",
  "google",
  "aws",
  "vercel",
  "cloudflare",
  "Shopify",
  "pytorch"
)

$developersStarRepos = @(
  "github/docs",
  "microsoft/TypeScript",
  "google/zx",
  "aws/aws-cdk",
  "vercel/ai",
  "cloudflare/pingora",
  "Shopify/liquid",
  "pytorch/pytorch"
)

$aiFollowAccounts = @(
  "openai",
  "anthropics",
  "mistralai",
  "huggingface",
  "meta-llama",
  "pytorch",
  "langchain-ai",
  "microsoft"
)

$aiStarRepos = @(
  "openai/openai-cookbook",
  "anthropics/claude-cookbooks",
  "mistralai/mistral-inference",
  "huggingface/transformers",
  "meta-llama/llama-models",
  "pytorch/pytorch",
  "langchain-ai/langchain",
  "microsoft/autogen"
)

switch ($Wave) {
  "1" {
    $followAccounts = $mandatoryFollowAccounts
    $starRepos = $mandatoryStarRepos
    $waveLabel = "Mandatory layer"
  }
  "2" {
    $followAccounts = $cannesFollowAccounts
    $starRepos = $cannesStarRepos
    $waveLabel = "Cannes layer"
  }
  "3" {
    $followAccounts = $awardsFollowAccounts
    $starRepos = $awardsStarRepos
    $waveLabel = "Award ecosystem layer"
  }
  "mandatory" {
    $followAccounts = $mandatoryFollowAccounts
    $starRepos = $mandatoryStarRepos
    $waveLabel = "Mandatory layer"
  }
  "cannes" {
    $followAccounts = $cannesFollowAccounts
    $starRepos = $cannesStarRepos
    $waveLabel = "Cannes layer"
  }
  "awards" {
    $followAccounts = $awardsFollowAccounts
    $starRepos = $awardsStarRepos
    $waveLabel = "Award ecosystem layer"
  }
  "design" {
    $followAccounts = $designFollowAccounts
    $starRepos = $designStarRepos
    $waveLabel = "Design direction"
  }
  "pr" {
    $followAccounts = $prFollowAccounts
    $starRepos = $prStarRepos
    $waveLabel = "PR direction"
  }
  "digital" {
    $followAccounts = $digitalFollowAccounts
    $starRepos = $digitalStarRepos
    $waveLabel = "Digital direction"
  }
  "advertising" {
    $followAccounts = $advertisingFollowAccounts
    $starRepos = $advertisingStarRepos
    $waveLabel = "Advertising direction"
  }
  "media" {
    $followAccounts = $mediaFollowAccounts
    $starRepos = $mediaStarRepos
    $waveLabel = "Media direction"
  }
  "developers" {
    $followAccounts = $developersFollowAccounts
    $starRepos = $developersStarRepos
    $waveLabel = "Developers direction"
  }
  "ai" {
    $followAccounts = $aiFollowAccounts
    $starRepos = $aiStarRepos
    $waveLabel = "AI direction"
  }
  "agi" {
    $followAccounts = $aiFollowAccounts
    $starRepos = $aiStarRepos
    $waveLabel = "AGI horizon"
  }
  "all-directions" {
    $followAccounts = $designFollowAccounts + $prFollowAccounts + $digitalFollowAccounts + $advertisingFollowAccounts + $mediaFollowAccounts + $developersFollowAccounts + $aiFollowAccounts
    $starRepos = $designStarRepos + $prStarRepos + $digitalStarRepos + $advertisingStarRepos + $mediaStarRepos + $developersStarRepos + $aiStarRepos
    $waveLabel = "All working directions"
  }
  default {
    $followAccounts = $mandatoryFollowAccounts + $cannesFollowAccounts + $awardsFollowAccounts
    $starRepos = $mandatoryStarRepos + $cannesStarRepos + $awardsStarRepos
    $waveLabel = "All layers"
  }
}

$followAccounts = $followAccounts | Select-Object -Unique
$starRepos = $starRepos | Select-Object -Unique

Write-Host "Running $waveLabel"
Write-Host ""

if ($ListOnly) {
  Write-Host "Accounts to follow:"
  $followAccounts | ForEach-Object { Write-Host "- $_" }
  Write-Host ""
  Write-Host "Repositories to star:"
  $starRepos | ForEach-Object { Write-Host "- $_" }
  exit 0
}

Write-Host "Following accounts..."
foreach ($account in $followAccounts) {
  try {
    & $gh api "/user/following/$account" --method PUT | Out-Null
    Write-Host "FOLLOW OK: $account"
  } catch {
    Write-Host "FOLLOW FAIL: $account :: $($_.Exception.Message)"
  }
}

Write-Host ""
Write-Host "Starring repositories..."
foreach ($repo in $starRepos) {
  try {
    & $gh api "/user/starred/$repo" --method PUT | Out-Null
    Write-Host "STAR OK: $repo"
  } catch {
    Write-Host "STAR FAIL: $repo :: $($_.Exception.Message)"
  }
}
