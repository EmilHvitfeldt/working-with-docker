# Transform data to right shape/format
iris_metrix <- as.matrix(iris[-5])

# Run model
kmeans_iris <- kmeans(iris_metrix, centers = 3)

# Extract information
library(tibble)
cluster_centers <- as_tibble(kmeans_iris$centers)
cluster_class <- kmeans_iris$cluster

# Same results
library(readr)
write_csv(cluster_centers, "iris-centers.csv")
