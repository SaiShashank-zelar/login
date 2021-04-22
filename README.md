# Login:

### Install Golang:-
  
  
  ```
     #apt update

     #wget -c https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz -O - | sudo tar -xz -C /usr/local

     #export PATH=$PATH:/usr/local/go/bin

     #source ~/.profile

     #go version

     #mkdir /go,cd /go

     #mkdir src,cd src
  ```  

### To clone the git file in src folder:-

```
     #git clone https://github.com/zelar-soft-todoapp/login.git,cd login

     #export GOPATH=/go
    
``` 
   

### To install Dependencies and To run go:-

```
     #apt install go-dep

     #go get

     #go build

     #./login
```


### To Step up  the service:-

```
     #mv login.servie /etc/systemd/system/login.service
    
     #systemctl daemon-reload
    
     #service login start

     #service login status
    
     #service login restart
    
```




![Screenshot (566)](https://user-images.githubusercontent.com/82635540/115705289-fd45f700-a389-11eb-8787-9542f4e7efe4.png)

  
