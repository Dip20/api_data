<?php
// connection
$conn = new mysqli ("localhost","root","","its-for-you");
// Check connection
if ($conn -> connect_errno)
{
  echo "Failed to connect to MySQL: " . $conn -> connect_error;

}else{
   // echo "connected";
}

// init parameter..
$output = "";
$apikey = "";
$apisecret = "";
$query = "";

// check for user parameter..
if(isset($_GET['apikey']) AND isset($_GET['apisecret']) AND isset($_GET['query']))
{

    $apikey = $_GET['apikey'];
    $apisecret = $_GET['apisecret'];
    $query = $_GET['query'];

}else{
  $obj = new stdClass();
  $obj->status = 0;
  $obj->error = "Please Enter all parameter. (Required parameter - apikey , apisecrest , query)";

  $output = json_encode($obj);
  echo $output;
}


    // if user apikey and all match our database.
    $sql = mysqli_query($conn,"SELECT * FROM tbl_api_auth WHERE api_key='$apikey'");
    if($sql)
    {
        if(mysqli_num_rows($sql)>0)
        {
            $data=mysqli_fetch_assoc($sql);

            if ($data['api_key']==$apikey AND $data['api_secret']==$apisecret)
            {
                //    echo "api match";
                // step 1 we will check requested query mean data table is valid or not.


                $get_table = mysqli_query($conn,"SELECT * FROM tbl_master WHERE table_name='$query'");
                if ($get_table)
                {
                    if(mysqli_num_rows($get_table)>0)
                    {
                        $table_name = $query;

                    // table name is exist so go for next process..

                    // setp 2 get data from database and display to user.
                     // query starts here
                    $get_data = mysqli_query($conn,"SELECT * FROM $table_name");
                    if ($get_data)
                    {
                        if(mysqli_num_rows($get_data)>0)
                        {
                            $var = array();
                            while ($result=mysqli_fetch_assoc($get_data))
                            {
                                $var[] = $result;
                            }

                            $obj = new stdClass();
                            $obj->status = 1;
                            $obj->Data =  $var;

                            $output = json_encode($obj);
                            echo $output;

                            // uncomment the bellow line if you wish to get data in array form..
                            // $result = json_decode($output);
                            // echo "<pre>";
                            // print_r($result);
                        }
                    }
                // query ends here


                    }else
                    {
                      $obj = new stdClass();
                      $obj->status = 0;
                      $obj->error = "Invalid Query";

                      $output = json_encode($obj);
                      echo $output;
                    }
                }


            }else {
              $obj = new stdClass();
              $obj->status = 0;
              $obj->error = "Invalid API key or API Secret";

              $output = json_encode($obj);
              echo $output;
            }

        }

    }else
    {
      $obj = new stdClass();
      $obj->status = 0;
      $obj->error = "Invalid API key or API Secret";

      $output = json_encode($obj);
      echo $output;
    }









?>
