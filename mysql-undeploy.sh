kubectl delete deployment,svc mysql -n finance-db
kubectl delete pvc mysql-pv-claim -n finance-db
kubectl delete pv mysql-pv-volume -n finance-db
kubectl delete secret mysql-secret -n finance-db
kubectl delete namespace finance-db