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
  files <- .jarray(c("./files/mergepairingtest.txt"))

  jhw <- .jnew("usf.saav.cmd.MergePairingCLI")
  .jcall(jhw, "V", "main",files)

  rg_list <- .jcall(jhw,
                    returnSig = "Ljava/util/ArrayList;",
                    method = "getFinalGraph")

  # Check the type
  print(rg_list)
}
