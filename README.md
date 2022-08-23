# treebase-artifact 

This repository is for pre-compiled binaries to deploy the 
[TreeBASE](https://github.com/TreeBASE/treebase) java application. It contains
the following:

- [treebase-web.war](treebase-web.war) is the web application proper. It 
  consists of the MVC web application, i.e. JSP/HTML pages and related assets,
  web request handlers, and the ORM classes that communicate with the database.
- [mesquite](mesquite) is the headless version of Mesquite that is used by the
  web application to read Nexus files. The location of this folder needs to be
  specified in the JNDI 
  [context.xml](https://github.com/TreeBASE/treebase/blob/master/treebase-web/src/main/webapp/META-INF/context.xml.example)
- [data_provider_web.war](data_provider_web.war) is the OAI-PMH web service
  application. This needs to be deployed as a separate application in the same
  servlet container.

The puppet module [role_treebase](https://github.com/naturalis/role_treebase) 
uses these artifacts to provision a TreeBASE server.
