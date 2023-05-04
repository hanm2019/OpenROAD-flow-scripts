import os
import argparse
import subprocess


parser = argparse.ArgumentParser()
parser.add_argument('s', nargs='+', type=str)
args = parser.parse_args()

folder_list = ['logs', 'objects', 'reports', 'results']
for path in args.s:
    path = os.path.normpath(path)
    name = os.path.basename(path)
    platform = os.path.basename(os.path.dirname(path))
    for folder in folder_list:
        path_to_clean = os.path.join(folder, platform, name)
        if os.path.exists(path_to_clean):
            s = 'rm -rf {}'.format(path_to_clean)
            print(s)
            subprocess.run(s, shell=True).check_returncode()
