# 项目概述
本项目为前后端分离的图书借阅管理系统
- 开放了普通用户的注册功能。
- 读者可以在该系统中借阅和归还图书，并对自己的借阅信息进行管理。
- 管理员可以在该系统中管理图书和用户。
# 系统模块
- 登录模块
- 注册模块
- 图书信息模块
- 借阅记录模块
- 图书管理模块
- 用户管理模块
- 个人信息模块
# 数据库
- 读者表（reader）
- 图书表（book）
- 管理员表（admin）
- 借阅表（borrow）
- 借阅记录视图（borrowvo）
# 开发语言与环境
- 前端：Vue, Element UI, Node.js
- 后端：SpringBoot, Redis, Maven
- 数据库：MySQL
# 快速开始
#### 后端配置
- 配置数据库和Redis：src/main/resources/application.yml
- Maven获取target文件 
#### 前端配置
```language
npm install
npm run dev
```
#### 运行地址
- localhost:5173
# 项目截图
![登录界面](/项目演示/登录界面.png)
![注册界面](/项目演示/注册界面.png)
![图书信息](/项目演示/图书信息.png)
![借阅记录](/项目演示/借阅记录.png)
