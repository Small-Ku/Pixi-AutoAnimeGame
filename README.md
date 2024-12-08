# Pixi-AutoAnimeGame

A simple solution to set up automation projects for anime games using Pixi package manager.

## Supported Projects

- [StarRailOneDragon](https://github.com/DoctorReid/StarRailOneDragon) - Honkai: Star Rail automation
- [ZenlessZoneZero-OneDragon](https://github.com/DoctorReid/ZenlessZoneZero-OneDragon) - Zenless Zone Zero automation

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
   - For Zenless Zone Zero: `pixi run start-zzz`
   - For Honkai: Star Rail: `pixi run start-hsr`

Alternatively, use the `start.bat` script which will prompt you to choose a project.

## Environment Management

Choose environment when running the script. By default, both games are included in the environment.

- ZZZ only: `pixi run -e zzz start-zzz`
- HSR only: `pixi run -e hsr start-hsr`
