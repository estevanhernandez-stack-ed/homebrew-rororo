# homebrew-rororo

Homebrew tap for **[RORORO](https://github.com/estevanhernandez-stack-ed/rororo-mac)** — the Mac-native multi-Roblox launcher.

## Install

```sh
brew tap estevanhernandez-stack-ed/rororo
brew install --cask rororo
```

That installs `RORORO.app` to `/Applications`. Sparkle handles in-app auto-updates from there — no need to `brew upgrade` for new versions.

## Update via brew

```sh
brew upgrade --cask rororo
```

(Optional — Sparkle will prompt in-app first.)

## Uninstall

```sh
brew uninstall --cask rororo
brew untap estevanhernandez-stack-ed/rororo  # optional cleanup
```

`brew uninstall --cask rororo --zap` also removes:

- `~/Applications/RORORO/` (per-instance Roblox copies)
- `~/Library/Application Support/RORORO/` (accounts.json + favorites.json + private-servers.json + compat cache)
- `~/Library/Preferences/com.626labs.rororo-mac.plist` (UI prefs)
- HTTP cookie/cache stores

Keychain entries (`com.626labs.rororo-mac.account-cookie`) are NOT removed by zap — those are your Roblox session cookies. Open Keychain Access → search "rororo" to clear manually.

## What is this

Tap repos are how Homebrew distributes casks outside the official `homebrew/cask` repo. The actual product lives at [github.com/estevanhernandez-stack-ed/rororo-mac](https://github.com/estevanhernandez-stack-ed/rororo-mac); this repo holds only the cask formula that points Homebrew at our notarized DMGs.

The cask file is auto-bumped by the rororo-mac release workflow on every `v*` tag — `version` + `sha256` get rewritten and pushed here automatically.

## License

MIT — same as RORORO. The cask formula is © 626 Labs LLC.
