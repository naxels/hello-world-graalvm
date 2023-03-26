# Setup folder
mkdir target-linux
cp target/hello-world-graalvm-*.jar target-linux/

# Cross compilation not supported yet :(
# $GRAALVM_HOME/bin/native-image -jar target/hello-world-graalvm-*.jar \
#     --initialize-at-build-time=. \
#     --no-fallback \
#     --static \
#     --target=Linux-amd64 \
#     hello_world_graalvm.core

docker pull ghcr.io/graalvm/native-image:22.3.1

# -it Interactive + pseudo-TTY
# -rm Automatically remove the container when it exits
# -v links the /target folder to /app in order to get the output
# for some reason target/hello-world-graalvm-*.jar doesn't work..
docker run -it --rm -v $(pwd)/target-linux:/app ghcr.io/graalvm/native-image:22.3.1 \
 -jar hello-world-graalvm-0.0.1.jar \
    --initialize-at-build-time=. \
    --no-fallback \
    --static \
    hello_world_graalvm.core