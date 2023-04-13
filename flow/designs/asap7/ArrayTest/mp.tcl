set block [ord::get_db_block]
set inst [$block findInst "pe_0_0"]
$inst setOrient R0
$inst setOrigin 20000 75000
$inst setPlacementStatus FIRM
set inst [$block findInst "pe_0_1"]
$inst setOrient R0
$inst setOrigin 75000 75000
$inst setPlacementStatus FIRM
set inst [$block findInst "pe_1_0"]
$inst setOrient R0
$inst setOrigin 20000 20000
$inst setPlacementStatus FIRM
set inst [$block findInst "pe_1_1"]
$inst setOrient R0
$inst setOrigin 75000 20000
$inst setPlacementStatus FIRM
