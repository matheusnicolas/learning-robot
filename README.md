# learning-robot

* Prerequisites
    * Python 2.7
    * Requirements

- Creating venv on Linux
```
$ virtualenv -p /usr/bin/python2.7 venv
```
- Using venv on Linux
```
$ source venv/bin/activate
```
- Creating venv on Windows
```
C:/Users/<your-user>/AppData/Local/Programs/Python/Python27/python.exe venv
```
- Using venv on Windows
```
source venv/Scripts/activate
```
- Installing requirements
```
$ pip install -r requirements.txt
```
- Run Robot tests
```
$ robot -d results ./Tests/<script.robot>
```
