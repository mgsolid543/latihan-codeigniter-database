    <section class="content">
     <div class="box">
            <div class="box-header">
              <h3 class="box-title">Data Mahasiswa</h3>
            </div>
			
            <div class="box-body">
			  <div class="row" style="margin-bottom: 10px">
				<div class="col-md-4">
					<?php echo anchor(site_url('MahasiswaController/form_input'),'Input', 'class="btn btn-primary"'); ?>
				</div>
			  </div>
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
				  <th>No</th>
                  <th>NIM</th>
                  <th>Nama Lengkap</th>
                  <th>Email</th>
                  <th>Telp</th>
				  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
				<?php
					$no = 1;
					foreach ($mahasiswa as $mhs)
					{
				?>
                <tr>
				  <td width="80px"><?php echo $no++ ?></td>
                  <td><?php echo $mhs->nim ?></td>
                  <td><?php echo $mhs->nama_lengkap ?></td>
                  <td><?php echo $mhs->email ?></td>
                  <td><?php echo $mhs->telp ?></td>
                  <td>
					<?php
						echo anchor(site_url('MahasiswaController/form_update/'.$mhs->nim),'<button type="button" class="btn btn-warning btn-xs">Update</button>'); 
						echo '&nbsp';
						echo anchor(site_url('MahasiswaController/hapus/'.$mhs->nim),'<button type="button" class="btn btn-danger btn-xs">Hapus</button>','onclick="javasciprt: return confirm(\'Apakah Anda yakin?\')"'); 
					?>
				  </td>
                </tr>  
				<?php
					}
				?>
                </tfoot>
              </table>
            </div>
          </div>
        </div>
    </section>