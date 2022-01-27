# zsh-web-open
custom oh-my-zsh plugin
This plugin adds aliases for routine time tracking and managing TODOs in task line (tl) [taskline](https://snapcraft.io/taskline)
 link

# installation

1. Clone repo:
   `rm -f ~/.oh-my-zsh/custom/plugins/taskline && git clone https://github.com/AndrewHaluza/zsh-taskline.git ~/.oh-my-zsh/custom/plugins/taskline/`
2. Open your `~/.zshrc` file and enable the `taskline` plugin:
```zsh
plugins=( ... taskline)
```
## Usage
You can use the `taskline` plugin in form:

- `tltrack <sprint_number>` - creates task with current date as name, bind to passed sprint number, launch tracking and returns sprint list
- `tltodo "<TODO_message>" <sprint_number>` - creates note with current date as name and message, bind to passed sprint number, returns sprint list
- `tlstart <task_id>` - start task by id and returns list
- `tlend <task_id>` - end task by id and marks as completed and returns list
- `tltodo_done <task_id>` - mark todo note with star (done) and return list


```zsh
$ tltrack 1        
$ tlend 1        
$ tlstart 1
$ tltodo "Joe's request: add new endpoint" 1

```
![taskline preview](https://newerest.space/images/878vzxa7xqeymejs7a3p3oii4p6so5.png)

```
➜  ~ tltrack 001

 ✔  Started task: 140

  sprint001 [0/1]
  1. …  28/01/22 12:28 

  0% of all tasks complete.
  0 done · 0 canceled · 1 in-progress · 0 pending · 0 notes 

```

```
➜  ~ tltodo "Joe's request: add new endpoint" 001

 ✔  Created note: 2

  sprint001 [0/1]
  1. …  28/01/22 12:28 
  2. ●  28/01/22 12:28  - Joe's request: add new endpoint

  0% of all tasks complete.
  0 done · 0 canceled · 1 in-progress · 0 pending · 1 note 

```

```
➜  ~ tlend 1

 ✔  Checked task: 140

  sprint001 [1/1]
  140. ✔  28/01/22 12:28   (0.27 hours)
  141. ●  28/01/22 12:28  - Joe's request: add new endpoint


  0% of all tasks complete.
  1 done · 0 canceled · 0 in-progress · 0 pending · 1 note 
```
```
➜  ~ tltodo_done 2

 ✔  Checked task: 140

  sprint001 [1/1]
  140. ✔  28/01/22 12:28   (0.27 hours)
  141. ●  28/01/22 12:28  - Joe's request: add new endpoint ★


  0% of all tasks complete.
  1 done · 0 canceled · 0 in-progress · 0 pending · 1 note 
```

## Dependencies

Fully compatible with ubuntu 20.04
