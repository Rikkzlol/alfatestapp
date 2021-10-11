@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  alfatestapp startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and ALFATESTAPP_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\alfatestapp-0.1.0.jar;%APP_HOME%\lib\spring-boot-starter-web-2.5.5.jar;%APP_HOME%\lib\spring-cloud-starter-openfeign-2.2.3.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-json-2.3.5.RELEASE.jar;%APP_HOME%\lib\spring-cloud-starter-2.2.3.RELEASE.jar;%APP_HOME%\lib\spring-cloud-openfeign-core-2.2.3.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-aop-2.3.5.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-2.3.5.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-2.3.5.RELEASE.jar;%APP_HOME%\lib\spring-webmvc-5.2.10.RELEASE.jar;%APP_HOME%\lib\feign-form-spring-3.8.0.jar;%APP_HOME%\lib\spring-web-5.2.10.RELEASE.jar;%APP_HOME%\lib\spring-cloud-commons-2.2.3.RELEASE.jar;%APP_HOME%\lib\feign-slf4j-10.10.1.jar;%APP_HOME%\lib\feign-hystrix-10.10.1.jar;%APP_HOME%\lib\feign-core-10.10.1.jar;%APP_HOME%\lib\spring-boot-autoconfigure-2.3.5.RELEASE.jar;%APP_HOME%\lib\spring-boot-2.3.5.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-logging-2.3.5.RELEASE.jar;%APP_HOME%\lib\jakarta.annotation-api-1.3.5.jar;%APP_HOME%\lib\spring-context-5.2.10.RELEASE.jar;%APP_HOME%\lib\spring-aop-5.2.10.RELEASE.jar;%APP_HOME%\lib\spring-beans-5.2.10.RELEASE.jar;%APP_HOME%\lib\spring-expression-5.2.10.RELEASE.jar;%APP_HOME%\lib\spring-core-5.2.10.RELEASE.jar;%APP_HOME%\lib\snakeyaml-1.26.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.11.3.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.11.3.jar;%APP_HOME%\lib\jackson-module-parameter-names-2.11.3.jar;%APP_HOME%\lib\hystrix-core-1.5.18.jar;%APP_HOME%\lib\archaius-core-0.7.6.jar;%APP_HOME%\lib\jackson-databind-2.11.3.jar;%APP_HOME%\lib\tomcat-embed-websocket-9.0.39.jar;%APP_HOME%\lib\tomcat-embed-core-9.0.39.jar;%APP_HOME%\lib\jakarta.el-3.0.3.jar;%APP_HOME%\lib\spring-cloud-context-2.2.3.RELEASE.jar;%APP_HOME%\lib\spring-security-rsa-1.0.9.RELEASE.jar;%APP_HOME%\lib\spring-cloud-netflix-ribbon-2.2.3.RELEASE.jar;%APP_HOME%\lib\spring-security-crypto-5.3.5.RELEASE.jar;%APP_HOME%\lib\logback-classic-1.2.3.jar;%APP_HOME%\lib\log4j-to-slf4j-2.13.3.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.30.jar;%APP_HOME%\lib\feign-form-3.8.0.jar;%APP_HOME%\lib\slf4j-api-1.7.30.jar;%APP_HOME%\lib\spring-jcl-5.2.10.RELEASE.jar;%APP_HOME%\lib\jackson-annotations-2.11.3.jar;%APP_HOME%\lib\jackson-core-2.11.3.jar;%APP_HOME%\lib\bcpkix-jdk15on-1.64.jar;%APP_HOME%\lib\spring-cloud-netflix-archaius-2.2.3.RELEASE.jar;%APP_HOME%\lib\aspectjweaver-1.9.6.jar;%APP_HOME%\lib\commons-fileupload-1.4.jar;%APP_HOME%\lib\guava-29.0-android.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\commons-configuration-1.8.jar;%APP_HOME%\lib\rxjava-1.3.8.jar;%APP_HOME%\lib\HdrHistogram-2.1.9.jar;%APP_HOME%\lib\logback-core-1.2.3.jar;%APP_HOME%\lib\log4j-api-2.13.3.jar;%APP_HOME%\lib\bcprov-jdk15on-1.64.jar;%APP_HOME%\lib\commons-io-2.2.jar;%APP_HOME%\lib\commons-lang-2.6.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\checker-compat-qual-2.5.5.jar;%APP_HOME%\lib\error_prone_annotations-2.3.4.jar;%APP_HOME%\lib\j2objc-annotations-1.3.jar


@rem Execute alfatestapp
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %ALFATESTAPP_OPTS%  -classpath "%CLASSPATH%" ru.malyushov.Main %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable ALFATESTAPP_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%ALFATESTAPP_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
