# gitbook 入门教程

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
#### !!!常见错误!!!
**如果出现：TypeError: cb.apply is not a function**

需要切换node的低版本，推荐使用nvm工具管理node版本:

安装nvm：https://juejin.cn/post/6844903839204638734

```shell
nvm install 12.16.3
nvm use 12.16.3
```

**如果出现 MaxListenersExceededWarning: Possible EventEmitter memory leak detected.**

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

## 4. book.json 说明

`book.json` 配置文件。可以配置也可以不配置。高级部分会用到

完整的支持项请参考[官方文档](https://toolchain.gitbook.com/config.html)

常用的一些配置项：

#### `title` 标题

> 书籍的标题

示例:

```
"title": "标题"
```

#### `author` 作者

> 书籍的作者

示例:

```
作者"author": "gatesma"
```

#### `description` 描述

> 书籍的简要描述

示例:

```
  "description": ""
```

> 选填,请参考 [ISBN Search](https://isbnsearch.org/)

#### `language` 语言

> 支持语言项: 默认英语(`en`),设置成简体中文(`zh-hans`)

```
en, ar, bn, cs, de, en, es, fa, fi, fr, he, it, ja, ko, no, pl, pt, ro, ru, sv, uk, vi, zh-hans, zh-tw
```

示例:

```
"language": "zh-hans"
```



#### `links` 侧边栏链接

> 左侧导航栏添加链接,支持外链

示例;

```
"links": {
    "sidebar": {
        "我的网站": "https://baidu.com/"
    }
}
```

#### `styles` 自定义样式

> 自定义全局样式

示例:

```
"styles": {
    "website": "styles/website.css",
    "ebook": "styles/ebook.css",
    "pdf": "styles/pdf.css",
    "mobi": "styles/mobi.css",
    "epub": "styles/epub.css"
}
```

#### 【重要】`plugins` 插件

> 配置额外的插件列表,添加新插件项后需要运行 `gitbook install` 安装到当前项目.

`gitbook` 默认自带5个插件,分别是:

- `highlight` 语法高亮插件
- `search` 搜索插件
- `sharing` 分享插件
- `font-settings` 字体设置插件
- `livereload` 热加载插件

> 后续会介绍一些常用插件,如需获取更多插件请访问[官网插件市场](https://plugins.gitbook.com/)

示例:

```
"plugins": [
    "github",
    "pageview-count",
    "mermaid-gb3",
    "-lunr", 
    "-search", 
    "search-plus",
    "splitter",
    "-sharing", 
    "sharing-plus",
    "expandable-chapters-small",
    "anchor-navigation-ex",
    "edit-link",
    "copy-code-button",
    "chart",
    "favicon-plus",
    "donate"
]
```

#### 【重要】 `pluginsConfig` 插件配置

> 安装插件的相应配置项,具体有哪些配置项是由插件本身提供的,应访问插件官网进行查询.

```
"pluginsConfig": {
    "github": {
      "url": "https://github.com/gatesma/my_realm"
    }
}
```
