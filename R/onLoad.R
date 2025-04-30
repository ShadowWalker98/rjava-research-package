.onLoad <- function(libname, pkgname) {
  .jpackage(pkgname, lib.loc = libname)

  # Get the Java version string, e.g., "1.8", "11", "17", "21"
  java_version <- .jcall("java/lang/System", "S", "getProperty", "java.specification.version")

  # Convert to numeric: "1.8" → 8, "11" → 11, etc.
  version_num <- if (startsWith(java_version, "1.")) {
    as.numeric(sub("1\\.", "", java_version))
  } else {
    as.numeric(java_version)
  }

  jar_path <- if (version_num >= 21) {
    "java/ReebGraphPairing_version_21.jar"
  } else if (version_num >= 17) {
    "java/ReebGraphPairing_version_17.jar"
  } else if (version_num >= 11) {
    "java/ReebGraphPairing_version_11.jar"
  } else {
    stop(sprintf("Unsupported Java version: %s", java_version))
  }
}
