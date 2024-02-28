# -it Interactive + pseudo-TTY
# -rm Automatically remove the container when it exits
# -v links the /target folder to /app in order to get the output
docker run -it --rm --name graalvm-inst1 \
           -v "$PWD":/target -w /target \
           findepi/graalvm:java21-native \
           native-image -jar target/hello-world-graalvm-*.jar --no-fallback --features=clj_easy.graal_build_time.InitClojureClasses
