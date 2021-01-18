DIR=.
# startup pods
for file in $DIR/service-*; do
    kubectl delete -f $file
done