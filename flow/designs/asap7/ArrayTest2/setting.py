PLATFORM = 'asap7'

ArrayTest2 = 'ArrayTest2'
SubArrayTest2 = 'SubArrayTest2'
PETest = 'PETest'

SRC_DIR = 'designs/src/{}'.format(ArrayTest2)
DESIGN_DIR = 'designs/{}/{}'.format(PLATFORM, ArrayTest2)


WIDTH = 16


### PETest ###
PE_DIE_SIZE = 12
PE_DIE_MARGIN = 0.48
PE_PIN_INT = (PE_DIE_MARGIN, PE_DIE_SIZE - PE_DIE_MARGIN)


### SubArrayTest2 ###
N_PE_PER_SUB = 4
PE_GAP = PE_DIE_SIZE
PE_GAP_TO_EDGE = PE_GAP * 2
# PE_GAP = 0
# PE_GAP_TO_EDGE = 1

SUB_DIE_SIZE = PE_DIE_SIZE * N_PE_PER_SUB + PE_GAP * (N_PE_PER_SUB - 1) + PE_GAP_TO_EDGE * 2
SUB_DIE_MARGIN = PE_GAP

SUB_PE_POS_MAT = []
for r in range(N_PE_PER_SUB):
    pos_list = []
    y = PE_GAP_TO_EDGE + (N_PE_PER_SUB - r - 1) * (PE_DIE_SIZE + PE_GAP)
    for c in range(N_PE_PER_SUB):
        x = PE_GAP_TO_EDGE + c * (PE_DIE_SIZE + PE_GAP)
        pos_list.append((x, y))
    SUB_PE_POS_MAT.append(pos_list)

SUB_PE_PIN_INT_X_LIST = []
SUB_PE_PIN_INT_Y_LIST = []
for c in range(N_PE_PER_SUB):
    x, _ = SUB_PE_POS_MAT[0][c]
    x_interval = (x + PE_PIN_INT[0], x + PE_PIN_INT[1])
    SUB_PE_PIN_INT_X_LIST.append(x_interval)
for r in range(N_PE_PER_SUB):
    _, y = SUB_PE_POS_MAT[r][0]
    y_interval = (y + PE_PIN_INT[0], y + PE_PIN_INT[1])
    SUB_PE_PIN_INT_Y_LIST.append(y_interval)


### ArrayTest2 ###
N_SUB = 2
SUB_GAP = PE_GAP
SUB_GAP_TO_EDGE = PE_GAP * 2
# SUB_GAP = 12
# SUB_GAP_TO_EDGE = SUB_GAP * 2

TOP_DIE_SIZE = SUB_DIE_SIZE * N_SUB + SUB_GAP * (N_SUB - 1) + SUB_GAP_TO_EDGE * 2
TOP_DIE_MARGIN = SUB_GAP

TOP_SUB_POS_MAT = []
for r in range(N_SUB):
    pos_list = []
    y = SUB_GAP_TO_EDGE + (N_SUB - r - 1) * (SUB_DIE_SIZE + SUB_GAP)
    for c in range(N_SUB):
        x = SUB_GAP_TO_EDGE + c * (SUB_DIE_SIZE + SUB_GAP)
        pos_list.append((x, y))
    TOP_SUB_POS_MAT.append(pos_list)

TOP_SUB_PIN_INT_X_LIST = []
TOP_SUB_PIN_INT_Y_LIST = []
for c in range(N_SUB):
    x, _ = TOP_SUB_POS_MAT[0][c]
    int_list = [(x + lo, x + hi) for lo, hi in SUB_PE_PIN_INT_X_LIST]
    TOP_SUB_PIN_INT_X_LIST.append(int_list)
for r in range(N_SUB):
    _, y = TOP_SUB_POS_MAT[r][0]
    int_list = [(y + lo, y + hi) for lo, hi in SUB_PE_PIN_INT_Y_LIST]
    TOP_SUB_PIN_INT_Y_LIST.append(int_list)    
