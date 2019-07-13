# mamachanko's local

This is my worstation automation. 

Start from a clean OSX installation and run:
```bash
sudo xcodebuild -license
curl -L https://raw.githubusercontent.com/mamachanko/local/master/bin/local_bootstrap.bash 2> /dev/null | bash
~/bin/coalesce_this_machine
```

Manual steps:
 * `kr pair`
 * `set_hostname`
 * set desktop background
 * set active corners
 * set screen resolution
 * set dark mode
 * start and configure shiftit

## Todo
 * [ ] generate repave credentials and keep them in 1password
 * [x] move dock to bottom (and make it small)
 * [x] configure screen resolution
 * [x] set hostname when coalescing

---

_Inspired by and shamelessly copied from [`scottmuc/osx-homedir`](https://github.com/scottmuc/osx-homedir/)._
