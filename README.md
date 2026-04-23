## Running from Source

1. Install dependencies: `pip install -r requirements.txt`
2. Launch the app: `python gui.py`

## Building the Executable

Requires PyInstaller (`pip install pyinstaller`):

```bash
pyinstaller --name "MelodiProof-AI" --noconsole \
  --collect-all tensorflow \
  --collect-all keras \
  --add-data "App_Spectrograms;App_Spectrograms" \
  --add-data "App_Covers;App_Covers" \
  --add-data "App_Audio;App_Audio" \
  --add-data "spectrogram_classifier.h5;." \
  --hidden-import="PIL._tkinter_finder" \
  -y gui.py
```

The executable will be in `dist/MelodiProof-AI/`.

## Building the Installer

1. Install [Inno Setup](https://jrsoftware.org/isinfo.php)
2. Open `installer.iss` in Inno Setup and click **Compile**
3. The installer (`MelodiProof-AI-Setup.exe`) will be output to `installer_output/`

## Datasets

Our audio datasets are in the folder AudioData, while our spectrograms are in the folder ImageData