$AneVersion = "0.0.5"

$currentDir = (Get-Item -Path ".\" -Verbose).FullName
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri https://github.com/tuarua/Vibration-ANE/releases/download/$AneVersion/ZipANE.ane?raw=true -OutFile "$currentDir\..\native_extension\ane\ZipANE.ane"
Invoke-WebRequest -OutFile "$currentDir\android_dependencies\com.google.code.gson.gson-2.8.4.ane" -Uri https://github.com/tuarua/Android-ANE-Dependencies/blob/master/anes/misc/com.google.code.gson.gson-2.8.4.ane?raw=true
Invoke-WebRequest -OutFile "$currentDir\android_dependencies\com.tuarua.frekotlin.ane" -Uri https://github.com/tuarua/Android-ANE-Dependencies/blob/master/anes/kotlin/com.tuarua.frekotlin.ane?raw=true