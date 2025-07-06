# Pixi-AutoAnimeGame

A simple solution to set up automation projects for anime games using Pixi package manager.

## Supported Projects

- [StarRailCopilot](https://github.com/LmeSzinc/StarRailCopilot) - Honkai: Star Rail automation based on ALAS
- [StarRailOneDragon](https://github.com/DoctorReid/StarRailOneDragon) - Honkai: Star Rail automation based on OneDragon
- [ZenlessZoneZero-OneDragon](https://github.com/DoctorReid/ZenlessZoneZero-OneDragon) - Zenless Zone Zero automation based on OneDragon

## Requirements

- Windows OS
- Git
- [Pixi](https://pixi.sh) package manager

## Quick Start

1. Clone this repository with submodules:
   ```bash
   git clone --recursive https://github.com/Small-Ku/Pixi-AutoAnimeGame.git
   ```

2. Choose which project to run:
   - StarRailCopilot: `pixi run src-app`
   - Projects below need console with admin rights:
      - ZenlessZoneZero-OneDragon: `pixi run zzz-app`
      - StarRailOneDragon: `pixi run hsr-app`

Alternatively, use the `start.bat` script which will prompt you to choose a project. 

## Environment Management

Choose environment when running the script. By default, all projects are included in the default environment.

- StarRailCopilot: `pixi run -e src src-app`
- ZenlessZoneZero-OneDragon: `pixi run -e zzz zzz-app`
- StarRailOneDragon: `pixi run -e hsr hsr-app`
- StarRailCopilot with dev dependencies: `pixi run -e src-dev src-app`
