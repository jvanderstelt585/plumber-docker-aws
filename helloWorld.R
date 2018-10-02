library(jsonlite)

hostName <- system("hostname", intern = TRUE)

#* @get /api/ping
ping <- function()
{
 #environmentSettings <- Sys.getenv()
 #hostName <- Sys.getenv("COMPUTERNAME")
 #if (hostName == ""){
 hostName <- system("hostname", intern = TRUE)
 #}
 echoText <- sprintf("[%s]: Welcome to Muni Horizon Pricing Model!", hostName)
 return(echoText)
}

#* @filter cors
cors <- function(res) {
  res$setHeader("Access-Control-Allow-Origin", "*")
  res$setHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS")
  res$setHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization")
  res$setHeader("Access-Control-Allow-Credentials", "true")
  plumber::forward()
}

#* @options /sayHelloToWorld
#* @post /sayHelloToWorld
function(req) {
  
  theResponse = "Hello, world!"
  
  return(theResponse)
  
}

