How to re-compile the artifacts in this repository
==================================================

This document describes the steps taken to re-compile the binary classes needed to deploy the TreeBASE web application.
Specifically, this includes:

- The object-relational mappings implemented in `treebase-core` and the web application proper, i.e. `treebase-web`, both
  bundled into a *.war archive for the Tomcat servlet container.
- The `PhyloWidget` applet for tree viewing and editing.

In addition, the headless mesquite library packaged as `mesquite-2.01.tb.jar` is made available here, but it is not 
re-compiled because it's maintenance doesn't fall under the TreeBASE project.
