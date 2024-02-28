# GraalVM 21.0.2
$GRAALVM_HOME/bin/native-image -jar target/hello-world-graalvm-*.jar --no-fallback --features=clj_easy.graal_build_time.InitClojureClasses
