<style>

    @media print {
        html, body {
            display: block;
            font-size: 7.5px;


            width: 100%;
            height: 29.7cm;
            margin: 1mm 1mm 1mm 1mm;

            /* change the margins as you want them to be. */

        }

        @page {
            size: landscape;
            margin: 0.2in 1mm 1mm 1mm;
        }

        body.content .sheet {
            width: 100%;
            height: 29.7cm;
            background-color: #ff0002;
            overflow-y: scroll;

        }

        /* sheet size */
    }
	
</style>

<section class="content-header">
    <h1>
        STMIK Jabar
        <small>Menghasilkan lulusan yang berkualitas, unggul, dan berkarakter.</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="../admin"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Transkrip Nilai</li>
    </ol>
</section>
<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-body">
		
			<div id="groupbutton">
                <div id="myDIV">
                    <!-- Button untuk melakukan update -->
                    <a href="#" class="btn btn-primary"
                       onclick="myFunction();
                               document.title = '<?php echo 'TRANSKRIP_NILAI_' . $nim; ?>';
                               window.print();
                               window.location.reload();">Print</a>
                    <!-- Button cancel untuk kembali ke halaman penerimaan list -->
                    <a href="<?php echo site_url('nilai/buatTranskrip') ?>" class="btn btn-warning">Cancel</a>
                </div>
            </div>

            <!-- Menampilkan Transkrip Nilai -->
            <?php
            $ci = get_instance(); // Memanggil object utama
            $ci->load->helper('my_function'); // Memanggil fungsi pada helper dengan nama my_function
            ?>
            <center>
                <legend>TRANSKRIP NILAI</legend>
                <table>
                    <tr>
                        <td>NIM</td>
                        <td> : <?php echo $nim; ?></td>
                    </tr>
                    <tr>
                        <td>Nama</td>
                        <td> : <?php echo $nama; ?></td>
                    </tr>
                    <tr>
                        <td>Program Studi</td>
                        <td> : <?php echo $prodi; ?></td>
                    </tr>
                </table>
                <br/>
                <table class="table table-bordered table table-striped">
                    <tr>
                        <td>NO</td>
                        <td>KODE</td>
                        <td>MATAKULIAH</td>
                        <td align="center">SKS</td>
                        <td align="center">NILAI</td>
                        <td align="center">SKOR</td>
                    </tr>
                    <?php
                    $no = 0; // Nomor urut dalam menampilkan data
                    $jSks = 0; // Jumlah SKS awal yaitu 0
                    $jSkor = 0; // Jumlah Skor awal yaitu 0

                    // Menampilkan data transkrip atau nilai
                    foreach ($trans as $row) {
                        $no++;
                        ?>
                        <tr>
                            <td><?php echo $no; ?></td>
                            <td><?php echo $row->kode_matakuliah; ?></td>
                            <td><?php echo $row->nama_matakuliah; ?></td>
                            <td align="center"><?php echo $row->sks; ?></td>
                            <td align="center"><?php echo $row->nilai; ?></td>
                            <td align="center"><?php echo skorNilai($row->nilai, $row->sks); ?></td>
                            <?php
                            $jSks += $row->sks;
                            $jSkor += skorNilai($row->nilai, $row->sks);
                            ?>
                        </tr>
                        <?php
                    }
                    ?>
                    <tr>
                        <td colspan="3">Jumlah</td>
                        <td align="center"><?php echo $jSks; ?></td>
                        <td>&nbsp;</td>
                        <td align="center"><?php echo $jSkor; ?></td>
                    </tr>
                </table>
                Indeks Prestasi : <?php
                if ($jSks > 0)
                    echo number_format($jSkor / $jSks, 2);
                else
                    echo 0;
                ?>
            </center>
			
			<script>
                function myFunction() {
                    var x = document.getElementById("myDIV");
                    if (x.style.display === "none") {
                        x.style.display = "block";
                    } else {
                        x.style.display = "none";
                    }
                }
            </script>



