<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\M_absensi;

class Home extends BaseController
{
	public function dashboard()
	{
	if (session()->get('id_level') > 0) {
		$model=new M_absensi;

        $where = array('id_user' => session()->get('id_user'));
        $where2 = array('tb_user.id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);
        $data['totalHadir'] = $model->countKehadiran($where2);
        $data['totalIzin'] = $model->countIzin($where2);
        $data['totalSakit'] = $model->countSakit($where2);
        $data['totalAlpha'] = $model->countAlpha($where2);
        $this->log_activity('User Membuka Dashboard');

        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);


		$data['erwin'] = $model->tampil('tb_absensi');

		echo view('header', $data);
        echo view('menu', $data);
		echo view('dashboard', $data);
        echo view('footer');

	} else {
        return redirect()->to('home/login');
    }
	}

	public function login()
	{
        // if (session()->get('id_level') > 0) {
		$model=new M_absensi;
		$where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

		$this->log_activity('User ke Halaman Login');

		echo view('header', $data);
		echo view('login', $data);
		// echo view('footer');
    // } else {
    //     return redirect()->to('home/login');
    // }
	}

	public function aksilogin()
    {
        $u = $this->request->getPost('username');
        $p = $this->request->getPost('password');
        $captchaAnswer = $this->request->getPost('captcha_answer');

		$this->log_activity('User melakukan Login');

        $model = new M_absensi();
        $where = array(
            'username' => $u,
            'password' => md5($p)
        );

        $cek = $model->getWhere('tb_user', $where);

        // Offline CAPTCHA answer (should match the one generated in the view)
        if (!$this->isOnline() && !empty($captchaAnswer)) {
            $correctAnswer = $this->request->getPost('correct_captcha_answer');
            if ($captchaAnswer != $correctAnswer) {
                return redirect()->to('Home/login')->with('error', 'Incorrect offline CAPTCHA.');
            }
        }

        if ($cek > 0) {
            // Handle sessions as usual
            session()->set('id_user', $cek->id_user);
            session()->set('id_level', $cek->id_level);
            session()->set('email', $cek->email);
            session()->set('username', $cek->username);

            // Redirect to the dashboard
            return redirect()->to('Home/dashboard');
        } else {
            return redirect()->to('Home/login');
        }
    }

    // Function to check if the client is online
    private function isOnline()
    {
        // A simple method to check if the client is online (can be more sophisticated)
        return @fopen("http://www.google.com:80/", "r");
    }


	public function logout()
	{
		$this->log_activity('User Melakukan Log Out');
		session()->destroy();
		return redirect()->to('Home/login');
	}

	public function guru()
	{
        if (session()->get('id_level') > 0) {
        $model=new M_absensi;

        $this->log_activity('User Membuka Menu Guru');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

        $where = array('id_user' => session()->get('id_user'));
        $data['erwin'] = $model->tampilguru('tb_user', $where);

        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);


		echo view('header', $data);
        echo view('menu', $data);
        echo view('guru', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/login');
    }
	}

    public function user()
	{
        if (session()->get('id_level') > 0) {
        $model=new M_absensi;

        $this->log_activity('User Membuka Menu User');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

        $where = array('tb_user.delete_at' => NULL);
        $data['erwin'] = $model->joinuser('tb_user',
		'tb_kelas',
		'tb_user.id_kelas = tb_kelas.id_kelas', $where);

        $data['k'] = $model->tampil('tb_kelas', 'id_kelas');

		echo view('header', $data);
        echo view('menu', $data);
        echo view('user', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/login');
    }
	}

    // public function hapus_user($id){

    //     $model = new M_absensi();

    //     $this->log_activity('User Melakukan Hapus User');
    
    //     $where = array('id_user'=>$id);
    //     $model->hapus('tb_user',$where);
        
    //     return redirect()->to('Home/user');
    // }

    public function t_user()
	{
		if (session()->get('id_level')>0) {
		$model = new M_absensi();

        $this->log_activity('User Membuka Form Tambah User');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

        $data['erwin'] = $model->join('tb_user',
		'tb_kelas',
		'tb_user.id_kelas = tb_kelas.id_kelas');

        $data['k'] = $model->tampil('tb_kelas', 'id_kelas');

		echo view ('header', $data);
		echo view ('menu', $data);
		echo view ('t_user',$data);
		echo view ('footer');
	}else{
		return redirect()->to('home/login');
	}
	}

    public function aksi_t_user()
    {
        $model = new M_absensi();

        $this->log_activity('User Melakukan Tambah User');

        $nis = $this->request->getPost('nis');

        // Cek apakah NIK sudah ada di database
        $existingSupir = $model->getWhere('tb_user', ['nis' => $nis]);

        if ($existingSupir) {
            // Jika NIK sudah ada, jangan tambahkan data dan beri notifikasi
            return redirect()->to('Home/t_user')->with('error', 'NIS sudah ada, data tidak dapat ditambahkan.');
        } else {
            // Jika NIK belum ada, tambahkan data baru
            // $a = $this->request->getPost('nama');
            $b = $this->request->getPost('username');
            $c = $this->request->getPost('email');
            $d = $this->request->getPost('level');
            $e = $this->request->getPost('jk');
            $f = $this->request->getPost('kelas');
            
            $isi = array(
                // 'nama' => $a,
                'username' => $b,
                'email' => $c,
                'id_level' => $d,
                'jk' => $e,
                'nis' => $nis,
                'password' => md5($nis),
                'id_kelas' => $f,
                'foto' => 'avatar-3.png', // Add default profile picture
            );
            
            $model->tambah('tb_user', $isi);
            return redirect()->to('Home/user')->with('success', 'Data user berhasil ditambahkan.');
            // print_r($isi);
        }
    }

//     public function restore_edit_user($id)
// {
//     $model = new M_absensi();

//     $model->restoreProduct('tb_user_backup', 'id_user', $id);



//     return redirect()->to('home/user');
// }

public function restore_edit_user()
	{
        if (session()->get('id_level') > 0) {
        $model=new M_absensi;

        $this->log_activity('User Membuka Menu User');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

        $where = array('tb_user_backup.delete_at' => NULL);
        $data['erwin'] = $model->joinuser('tb_user_backup',
		'tb_kelas',
		'tb_user_backup.id_kelas = tb_kelas.id_kelas', $where);

        $data['k'] = $model->tampil('tb_kelas', 'id_kelas');

		echo view('header', $data);
        echo view('menu', $data);
        echo view('restore_edit_user', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/login');
    }
	}

    // public function restore_data_edit_user($id)
    //     {
    //         $model = new M_absensi();

    //         // Check if the backup data exists
    //         $backupData = $model->getBackupData1('tb_user_backup', $id);

    //         if ($backupData) {
    //             // Unset the fields you don't want to restore
    //             unset($backupData['backup_by']);
    //             unset($backupData['backup_at']);

    //             $restoreSuccess = $model->restoreProduct('tb_kelas', 'id_kelas', $id, $backupData);

    //             if ($restoreSuccess) {
    //                 // Delete the backup data after successful restore
    //                 $deleteSuccess = $model->deleteBackupData('tb_kelas_backup', 'id_kelas', $id);
    //                 if ($deleteSuccess) {
    //                     return redirect()->to('home/user')->with('success', 'Data restored and backup deleted successfully!');
    //                 } else {
    //                     return redirect()->to('home/user')->with('error', 'Data restoration succeeded but failed to delete backup!');
    //                 }
    //             } else {
    //                 return redirect()->to('home/user')->with('error', 'Data restoration failed!');
    //             }
    //         } else {
    //             // Handle the case when there's no backup data
    //             return redirect()->to('home/user')->with('error', 'Backup data not found!');
    //         }
    //     }


//     public function aksi_e_user()
// {
//     $model = new M_absensi();

//     $this->log_activity('User Melakukan Edit User');
    
//     $id_user = $this->request->getPost('id_user');
//     $nis = $this->request->getPost('nis');
//     $username = $this->request->getPost('username');
//     $email = $this->request->getPost('email');
//     $level = $this->request->getPost('level');
//     $jk = $this->request->getPost('jk');
//     $kelas = $this->request->getPost('kelas');

//     $data = [
//         'nis' => $nis,
//         'username' => $username,
//         'email' => $email,
//         'id_level' => $level,
//         'jk' => $jk,
//         'id_kelas' => $kelas
//     ];

//     // Menyesuaikan pemanggilan fungsi edit dengan 3 argumen
//     $model->edit('tb_user', $data, ['id_user' => $id_user]);

//     return redirect()->to('Home/user')->with('success', 'Data user berhasil diperbarui.');
// }

// public function restore_edit_user()
// 	{
//         if (session()->get('id_level') > 0) {
//         $model=new M_absensi;

//         $this->log_activity('User Membuka Menu Restore Edit User');

//         $where = array('id_user' => session()->get('id_user'));
//         $data['user'] = $model->getWhere('tb_user', $where);

//         $where = array('id_setting' => 1);
// 		$data['setting'] = $model->getWhere('tb_setting',$where);

//         $where = array('tb_user.delete_at' => NULL);
//         $data['erwin'] = $model->joinuser('tb_user',
// 		'tb_kelas',
// 		'tb_user.id_kelas = tb_kelas.id_kelas', $where);

//         $data['k'] = $model->tampil('tb_kelas', 'id_kelas');

// 		echo view('header', $data);
//         echo view('menu', $data);
//         echo view('restore_edit_user', $data);
//         echo view('footer');
//     } else {
//         return redirect()->to('home/login');
//     }
// 	}

public function aksi_e_user()
{
    $model = new M_absensi();

    $this->log_activity('User Melakukan Edit User');

    $id_user = $this->request->getPost('id_user');
    $nis = $this->request->getPost('nis');
    $username = $this->request->getPost('username');
    $email = $this->request->getPost('email');
    $level = $this->request->getPost('level');
    $jk = $this->request->getPost('jk');
    $kelas = $this->request->getPost('kelas');
    $id_session_user = session()->get('id_user');
    $where = ['id_user' => $id_user];

    // Fetch old data from tb_user
    $oldData = $model->getWhere('tb_user', $where);

    // Backup old data if it exists
    if ($oldData) {
        $backupData = [
            'id_user' => $oldData->id_user,
            'nis' => $oldData->nis,
            'username' => $oldData->username,
            'email' => $oldData->email,
            'id_level' => $oldData->id_level,
            'jk' => $oldData->jk,
            'id_kelas' => $oldData->id_kelas,
             'foto' => $oldData->foto,
            'update_by' => $oldData->update_by,
            'password' => $oldData->password,
            'update_at' => $oldData->update_at,
            'backup_at' => date('Y-m-d H:i:s'), // current time
            'backup_by' => $id_session_user
        ];

        // Save old data to a backup table
        if ($model->saveToBackup('tb_user_backup', $backupData)) {
            echo "Data backup berhasil disimpan!";
        } else {
            echo "Gagal menyimpan data ke backup.";
        }
    } else {
        echo "Data lama tidak ditemukan.";
    }

    // Prepare updated data
    $newData = [
        'nis' => $nis,
        'username' => $username,
        'email' => $email,
        'id_level' => $level,
        'jk' => $jk,
        'id_kelas' => $kelas,
        // 'foto' => $foto,
        // 'password' => $password,
    ];

    // Update tb_user with new data
    $model->edit('tb_user', $newData, $where);
    // print_r($backupData);
    return redirect()->to('Home/user')->with('success', 'Data user berhasil diperbarui.');
}


public function restore_data_edit_user($backup_id)
{
    $model = new M_absensi();

    // Fetch the backup data by the user ID
    $backupData = $model->db->table('tb_user_backup')->where('id_user', $backup_id)->get()->getRow();

    if ($backupData) {
        // Prepare the data to restore into tb_user
        $data = [
            'nis' => $backupData->nis,
            'username' => $backupData->username,
            'email' => $backupData->email,
            'id_level' => $backupData->id_level,
            'jk' => $backupData->jk,
            'id_kelas' => $backupData->id_kelas,
            'foto' => $backupData->foto,
            'password' => $backupData->password,
            'update_by' => $backupData->backup_by,
            'update_at' => $backupData->backup_at,
        ];

        // Update the tb_user table with the backup data
        $model->db->table('tb_user')->where('id_user', $backup_id)->update($data);

        // Delete the backup data after restoration
        $model->db->table('tb_user_backup')->where('id_user', $backup_id)->delete();

        // // Log the restore activity
        // $this->log_activity('User Restored Data from Backup for ID: ' . $backup_id);

        // Log aktivitas restore
        $this->log_activity('User Restore Data User');

        return redirect()->to('Home/user')->with('success', 'Data berhasil dipulihkan dari backup.');
    }

    return redirect()->to('Home/user')->with('error', 'Gagal memulihkan data.');
}


    public function profile()
    {
        if (session()->get('id_level') > 0) {
            $model = new M_absensi();

            $this->log_activity('User Membuka Menu Profile');

            $where = array('id_user' => session()->get('id_user'));
            $data['user'] = $model->getWhere('tb_user', $where);
            
            $where = array('id_user' => session()->get('id_user'));
            $data['darren'] = $model->getwhere('tb_user', $where);

            $where = array('id_setting' => 1);
		    $data['setting'] = $model->getWhere('tb_setting',$where);

            echo view('header', $data);
            echo view('menu', $data);
            echo view('profile',$data);
            echo view('footer');
        } else {
            return redirect()->to('home/login');
        }
    }

    public function editfoto()
{
    $model = new M_absensi(); // Make sure this model handles updates to tb_user
    
    $this->log_activity('User Mengedit Foto Profile');
    
    // Get current user data
    $userId = session()->get('id_user'); // Correct the session key
    $userData = $model->getById($userId); // Ensure this retrieves the correct user data

    // Check if a file was uploaded
    if ($file = $this->request->getFile('foto')) {
        if ($file->isValid() && !$file->hasMoved()) {
            $newFileName = $file->getRandomName();
            $file->move(ROOTPATH . 'public/img/avatar/', $newFileName); // Save file to the file system
            
            // If the user already has a profile photo, delete the old one
            if ($userData->foto && file_exists(ROOTPATH . 'public/img/avatar/' . $userData->foto)) {
                unlink(ROOTPATH . 'public/img/avatar/' . $userData->foto);
            }
            
            // Update the database with the new file name
            $userDataUpdate = ['foto' => $newFileName];
            $model->edit('tb_user', $userDataUpdate, ['id_user' => $userId]);
        }
    }

    return redirect()->to('home/profile');
}

    public function aksi_e_profile()
    {
        if (session()->get('id_level') > 0) {
            $model = new M_absensi();

            $this->log_activity('User Melakukan Edit Profile');

            $yoga = $this->request->getPost('username');
            $yoga1 = $this->request->getPost('email');
            $id = session()->get('id_user');

            $where = array('id_user' => $id); // Jika id_user adalah kunci utama untuk menentukan record


            $isi = array(
                'username' => $yoga,
                'email' => $yoga1
            );

            $model->edit('tb_user', $isi, $where);
            return redirect()->to('home/profile');
            
        } else {
            return redirect()->to('home/login');
        }
    }

    // public function resetpassword($id)
    // {
	// 	$model = new M_absensi;
	// 	// $this->log_activity('User melakukan Reset Password');
	// 	$where = array('id_user' =>$id );
	// 	$table = 'tb_user'; // Nama tabel
	// 	$kolom = 'id_user';
	// 	$data = array(
		   
	// 		'password' => md5('1'),
	// 	);
	
	// 	$model->resetpassword($table, $kolom, $where, $data);
	// 	return redirect()->to('Home/user');
	// }

    public function resetpassword($id)
{
    $model = new M_absensi;

    $this->log_activity('User Melakukan Reset Password ke Default');

    $table = 'tb_user';
    $kolom = 'id_user';
    
    // Update the password directly without confirmation
    $data = array(
        'password' => md5('1'), // Note: Using md5, but it's better to use password_hash for security.
    );

    // Update the password in the database
    $model->resetpassword($table, $kolom, $id, $data);
    
    // Redirect back to the user list with a success message
    return redirect()->to('Home/user')->with('success', 'Password reset to default (1) successfully.');
}


    public function aksi_changepass()
    {
        $model = new M_absensi();

        $this->log_activity('User Mengganti Password Lama ke Baru');

        $oldPassword = $this->request->getPost('old');
        $newPassword = $this->request->getPost('new');
        $userId = session()->get('id_level');

        // Dapatkan password lama dari database
        $currentPassword = $model->getPassword($userId);

        // Verifikasi apakah password lama cocok
        if (md5($oldPassword) !== $currentPassword) {
            // Set pesan error jika password lama salah
            session()->setFlashdata('error', 'Password lama tidak valid.');
            return redirect()->back()->withInput();
        }

        // Update password baru
        $data = [
            'password' => md5($newPassword),
            'update_by' => $userId,
            'update_at' => date('Y-m-d H:i:s')
        ];
        $where = ['id_user' => $userId];

        $model->edit('tb_user', $data, $where);

        // Set pesan sukses
        session()->setFlashdata('success', 'Password berhasil diperbarui.');
        return redirect()->to('home/profile');
    }

    public function pilih_kelas()
	{
        if (session()->get('id_level') > 0) {
		$model = new M_absensi;

        $this->log_activity('User Memilih Kelas Untuk Melakukan Absensi');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

		$where=array('id_user'=>session()->get('id'));

		$data['erwin'] = $model->tampil('tb_kelas');
        $data['yoga'] = $model->tampil('tb_blok');
        $data['leo'] = $model->tampil('tb_mapel');

		echo view ('header', $data);
		echo view ('menu', $data);
		echo view ('pilih_kelas',$data);
		echo view ('footer');

    } else {
        return redirect()->to('home/login');
    }
		
	}

    public function siswa()
	{
        if (session()->get('id_level') > 0) {
		$model = new M_absensi;
        
        $this->log_activity('User Membuka Menu Siswa');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

		$where=array('id_user'=>session()->get('id'));
		$data['erwin'] = $model->tampilsiswa('tb_user');

        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

		echo view ('header', $data);
		echo view ('menu', $data);
		echo view ('siswa',$data);
		echo view ('footer');

    } else {
        return redirect()->to('home/login');
    }
		
	}

    public function jadwal()
	{
        if (session()->get('id_level') > 0) {
		$model = new M_absensi;

        $this->log_activity('User Membuka Menu Jadwal');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

		$where=array('id_user'=>session()->get('id'));
		$data['erwin'] = $model->tampil('tb_kelas');
        $data['yoga'] = $model->tampil('tb_blok');

		echo view ('header', $data);
		echo view ('menu', $data);
		echo view('jadwal',$data);
		echo view('footer');

    } else {
        return redirect()->to('home/login');
    }
		
	}

    public function hapus_jadwal()
    {
        $model = new M_absensi();

        $this->log_activity('User Menghapus Jadwal');

        $id_kelas = $this->request->getPost('kelas');
        $id_blok = $this->request->getPost('blok');

        if ($id_kelas && $id_blok) {
            $success = $model->deleteJadwal($id_kelas, $id_blok);
            return $this->response->setJSON(['success' => $success]);
        } else {
            return $this->response->setJSON(['success' => false]);
        }
    }

    public function get_jadwal()
    {
        $model = new M_absensi();

        // Mengambil data dari POST request
        $kelas = $this->request->getPost('kelas');
        $blok = $this->request->getPost('blok');

        // Memanggil fungsi get_jadwal dari model
        $jadwal = $model->get_jadwal($kelas, $blok);

        // Mengirim data dalam format JSON sebagai respons AJAX
        return $this->response->setJSON($jadwal);
    }

    public function t_jadwal()
	{
		if (session()->get('id_level') > 0) {
		$model = new M_absensi;

        $this->log_activity('User Membuka Form Tambah Jadwal');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

		$where = array('id_jadwal' => $id);
		$data['erwin'] = $model->tampil('tb_kelas');
		$data['yoga'] = $model->tampil('tb_blok');
		$data['darren'] = $model->tampil('tb_user');
        $data['elvan'] = $model->tampil('tb_mapel');
        $data['leo'] = $model->tampil('tb_sesi');

        $where = array('id_level' => 4);
        $data['darren'] = $model->tampilwhere('tb_user', $where);

		echo view ('header', $data);
		echo view ('menu', $data);
		echo view('t_jadwal', $data);
		echo view('footer');
		
    }else{
		return redirect()->to('home/login');
		}
		
	}

    public function aksi_t_jadwal()
    {
        $model = new M_absensi();

        $this->log_activity('User Melakukan Tambah Jadwal');

        $id_kelas = $this->request->getPost('kelas');
        $id_blok = $this->request->getPost('blok');
        $id_sesi = $this->request->getPost('sesi');
        $id_user = $this->request->getPost('guru');
        $id_mapel = $this->request->getPost('mapel');
        $jam_mulai = $this->request->getPost('jam_mulai');
        $jam_selesai = $this->request->getPost('jam_selesai');

        // Check for schedule conflicts
        if ($model->check_conflict($id_kelas, $id_blok, $id_sesi, $id_user)) {
            // Show confirmation dialog if a conflict exists
            echo "<script>
                if (confirm('Jadwal bentrok terdeteksi! Apakah Anda yakin ingin melanjutkan?')) {
                    window.location.href = '" . base_url('home/confirm_add_jadwal') . "';
                } else {
                    window.location.href = '" . base_url('home/t_jadwal') . "';
                }
            </script>";
        } else {
            // If no conflict, add the schedule
            $data = [
                'id_kelas' => $id_kelas,
                'id_blok' => $id_blok,
                'id_sesi' => $id_sesi,
                'id_user' => $id_user,
                'id_mapel' => $id_mapel,
                'jam_mulai' => $jam_mulai,
                'jam_selesai' => $jam_selesai,
            ];

            if ($model->add_jadwal($data)) {
                return redirect()->to('home/t_jadwal')->with('success', 'Jadwal berhasil ditambahkan.');
            } else {
                return redirect()->to('home/t_jadwal')->with('error', 'Terjadi kesalahan saat menambahkan jadwal.');
            }
        }
    }

    public function get_mapel_by_guru($id_guru)
    {
        $model = new M_absensi();
        $mapel = $model->getMapelByGuru($id_guru);

        return $this->response->setJSON($mapel);
    }

    public function confirm_add_jadwal()
    {
        // Handle the case where the user confirms adding a conflicting schedule
        $model = new M_absensi();

        // Assuming the data is temporarily stored or passed here
        $data = $this->request->getPost();

        if ($model->add_jadwal($data)) {
            return redirect()->to('home/t_jadwal')->with('success', 'Jadwal berhasil ditambahkan meskipun ada konflik.');
        } else {
            return redirect()->to('home/t_jadwal')->with('error', 'Terjadi kesalahan saat menambahkan jadwal.');
        }
    }

    public function kelas()
	{
        if (session()->get('id_level') > 0) {
		$model = new M_absensi;

        $this->log_activity('User Membuka Menu Kelas');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

		$where = array('tb_kelas.delete_at' => NULL);
		$data['erwin'] = $model->tampilwhere('tb_kelas', $where);

		echo view ('header', $data);
		echo view ('menu', $data);
		echo view ('kelas',$data);
		echo view ('footer');

    } else {
        return redirect()->to('home/login');
    }
}

//     public function hapus_mapel($id){

// 	$model = new M_absensi();

//     $this->log_activity('User Menghapus Data Mapel');

// 	$where = array('id_mapel'=>$id);
// 	$model->hapus('tb_mapel',$where);
	
// 	return redirect()->to('Home/mapel');
// }

    public function t_kelas()
	{
        if (session()->get('id_level') > 0) {
		$model = new M_absensi;

        $this->log_activity('User Membuka Form Tambah Kelas');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

		$where=array('id_user'=>session()->get('id'));
		$data['erwin'] = $model->tampil('tb_kelas');

		echo view ('header', $data);
		echo view ('menu', $data);
		echo view ('t_kelas',$data);
		echo view ('footer');

    } else {
        return redirect()->to('home/login');
    }
}

	public function aksi_t_kelas()
	{
		$model = new M_absensi();

        $this->log_activity('User Melakukan Tambah Kelas');

		$a = $this->request->getPost('kelas');
		
		$isi = array(

					'kelas' => $a
					
		);
		
		$model->tambah('tb_kelas', $isi);
		return redirect()->to('Home/kelas');

	}

    public function restore_edit_kelas()
	{
        if (session()->get('id_level') > 0) {
		$model = new M_absensi;

        $this->log_activity('User Membuka Menu Restore Edit Kelas');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

		$where = array('tb_kelas_backup.delete_at' => NULL);
		$data['erwin'] = $model->tampilwhere('tb_kelas_backup', $where);

		echo view ('header', $data);
		echo view ('menu', $data);
		echo view ('restore_edit_kelas',$data);
		echo view ('footer');

    } else {
        return redirect()->to('home/login');
    }
}

public function aksi_e_kelas()
{
    $model = new M_absensi();

    $this->log_activity('User Melakukan Edit Kelas');

    $id_kelas = $this->request->getPost('id_kelas');
    $kelas = $this->request->getPost('kelas');
    $id_session_user = session()->get('id_user');
    $where = ['id_kelas' => $id_kelas];

    // Fetch old data from tb_kelas
    $oldData = $model->getWhere('tb_kelas', $where);

    // Backup old data if it exists
    if ($oldData) {
        $backupData = [
            'id_kelas' => $oldData->id_kelas,
            'kelas' => $oldData->kelas,
            'update_by' => $oldData->update_by,
            'update_at' => $oldData->update_at,
            'backup_at' => date('Y-m-d H:i:s'), // current time
            'backup_by' => $id_session_user
        ];

        // Save old data to the backup table
        if ($model->saveToBackup('tb_kelas_backup', $backupData)) {
            echo "Data backup berhasil disimpan!";
        } else {
            echo "Gagal menyimpan data ke backup.";
        }
    } else {
        echo "Data lama tidak ditemukan.";
    }

    // Prepare updated data
    $newData = [
        'kelas' => $kelas
    ];

    // Update tb_kelas with new data
    $model->edit('tb_kelas', $newData, $where);

    return redirect()->to('Home/kelas')->with('success', 'Data kelas berhasil diperbarui.');
}

public function restore_data_edit_kelas($backup_id)
{
    $model = new M_absensi();

    // Fetch the backup data by the kelas ID
    $backupData = $model->db->table('tb_kelas_backup')->where('id_kelas', $backup_id)->get()->getRow();

    if ($backupData) {
        // Prepare the data to restore into tb_kelas
        $data = [
            'kelas' => $backupData->kelas,
            'update_by' => $backupData->backup_by,
            'update_at' => $backupData->backup_at,
        ];

        // Update the tb_kelas table with the backup data
        $model->db->table('tb_kelas')->where('id_kelas', $backup_id)->update($data);

        // Delete the backup data after restoration
        $model->db->table('tb_kelas_backup')->where('id_kelas', $backup_id)->delete();

        // Log the restore activity
        $this->log_activity('User Restore Data Kelas');

        return redirect()->to('Home/kelas')->with('success', 'Data kelas berhasil dipulihkan dari backup.');
    }

    return redirect()->to('Home/kelas')->with('error', 'Gagal memulihkan data.');
}

//     public function aksi_e_kelas()
// {
//     $model = new M_absensi();

//     $this->log_activity('User Melakukan Edit Kelas');

//     $id_kelas = $this->request->getPost('id_kelas');
//     $kelas = $this->request->getPost('kelas');

//     $where = array('id_kelas' => $id_kelas);
//     $data = array('kelas' => $kelas);

//     $model->edit('tb_kelas', $data, $where);
//     return redirect()->to('Home/kelas');
// }

//     public function hapus_kelas($id)
//     {
//     $model = new M_absensi();

//     $this->log_activity('User Menghapus Kelas');

// 	$where = array('id_kelas'=>$id);
// 	$model->hapus('tb_kelas',$where);
	
// 	return redirect()->to('Home/kelas');
// }

    public function mapel()
	{
        if (session()->get('id_level') > 0) {
		$model = new M_absensi;

        $this->log_activity('User Membuka Menu Mapel');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

		$where = array('tb_mapel.delete_at' => NULL);
		$data['erwin'] = $model->joinuser('tb_mapel',
		'tb_user',
		'tb_mapel.id_user = tb_user.id_user', $where);

        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

        $where = array('id_level' => 4);
        $data['u'] = $model->tampilwhere('tb_user', $where);

		echo view ('header', $data);
		echo view ('menu', $data);
		echo view ('mapel',$data);
		echo view ('footer');

    } else {
        return redirect()->to('home/login');
    }
		
	}

    public function t_mapel()
	{
        if (session()->get('id_level') > 0) {
		$model = new M_absensi;

        $this->log_activity('User Membuka Form Tambah Mapel');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

		$where=array('id_user'=>session()->get('id'));
		$data['erwin'] = $model->join('tb_mapel',
		'tb_user',
		'tb_mapel.id_user = tb_user.id_user');

        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);
        
        $where = array('id_level' => 4);
        $data['u'] = $model->tampilwhere('tb_user', $where);

		echo view ('header', $data);
		echo view ('menu', $data);
		echo view ('t_mapel',$data);
		echo view ('footer');

    } else {
        return redirect()->to('home/login');
    }
}

	public function aksi_t_mapel()
	{
		$model = new M_absensi();

        $this->log_activity('User Melakukan Tambah Mapel');

		$a = $this->request->getPost('mapel');
        $b = $this->request->getPost('guru');
		
		$isi = array(

					'mapel' => $a,
                    'id_user' => $b
					
		);
		
		$model->tambah('tb_mapel', $isi);
		return redirect()->to('Home/mapel');

	}

    // public function aksi_e_mapel()
	// {
	// 	$model = new M_absensi();

    //     $this->log_activity('User Melakukan Edit Mapel');

	// 	$a = $this->request->getPost('mapel');
	// 	$b = $this->request->getPost('guru');
	// 	$id_mapel = $this->request->getPost('id_mapel');
		
	// 	$where = array('id_mapel'=>$id_mapel);

	// 	$isi = array(

	// 				'mapel' => $a,
	// 				'id_user' => $b

	// 	);

	// 	$model->edit('tb_mapel', $isi, $where);
	// 	//  print_r($isi);
	// 	return redirect()->to('home/mapel');
    //     // print_r($id_mapel);

	// }

    public function restore_edit_mapel()
	{
        if (session()->get('id_level') > 0) {
		$model = new M_absensi;

        $this->log_activity('User Membuka Menu Restore Edit Mapel');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

		$where = array('tb_mapel_backup.delete_at' => NULL);
		$data['erwin'] = $model->joinuser('tb_mapel_backup',
		'tb_user',
		'tb_mapel_backup.id_user = tb_user.id_user', $where);

        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);


        $where = array('id_level' => 4);
        $data['u'] = $model->tampilwhere('tb_user', $where);

		echo view ('header', $data);
		echo view ('menu', $data);
		echo view ('restore_edit_mapel',$data);
		echo view ('footer');

    } else {
        return redirect()->to('home/login');
    }
		
	}

    public function aksi_e_mapel()
{
    $model = new M_absensi();
    
    $this->log_activity('User Melakukan Edit Mapel');

    $id_mapel = $this->request->getPost('id_mapel');
    $mapel = $this->request->getPost('mapel');
    $guru = $this->request->getPost('guru');
    $id_session_user = session()->get('id_user');
    $where = ['id_mapel' => $id_mapel];

    // Fetch old data from tb_mapel
    $oldData = $model->getWhere('tb_mapel', $where);

    // Backup old data if it exists
    if ($oldData) {
        $backupData = [
            'id_mapel' => $oldData->id_mapel,
            'mapel' => $oldData->mapel,
            'id_user' => $oldData->id_user,
            'update_by' => $oldData->update_by,
            'update_at' => $oldData->update_at,
            'backup_at' => date('Y-m-d H:i:s'), // current time
            'backup_by' => $id_session_user
        ];

        // Save old data to a backup table
        if ($model->saveToBackup('tb_mapel_backup', $backupData)) {
            echo "Data backup berhasil disimpan!";
        } else {
            echo "Gagal menyimpan data ke backup.";
        }
    } else {
        echo "Data lama tidak ditemukan.";
    }

    // Prepare updated data
    $newData = [
        'mapel' => $mapel,
        'id_user' => $guru
    ];

    // Update tb_mapel with new data
    $model->edit('tb_mapel', $newData, $where);

    return redirect()->to('home/mapel')->with('success', 'Data mapel berhasil diperbarui.');
}

public function restore_data_edit_mapel($backup_id)
{
    $model = new M_absensi();

    // Fetch the backup data by the mapel ID
    $backupData = $model->db->table('tb_mapel_backup')->where('id_mapel', $backup_id)->get()->getRow();

    if ($backupData) {
        // Prepare the data to restore into tb_mapel
        $data = [
            'mapel' => $backupData->mapel,
            'id_user' => $backupData->id_user,
            'update_by' => $backupData->backup_by,
            'update_at' => $backupData->backup_at,
        ];

        // Update the tb_mapel table with the backup data
        $model->db->table('tb_mapel')->where('id_mapel', $backup_id)->update($data);

        // Delete the backup data after restoration
        $model->db->table('tb_mapel_backup')->where('id_mapel', $backup_id)->delete();

        // Log the restore activity
        $this->log_activity('User Restore Data Mapel');

        return redirect()->to('home/mapel')->with('success', 'Data mapel berhasil dipulihkan dari backup.');
    }

    return redirect()->to('home/mapel')->with('error', 'Gagal memulihkan data.');
}

    public function setting()
	{
		if(session()->get('id_level') == '1'){
		$model=new M_absensi;

        $this->log_activity('User Membuka Menu Setting');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

		$where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);
		// $this->log_activity('User ke Halaman Setting');
		echo view('header',$data);
		echo view('menu',$data);
		echo view('setting', $data);
		echo view('footer');
		// print_r($data);
	}else{
		return redirect()->to('home/error404');
	}
	}

	public function aksi_e_setting()
{
    $model = new M_absensi();

    $this->log_activity('User Melakukan Edit Setting');

    $a = $this->request->getPost('nama_web');
    $icon = $this->request->getFile('logo_tab');
    $dash = $this->request->getFile('logo_dashboard');
    $login = $this->request->getFile('logo_login');

	// $this->log_activity('User melakukan Setting');

    // Debugging: Log received data
    log_message('debug', 'Website Name: ' . $a);
    log_message('debug', 'Tab Icon: ' . ($icon ? $icon->getName() : 'None'));
    log_message('debug', 'Dashboard Icon: ' . ($dash ? $dash->getName() : 'None'));
    log_message('debug', 'Login Icon: ' . ($login ? $login->getName() : 'None'));

    $data = ['nama_web' => $a];

    if ($icon && $icon->isValid() && !$icon->hasMoved()) {
        $icon->move(ROOTPATH . 'public/img/avatar/', $icon->getName());
        $data['logo_tab'] = $icon->getName();
    }

    if ($dash && $dash->isValid() && !$dash->hasMoved()) {
        $dash->move(ROOTPATH . 'public/img/avatar/', $dash->getName());
        $data['logo_dashboard'] = $dash->getName();
    }

    if ($login && $login->isValid() && !$login->hasMoved()) {
        $login->move(ROOTPATH . 'public/img/avatar/', $login->getName());
        $data['logo_login'] = $login->getName();
    }

    $where = ['id_setting' => 1];
    $model->edit('tb_setting', $data, $where);

    return redirect()->to('home/setting');
}

	public function error404()
	{
		if(session()->get('id_level')> '1'){
		$model=new M_absensi;

        $this->log_activity('User mencoba Ke Halaman yang Dilarang');
			
        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

		// $this->log_activity('User mencoba Ke Halaman yang Dilarang');
	
		echo view('header',$data);
		echo view('error404');
		echo view('footer');
	}else{
		return redirect()->to('home/error404');
	}
	}

    private function log_activity($activity)
    {
		$model = new M_absensi();
        $data = [
            'id_user'    => session()->get('id_user'),
            'activity'   => $activity,
			'timestamp' => date('Y-m-d H:i:s'),
			'delete_at' => '0'
        ];

        $model->tambah('tb_activity', $data);
	}

    public function activity()
    {
        if (session()->get('id_level')>0) {
            $model = new M_absensi();
            
            $where = array('id_user'=>session()->get('id_user'));
            $data['user'] = $model->getWhere('tb_user', $where);
            
            $where = array('id_setting' => 1);
            $data['setting'] = $model->getWhere('tb_setting',$where);
            
            $this->log_activity('User membuka Log Activity');
            
            $data['erwin'] = $model->join('tb_activity', 'tb_user',
            'tb_activity.id_user = tb_user.id_user',$where);

        echo view('header' ,$data);
		echo view('menu',$data);
		echo view('activity',$data);
		echo view('footer');
	
		}else{
			return redirect()->to('home/login');
		}
        }

    //     public function absensi()
	// {
    //     if (session()->get('id_level') > 0) {
	// 	$model = new M_absensi;
        
    //     $this->log_activity('User Ingin Melakukan Absensi');
        
    //     $a = $this->request->getPost('kelas');
        
    //     $where = array('id_user' => session()->get('id_user'));
    //     $data['user'] = $model->getWhere('tb_user', $where);

	// 	$where=array('id_user'=>session()->get('id'));
	// 	$data['erwin'] = $model->tampil('tb_user');

    //     $where = array('id_setting' => 1);
	// 	$data['setting'] = $model->getWhere('tb_setting',$where);

    //     $where1 = array('tb_kelas.id_kelas' => $a);

    //     $data['erwin'] = $model->joinSixWheregetResult(
    //         'tb_absensi',    // Tabel utama
    //         'tb_kelas',      // Tabel kedua
    //         'tb_blok',       // Tabel ketiga
    //         'tb_mapel',      // Tabel keempat
    //         'tb_jadwal',     // Tabel kelima
    //         'tb_user',       // Tabel keenam
    //         'tb_kelas.id_kelas = tb_absensi.id_kelas',  // Join pertama
    //         'tb_absensi.id_blok = tb_blok.id_blok',     // Join kedua
    //         'tb_absensi.id_mapel = tb_mapel.id_mapel',  // Join ketiga
    //         'tb_absensi.id_sesi = tb_jadwal.id_sesi',   // Join keempat
    //         'tb_absensi.id_user = tb_user.id_user',     // Join kelima
    //         $where1                                     // Kondisi where
    //     );

	// 	echo view ('header', $data);
	// 	echo view ('menu', $data);
	// 	echo view ('absensi',$data);
	// 	echo view ('footer');

    // } else {
    //     return redirect()->to('home/login');
    // }
		
	// }
    
    public function absensi()
    {
        if (session()->get('id_level') > 0) {
            $model = new M_absensi();

            $where = array('id_user'=>session()->get('id_user'));
            $data['user'] = $model->getWhere('tb_user', $where);
            
            $where = array('id_setting' => 1);
            $data['setting'] = $model->getWhere('tb_setting',$where);
    
            // Log activity
            $this->log_activity('User Ingin Melakukan Absensi');
    
            // Ambil input dari form
            $id_kelas = $this->request->getPost('kelas');
            $id_blok = $this->request->getPost('blok');
            $id_mapel = $this->request->getPost('mapel');
            
            if (!empty($id_kelas)) {
                session()->set('id_kelas', $id_kelas);
            }
            if (!empty($id_blok)) {
                session()->set('id_blok', $id_blok);
            }
            if (!empty($id_mapel)) {
                session()->set('id_mapel', $id_mapel);
            }
            // Filter berdasarkan kelas, blok, mapel, dan id_level 5 (Siswa)
            $where1 = array(
                'tb_user.id_level' => 5
            );

            $where2 = array(
        
                'tb_kelas.id_kelas' =>  session()->get('id_kelas')
              
            );
            
            $where3 = array(
        
                'tb_mapel.id_mapel' => session()->get('id_mapel')
              
            );
            // Join query
            

            $where11 = array(
                'id_blok' => session()->get('id_blok')
            );

            $where22 = array(
        
                'id_kelas' => session()->get('id_kelas')
              
            );
            
            $where33 = array(
        
                'id_mapel' => session()->get('id_mapel')
              
            );
            
            $data['erwin'] = $model->joinMultipleTables(
                $where1, $where2, $where3
            );
            
            $data['cihuy'] = $model->getWhere3('tb_jadwal',
                $where11, $where22, $where33
            );
            // Ambil data kelas, blok, mapel untuk dropdown
            $data['kelas'] = $model->getAllKelas();
            $data['blok'] = $model->getAllBlok();
            $data['mapel'] = $model->getAllMapel();
            
            // Render views
            echo view('header', $data);
            echo view('menu', $data);
            echo view('absensi', $data);
            echo view('footer');
            // print_r($data['erwin']);
    
        } else {
            return redirect()->to('home/login');
        }
    }
    
    public function aksi_t_absensi()
    {
        $model = new M_absensi();
    
        $this->log_activity('User Melakukan Absensi Siswa');
    
        // Ambil nilai dari form POST
        $a = $this->request->getPost('kehadiran');
        $b = $this->request->getPost('keterangan');
        $c = $this->request->getPost('pokok_bahasan');
        $sesi = $this->request->getPost('sesi');
        $siswa = $this->request->getPost('id_siswa'); // Ambil id_siswa dari form POST
    
        // Siapkan data untuk disimpan
        $isi = array(
            'kehadiran' => $a,
            'keterangan' => $b,
            'pokok_bahasan' => $c,
            'tanggal' => date('Y-m-d H:i:s'),
            'id_mapel' => session()->get('id_mapel'),
            'id_blok' => session()->get('id_blok'),
            'id_kelas' => session()->get('id_kelas'),
            'id_user' => session()->get('id_user'),
            'id_sesi' => $sesi,
            'id_siswa' => $siswa // Pastikan nilai id_siswa terisi dengan benar
        );
    
        // Tambahkan data ke tabel tb_absensi
        $model->tambah('tb_absensi', $isi);
    
        // Redirect ke halaman absensi
        return redirect()->to('Home/absensi');
    }

    public function hapus_user($id)
    {
		$model = new M_absensi();

		$this->log_activity('User melakukan Hapus User');

        $id_user = session()->get('id_user');

		$where = array('id_user'=>$id);
        $isi = array(

            'delete_at' => date('Y-m-d H:i:s'),
            'delete_by' => $id_user
);
		$model->edit('tb_user',$isi,$where);
		
		return redirect()->to('Home/user');
	}

    public function hapus_restore_user($id)
    {
		$model = new M_absensi();

		$this->log_activity('User melakukan Hapus User');

		$where = array('id_user'=>$id);
        $isi = array(

            'delete_at' => NULL,
            'delete_by' => NULL,
);
		$model->edit('tb_user', $isi,$where);
		
		return redirect()->to('Home/user');
	}

    public function hapus_user_permanen($id)
    {
        $model = new M_absensi();

        $this->log_activity('User melakukan Penghapusan Data User Permanen');

        $where = array('id_user'=>$id);
        $model->hapus('tb_user',$where);
        
        return redirect()->to('Home/user');
    }

    public function restorehapus_user()
	{
        if (session()->get('id_level') > 0) {
        $model=new M_absensi;

        $this->log_activity('User Membuka Menu Restore Hapus User');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

        $where = 'tb_user.delete_at is not NULL';
        $data['erwin'] = $model->joinuser('tb_user',
		'tb_kelas',
		'tb_user.id_kelas = tb_kelas.id_kelas', $where);

        $data['k'] = $model->tampil('tb_kelas', 'id_kelas');

		echo view('header', $data);
        echo view('menu', $data);
        echo view('restorehapus_user', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/login');
    }
	}

    public function restorehapus_kelas()
	{
        if (session()->get('id_level') > 0) {
		$model = new M_absensi;

        $this->log_activity('User Membuka Menu Restore Hapus Kelas');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

		$where = 'tb_kelas.delete_at is not NULL';
		$data['erwin'] = $model->tampilwhere('tb_kelas', $where);

		echo view ('header', $data);
		echo view ('menu', $data);
		echo view ('restorehapus_kelas',$data);
		echo view ('footer');

    } else {
        return redirect()->to('home/login');
    }
}

public function hapus_kelas($id)
    {
		$model = new M_absensi();

		$this->log_activity('User melakukan Hapus Kelas');

        $id_user = session()->get('id_user');

		$where = array('id_kelas'=>$id);
        $isi = array(

            'delete_at' => date('Y-m-d H:i:s'),
            'delete_by' => $id_user
);
		$model->edit('tb_kelas',$isi,$where);
		
		return redirect()->to('Home/kelas');
	}

    public function hapus_restore_kelas($id)
    {
		$model = new M_absensi();

		$this->log_activity('User melakukan Restore Kelas');

		$where = array('id_kelas'=>$id);
        $isi = array(

            'delete_at' => NULL,
            'delete_by' => NULL,
);
		$model->edit('tb_kelas', $isi,$where);
		
		return redirect()->to('Home/kelas');
	}

    public function hapus_kelas_permanen($id)
    {
        $model = new M_absensi();

        $this->log_activity('User melakukan Penghapusan Data Kelas Permanen');

        $where = array('id_kelas'=>$id);
        $model->hapus('tb_kelas',$where);
        
        return redirect()->to('Home/kelas');
    }

    public function restorehapus_mapel()
	{
        if (session()->get('id_level') > 0) {
		$model = new M_absensi;

        $this->log_activity('User Membuka Menu Restore Hapus Mapel');

        $where = array('id_user' => session()->get('id_user'));
        $data['user'] = $model->getWhere('tb_user', $where);

		$where = 'tb_mapel.delete_at is not NULL';
		$data['erwin'] = $model->joinuser('tb_mapel',
		'tb_user',
		'tb_mapel.id_user = tb_user.id_user', $where);

        $where = array('id_setting' => 1);
		$data['setting'] = $model->getWhere('tb_setting',$where);

        $where = array('id_level' => 4);
        $data['u'] = $model->tampilwhere('tb_user', $where);

		echo view ('header', $data);
		echo view ('menu', $data);
		echo view ('restorehapus_mapel',$data);
		echo view ('footer');

    } else {
        return redirect()->to('home/login');
    }
		
	}

    public function hapus_mapel($id)
    {
		$model = new M_absensi();

		$this->log_activity('User melakukan Hapus Mapel');

        $id_user = session()->get('id_user');

		$where = array('id_mapel'=>$id);
        $isi = array(

            'delete_at' => date('Y-m-d H:i:s'),
            'delete_by' => $id_user
);
		$model->edit('tb_mapel',$isi,$where);
		
		return redirect()->to('Home/mapel');
	}

    public function hapus_restore_mapel($id)
    {
		$model = new M_absensi();

		$this->log_activity('User melakukan Restore Mapel');

		$where = array('id_mapel'=>$id);
        $isi = array(

            'delete_at' => NULL,
            'delete_by' => NULL,
);
		$model->edit('tb_mapel', $isi,$where);
		
		return redirect()->to('Home/mapel');
	}

    public function hapus_mapel_permanen($id)
    {
        $model = new M_absensi();

        $this->log_activity('User melakukan Penghapusan Data Mapel Permanen');

        $where = array('id_mapel'=>$id);
        $model->hapus('tb_mapel',$where);
        
        return redirect()->to('Home/mapel');
    }

}
