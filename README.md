## 初始化 CentOS 脚本

### 缘起 

经历过几次从零开始配置 CentOS，每次配置都会耗费一定的时间，配置的时候就想写一个脚本把需要的软件自动安装、需要的配置自动配置，这样每次用一台新的虚拟机时执行一下脚本就可以自动完成配置，熟悉的环境旧回来了。

### 项目结构

+
+ init.sh
+ README.MD
+ +
+ + yum
+ + + init.sh
+ + + iftop.sh 
+ + software
+ + + init.sh 
+ + + mysql.sh
+ + + jdk.sh

最外层的 `init.sh` 会引入 `yum` 和 `software` 目录的 `init.sh`， 每个目录下的  `init.sh` 会引入该目录下的所有脚本，除了 `init.sh` 之外的所有脚本都会执行一个安装动作，可以通过文件名确定。

`yum` 目录包含可以从仓库中心安装的软件

`software` 目录包含需要下载安装的软件
