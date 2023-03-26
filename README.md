# Small Hello Clojure app to show the capabilities of GraalVM Native Image

Unfortunately, cross compilation is **not** supported as of 2023-03-26

## Assumptions
This app assumes a macOS environment\
and Linux compiled output is requested as well.

The environment also assumes you have Docker installed/running\
as well as GraalVM CE 22.3.x (Java 17) installed with Native Image (`gu install native-image`)\
with $GRAALVM_HOME set

## The code:
`(:gen-class)`\
needed for generating a Class which is then executed after creating the jar.

## Create a JAR file (Uber)
`scripts/build.sh`

Then do a trial run to ensure it works:\
`java -jar target/hello-world-graalvm-0.0.1.jar`

This should output: `Hello!`

## Convert to GraalVM Native image:
`scripts/native-image.sh`

This should output hello_world_graalvm-0.0.1 & move it to the (current)/target folder

To also compile for Linux, ensure Docker is running, then run:\
`scripts/native-image-linux.sh`

This should output hello_world_graalvm.core in (current)/target-linux folder