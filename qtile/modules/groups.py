from libqtile import qtile, hook
from libqtile.config import Key, Group
from libqtile.command import lazy
from .keys import keys, mod
from libqtile.utils import send_notification


groups = [Group(i) for i in "123456789"]
# wall_path = '/home/hughie/Pictures/wallpapers/theme-hypr/'
wall_path = '/home/hughie/Pictures/wallpapers/theme-i3/'
wallpapers = [
    wall_path + '1.jpg',
    wall_path + '2.jpg',
    wall_path + '3.jpg',
    wall_path + '4.jpg',
    wall_path + '5.jpg',
    wall_path + '6.jpg',
    wall_path + '7.jpg',
    wall_path + '8.jpg',
    wall_path + '9.jpg',
    wall_path + '10.jpg',
]


for i in groups:
    keys.extend([
        # mod1 + letter of group = switch to group
        Key([mod],
            i.name,
            lazy.group[i.name].toscreen(),
            desc="Switch to group {}".format(i.name)),

        Key([mod], "Right", lazy.screen.next_group(),
            desc="Switch to next group"),

        Key([mod], "Left", lazy.screen.prev_group(),
            desc="Switch to previous group"),

        # mod1 + shift + letter of group = move focused window to group
        Key([mod, "shift"],
            i.name,
            lazy.window.togroup(i.name, switch_group=False),
            desc="Switch to & move focused window to group {}".format(i.name)),
    ])


@hook.subscribe.setgroup
def screen_change():
    group_index = qtile.groups.index(qtile.current_group)
    # send_notification("qtile", groups[group_index].name)
    wallpaper = wallpapers[group_index]
    qtile.paint_screen(qtile.current_screen, wallpaper, mode="fill")
