---
layout: post
title: "使用Octopress和github pages搭建自己的博客"
date: 2013-01-29 21:53
comments: true
categories: 
---

github是目前托管开源代码最流行的网站，不管你有没有发布过开源代码，但是如果你没有用过github说明你已经out了。github pages是github的一个服务，可以为你的账号或项目提供免费的网站服务。喜欢github pages的原因是因为pages支持markdown格式，markdown格式是我见过最好用的标签语言。找了很久都没能找到满意的支持代码的博客。github pages觉得是最合适的。简单，漂亮又功能多。 [Jekyll](http://www.yangzhiping.com/tech/wordpress-to-jekyll.html) 是github pages的基础，[Octopress](http://octopress.org/)是Jekyll的一个扩展。 废话太多，下面说下我是怎么配置的吧。

github pages 帮助文档：<https://help.github.com/categories/20/articles>

Octopress 帮助文档：<http://octopress.org/docs/setup/>


创建项目主页
---
1. 创建一个github项目，项目名字必须为username/username.github.com,比如我的用户名是gary34,项目名称必须为gary34/gary34.github.com
具体怎么做就点[这里](https://help.github.com/articles/creating-pages-with-the-automatic-generator)
2. 在github设置上给你的项目加上你的pubkey，不知道什么是pubkey或是windows的就算了，这里不适合你们。
3. [安装Octopress](http://octopress.org/docs/setup/),大概的意思是先安装git ,然后clone Octopress代码，然后rake install 。Octopress 就装好了。
4. 进入[下一步](http://octopress.org/docs/deploying/github/),把Octopress部署到你的github上，

```
rake setup_github_pages
rake generate
rake deploy
git add .
git commit -m 'your message'
git push origin source
```
10分钟之后访问你的pages主页，就可以看到主页已经变成Octopress了。

