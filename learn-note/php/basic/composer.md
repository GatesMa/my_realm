# Composer

## 1. composer 是什么

composer是 PHP 用来管理依赖（dependency）关系的工具。你可以在自己的项目中声明所依赖的外部工具库（libraries），composer 会帮你安装这些依赖的库文件。

- php 包依赖管理工具
- 包: 组件,一组相关的类,接口,trait 的结合体
- 依赖: A -> B -> C -> D
- composer 就是用 php 语言开发的

## 2. 组件放在了哪里

- github.com, gitee.com
- 查询平台: <https://packagist.org>

## 3. 从哪下载

- 官网下载:<https://getcomposer.org/>
- 中文网: <https://www.phpcomposer.com/>

## 4. windows 下载

`下载地址：https://getcomposer.org/download/`

- 官网下载: <https://getcomposer.org/composer.phar>
- 将 php.exe 所在路径添加到全局 path 变量中
- 将下载的 composer.phar 复制到 php.exe 所在目录中
- 创建 composer.bat:`@php "%~dp0composer.phar" %*`

- php composer.phar -V
- 简化成: composer -V
- 将镜像改为国内阿里云:`composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/`

## 5. 常用指令

- composer init
- composer install: 安装 composer.json 中的依赖
- composer update: 更新依赖 与lock文件保持一致
- composer dump-autoload: 打印自动加载索引
- composer self-update: 更新 composer 版本
- composer require: 添加依赖到 composer.json 中
- composer create-project: 安装项目
- composer config -l -g 查看composer配置
- composer config -g repo.packagist composer <https://mirrors.aliyun.com/composer/> 配置中国镜像

## 6. composer 自动加载 autoload

- 文件级: "files", 需要将加载的文件逐个导入
- 目录级: "classmap",类目录的映射
- 空间级: "psr-4": 命名空间映射到目录
- 无论是哪一种,最后都要执行一下"composer dump",更新 composer.json 中的 autoload 配置项
