set block [ord::get_db_block]
set inst [$block findInst "sub_0_0"]
$inst setOrient R0
$inst setOrigin 24000 168000
$inst setPlacementStatus FIRM
set inst [$block findInst "sub_0_1"]
$inst setOrient R0
$inst setOrigin 168000 168000
$inst setPlacementStatus FIRM
set inst [$block findInst "sub_1_0"]
$inst setOrient R0
$inst setOrigin 24000 24000
$inst setPlacementStatus FIRM
set inst [$block findInst "sub_1_1"]
$inst setOrient R0
$inst setOrigin 168000 24000
$inst setPlacementStatus FIRM
