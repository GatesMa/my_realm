
# 1. Golang项目依赖Go modules

## 一、什么是Go Modules?

Go modules 是 Go 语言的依赖解决方案，发布于 Go1.11，成长于 Go1.12，丰富于 Go1.13，正式于 Go1.14 推荐在生产上使用。

Go moudles 目前集成在 Go 的工具链中，只要安装了 Go，自然而然也就可以使用 Go moudles 了，而 Go modules 的出现也解决了在 Go1.11 前的几个常见争议问题：

* Go 语言长久以来的依赖管理问题。
* “淘汰”现有的 GOPATH 的使用模式。
* 统一社区中的其它的依赖管理工具（提供迁移功能）。