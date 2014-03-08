# Tools for downloading and managing resources. (papers, datasets)

# TODO: Turn this into a package
# TODO: This is psuedo packagey, but really it's just a bunch of symbols with dots in them I think. How's this supposed to work in R?

resources.defs = read.csv("resources.csv", header = TRUE)

resources.download <- function(defs, force = FALSE) {
  getOne <- function(def) {
    src = def["source"]
    targetDir = def["destDir"]
    target = file.path(targetDir, def["destName"])
    if (!file.exists(target) || force) {
      if (!file.exists(targetDir)) {
        dir.create(targetDir, recursive = TRUE)        
      }
      cat("Downloading", src, "to", target)    
      download.file(src, target, "auto")
      cat("DONE\n")
    } else {
      cat("Skipping", src, "Already Exists\n")
    }  
    target
  }
  
  apply(defs, 1, getOne)
}

resources.getall <- function() {
  resources.download(resources.defs)
}


