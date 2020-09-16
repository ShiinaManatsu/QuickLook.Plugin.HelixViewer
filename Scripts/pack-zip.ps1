Remove-Item ..\QuickLook.Plugin.PMXViewer.qlplugin -ErrorAction SilentlyContinue

$files = Get-ChildItem -Path ..\bin\Release\ -Exclude *.pdb,*.xml
$files += "..\QuickLook.Plugin.Metadata.config"
Compress-Archive $files .\QuickLook.Plugin.PMXViewer.zip
Move-Item .\QuickLook.Plugin.PMXViewer.zip ..\QuickLook.Plugin.PMXViewer.qlplugin