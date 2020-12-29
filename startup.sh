# startup pods
for file in './service-*'; do
    kubectl create -f "$file"
done