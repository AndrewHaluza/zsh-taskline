# makes time tracking routines via taskline easier


function tlstart {
    tl b $1 && tl
}

function tlend {
    tl c $1 && tl
}

function tltodo_done {
   tl s $1 && tl
}

function tltrack {
        task_number=$(tl t "$(date +"%d/%m/%y %I:%M %p")" -b  "sprint$1" | grep -oE '\S+$')
        tl b $task_number && tl l "sprint$1"
}

function tltodo {
    tl n "$(date +"%d/%m/%y %I:%M %p") - $1" -b  "sprint$2" && tl l "sprint$2"
}

