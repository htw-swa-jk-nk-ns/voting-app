DIR=.
# startup pods
for file in $DIR/service-*; do
    kubectl apply -f $file
done