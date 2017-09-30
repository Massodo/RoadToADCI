<?php
function generateId($count) {
	
	if($count > 0){		
		$userArray = array();
	
		for($i = 0; $i < $count; $i++){
			$userArray[] = $i + 1;
		}
		return $userArray;
	}
	return false;
}
function selectWinner($userIdArray , $count){	
	if($count > 0){
		if(count($userIdArray) > 0){
			
			$resultArray = array();
			$end = true;
			
			while($end){
				$number = mt_rand(0 , count($userIdArray) - 1);
				if(array_search($userIdArray[$number] , $resultArray) === false){
					$resultArray[] = $userIdArray[$number];
				}
				if(count($resultArray) == $count){
					$end = false;
				}
			}
			return $resultArray;
		}
	}	
									
}
function test(){	
	print_r(selectWinner(generateId(1000) , 50));	
}

test();
