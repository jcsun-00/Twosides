#!/bin/bash

# 遍历当前目录和子目录下的所有文件
find . -type f -name "*.csv" | while read file; do
    # 获取文件的路径和文件名
    filepath=$(dirname "$file")
    filename=$(basename "$file")
    
    # 压缩文件，输出文件名将与原文件名相同，但扩展名为 .7z
    echo "Compressing $file"
    7z a "${filepath}/${filename}.7z" "$file"

    rm "${filepath}/${filename}"
done

echo "Compression completed."