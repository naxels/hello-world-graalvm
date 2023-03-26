# Error: DARWIN does not support building static executable images.
$GRAALVM_HOME/bin/native-image -jar target/hello-world-graalvm-*.jar \
    --initialize-at-build-time=. \
    --no-fallback \
    # --static \
    hello_world_graalvm.core

 mv hello-world-graalvm-* target/