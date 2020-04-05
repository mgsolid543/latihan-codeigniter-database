<!-- Default box -->
<div class="box">
    <div class="box-header with-border">
      <h3 class="box-title">EDIT MAHASISWA</h3>

      <div class="box-tools pull-right">
        <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
        <i class="fa fa-minus"></i></button>
           <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
        <i class="fa fa-times"></i></button>
      </div>
    </div>
    <div class="box-body">
	<?php foreach($mahasiswa as $mhs){ ?>
    <form action="<?php echo base_url()."MahasiswaController/update"; ?>" method="POST">		 
        <div class="box-body">
            <div class="form-group">
              <label for="nim">NIM</label>
              <input type="text" class="form-control" name="nim"  value="<?php echo $mhs->nim; ?>" id="nim" placeholder="NIM">
            </div>
            <div class="form-group">
              <label for="nama_lengkap">Nama Lengkap</label>
              <input type="text" class="form-control" name="nama_lengkap" value="<?php echo $mhs->nama_lengkap; ?>" id="nama_lengkap" placeholder="Nama Lengkap">
            </div>
            <div class="form-group">
              <label for="nama_panggilan">Nama Panggilan</label>
              <input type="text" class="form-control" name="nama_panggilan" value="<?php echo $mhs->nama_panggilan; ?>" id="nama_panggilan" placeholder="Nama Panggilan">
            </div>
			<div class="form-group">
              <label>Alamat</label>
              <textarea class="form-control" name="alamat" rows="3" placeholder="Alamat Lengkap"><?php echo $mhs->alamat; ?></textarea>
            </div>
			<div class="form-group">
              <label for="email">Email</label>
              <input type="text" class="form-control" name="email" id="email" value="<?php echo $mhs->email; ?>" placeholder="Email">
            </div>
			<div class="form-group">
              <label for="telp">Telp</label>
              <input type="text" class="form-control" name="telp" id="telp" value="<?php echo $mhs->telp; ?>" placeholder="Telp">
            </div>
        </div>
        <!-- /.box-body -->

        <div class="box-footer">
           <button type="submit" class="btn btn-primary">Update</button>
        </div>
    </form>
	<?php
	  }
	?>
	</div>
    <!-- /.box-body -->
    <div class="box-footer">
       &copy; STMIK Jabar
    </div>
    <!-- /.box-footer-->
</div>
<!-- /.box -->