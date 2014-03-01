# plot the radius of the hypersphere necessary to include 10% of a random sampling of points

rvectors <- function(count, dim) {
  matrix(runif(count*dim), count, dim, byrow = TRUE)
}

coverageRadius <- function(pointCount, nDims, desiredPercent) {
  # vectors -.5 to .5
  vecs = rvectors(pointCount, nDims) - .5
  
  # sorted distances from 0
  dists = sort(sqrt(rowSums(vecs^2)))
  
  index = ceiling(pointCount * desiredPercent)
  radius = dists[desiredCount]
  radius  
}

pointCount = 100
nDims = c(1:100)
desiredPercent = .1

radii = sapply(nDims, function(d) coverageRadius(pointCount, d, desiredPercent))

# percent coverage of cube
plot(nDims, radii, xlab="# dimensions", ylab = sprintf("radius for %d%% coverage", round(desiredPercent*100)))

# I'd like to plot the % coverage of the cube for this radius, but don't quite have it once the radius
# extends past the cube. Need to find the equation for a hyperspherical cap of height radius - 1
# then it's pi r^2 - nDims*2*hypersphereCap(radius, height = radius - 1)
