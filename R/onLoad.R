.onLoad <- function(libname, pkgname) {
  .jpackage(pkgname, lib.loc = libname)  # Needed to setup rJava

  version <- .jcall("java/lang/System", "S", "getProperty", "java.specification.version")

  jar_path <- switch(TRUE,
                     startsWith(version, "21") ~ "java/myLib-java21.jar",
                     startsWith(version, "11") ~ "java/myLib-java11.jar",
                     startsWith(version, "1.8") ~ "java/myLib-java8.jar",
                     stop(sprintf("Unsupported Java version: %s", version))
  )

  full_path <- system.file(jar_path, package = pkgname)
  .jaddClassPath(full_path)
  message(sprintf("Loaded JAR for Java %s: %s", version, basename(full_path)))
}
