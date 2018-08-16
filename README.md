# msync

Script to watch for file changes and sync modified files using rsync. By
default it syncs relative to `$HOME` and preserves relative paths.

## Requirements
- ag
- inotifywait

## Usage
```
msync.sh path/to/moitor username@server
```
