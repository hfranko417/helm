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