# teaching_paper1 批量编译脚本
# 用法：.\build.ps1 [module]
# 模块选项：all, chinese, math, science, social, programming

param([string]$module = "all")

$engine = "xelatex"
$opts = "-interaction=nonstopmode -halt-on-error"

function Invoke-Compile {
    param([string]$path)
    Push-Location $path
    $files = Get-ChildItem -Filter "*.tex" -File
    foreach ($f in $files) {
        Write-Host "=== Compiling $path\$($f.Name) ===" -ForegroundColor Green
        & $engine $opts $f.Name
        if ($LASTEXITCODE -eq 0) {
            Write-Host "  ✓ $($f.Name) compiled successfully" -ForegroundColor Green
        } else {
            Write-Host "  ✗ $($f.Name) compilation FAILED" -ForegroundColor Red
        }
    }
    Pop-Location
}

$modules = @{
    chinese    = @("chinese\classical-prose", "chinese\classical-poetry", "chinese\modern-literature",
                   "chinese\zuozhuan", "chinese\unit1-mythology")
    math       = @("math\low-level\algebra", "math\low-level\geometry",
                   "math\low-level\number-theory", "math\low-level\combo-stats",
                   "math\drilling\arithmetic", "math\drilling\number-computation",
                   "math\drilling\expression-computation", "math\drilling\word-problems",
                   "math\high-level\algebra", "math\high-level\calculus",
                   "math\high-level\analytic-geometry", "math\high-level\solid-geometry",
                   "math\high-level\probability-stats")
    science    = @("science\nature-intro",
                   "science\physics\mechanics-intro", "science\physics\newton-mechanics",
                   "science\physics\energy-momentum", "science\physics\waves-optics-heat",
                   "science\physics\electromagnetism-intro", "science\physics\em-waves-modern",
                   "science\chemistry\matter-language", "science\chemistry\elements-reactions",
                   "science\chemistry\reaction-principles", "science\chemistry\organic-structure",
                   "science\biology\cell-molecule", "science\biology\organism-structure",
                   "science\biology\genetics-evolution", "science\biology\ecology-diversity",
                   "science\geography", "science\geography\physical-geo", "science\geography\geo-hazards")
    social     = @("social-science\ancient-china", "social-science\ancient-world",
                   "social-science\modern-history", "social-science\economy-society",
                   "social-science\morality-law", "social-science\philosophy",
                   "social-science\politics-law", "social-science\economic-geography")
    programming = @("programming\overview", "programming\scratch",
                    "programming\computational-thinking", "programming\computer_maths",
                    "programming\python", "programming\ds-algo", "programming\python-to-cpp",
                    "programming\web-dev", "programming\git-collab", "programming\ai-intro",
                    "programming\capstone")
}

if ($module -eq "all") {
    $modules.Keys | ForEach-Object { $modules[$_] } | ForEach-Object {
        $_ | ForEach-Object { Invoke-Compile $_ }
    }
} elseif ($modules.ContainsKey($module)) {
    $modules[$module] | ForEach-Object { Invoke-Compile $_ }
} else {
    Write-Host "未知模块：$module" -ForegroundColor Red
    Write-Host "可用选项：all, chinese, math, science, social, programming"
}
