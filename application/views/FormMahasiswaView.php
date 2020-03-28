<!-- <div class="content-wrapper">
        <section class="content-header">
            <h1>STMIK Jabar</h1>
            <small>belajar tanpa batas</small>
            <ol class="breadcumb">
                <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                <li><a href="#">Mahasiswa</a></li>
            </ol>
        </section> -->
    
    <section class="content">
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">INPUT MAHASISWA</h3>
          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                    title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
        </div>
        <div class="box-body">
         <form action="<?php echo base_url()."MahasiswaController/insert"; ?>" method="POST">		 
              <div class="box-body">
                <div class="form-group">
                  <label for="nim">NIM</label>
                  <input type="text" class="form-control" name="nim" id="nim" placeholder="NIM">
                </div>
                <div class="form-group">
                  <label for="nama_lengkap">Nama Lengkap</label>
                  <input type="text" class="form-control" name="nama_lengkap" id="nama_lengkap" placeholder="Nama Lengkap">
                </div>
                <div class="form-group">
                  <label for="nama_panggilan">Nama Panggilan</label>
                  <input type="text" class="form-control" name="nama_panggilan" id="nama_panggilan" placeholder="Nama Panggilan">
                </div>
				<div class="form-group">
                  <label>Alamat</label>
                  <textarea class="form-control" name="alamat" rows="3" placeholder="Alamat Lengkap"></textarea>
                </div>
				<div class="form-group">
                  <label for="email">Email</label>
                  <input type="text" class="form-control" name="email" id="email" placeholder="Email">
                </div>
				<div class="form-group">
                  <label for="telp">Telp</label>
                  <input type="text" class="form-control" name="telp" id="telp" placeholder="Telp">
                </div>
              </div>
              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Simpan</button>
              </div>
            </form>
        </div>
        <div class="box-footer">
          &copy; STMIK Jabar
        </div>
      </div>
    </section>
<!-- </div> -->