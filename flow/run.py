import os
import argparse
import subprocess

# Usage: 
# /OpenROAD-flow-scripts/flow$ python3 run.py designs/nangate45/gcd clean_all
# /OpenROAD-flow-scripts/flow$ python3 run.py designs/nangate45/gcd -r
# /OpenROAD-flow-scripts/flow$ python3 run.py designs/nangate45/gcd -r --cfg config_name
# /OpenROAD-flow-scripts/flow$ python3 run.py designs/nangate45/gcd gui_final
# ...

parser = argparse.ArgumentParser()
parser.add_argument('s', nargs='+', type=str)
parser.add_argument('-r', '--reconfigure', action='store_true')
parser.add_argument('--cfg', type=str)
args = parser.parse_args()

assert len(args.s) > 0
assert os.path.exists(args.s[0])

if args.reconfigure:
    if args.cfg:
        cfg_py = os.path.join(args.s[0], '{}.py'.format(args.cfg))
    else:
        cfg_py = os.path.join(args.s[0], 'cfg.py')
    assert os.path.exists(cfg_py)
    s = 'python3 {}'.format(cfg_py)
    print(s)
    subprocess.run(s, shell=True).check_returncode()

config_mk = os.path.join(args.s[0], 'config.mk')
assert os.path.exists(config_mk)

if len(args.s) == 1:
    s = 'make DESIGN_CONFIG={}'.format(config_mk)
else:
    s = 'make {} DESIGN_CONFIG={}'.format(args.s[1], config_mk)
print(s)

subprocess.run(s, shell=True).check_returncode()
