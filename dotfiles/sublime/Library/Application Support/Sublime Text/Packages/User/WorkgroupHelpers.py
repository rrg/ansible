import sublime
import sublime_plugin

# Cycle to next open workgroup in the window
# direction 1 for going right, direction -1 for going left
class CycleWorkgroupCommand(sublime_plugin.WindowCommand):
    def run(self, direction = 1):
        group_idx = (self.window.active_group() + direction) % self.window.num_groups()
        self.window.focus_group(group_idx)

# Move a file to next workgroup, Takes currently focused file
# and moves it to next open workgroup. Set direction 1 to move
# right and direction -1 to move left.
class MoveToWorkgroupCommand(sublime_plugin.WindowCommand):
    def run(self, direction):
        group_idx = (self.window.active_group() + direction) % self.window.num_groups()
        self.window.run_command('move_to_group', { "group": group_idx })
        self.window.focus_group(group_idx)
