to check that helm template is correct and will render
helm template . in the directory or helm template /nginx in the directory below

to create helm package 

helm create (package name )

this will create a package that is generic
helm create nginx or name that you want to name your package.


to create .tar.gz file for helm 
helm package nginx


if a file begins with _ then that file won't be included in the final rendered helm chart which will more than likely be a tpl file
the name within the define block should match the name of the chart.yaml


to install helm chart
helm install local-nginx(or whatever name you want to name it) nginx (or chart location)
ex: helm install local-nginx nginx
to uninstall
helm uninstall local-nginx

to lint helm chart
this validates your template but doesn't render the file almost like a static analyzer

helm lint . or directory


helm repo list 
this will show you all of the repos that you have downloaded

helm repo update
this will download the latest repo updates 

helm search repo (postgres or whatever repo you want to search)
this will search through a repo looking for a particular chart


For dependency
add the dependencies in the chart.yaml file

helm dependency update
this command reads the dependency section of the chart.yaml file and downloads the charts that the chart depends on 
this will put the chart in the charts directory as a .tgz file also it will create a chart.lock file which enure that the record has the exact version downloaded

helm dependency build 
this command will recreate the charts directory from the charts.lock file 

helm dependency update 
this will allow the chart.lock file to be updated based off the newest version in the chart.yaml file 

helm dependency list
this command will show you the dependencies that are required within the helm chart
