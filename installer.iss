[Setup]
AppName=MelodiProof AI
AppVersion=1.0
AppPublisher=MelodiProof
DefaultDirName={autopf}\MelodiProof-AI
DefaultGroupName=MelodiProof AI
OutputDir=installer_output
OutputBaseFilename=MelodiProof-AI-Setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "dist\MelodiProof-AI\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\MelodiProof AI"; Filename: "{app}\MelodiProof-AI.exe"
Name: "{group}\{cm:UninstallProgram,MelodiProof AI}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\MelodiProof AI"; Filename: "{app}\MelodiProof-AI.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\MelodiProof-AI.exe"; Description: "{cm:LaunchProgram,MelodiProof AI}"; Flags: nowait postinstall skipifsilent
