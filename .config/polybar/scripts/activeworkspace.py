import sys
from i3ipc import Connection, Event

def get_workspaces_with_windows(i3):
    workspaces_with_windows = set()
    
    for con in i3.get_tree().descendants():
        if con.window and con.workspace():
            if con.workspace().name == "2":
                workspaces_with_windows.add("12")
            elif con.workspace().name == "12":
                workspaces_with_windows.add("2")
            else:
                workspaces_with_windows.add(con.workspace().name)

    return workspaces_with_windows

def main(i3):

    workspaces_with_windows = get_workspaces_with_windows(i3)

    focused = i3.get_tree().find_focused().workspace().num
    
    range_n = (0, 0)

    if int(sys.argv[1]) == 1:
        range_n = (1,11)
    elif int(sys.argv[1]) == 2:
        range_n = (11,21)
    else:
        sys.exit(1)

    inactive = "%{F#686868} 󱙜 %{F-}"
    active = "%{F#005DFF} 󰊠 %{F-}"
    background = "%{F#00A1D8} 󱙝 %{F-}"

    out = ""
    
    for i in range(*range_n):
        elif i == focused:
            out += active
        elif str(i) in workspaces_with_windows:
            out += background
        else:
            out += inactive

    print(out)

i3 = Connection()
main(i3)
