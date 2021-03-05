<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pegawai extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		//Load Dependencies

	}

	// List all your items
	public function index()
	{
		$data = [
			'title' => 'Data Pegawai'
		];

		$this->load->view('template/header', $data);
		$this->load->view('template/navbar', $data);
		$this->load->view('admin/pegawai/index', $data);
		$this->load->view('template/footer', $data);
	}

	// Add a new item
	public function tambah()
	{

		$data = [
			'title' => 'Tambah Data Pegawai'
		];

		$this->load->view('template/header', $data);
		$this->load->view('template/navbar', $data);
		$this->load->view('admin/pegawai/tambah', $data);
		$this->load->view('template/footer', $data);
	}

	//Update one item
	public function update( $id = NULL )
	{

	}

	//Delete one item
	public function delete( $id = NULL )
	{

	}
}

/* End of file Pegawai.php */
/* Location: ./application/controllers/Pegawai.php */
