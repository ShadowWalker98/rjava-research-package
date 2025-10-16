#' Run Merge Pairing Algorithm via Java
#'
#' This function calls a Java method using the \code{rJava} package to execute the merge pairing algorithm.
#' Ensure the Java Virtual Machine (JVM) is initialized and the required class is available in the classpath.
#'
#' @return The output returned by the Java method, typically \code{NULL}, \code{character}, or \code{numeric}, depending on implementation.
#' @examples
#' \dontrun{
#' mergepairing()
#' }
#' @export

mergepairing <- function() {
  # reading in a sample test file
  files <- .jarray(c("./files/mergepairingtest.txt"))

  # creating a java object of type MergePairingCLI
  jhw <- .jnew("usf.saav.cmd.MergePairingCLI")
  # calling the main method on that instance
  .jcall(jhw, "V", "main",files)

  # retrieving the prepopulated list
  rlist <- .jcall("usf/saav/cmd/MergePairingCLI",
                 "[Ljava/lang/String;", "getFinalGraph")

  # retrieving the separate lists

  pValues <- .jcall("usf/saav/cmd/MergePairingCLI",
                    "[F", "getPValues")

  pRealValues <- .jcall("usf/saav/cmd/MergePairingCLI",
                        "[F", "getPRealValues")

  vValues <- .jcall("usf/saav/cmd/MergePairingCLI",
                    "[F", "getVValues")

  vRealValues <- .jcall("usf/saav/cmd/MergePairingCLI",
                        "[F", "getVRealValues")

  pGlobalIDs <- .jcall("usf/saav/cmd/MergePairingCLI",
                       "[I", "getPGlobalIDs")

  vGlobalIDs <- .jcall("usf/saav/cmd/MergePairingCLI",
                       "[I", "getVGlobalIDs")

  print(pValues)
  print(pRealValues)
  print(vValues)
  print(vRealValues)
  print(pGlobalIDs)
  print(vGlobalIDs)
}
