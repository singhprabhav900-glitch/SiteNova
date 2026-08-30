# ==========================================
# SITENOVA - PROJECT STRUCTURE SETUP
# Run this script from inside D:\SiteNova
# ==========================================

Write-Host ""
Write-Host "Creating SiteNova project structure..." -ForegroundColor Cyan
Write-Host ""

# ==========================================
# ROOT FOLDERS
# ==========================================

$rootFolders = @(
    "frontend",
    "backend",
    "docs",
    "infrastructure"
)

foreach ($folder in $rootFolders) {
    New-Item -ItemType Directory -Force -Path $folder | Out-Null
}

# Root files
$rootFiles = @(
    ".gitignore",
    "README.md"
)

foreach ($file in $rootFiles) {
    New-Item -ItemType File -Force -Path $file | Out-Null
}


# ==========================================
# FRONTEND FOLDERS
# ==========================================

$frontendFolders = @(

    "public",
    "public\images",
    "public\icons",
    "public\logos",

    "src",

    "src\app",

    "src\app\(auth)",
    "src\app\(auth)\login",
    "src\app\(auth)\forgot-password",
    "src\app\(auth)\reset-password",

    "src\app\dashboard",
    "src\app\dashboard\owner",
    "src\app\dashboard\project-manager",
    "src\app\dashboard\engineer",
    "src\app\dashboard\hse",
    "src\app\dashboard\inventory",
    "src\app\dashboard\qc",
    "src\app\dashboard\hr",
    "src\app\dashboard\auditor",

    "src\app\attendance",
    "src\app\attendance\overview",
    "src\app\attendance\records",
    "src\app\attendance\disputes",
    "src\app\attendance\export",

    "src\app\tasks",
    "src\app\tasks\board",
    "src\app\tasks\list",
    "src\app\tasks\details",
    "src\app\tasks\assignments",

    "src\app\inventory",
    "src\app\inventory\dashboard",
    "src\app\inventory\materials",
    "src\app\inventory\transactions",
    "src\app\inventory\consumption",
    "src\app\inventory\reorder",

    "src\app\hse",
    "src\app\hse\incidents",
    "src\app\hse\incident-details",
    "src\app\hse\corrective-actions",
    "src\app\hse\reports",

    "src\app\quality-control",
    "src\app\quality-control\inspections",
    "src\app\quality-control\approvals",
    "src\app\quality-control\reports",

    "src\app\analytics",
    "src\app\analytics\s-curve",
    "src\app\analytics\project-progress",
    "src\app\analytics\cost",
    "src\app\analytics\reports",

    "src\app\projects",
    "src\app\projects\list",
    "src\app\projects\create",
    "src\app\projects\[projectId]",

    "src\app\workforce",
    "src\app\workforce\workers",
    "src\app\workforce\crews",
    "src\app\workforce\assignments",

    "src\app\settings",
    "src\app\settings\profile",
    "src\app\settings\organization",
    "src\app\settings\users",
    "src\app\settings\roles",

    "src\components",
    "src\components\ui",
    "src\components\layout",
    "src\components\dashboard",
    "src\components\attendance",
    "src\components\tasks",
    "src\components\inventory",
    "src\components\hse",
    "src\components\analytics",
    "src\components\shared",

    "src\features",
    "src\features\auth",
    "src\features\projects",
    "src\features\attendance",
    "src\features\tasks",
    "src\features\inventory",
    "src\features\hse",
    "src\features\qc",
    "src\features\analytics",
    "src\features\workforce",

    "src\hooks",

    "src\services",

    "src\store",

    "src\types",

    "src\lib",

    "src\constants",

    "src\utils"
)

foreach ($folder in $frontendFolders) {
    New-Item -ItemType Directory -Force -Path "frontend\$folder" | Out-Null
}


# ==========================================
# FRONTEND FILES
# ==========================================

$frontendFiles = @(
    ".env.example",
    "package.json",
    "tsconfig.json",
    "README.md",

    "src\app\layout.tsx",
    "src\app\page.tsx",

    "src\services\api.ts",
    "src\services\auth.service.ts",
    "src\services\project.service.ts",
    "src\services\attendance.service.ts",
    "src\services\task.service.ts",
    "src\services\inventory.service.ts",
    "src\services\hse.service.ts",
    "src\services\analytics.service.ts",

    "src\store\auth.store.ts",
    "src\store\project.store.ts",
    "src\store\ui.store.ts",

    "src\types\user.ts",
    "src\types\project.ts",
    "src\types\task.ts",
    "src\types\inventory.ts",
    "src\types\incident.ts"
)

foreach ($file in $frontendFiles) {
    New-Item -ItemType File -Force -Path "frontend\$file" | Out-Null
}


# ==========================================
# BACKEND FOLDERS
# ==========================================

$backendFolders = @(

    "src",

    "src\config",

    "src\common",
    "src\common\decorators",
    "src\common\guards",
    "src\common\filters",
    "src\common\interceptors",
    "src\common\middleware",
    "src\common\utils",

    "src\modules",

    "src\modules\auth",
    "src\modules\auth\dto",
    "src\modules\auth\guards",
    "src\modules\auth\strategies",

    "src\modules\users",
    "src\modules\users\dto",
    "src\modules\users\entities",

    "src\modules\organizations",

    "src\modules\projects",
    "src\modules\projects\dto",
    "src\modules\projects\entities",

    "src\modules\workforce",
    "src\modules\workforce\workers",
    "src\modules\workforce\crews",
    "src\modules\workforce\assignments",

    "src\modules\attendance",
    "src\modules\attendance\dto",
    "src\modules\attendance\entities",

    "src\modules\biometrics",
    "src\modules\biometrics\devices",
    "src\modules\biometrics\integrations",
    "src\modules\biometrics\sync",

    "src\modules\tasks",
    "src\modules\tasks\dto",
    "src\modules\tasks\entities",
    "src\modules\tasks\comments",
    "src\modules\tasks\attachments",

    "src\modules\inventory",
    "src\modules\inventory\materials",
    "src\modules\inventory\transactions",
    "src\modules\inventory\consumption",
    "src\modules\inventory\reorder",

    "src\modules\procurement",
    "src\modules\procurement\vendors",
    "src\modules\procurement\purchase-orders",

    "src\modules\hse",
    "src\modules\hse\incidents",
    "src\modules\hse\corrective-actions",
    "src\modules\hse\risk-register",

    "src\modules\quality-control",
    "src\modules\quality-control\inspections",
    "src\modules\quality-control\approvals",

    "src\modules\analytics",
    "src\modules\analytics\s-curve",
    "src\modules\analytics\progress",
    "src\modules\analytics\cost",

    "src\modules\reports",
    "src\modules\reports\exports",
    "src\modules\reports\pdf",
    "src\modules\reports\csv",

    "src\modules\notifications",
    "src\modules\notifications\email",
    "src\modules\notifications\push",
    "src\modules\notifications\realtime",

    "src\modules\uploads",
    "src\modules\uploads\images",
    "src\modules\uploads\documents",

    "src\modules\audit",
    "src\modules\audit\logs",

    "src\database",
    "src\database\migrations",
    "src\database\seeds",

    "src\jobs",

    "test"
)

foreach ($folder in $backendFolders) {
    New-Item -ItemType Directory -Force -Path "backend\$folder" | Out-Null
}


# ==========================================
# BACKEND FILES
# ==========================================

$backendFiles = @(
    ".env.example",
    "package.json",
    "tsconfig.json",
    "README.md",

    "src\main.ts",
    "src\app.module.ts",

    "src\config\database.config.ts",
    "src\config\auth.config.ts",
    "src\config\app.config.ts",

    "src\modules\auth\auth.controller.ts",
    "src\modules\auth\auth.service.ts",
    "src\modules\auth\auth.module.ts",

    "src\modules\users\users.controller.ts",
    "src\modules\users\users.service.ts",
    "src\modules\users\users.module.ts",

    "src\modules\projects\projects.controller.ts",
    "src\modules\projects\projects.service.ts",
    "src\modules\projects\projects.module.ts",

    "src\modules\attendance\attendance.controller.ts",
    "src\modules\attendance\attendance.service.ts",
    "src\modules\attendance\attendance.module.ts",

    "src\modules\tasks\tasks.controller.ts",
    "src\modules\tasks\tasks.service.ts",
    "src\modules\tasks\tasks.module.ts",

    "src\modules\inventory\inventory.module.ts",

    "src\modules\procurement\procurement.module.ts",

    "src\modules\hse\hse.module.ts",

    "src\modules\quality-control\quality-control.module.ts",

    "src\modules\analytics\analytics.module.ts",

    "src\modules\reports\reports.module.ts",

    "src\modules\notifications\notifications.module.ts",

    "src\modules\uploads\uploads.module.ts",

    "src\modules\audit\audit.module.ts",

    "src\database\database.module.ts",

    "src\jobs\notifications.job.ts",
    "src\jobs\inventory.job.ts",
    "src\jobs\reports.job.ts"
)

foreach ($file in $backendFiles) {
    New-Item -ItemType File -Force -Path "backend\$file" | Out-Null
}


# ==========================================
# DOCS
# ==========================================

$docsFolders = @(
    "PRD",
    "architecture",
    "database",
    "API",
    "user-flows"
)

foreach ($folder in $docsFolders) {
    New-Item -ItemType Directory -Force -Path "docs\$folder" | Out-Null
}


# ==========================================
# INFRASTRUCTURE
# ==========================================

$infraFolders = @(
    "docker",
    "deployment"
)

foreach ($folder in $infraFolders) {
    New-Item -ItemType Directory -Force -Path "infrastructure\$folder" | Out-Null
}


# ==========================================
# SUCCESS MESSAGE
# ==========================================

Write-Host ""
Write-Host "==========================================" -ForegroundColor Green
Write-Host "SiteNova structure created successfully!" -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Green
Write-Host ""

Write-Host "Your project structure is ready at:"
Write-Host (Get-Location)

Write-Host ""
Write-Host "Main folders created:" -ForegroundColor Cyan
Write-Host "frontend"
Write-Host "backend"
Write-Host "docs"
Write-Host "infrastructure"
Write-Host ""