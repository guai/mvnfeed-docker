git clone https://github.com/laurent-dol/mvnfeed-cli.git
docker build -t mvnfeed .

docker run -v %CD%\.mvnfeed:/root/.mvnfeed -it mvnfeed mvnfeed artifact transfer --from=gradle-plugins --to=artifactory --name=org.gradle.kotlin:gradle-kotlin-dsl-plugins:2.1.6 --transfer_deps --debug
:or_shell
rem docker run -v %CD%\.mvnfeed:/root/.mvnfeed -it mvnfeed /bin/sh
