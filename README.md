# 2048_on_kubernetes
2048 GAME
2048 game deploy 
Create a game using html ,css and js 
Create a docker file 
FROM nginx:alpine


RUN rm -rf /usr/share/nginx/html/*




# WORKDIR /2048


COPY . /usr/share/nginx/html/






EXPOSE 80
# CMD [ "npm", "start" ]
CMD ["nginx", "-g", "daemon off;"]

>>docker build -t allenaira/2048 .
>>  docker images
 >>  docker run -d -p 8080:80 allenaira/2048

To push our image to docker hub 
Create a repo in hub


>>   docker push allenaira/2048   

Now to deploy our image on aws  kubernetes 

Now launch and ubuntu instance 

Create a bucket to store your data


Now connect your server and run few commands 
https://github.com/mantu0tech/2048_on_kubernetes.git

Refer these links 

 1  sudo apt update && sudo apt upgrade -y
    2  sudo git clone https://github.com/mantu0tech/2048_on_kubernetes.git
    3  ls
    4  cd 2048_on_kubernetes/
    5  ls
    6  cd Scripts/
    7  sudo chmod u+x script.sh 
    8  ls
    9  sudo apt install docker.io -y
   10  sudo bash script.sh 
   11  aws --version
   12  terraform --version
   13  kubectl version --client
   14  cd EKS-TF/
   15  terraform init


Create an i am role with administrator and attach to your server 


   17  cd 2048_on_kubernetes/Scripts/EKS-TF/
   18  ls
   19  terraform init
   20  sudo terraform init
   21  sudo terraform validate
   22  sudo terraform plan
   23  history 
   24  sudo terraform apply --auto-approve
   25  aws eks update-kubeconfig --name EKS_CLOUD --region ap-south-1
   26  cd ..
   27  kubectl apply -f deployment.yaml
   28  kubectl get all
  29  kubectl apply -f service.yaml
Your EKS cluster is ready 


Just copy the loadbalancer url and paste it on browser 



Delete everything 
>> terraform destroy
And you are done 


