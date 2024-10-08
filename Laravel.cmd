@echo off

REM Install Vscode
choco install vscode -y

REM Install PHP
choco install php --version=8.3.0 -y

REM Install Composer
choco install composer -y

REM API Tools
choco install postman insomnia-rest-api-client -y

REM Laragon
choco install laragon.install -y

REM Git
choco install git.install -y

REM Path to the php.ini file
set phpIniPath=C:\tools\php83\php.ini

REM Add the lines 'extension=...' to the end of the php.ini file
echo extension=fileinfo >> %phpIniPath%
echo extension=pdo_sqlite >> %phpIniPath%
echo extension=sqlite3 >> %phpIniPath%
echo extension=mysqli >> %phpIniPath%
echo extension=pdo_mysql >> %phpIniPath%
echo extension=pdo_pgsql >> %phpIniPath%
echo extension=pgsql >> %phpIniPath%
echo extension=soap >> %phpIniPath%

REM Inform the user
echo extensions has been added to %phpIniPath%

REM Create and Run Project
@REM composer global require laravel/installer
@REM laravel new example-app
@REM cd example-app
@REM php artisan serve

pause