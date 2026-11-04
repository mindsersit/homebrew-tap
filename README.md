# mindsersit/homebrew-tap

Homebrew formulae for MINDSERSIT's software, and the releases they install.

```console
$ brew install mindsersit/tap/<formula>
```

## Formulae

| formula | what it is | site |
|---|---|---|
| `tokens-on-me` | `tom`: start your coding client on an allowance someone gave you | [tokens-on.me](https://tokens-on.me) |

Without Homebrew:

```console
$ curl -fsSL https://tokens-on.me/install.sh | sh
```

## What else is here

The source of `tom` is private, so this repository also holds what strangers need to download:

- **The releases**, tagged `cli-vX.Y.Z`: an archive per platform, `SHA256SUMS`, and
  `SHA256SUMS.minisig`, its signature.
- **`tom/VERSION`**, the latest version, which `tom update` and the install script read.

To check a download by hand, with [minisign](https://jedisct1.github.io/minisign/):

```console
$ minisign -Vm SHA256SUMS -P RWQjQZP+j4ZFXuFpARpr1WbmE8rA+ih5jbmLvwT/c6apfMxOSf6sdjGo
$ shasum -a 256 -c SHA256SUMS --ignore-missing
```

## Where a fix belongs

The formula and `tom/VERSION` are **generated**: a release writes them, so editing them here
works only until the next one. Something wrong with the tap itself (a formula that won't install,
a checksum that doesn't match, a stale version) belongs here, as an issue. Anything else about
`tom` goes to **hello@mindsers.it**.

## What CI checks

`brew style` and `brew audit --strict` run on every push, over whatever formulae are present. A
weekly run adds `--online`, which re-fetches the URLs and re-checks the checksums, to notice a
release asset changing or disappearing.

## Licence

The files of this repository are under the MIT licence: see [`LICENSE`](LICENSE). The software
the formulae install carries its own terms.
