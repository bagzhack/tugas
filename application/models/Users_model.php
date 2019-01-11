<?php
class Users_model extends CI_Model
{
    
    function __construct()
   {
     $this->load->database();
   }

//    Process Login
   public function MatchData($usr,$pass)
   {
       //get user false or not
     $usrMatch = $this->db->select('*')->from('data_admin')
                        ->where('username',$usr)
                        ->where('password',$pass)
                        ->get();

     if ($usrMatch->num_rows() == 1) {
       return $usrMatch->result_array();
     }else{
       return FALSE;
     }
   }

//  Save New Customer
   public function SaveCustomer($Data)
   {
       $insert = $this->db->insert('data_customer', $Data);

       if ($insert) {
           return TRUE;
       } else {
           return FALSE;
       }
       
       
   }

  //  get Customer
  public function getCustomer()
  {
    $get = $this->db->select('*')->from('data_customer')
                                 ->order_by('nama','ASC')
                                 ->get();
    if ($get) {
      return $get->result_array();
    } else {
      return FALSE;
    }
    
  }

  // get spesifiec customer
  public function getCustomerOnes($telp)
  {
    $get = $this->db->select('*')->from('data_customer')
                                 ->where('no_telp',$telp)
                                 ->get();
    if ($get) {
      return $get->result_array();
    } else {
      return FALSE;
    }
    
  }

  public function SaveToHistory($data)
  {
    $insert = $this->db->insert('history', $data);

       if ($insert) {
           return TRUE;
       } else {
           return FALSE;
       }
  }

    //  get History
    public function getHistory($telp)
    {
      $get = $this->db->select('*')->from('history')
                                   ->where('id_customer',$telp)
                                   ->order_by('id_history','ASC')
                                   ->get();
      if ($get) {
        return $get->result_array();
      } else {
        return FALSE;
      }
      
    }

  public function SaveNewAccount($data)
  {
    $insert = $this->db->insert('data_admin', $data);

       if ($insert) {
           return TRUE;
       } else {
           return FALSE;
       }
  }

  public function UpdDataCustomer($data,$telp)
  {
   $this->db->where('no_telp',$telp);
   $this->db->update('data_customer',$data);
   return TRUE;
  }

  public function DeleteCustomer($telp)
  {
    $this->db->where('no_telp',$telp);
    $this->db->delete('data_customer');
    return TRUE;
  }


  //  get Customer
  public function getUser()
  {
    $get = $this->db->select('*')->from('data_admin')
                                 ->order_by('id','ASC')
                                 ->get();
    if ($get) {
      return $get->result_array();
    } else {
      return FALSE;
    }
    
  }

  // get spesifiec customer
  public function getUserOnes($id)
  {
    $get = $this->db->select('*')->from('data_admin')
                                 ->where('id',$id)
                                 ->get();
    if ($get) {
      return $get->result_array();
    } else {
      return FALSE;
    }
    
  }

  public function UpdDataUser($data,$id)
  {
   $this->db->where('id',$id);
   $this->db->update('data_admin',$data);
   return TRUE;
  }

  public function DeleteUser($id)
  {
    $this->db->where('id',$id);
    $this->db->delete('data_admin');
    return TRUE;
  }


}
