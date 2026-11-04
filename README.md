# CopyPasta2

CopyPasta2 is a World of Warcraft addon for pasting multi-line text and long messages. It sends each line separately and splits messages that exceed the in-game chat limit.

- [Download on CurseForge](https://www.curseforge.com/wow/addons/copypasta2)
- [Report a bug or request an improvement](https://github.com/MChambers1992/CopyPasta2/issues)
- [View releases](https://github.com/MChambers1992/CopyPasta2/releases)
- [Watch Nuaik on YouTube](https://www.youtube.com/channel/UCMvK4RUJtojPBaKND8DULFw)

## Features

- Paste multiple lines into supported chat channels
- Split long lines automatically
- Send to Say, Yell, Party, Raid, Instance, Guild, Officer, character whispers, or Battle.net whispers when available
- Execute pasted slash commands through the Default destination, with a confirmation prompt when commands are detected
- Remove empty lines or trim surrounding whitespace
- Adjust the window and editor text scale
- Open the addon from a minimap icon, Data Broker launcher, slash command, or key binding

## Installation

Install CopyPasta2 through CurseForge, or extract a release archive into the `Interface/AddOns` folder of the game client you play. For Retail, that is:

```text
World of Warcraft/_retail_/Interface/AddOns/CopyPasta2
```

The same release archive works in every supported client.

If the older Paste or CopyPasta addon is installed, disable it to avoid overlapping commands or behaviour.

## Usage

1. Open CopyPasta2 by left-clicking its minimap icon or running `/paste show`.
2. Paste text into the editor with Ctrl+V on Windows or Command+V on macOS.
3. Select a destination.
4. Choose **Paste** to keep the window open or **Paste and Close** to close it after sending.

Right-click the minimap icon or run `/paste config` to open settings.

A key binding for showing or hiding the window is available under **Options > Keybindings > AddOns > CopyPasta2**.

## Compatibility

CopyPasta2 supports these World of Warcraft clients from a single package:

- Retail
- World of Warcraft: Forever
- Mists of Pandaria Classic
- Burning Crusade Classic Anniversary
- Classic Era, including Hardcore and Season of Discovery

The TOC file lists one interface version per client, and the updater workflow keeps them current.

Other chat addons may alter chat behaviour. Please open an issue with reproduction steps and any Lua error if you find a conflict.

## Development

The addon is intentionally small:

- `core.lua` contains the addon logic and AceGUI window
- `locale.lua` contains localization support
- `Bindings.xml` defines the optional key binding
- `CopyPasta2.toc` defines WoW addon metadata
- `embeds.xml` loads packaged dependencies
- `pkgmeta.yaml` configures release packaging

Pull requests run Lua syntax and static checks plus TOC, XML, and packaging metadata validation. Each push to `develop` creates a `release-N` tag, then the release workflow packages the addon with the BigWigs packager and uploads one zip to CurseForge, tagged for every supported client, and to GitHub Releases.

Runtime changes should also be verified in each supported client.

## Credits

CopyPasta2 is maintained by Nuaik and is based on the earlier CopyPasta and Paste addons by Nirgali42 and oscarucb.

Released under the [MIT License](LICENSE).
