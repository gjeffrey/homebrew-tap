# homebrew-tap

Personal Homebrew tap for Gabriel Jeffrey's apps.

```bash
brew tap gjeffrey/tap
brew install --cask lightbox
```

## Casks

- **lightbox** — [Lightbox](https://gabrieljeffrey.com/lightbox/), a native
  macOS media browser for photographers.

Each cask points at the same signed, notarized build already distributed
from the app's own site; this tap only adds `brew install`/`brew upgrade`
as a second way to get it. `auto_updates true` is set because these apps
update themselves in-app (Sparkle) — `brew upgrade` here catches you up if
you've fallen behind, it isn't the only way updates arrive.
