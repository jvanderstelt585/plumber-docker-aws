

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

