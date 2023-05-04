import os
import argparse
import subprocess


parser = argparse.ArgumentParser()
parser.add_argument('s', nargs='+', type=str)
parser.add_argument('--suffix', type=str)
parser.add_argument('--recover', action='store_true')
args = parser.parse_args()

suffix = '.backup'
if args.suffix:
    suffix += args.suffix

folder_list = ['logs', 'objects', 'reports', 'results']
for path in args.s:
    path = os.path.normpath(path)
    name = os.path.basename(path)
    platform = os.path.basename(os.path.dirname(path))
    for folder in folder_list:
        path_target = os.path.join(folder, platform, name)
        if os.path.exists(path_target):
            if args.recover:
                path_recover = str(path_target).split('.')[0]
                assert not os.path.exists(path_recover)
                s = 'mv {} {}'.format(path_target, path_recover)
            else:
                path_backup = '{}{}'.format(path_target, suffix)
                assert not os.path.exists(path_backup)
                s = 'mv {} {}'.format(path_target, path_backup)
            print(s)
            subprocess.run(s, shell=True).check_returncode()
