#!/bin/bash

# 遍历当前目录和子目录下的所有文件
find . -type f -name "*.7z" | while read file; do
    # 获取文件的路径和文件名
    filepath=$(dirname "$file")
    filename=$(basename "$file")
    
    # 解压文件到原文件夹下
    echo "Decompressing $file"
    7z x "$file" -o"$filepath"
    
    # 删除7z文件
    rm -f "$file"
done

echo "Decompression and cleanup completed."