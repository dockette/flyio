<h1 align=center>Dockette / Flyio</h1>

<p align=center>
   🐳 Dockette Flying Toolkit
</p>

<p align=center>
🕹 <a href="https://f3l1x.io">f3l1x.io</a> | 💻 <a href="https://github.com/f3l1x">f3l1x</a> | 🐦 <a href="https://twitter.com/xf3l1x">@xf3l1x</a>
</p>

<p align=center>
  <a href="https://github.com/dockette/flyio/actions"><img src="https://github.com/dockette/flyio/actions/workflows/docker.yml/badge.svg"></a>
  <a href="https://hub.docker.com/r/dockette/flyio"><img src="https://img.shields.io/docker/pulls/dockette/flyio.svg"></a>
  <a href="https://github.com/sponsors/f3l1x"><img src="https://img.shields.io/badge/sponsor-GitHub%20Sponsors-ea4aaa"></a>
  <a href="https://github.com/orgs/dockette/discussions"><img src="https://img.shields.io/badge/support-discussions-6f42c1"></a>
</p>

-----

A CI toolbox for [Fly.io](https://fly.io) deploys: `flyctl` on Alpine, with the tools a pipeline needs.

## Features

- `flyctl`, `make`, `git`, `openssl` and `docker` on `dockette/alpine:3.18`
- Working directory `/srv`, default command `flyctl`

## Usage

```sh
# Print the flyctl version
docker run -it --rm dockette/flyio flyctl -v
```

## Versions

| Version | Release |
|---------|---------|
| `dockette/flyio:YYYY.MM.DD` | release `YYYY.MM.DD` |
| `dockette/flyio:latest` | latest build of `master` |

Releases are listed on [GitHub](https://github.com/dockette/flyio/releases).

## Development

```sh
make build          # build the image
make test           # print the flyctl version
make run            # open a shell in the image
make version        # print VERSION
make release        # set today's date in VERSION
```

## Maintenance

See [how to contribute](https://github.com/dockette/.github/blob/master/CONTRIBUTING.md) to this package. Consider to
[support](https://github.com/sponsors/f3l1x) **f3l1x**. Thank you for using this package.
