EnvGet, WindowsEnvTempFolder, TEMP
ResourceFolder = %WindowsEnvTempFolder%\NEO2
FileCreateDir, %ResourceFolder%

if (FileExist("ResourceFolder")) {
  FileInstall,neo_enabled.ico,%ResourceFolder%\neo_enabled.ico,1
  FileInstall,neo_disabled.ico,%ResourceFolder%\neo_disabled.ico,1
  iconBenutzen=1
  if (bildschirmTastaturEinbinden=1) {
    FileInstall,ebene1.png,%ResourceFolder%\ebene1.png,1
    FileInstall,ebene2.png,%ResourceFolder%\ebene2.png,1
    FileInstall,ebene3.png,%ResourceFolder%\ebene3.png,1
    FileInstall,ebene4.png,%ResourceFolder%\ebene4.png,1
    FileInstall,ebene5.png,%ResourceFolder%\ebene5.png,1
    FileInstall,ebene6.png,%ResourceFolder%\ebene6.png,1
    FileInstall,deadkeys.png,%ResourceFolder%\deadkeys.png,1
    zeigeBildschirmTastatur := 1
  }
}
if(FileExist("ebene1.png")&&FileExist("ebene2.png")&&FileExist("ebene3.png")&&FileExist("ebene4.png")&&FileExist("ebene5.png")&&FileExist("ebene6.png"))
  zeigeBildschirmTastatur=1
if(FileExist("neo_enabled.ico")&&FileExist("neo_disabled.ico"))
  iconBenutzen=1

