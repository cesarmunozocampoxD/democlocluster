### Instrucciones
clona este repositorio

### Docker

Asegurate de que tengas docker en tu sistema y que este ejecutandose correctamente. Si no tienes docker en tu sistema puedes descargarlo desde su pagina oficial.

https://www.docker.com/products/docker-desktop/

### Inicia minikube

```
minikube start
```
si no tienes minikube debes instalarlo, puedes hacerlo desde su pagina oficial

https://minikube.sigs.k8s.io/docs/

puedes iniciar el dashboard de minikube para tener un mejor panorama

### Subir imagen docker a repositorio local (opcional)

Este paso es completamente opcional ya que puedes usar una imagen desde dockerhub.

Este paso es porque en algunas empresas no puedes utilizar el repositorio publico y tampoco tienes acceso al repositorio de imagenes de tu empresa.
esta es una forma muy facil de hacerlo todo local.

Ejecuta el comando

```
minikube -p minikube docker-env --shell powershell | Invoke-Expression
```

para cambiar el entorno de contenedores por el de minikube

si escribes el comando 

```
docker images
```

veras imagenes de minikube

ahora deberas generar la imagen del proyecto, algo muy importante es que debes hacerlo en la misma terminal en donde ejecutaste el comando anterior (donde cambiaste de entorno docker con minikube).

Nota: No olvides ejecutar
```
gradle clean build
```
para limpiar el proyecto y generar el .jar


ahora si, ejecuta:

```
docker build -t projectco/k8stest:1.0.0 .
```

### Deploy K8S

si haz trabajado con Kubernetes el siguiente paso no tienen ninguna ciencia, es un archivo deploy en donde podras ver que contiene un Deployment y un Service de la aplicacion, ejecuta: 

```
kubectl apply -f ./deploy.yaml 
```

el ultimo parametro es la ruta del archivo, igual asegurate de estar dentro del proyecto o si no tener la ruta exacta al archivo.

si no tuviste ningun problema en tu dashboard de minikube podras ver el resultado.


### consumiendo mi servicio

por lo regular para consumir el servicio podemos hacerlo utilizando la ip de minikube mas el puerto. para ver esta informacion podemos ejecutar:

```
minikube service list
```
para ver la ip de minikube

```
minikube ip
```

con estos dos comandos nos dara la ip y puerto

### que hacer si no funciona.

Uno de los errores mas comunes es que no puedas hacer peticiones a tu servicio, esto sobre todo en windows.

lo que debes hacer es hacer un puente entre minikube y tu pc, ejecuta el siguiente comando:

```
minikube service nombre_servicio
```
esto creara un puente, entre tu pc y minikube. el nombre del servicio lo podras visualizar al ejecutar de nuevo el comando

```
minikube service list
```

### Finalizar

para terminar minikube te abrira un navegador con la ip y el puerto, copialos y asi podras hacer peticiones a tu servicio.

sigue mi canal para una mejor explicacion y mas proyectos como este:

https://www.youtube.com/channel/UCssXgHcMWgZPUjNdEx0RR3A




