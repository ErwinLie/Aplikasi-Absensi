<?php

namespace App\Models;
use CodeIgniter\Model;

Class M_absensi extends Model
{ 
    public function tampil($tabel){
        return $this->db->table($tabel)
                        ->get()
                        ->getResult();
    }

    public function tampilwhere($tabel, $where){
        return $this->db->table($tabel)
                        ->where($where)
                        ->get()
                        ->getResult();
    }

    public function tampil2($tabel){
        return $this->db->table($tabel)
                        ->orderBy('id_kelas', 'DESC')
                        ->get()
                        ->getResult();
    }

    public function tampilguru($tabel)
{
    // Pastikan tabel adalah 'tb_user' dan filter berdasarkan id_level = 3
    if ($tabel === 'tb_user') {
        return $this->db->table($tabel)
                        ->where('id_level', 4)
                        ->get()
                        ->getResult();
    } else {
        return $this->db->table($tabel)
                        ->get()
                        ->getResult();
    }
}

    public function tampilsiswa($tabel)
{
    // Pastikan tabel adalah 'tb_user' dan filter berdasarkan id_level = 3
    if ($tabel === 'tb_user') {
        return $this->db->table($tabel)
                        ->where('id_level', 5)
                        ->get()
                        ->getResult();
    } else {
        return $this->db->table($tabel)
                        ->get()
                        ->getResult();
    }
}


public function getAllKelas()
    {
        return $this->db->table('tb_kelas')
                        ->select('id_kelas, kelas')
                        ->get()
                        ->getResult();
    }

    // Method to get all blocks
    public function getAllBlok()
    {
        return $this->db->table('tb_blok')
                        ->select('id_blok, nama_blok')
                        ->get()
                        ->getResult();
    }

    // Method to get all subjects
    public function getAllMapel()
    {
        return $this->db->table('tb_mapel')
                        ->select('id_mapel, mapel')
                        ->get()
                        ->getResult();
    }

    
	public function edit($tabel, $isi, $where){
        return $this->db->table($tabel)
                        ->update($isi,$where);
    }

    public function hapus($table,$where)
    {
        return $this->db->table($table)
                        ->delete($where);

    }
    
    public function getWhere($table, $where)
    {
        return $this->db->table($table)
                        ->where($where)
                        ->get()
                        ->getRow();
    }

    public function getWhere2($table, $where)
{
    return $this->db->table($table)
                    ->where($where)
                    ->get()
                    ->getResult(); // Mengembalikan array objek
    // atau
    // ->getResultArray(); // Mengembalikan array asosiatif
}

public function getWhere3($table, $where, $where2, $where3)
{
    return $this->db->table($table)
                    ->where($where)
                    ->where($where2)
                    ->where($where3)
                    ->get()
                    ->getRow(); // Mengembalikan array objek
    // atau
    // ->getResultArray(); // Mengembalikan array asosiatif
}


    public function getById($id)
    {
        return $this->db->table('tb_user')
            ->where('id_user', $id)
            ->get()
            ->getRow();
    }

    public function resetpassword($table,$kolom,$id,$data)
{
    
    $this->db->table($table)->where($kolom, $id)->update($data);
}

    public function getPassword($userId)
    {
        return $this->db->table('tb_user')
            ->select('password')
            ->where('id_user', $userId)
            ->get()
            ->getRow()
            ->password;
    }
    
    public function join($tabel, $tabel2, $on){
        return $this->db->table($tabel)
                        ->join($tabel2, $on, 'left')
                        ->get()
                        ->getResult();
    }
    public function joinWhere($tabel, $tabel2, $on, $where){
        return $this->db->table($tabel)
                        ->join($tabel2, $on, 'left')
                        ->getWhere($where)
                        ->getRow();
    
    }

    public function joinWheregetResult($tabel, $tabel2, $on, $where){
        return $this->db->table($tabel)
                        ->join($tabel2, $on)
                        ->getWhere($where)
                        ->getResult();
    
    }

    public function joinWheregetResult2($tabel, $tabel2, $on, $where, $where1)
{
    return $this->db->table($tabel)
                    ->join($tabel2, $on)
                    ->where($where)  // Apply the first condition
                    ->where($where1) // Apply the second condition
                    ->get()          // Execute the query
                    ->getResult();   // Get the result as an array of objects
}

public function joinFiveWheregetResult2($tabel, $tabel2, $tabel3, $tabel4, $tabel5, $on, $on2, $on3, $where, $where1)
{
    return $this->db->table($tabel)
                    ->join($tabel2, $on)
                    ->join($tabel3, $on2)
                    ->join($tabel4, $on3)
                    ->join($tabel5)
                    ->where($where)  // Apply the first condition
                    ->where($where1) // Apply the second condition
                    ->get()          // Execute the query
                    ->getResult();   // Get the result as an array of objects
}

public function joinMultipleTables($where1, $where2, $where3)
    {
        return $this->db->table('tb_user')
        ->select('tb_user.*, tb_kelas.*, tb_blok.*, tb_jadwal.*, tb_mapel.*, tb_mapel.id_user as id_guru, tb_user.id_user as id_siswa')
            ->join('tb_kelas', 'tb_user.id_kelas = tb_kelas.id_kelas')
            ->join('tb_jadwal', 'tb_user.id_kelas = tb_jadwal.id_kelas')  // Jika diperlukan
            ->join('tb_mapel', 'tb_jadwal.id_mapel = tb_mapel.id_mapel')
            ->join('tb_blok', 'tb_jadwal.id_blok = tb_blok.id_blok')
            ->where($where1)  // Kondisi pertama (misalnya filter untuk id_level)
            ->where($where2)  // Kondisi kedua (misalnya filter untuk id_kelas)
            ->where($where3)
            ->get()
            ->getResult();
    }

    public function joinThreeWhere($tabel, $tabel2, $tabel3, $on, $on2, $where){
        return $this->db->table($tabel)
                        ->join($tabel2, $on, 'left')
                        ->join($tabel3, $on2, 'left')
                        ->getWhere($where)
                        ->getRow();
    
    }

    public function joinThreeWheregetResult($tabel, $tabel2, $tabel3, $on, $on2, $where){
        return $this->db->table($tabel)
                        ->join($tabel2, $on)
                        ->join($tabel3, $on2)
                        ->getWhere($where)
                        ->getResult();
    
    }

    public function joinThreeTables($tabel, $tabel2, $tabel3, $on1, $on2){
        return $this->db->table($tabel)
        ->join($tabel2, $on1, 'left')
        ->join($tabel3, $on2, 'left')
        ->get()
        ->getResult();
    }

    public function joinThreePencatatan($table1, $table2, $table3, $on1, $on2)
{
    return $this->db->table($table1)
        ->join($table2, $on1, 'left')
        ->join($table3, $on2, 'left')
        ->orderBy('id_pencatatan', 'DESC')
        ->get()
        ->getResult();
}

    public function joinThreeTablesquotation($tabel, $tabel2, $tabel3, $on1, $on2, $group_by_column){
        return $this->db->table($tabel)
            ->join($tabel2, $on1, 'left')
            ->join($tabel3, $on2, 'left')
            ->groupBy($group_by_column) // Mengelompokkan berdasarkan kolom no_quotation
            ->get()
            ->getResult();
    }

    public function joinFourWheregetResult($tabel, $tabel2, $tabel3, $tabel4, $on, $on2, $on3, $where){
        return $this->db->table($tabel)
                        ->join($tabel2, $on)
                        ->join($tabel3, $on2)
                        ->join($tabel4, $on3)
                        ->getWhere($where)
                        ->getResult();
    
    }

    public function joinFourTables($tabel, $tabel2, $tabel3, $tabel4, $on1, $on2, $on3){
        return $this->db->table($tabel)
        ->join($tabel2, $on1, 'left')
        ->join($tabel3, $on2, 'left')
        ->join($tabel4, $on3, 'left')
        ->get()
        ->getResult();
     }

     public function joinFourPengeluaran($tabel, $tabel2, $tabel3, $tabel4, $on1, $on2, $on3){
        return $this->db->table($tabel)
        ->join($tabel2, $on1, 'left')
        ->join($tabel3, $on2, 'left')
        ->join($tabel4, $on3, 'left')
        ->orderBy('id_pengeluaran_tc', 'DESC')
        ->get()
        ->getResult();
     }

     public function joinFourWhere($tabel, $tabel2, $tabel3, $tabel4, $on, $on2, $on3, $where){
        return $this->db->table($tabel)
                        ->join($tabel2, $on, 'left')
                        ->join($tabel3, $on2, 'left')
                        ->join($tabel4, $on3, 'left')
                        ->getWhere($where)
                        ->getRow();
    
    }
     
    public function joinFiveTables($tabel, $tabel2, $tabel3, $tabel4,$tabel5, $on1, $on2, $on3, $on4){
         return $this->db->table($tabel)
         ->join($tabel2, $on1, 'left')
         ->join($tabel3, $on2, 'left')
         ->join($tabel4, $on3, 'left')
         ->join($tabel5, $on4, 'left')
         ->get()
         ->getResult();
      }

      public function joinFiveWhere($tabel, $tabel2, $tabel3, $tabel4, $tabel5, $on, $on2, $on3, $on4, $where){
        return $this->db->table($tabel)
                        ->join($tabel2, $on, 'left')
                        ->join($tabel3, $on2, 'left')
                        ->join($tabel4, $on3, 'left')
                        ->join($tabel5, $on4, 'left')
                        ->getWhere($where)
                        ->getRow();
    
    }

    public function joinFiveWheregetResult($tabel, $tabel2, $tabel3, $tabel4, $tabel5, $on, $on2, $on3, $on4, $where){
        return $this->db->table($tabel)
                        ->join($tabel2, $on, 'left')
                        ->join($tabel3, $on2, 'left')
                        ->join($tabel4, $on3, 'left')
                        ->join($tabel5, $on4, 'left')
                        ->getWhere($where)
                        ->getResult();
    
    }

    // public function joinSixWheregetResult($tabel, $tabel2, $tabel3, $tabel4, $tabel5, $tabel6, $on, $on2, $on3, $on4, $on5, $where1, $where2, $where3, $where4){
    //     return $this->db->table($tabel)
    //                     ->join($tabel2, $on, 'left')
    //                     ->join($tabel3, $on2, 'left')
    //                     ->join($tabel4, $on3, 'left')
    //                     ->join($tabel5, $on4, 'left')
    //                     ->join($tabel6, $on5, 'left')
    //                     ->getWhere($where1, $where2, $where3, $where4)
    //                     ->getResult();
    
    // }

    public function joinSixWheregetResult($tabel, $tabel2, $tabel3, $tabel4, $tabel5, $tabel6, $on, $on2, $on3, $on4, $on5, $where1, $where2, $where3, $where4)
{
    $builder = $this->db->table($tabel)
                        ->join($tabel2, $on, 'left')
                        ->join($tabel3, $on2, 'left')
                        ->join($tabel4, $on3, 'left')
                        ->join($tabel5, $on4, 'left')
                        ->join($tabel6, $on5, 'left');

    // Apply where conditions
    if (!empty($where1)) {
        $builder->where($where1);
    }
    if (!empty($where2)) {
        $builder->where($where2);
    }
    if (!empty($where3)) {
        $builder->where($where3);
    }
    if (!empty($where4)) {
        $builder->where($where4);
    }

    return $builder->get()->getResult();
}
    
    public function tambah($tabel, $isi){
        return $this->db->table($tabel)
                        ->insert($isi);
    }

    public function upload($photo)
    {
        $imageName = $photo->getName();
        $photo->move(ROOTPATH . 'public/img', $imageName);
    }

    public function cari($tabel,$tabel2,$on,$awal,$akhir, $field){
        return $this->db->table($tabel)
                        ->join($tabel2,$on,'left')
                        ->getwhere($field." between '$awal' and '$akhir'")
                        ->getResult();
    }

public function get_jadwal($id_kelas, $id_blok)
{
    return $this->db->table('tb_jadwal')
                    ->select('tb_jadwal.id_sesi, tb_sesi.sesi, tb_user.username as nama_guru, tb_mapel.mapel, tb_jadwal.jam_mulai, tb_jadwal.jam_selesai')
                    ->join('tb_user', 'tb_jadwal.id_user = tb_user.id_user', 'left')
                    ->join('tb_mapel', 'tb_jadwal.id_mapel = tb_mapel.id_mapel', 'left')
                    ->join('tb_sesi', 'tb_jadwal.id_sesi = tb_sesi.id_sesi', 'left') // Adjusted join to use tb_jadwal.id_mapel
                    ->where('tb_jadwal.id_kelas', $id_kelas)
                    ->where('tb_jadwal.id_blok', $id_blok)
                    ->get()
                    ->getResult();
}

    protected $table = 'tb_jadwal';

    // Function to check if a schedule exists for the same session, class, block, and teacher
    public function check_conflict($id_kelas, $id_blok, $id_sesi, $id_user)
    {
        return $this->db->table($this->table)
                        ->where('id_kelas', $id_kelas)
                        ->where('id_blok', $id_blok)
                        ->where('id_sesi', $id_sesi)
                        ->where('id_user', $id_user)
                        ->countAllResults() > 0;
    }

    public function getMapelByGuru($id_guru)
    {
        return $this->db->table('tb_mapel')
                        ->where('id_user', $id_guru)
                        ->get()
                        ->getResult();
    }

    // Function to add a new schedule
    public function add_jadwal($data)
    {
        return $this->db->table($this->table)->insert($data);
    }

    public function deleteJadwal($id_kelas, $id_blok)
    {
        return $this->db->table($this->table)
                        ->where('id_kelas', $id_kelas)
                        ->where('id_blok', $id_blok)
                        ->delete();
    }

    public function getDataGuru()
    {
        return $this->where('id_level', 3)->findAll();
    }

// public function isMapelExistInClassAndSesi($guruId, $mapelId, $sesi, $kelasId)
// {
//     $query = $this->db->table('tb_jadwal')
//         ->where('id_user', $guruId, $mapelId)
//         ->where('sesi', $sesi)
//         ->where('id_kelas', $kelasId)
//         ->countAllResults();

//     return $query > 0;
// }


// public function isScheduleConflict($guruId, $mapelId, $sesi, $kelasId, $jamMulai, $jamSelesai)
// {
//     $query = $this->db->table('tb_jadwal')
//         ->where('id_user', $guruId, $mapelId)
//         ->where('sesi', $sesi)
//         ->where('id_kelas', $kelasId)
//         ->where('((jam_mulai < "' . $jamSelesai . '" AND jam_selesai > "' . $jamMulai . '") OR (jam_mulai < "' . $jamSelesai . '" AND jam_selesai > "' . $jamMulai . '"))')
//         ->countAllResults();

//     return $query > 0;
// }

public function countKehadiran($where)
{
    return $this->db->table('tb_absensi')
        ->where($where)
        ->where('tb_user.id_level', 5) // Tambahkan kondisi id_level = 5
        ->where('kehadiran', 'Hadir')
        ->join('tb_user', 'tb_user.id_user = tb_absensi.id_siswa') // Join dengan tb_user untuk filter id_level
        ->countAllResults();
}


public function countIzin($where)
{
    return $this->db->table('tb_absensi')
        ->where($where)
        ->where('tb_user.id_level', 5) // Tambahkan kondisi id_level = 5
        ->where('kehadiran', 'Izin')
        ->join('tb_user', 'tb_user.id_user = tb_absensi.id_siswa') // Join dengan tb_user untuk filter id_level
        ->countAllResults();
}


public function countSakit($where)
{
    return $this->db->table('tb_absensi')
        ->where($where)
        ->where('tb_user.id_level', 5) // Tambahkan kondisi id_level = 5
        ->where('kehadiran', 'Sakit')
        ->join('tb_user', 'tb_user.id_user = tb_absensi.id_siswa') // Join dengan tb_user untuk filter id_level
        ->countAllResults();
}


public function countAlpha($where)
{
    return $this->db->table('tb_absensi')
        ->where($where)
        ->where('tb_user.id_level', 5) // Tambahkan kondisi id_level = 5
        ->where('kehadiran', 'Alpha')
        ->join('tb_user', 'tb_user.id_user = tb_absensi.id_siswa') // Join dengan tb_user untuk filter id_level
        ->countAllResults();
}


public function tampil22($tabel) {
    return $this->db->table($tabel)
                     ->where('deleted_at', NULL) 
                     ->get()
                     ->getResult();
}

public function joinuser($tabel, $tabel2, $on, $where){
    return $this->db->table($tabel)
                    ->join($tabel2, $on, 'left')
                    ->where($where)
                    ->get()
                    ->getResult();
}

public function saveToBackup($table, $data)
{
    $this->db->table($table)->insert($data);
}

// public function restoreProduct($table,$column,$id)
//     {
//         // Ambil data dari tabel backup
//         $backupData = $this->db->table($table)->where($column, $id)->get()->getRowArray();

//         if ($backupData) {
//             // Tentukan nama tabel utama tempat data akan di-restore
//             $mainTable = str_replace('_backup', '', $table);

//             // Update data di tabel utama
//             $this->db->table($mainTable)->where($column, $id)->update($backupData);
//         }
//     }

public function getBackupData1($table, $id)
    {
        // Fetch the backup data for the given ID
        return $this->db->table($table)->where('id_user', $id)->get()->getRowArray();
    }

    public function restoreProduct($mainTable, $column, $id, $data)
    {
        if ($data) {
            // Restore data in the main table
            $this->db->table($mainTable)->where($column, $id)->update($data);
        }
    }

}