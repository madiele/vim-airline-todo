vim-airline-todo
==================
  
##Introduction
This is vim-airline extension of simplily todo implementation
  
##Required
* [Airline](https://github.com/bling/vim-airline): This is a extension of airline (like powerline, but more fast and KISS)
* [powerline-font](https://github.com/Lokaltog/powerline-fonts): if you use wild char, you may need install powerline font
##Configuration

let s:todo_suffix = exists('g:todo#suffix') ? g:todo#suffix : '*'
* If you want to change the todo directory(the default is ~/.vim-airline-todo):
> let g:todo#directory = "<your_todo_task_directory>"
  
* If you want to change TODO sign (the default is TODO):
> let g:todo#remind= "<your_sign_here>"
  
* If you want to count the TODO tasks recursively (the default is 0, no subdirectory contains):
> let g:todo#recurse = <0_or_1_here>
  
* If you want to change todo task suffix (the default is '*'):
> let g:todo#suffix = "<your_todo_task_suffix_here>" 
  
## Screenshot
![todo](https://github.com/Zuckonit/vim-airline-todo/raw/pomicons-configuration/.screenshot/screenshot.png)

## License
![MIT](https://raw.github.com/Zuckonit/vim-airline-todo/master/LICENSE)

==============================================================================
vim:tw=78:ts=8:ft=help:norl:noet:fen:fdl=0:
