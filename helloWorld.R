#* @filter cors
cors <- function(res) {
  res$setHeader("Access-Control-Allow-Origin", "*")
  res$setHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS")
  res$setHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization")
  res$setHeader("Access-Control-Allow-Credentials", "true")
  plumber::forward()
}

#* @options /returnMyInput
#* @get /returnMyInput
#* @param inputValue:character 
#* @response 200 Return successfull
#* @response 500 Bad input
#* @response default Return successfull
function(inputValue) {
  
  # Extract the portfolio data
  theOutput = paste0("Your input was: ", inputValue)
  
  return(theOutput)
  
}

#* @options /sayHelloToWorld
#* @post /sayHelloToWorld
function(req) {
  
  theResponse = "Hello, world!"
  
  return(theResponse)
  
}
