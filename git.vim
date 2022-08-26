let mapleader = " "

nnoremap <silent> <leader>gA git add .
nnoremap <silent> <leader>ga git add %
nnoremap <silent> <leader>gb gitbranch -M master
nnoremap <silent> <leader>gp push -u origin master
nnoremap <silent> <leader>













## add % #generate a ssh key:::>
## ssh-keygen -t ed25519 -C "user@email.com"
## ssh-add ~/.ssh/id_25519
## 
## #create new repo:::>
## echo "# dot" >> README.md
## git init
## git add README.md
## git commit -m "first commit"
## git branch -M master
## git remote add origin git@github.com:Extreme-Programmer/dot.git
## git push -u origin master
## 
## #push existing:::>
## git remote add origin git@github.com:Extreme-Programmer/dot.git
## git branch -M master
## git push -u origin master
