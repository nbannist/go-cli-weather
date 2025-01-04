# Plans
Here is a more detailed walk through of the project.

The idea for this project is to use a public (and hopefully free) API to retrieve weather data for a location and display it on the command line. I wanted a simple but not trivial project for helping to learn to write CLI programs in [Go](https://go.dev/) using [Cobra](https://github.com/spf13/cobra) and [Viper](https://github.com/spf13/viper).

## Initial Features
These features would be called "V1"
- [ ] First run, it will prompt for US ZIP Code and save in a config file in the user's $HOME directory
- [ ] Subsequent runs will default to what's in the config
- [ ] Cache the data and only use the API(s) if it has been more than 15-30 minutes since the last data retrieval
- [ ] 

## Future Features
These are features to add when I find time.
- [ ] Allow it to run in the background and update periodically
- [ ] Make the data available to other apps
- [ ] 
