# 使用for 循环遍历该目录下所有的文件夹, 执行 pub get
#!/bin/bash

# 遍历目录下的所有文件夹
for folder in ./*; do
  if [ -d "$folder" ]; then
    # 进入文件夹并执行pub get命令
    cd "$folder"
    flutter pub get
    # 返回上一级目录
    cd ..
  fi
done
