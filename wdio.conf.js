exports.config = {

    coloredLogs: true,

    services: ['chromedriver'],

    chromeDriverArgs: ['--silent'],
    
    port: 9515,

    path: '/',

    specs: [
        '*.test.js'
    ],

    exclude: [
        // 'path/to/excluded/files'
    ],

    maxInstances: 1,

    capabilities: [{
        browserName: 'chrome',
        chromeOptions: {
            // binary: '/usr/bin/chromium-browser',
            args: [
                'headless',
                'disable-gpu',
                'no-sandbox',
            ],
        },
    }],

    // Level of logging verbosity: trace | debug | info | warn | error | silent
    logLevel: 'info',

    // If you only want to run your tests until a specific amount of tests have failed use
    // bail (default is 0 - don't bail, run all tests).
    bail: 0,

    baseUrl: 'http://localhost',

    waitforTimeout: 10000,

    connectionRetryTimeout: 90000,
    
    connectionRetryCount: 3,

    framework: 'mocha',

    mochaOpts: {
        ui: 'bdd',
        timeout: 60000
    }
}
