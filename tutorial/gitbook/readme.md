# gitbook 入门教程（gitbook-cli版）


## 1. 前置知识

本教程默认你已经了解一些git、markdown知识：

`git` 是分布式版本控制系统，将你的文件存储到云端，方便共享合作。

`markdown` 则是一种简单标记语言，是几乎所有程序员必备的写作语言。非常简洁实用。


## 2. 环境准备

`gitbook` 是基于 `node.js` 的命令行工具，首先需要安装并配置好 `node.js` 环境,然后才能安装`gitbook` 相关工具。（不需要知道nodejs怎么使用，会安装即可）

### 检查 git 环境

```
git --version
```

如果没安装git，可自行安装 https://git-scm.com/downloads


### 检查 node.js 环境

```
node --version
```

自行安装：https://nodejs.org/en

下载过慢时，切换淘宝数据源：

https://zhuanlan.zhihu.com/p/120159632


### 检查 gitbook 环境

```
gitbook --version
```

如果没有安装：

```
npm install -g gitbook-cli
```

#### 如果出现：TypeError: cb.apply is not a function

需要切换node的低版本，推荐使用nvm工具管理node版本:

安装nvm：https://juejin.cn/post/6844903839204638734

```shell
nvm install 12.16.3
nvm use 12.16.3
```

#### 如果出现 MaxListenersExceededWarning: Possible EventEmitter memory leak detected.

没有啥影响，执行npm安装命令有点慢，让子弹飞一会即可


## 3. gitbook 的一些常用命令


### gitbook init: 初始化 gitbook项目

```
gitbook init
```

初始化项目，会自动创建 `README.md` 和 `SUMMARY.md` 两个文件

`SUMMARY.md` 是电子书的章节目录，`gitbook` 会初始化相应的文件目录结构。

`README.md`一般是项目首页


### gitbook serve: 启动 gitbook 项目

```
gitbook serve
```

启动本地服务，程序无报错则可以在浏览器预览电子书效果: [http://localhost:4000](http://localhost:4000/)


### gitbook build: 构建 gitbook 静态网页


构建静态网页而不启动本地服务器，默认生成文件存放在 `_book/` 目录，输出目录是可配置的

输出静态网页后可打包上传到服务器，也可以上传到 `github` 等网站进行托管
