## docker 測試
在容器啟動時自動執行shell腳本:  

1. Dockerfile  
```
ENTRYPOINT ["/bin/bash","-c","source /scripts/laravel-project-init.sh"]
```
注意laravel-project-init.sh裡的  
```
apachectl -D FOREGROUND
```
要放在最後再執行, 因為要讓apache跑在前景, 這樣docker才不會exit  

2. 或是在容器啟動後, 再進入容器手動執行shell腳本(指令請看cmd檔)  
