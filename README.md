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

The internal repo [docker-compose-treebase](https://gitlab.com/naturalis/bii/treebase/docker-compose-treebase)
uses these artifacts to build a container that is deployment according to 
Naturalis' standardized container deployment Ansible playbook `ansible-role-docker-compose`

Note as of 2026-01-05:

The artifacts have been rebuilt with dependency upgrades and code changes
to cope with any changed dependency APIs. This rebuilding has mitigated all
critical advisories but is untested. The changes are discussed [here](CHANGES.md).
