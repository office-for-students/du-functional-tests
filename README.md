# du-functional-tests 
## Functional tests for OFS DiscoverUni web app

## Set-up
### Create and activate virtual environment
```
cd du-functional-tests
python3 -m venv .env
source .env/bin/activate

```
### Instal dependencies
```
pip install -r requirements.txt
```
or run 
```
pip install behave-webdriver webdriver-manager
```

### Download Selenium webdriver for Chrome (or another browsers) and add this to your ```$PATH```
https://selenium-python.readthedocs.io/installation.html#drivers

In case you have permissions problem on Mac run
```
xattr -d com.apple.quarantine /path/to/chromedriver
```

## Run tests
In order to tests against a specifin environment, 
comment out the url setting in Examples section in feature files.

### To run all tests
```
behave
```

### To run individual test
```
behave -i <feature_name>
```
eg.
```
behave -i main_page_basic.feature
```

### To run all tests for specific functionality
```
behave -i <functionality_name>
```
eg.
```
behave -i search_course
```
