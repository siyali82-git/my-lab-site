# Add all changes
git add .

# Commit with automatic message (timestamp)
$time = Get-Date -Format "yyyy-MM-dd HH:mm"
git commit -m "update site - $time"

# Push to GitHub
git push

Write-Host "✅ Site updated and pushed to GitHub!"