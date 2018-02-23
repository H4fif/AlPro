Developer Note (Project Tanaman v.3 rev.3)

1.Struktur program.
2.Changelog.
2.Note.

---------------------

1. Struktur Program

->program Data_Tumbuhan
->const
->record
->variable
->procedure:
	->lihat_data
	->tambah_data
	->cari_data_id
	->cari_data_nama
	->data_delete
	->data_edit
	->urut_data_id
	->urut_data_nama
	->save_file
	->open_file
	->filter_data
->main program

2. Changelog. 
-v.3 rev.1:
	->Fixing input data sama, pesan eror muncul 2 di TAMBAH DATA.
	->Fixing input data baru, tampil pesan eror di TAMBAH DATA.
	->Fixing pesan input gak sesuai di SEARCH BY NAMA.
	->Fixing id diisi kosong, data berubah dengan isi karakter "--" di EDIT DATA.
	->Fixing sorting descending by ID but ascending by NAMA di MENU.
	->Fixing error di EDIT DATA.
	->Removing Label (EndOfEditData, EndOfIsiData).
-v.3 rev.2:
	->Fixing input id di isi data yang sama di EDIT DATA.
-v.3 rev.3:
	->Fixing input id di isi data yang sama di EDIT DATA.
	->Adding suffix to error message (ex: Error: ID Tanaman tidak boleh kosong).

3. Note
Semua data udah diisi dan udah dirapihin pake table, misal ada yang salah, mau nambah fitur atau ngebug kasih tau gue.

-ln2r(Rizky Sedyanto)

