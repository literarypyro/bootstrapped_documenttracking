<?php
require("db.php");
?>
<?php
if(isset($_GET['getData'])){
	if($_GET['getData']=='Y'){
		$db=connectDb();
		
		$sql="select * from document where synced='false'";	
		$rs=$db->query($sql);
		$nm=$rs->num_rows;		
		
		for($i=0;$i<$nm;$i++){
			$row=$rs->fetch_assoc();

			$data["document_".$i]["ref_id"]=$row['ref_id'];
			$data["document_".$i]["title"]=$row['subject'];
			$data["document_".$i]["document_date"]=$row['document_date'];
			$data["document_".$i]["status"]=$row['status'];			
		}	
		
		$json_object['document']=$data;

//		echo json_encode($data);

		$sql="select * from document_routing inner join routing_targets where status='PENDING' and destination_office='SUP' and synced='false'";
		$rs=$db->query($sql);
		$nm=$rs->num_rows;
		for($i=0;$i<$nm;$i++){
			$row=$rs->fetch_assoc();
			
			$actionSQL="select * from document_actions where action_code='".$row['action_id']."'";
			$actionRS=$db->query($actionSQL);
			$actionRow=$actionRS->fetch_assoc();
			
			$data["action_".$i]["document_id"]=$row['reference_no'];
			$data["action_".$i]["from_office"]=$row['from_office'];
			$data["action_".$i]["from_person"]=$row['from_name'];
			$data["action_".$i]["send_date"]=$row['request_date'];
			$data["action_".$i]["action"]=$actionRow['action_description'];
			
		}
		
		echo json_encode($data);
//		$json_object['document_action']=$data;
		
//		echo json_encode($jsonobject);
	}
}
 
if(isset($_POST['dataSynced'])){
	if($_POST['dataSynced']=='Y'){
		$db=connectDb();

		$update="update document set synced='true'";
		$updateRS=$db->query($update);
		
		$update="update document_routing set synced='true'";
		$updateRS=$db->query($update);
	}
}


?>