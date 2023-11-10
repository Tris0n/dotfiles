from i3ipc import Connection, Event

i3 = Connection()

focused = i3.get_tree().find_focused().workspace().num

out = ""

for i in range(1, 11):
    if i == focused:
        out += ""
    else:
        out += "%{F#686868}"

    out += " 󰯊 " + "%{F-}"

print(out)
