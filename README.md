1. 基本的vim配置，支持cscope，ctags，taglist，nerdtree

2. 如下命令支持生成带绝对路径的cscope.files
alias mkcscope='rm -rf cscope.* tags; /home/lijianz/.vim/mkcscope.sh; ctags -R'

$ cat .vim/mkcscope.sh
#!/usr/bin/env bash
find $PWD -name '*.[ch]' -type f -exec echo \"{}\" \; | sort -u > cscope.files
cscope -bvq
