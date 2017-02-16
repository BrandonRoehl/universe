```
   `
         ``.``````````
     ```````...``......``````````````
`      ````.--:::::-:::--::---.......```````    `
     ````..----......-----:----------.......`````````
  `````````               ``....---.......:::+/-.```````
 ````                         ````......`..--/oo/-----.`````
```                ``.--.```       ``````.`...-::-/::o/.--...`
`             `.-::/+///---...`````` `````...`.....::os//yo-::.`
           `..-:+ooyyso+//::::::---.....```..``````..-///ss::++.`
          `.-:ydd| | | |_ __ (_)_   _____ _ __ ___  ___ -:+//+y/.`
         ```-/hNh| | | | '_ \| \ \ / / _ \ '__/ __|/ _ \.--://oh/.
         ``../syo| |_| | | | | |\ V /  __/ |  \__ \  __/:/--::+yo-`
        `````-oho \___/|_| |_|_| \_/ \___|_|  |___/\___|///::/oss:``
        `````.+so//:-....-::/+oyhdmNNMMMMNmmdhyyys++///+++oo++yhho.``
        `````.-+s/:--..```..-://+osyhddmmmdhhhhyyhyyshyyhyhyysydhh-``
            ``.-//:-..```````..-:://+oosyyyyssooosssyhddNNNdyhmds/.``
           `````.:/-..``````````...---:://////////++osyyddhhyddyo:``
               ``..--..```````````````......------::/ooosssooo++:.`
                ```......````By,     `````````````..:+o++/::--..`
                  ````.....``` Brandon Roehl       `-:::--``
                     ```..--.. Connor Temple         `````                 `  ``
                     ``````.....``.``````                              `````````
                      `   ```.....-....-.```` ```  `````````````````````````
                            ``.``.....------...................-...````````
                             ```````.:/::------.-----..-...-.....```````  `
                               `    ```.-..---..----:-..---...````
                                       `````````````.`.`...`````
                                                   .      `    ` ````
```
# Universe

## Install

First create a `.universerc` in your home directory like
```
~/workspace/scripts # local scrpits
https://github.com/BrandonRoehl/scripts.git
https://github.com/whoisronnoc/scripts.git
```

First clone and initialize
```bash
git clone https://www.github.com/BrandonRoehl/universe.git
cd universe
./bin/universe install
```

Add the bin to your path
```bash
export PATH="$PATH:${.../universe/bin}"
```

## Usage

Universe commands to update and recompile
```bash
universe update
universe compile
```

For other commands just call the names from bin
