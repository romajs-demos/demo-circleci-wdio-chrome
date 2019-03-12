# demo-circleci-wdio-chrome

## Usage

### Local

```
npm install
npm test
```

Output:

```
2019-03-12T01:58:01.772Z DEBUG @wdio/utils:initialiseServices: initialise wdio service "chromedriver"
2019-03-12T01:58:01.801Z INFO @wdio/cli:Launcher: Run onPrepare hook
2019-03-12T01:58:01.920Z INFO @wdio/local-runner: Start worker 0-0 with arg: wdio.conf.js
[0-0] 2019-03-12T01:58:02.136Z INFO @wdio/local-runner: Run worker command: run
[0-0] 2019-03-12T01:58:02.185Z INFO webdriver: [POST] http://127.0.0.1:9515/session
[0-0] 2019-03-12T01:58:02.186Z INFO webdriver: DATA { capabilities:
   { alwaysMatch: { browserName: 'chrome', chromeOptions: [Object] },
     firstMatch: [ {} ] },
  desiredCapabilities: { browserName: 'chrome', chromeOptions: { args: [Array] } } }
[0-0] 2019-03-12T01:58:02.703Z INFO webdriver: COMMAND navigateTo("https://webdriver.io/")
[0-0] 2019-03-12T01:58:02.703Z INFO webdriver: [POST] http://127.0.0.1:9515/session/7f818d6a786f7af1d840136247cad311/url
[0-0] 2019-03-12T01:58:02.703Z INFO webdriver: DATA { url: 'https://webdriver.io/' }
[0-0] 2019-03-12T01:58:07.604Z INFO webdriver: COMMAND getTitle()
[0-0] 2019-03-12T01:58:07.605Z INFO webdriver: [GET] http://127.0.0.1:9515/session/7f818d6a786f7af1d840136247cad311/title
[0-0] 2019-03-12T01:58:07.624Z INFO webdriver: RESULT WebdriverIO · Next-gen WebDriver test framework for Node.js
[0-0] 2019-03-12T01:58:07.630Z INFO webdriver: COMMAND deleteSession()
[0-0] 2019-03-12T01:58:07.632Z INFO webdriver: [DELETE] http://127.0.0.1:9515/session/7f818d6a786f7af1d840136247cad311
2019-03-12T01:58:07.805Z DEBUG @wdio/local-runner: Runner 0-0 finished with exit code 0
2019-03-12T01:58:07.808Z INFO @wdio/cli:Launcher: Run onComplete hook

Test Suites:	 1 passed, 1 total (100% completed)
Time:		 🕙  6.05s
```

### Docker-compose

```
docker-compose build
npm install
docker-compose up
```

Output:

```
test_1  | 2019-03-12T02:00:05.577Z DEBUG @wdio/utils:initialiseServices: initialise wdio service "chromedriver"
test_1  | 2019-03-12T02:00:05.598Z INFO @wdio/cli:Launcher: Run onPrepare hook
test_1  | 2019-03-12T02:00:05.606Z INFO @wdio/local-runner: Start worker 0-0 with arg: wdio.conf.js
test_1  | [0-0] 2019-03-12T02:00:05.811Z INFO @wdio/local-runner: Run worker command: run
test_1  | [0-0] 2019-03-12T02:00:05.860Z INFO webdriver: [POST] http://127.0.0.1:9515/session
test_1  | [0-0] 2019-03-12T02:00:05.860Z INFO webdriver: DATA { capabilities:
test_1  |    { alwaysMatch: { browserName: 'chrome', chromeOptions: [Object] },
test_1  |      firstMatch: [ {} ] },
test_1  |   desiredCapabilities: { browserName: 'chrome', chromeOptions: { args: [Array] } } }
test_1  | [0-0] 2019-03-12T02:00:06.051Z INFO webdriver: COMMAND navigateTo("https://webdriver.io/")
test_1  | [0-0] 2019-03-12T02:00:06.051Z INFO webdriver: [POST] http://127.0.0.1:9515/session/eafff8bb62f292170be22aaf6fdac200/url
test_1  | [0-0] 2019-03-12T02:00:06.051Z INFO webdriver: DATA { url: 'https://webdriver.io/' }
test_1  | [0-0] 2019-03-12T02:00:13.174Z INFO webdriver: COMMAND getTitle()
test_1  | [0-0] 2019-03-12T02:00:13.175Z INFO webdriver: [GET] http://127.0.0.1:9515/session/eafff8bb62f292170be22aaf6fdac200/title
test_1  | [0-0] 2019-03-12T02:00:13.191Z INFO webdriver: RESULT WebdriverIO · Next-gen WebDriver test framework for Node.js
test_1  | [0-0] 2019-03-12T02:00:13.197Z INFO webdriver: COMMAND deleteSession()
test_1  | [0-0] 2019-03-12T02:00:13.198Z INFO webdriver: [DELETE] http://127.0.0.1:9515/session/eafff8bb62f292170be22aaf6fdac200
test_1  | 2019-03-12T02:00:13.367Z DEBUG @wdio/local-runner: Runner 0-0 finished with exit code 0
test_1  | 2019-03-12T02:00:13.369Z INFO @wdio/cli:Launcher: Run onComplete hook
test_1  | 
test_1  | Test Suites:	 1 passed, 1 total (100% completed)
Time:            🕐  7.81s
test_1  | 
demo-circleci-wdio-chrome_test_1 exited with code 0
```