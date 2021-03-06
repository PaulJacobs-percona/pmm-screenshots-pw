# TODO

- [ ] Add configuration to specify filename separator character currently hard-coded to underscore (`_`).
- [ ] Improve debug/logging facility
- [ ] intercept and report 'invalid username or password' dialog (util.login)
- [ ] handle net::ERR_INTERNET_DISCONNECTED (util.load)
- [ ] Find more reliable way to know when page is fully loaded, rather than using `waitFor` with fixed value for all pages (util.load)
- [ ] Compute additional container padding needed for `_full` images rather than using absolute value
- [ ] Skip util.eat if not on pmmdemo
- [ ] Consider whether `--full` option should also be specified via env var
- [ ] Rationalise and relocate directory creation code
- [ ] Check that supplied UIDs exist
- [ ] Img dir doesn't need to be arg of snap()
- [ ] Avoid image overwrite when SNAP_IMG_SEQ is off
- [ ] How to inject custom text strings as form values
- [ ] Option to skip version checking
- [ ] Easier handling of `/graph/d/vagent` paths
- [x] Allow configurable slowmo value when headless=false
- [ ] Check 'fullpage' option in Playwright (wasn't working as expected in Puppeteer)
- [ ] Write settings file in images directory (to know what were used for that snap set)
- [ ] Add '--skip-uid' flag as inverse of '--uid' to exclude named items
- [ ] Allow choice of browser technology {chromium|webkit|firefox}
- [ ] Allow skipping/selecting operations/steps per UID
