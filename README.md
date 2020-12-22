# rf-ballooningnesteggs
Robot framework automated QA for BallooningNestEggs

rf-ballooningnesteggs Runs Robot Framework tests in Chrome & Firefox against BallooningNestEggs demo and prod environment

#Running Locally

###Dependencies:
Download and unzip the Chrome and Firefox drivers.

Chromedriver: https://sites.google.com/a/chromium.org/chromedriver/downloads
Geckodriver: https://github.com/mozilla/geckodriver/releases

Ensure the drivers are in your system path by either moving the files to `/usr/local/bin/`
or adding `export PATH=$PATH:/path/to/drivers` to `~/.profile`.

###Installing Robot framework:

pip install robotframework-seleniumlibrary

### Execution

Executing a single browser's tests:
```bash
robot --outputdir reports/<chrome|firefox> --variable BROWSER:<chrome|firefox> Tests
```

