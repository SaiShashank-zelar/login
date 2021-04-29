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




![Screenshot (571)](https://user-images.githubusercontent.com/82635540/116516918-d76da480-a8eb-11eb-8bcf-c1e600c6bc1b.png)


  
