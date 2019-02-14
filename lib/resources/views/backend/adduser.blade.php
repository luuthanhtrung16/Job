@extends('backend.master')
@section('title','')
@section('content')
<div class="main-content">
	<div class="section__content section__content--p30">
		<div class="container-fluid">
			<!-- Form add user -->
			<div class="card-header">
				<strong>TẠO ADMIN</strong> quản lý
			</div>
			<div class="card-body card-block">
				<form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
					@include('errors.note')
					<div class="row form-group">
						<div class="col col-md-3">
							<label class=" form-control-label">Trạng thái</label>
						</div>
						<div class="col-12 col-md-9">
							<p class="form-control-static">Tài khoản admin quản lý</p>
						</div>
					</div>
					<div class="row form-group">
						<div class="col col-md-3">
							<label for="name-input" class=" form-control-label">Họ và tên:</label>
						</div>
						<div class="col-12 col-md-9">
							<input type="text" id="name-input" name="name" placeholder="Họ và tên" class="form-control">
							<small class="help-block form-text">Vui lòng nhập họ và tên</small>
						</div>
					</div>

					<div class="row form-group">
						<div class="col col-md-3">
							<label for="email-input" class=" form-control-label">Email</label>
						</div>
						<div class="col-12 col-md-9">
							<input type="email" id="email-input" name="email" placeholder="Email" class="form-control">
							<small class="help-block form-text">Vui lòng nhập email</small>
						</div>
					</div>
					<div class="row form-group">
						<div class="col col-md-3">
							<label for="password-input" class=" form-control-label">Mật khẩu</label>
						</div>
						<div class="col-12 col-md-9">
							<input type="password" id="password-input" name="password" placeholder="Mật khẩu" class="form-control">
							<small class="help-block form-text">Vui lòng nhập mật khẩu</small>
						</div>

					</div>
					<div class="row form-group">
						<div class="col col-md-3">
							<label for="password-input" class=" form-control-label">Nhập lại mật khẩu</label>
						</div>
						<div class="col-12 col-md-9">
							<input type="password" id="password-input-again" name="password-again" placeholder="Mật khẩu" class="form-control">
							<small class="help-block form-text">Vui lòng nhập lại mật khẩu một lần nữa</small>
						</div>
						
					</div>
					<div class="row form-group">
						<div class="col col-md-3">
							<label for="birthday-input" class=" form-control-label">Ngày sinh</label>
						</div>
						<div class="col-12 col-md-9">
							<input type="date" id="birthday-input" name="birthday" placeholder="" class="form-control">
							<small class="help-block form-text">Vui lòng nhập email</small>
						</div>
					</div>
					
					
					<div class="row form-group">
						<div class="col col-md-3">
							<label for="select" class=" form-control-label">Chúc vụ</label>
						</div>
						<div class="col-12 col-md-9">
							<select name="level" id="select" class="form-control">
								<option value="0">Vui lòng chọn chức vụ</option>
								<option value="1">Quản lý admin</option>
								<option value="2">Quản lý hồ sơ</option>
								
							</select>
						</div>
					</div>
					<div class="card-footer " style="text-align: center;">
						<button type="submit" class="btn btn-primary btn-sm">
							<i class="fa fa-dot-circle-o"></i> Tạo tài khoản
						</button>
						<button type="reset" class="btn btn-danger btn-sm">
							<i class="fa fa-ban"></i> Làm mới
						</button>
					</div>
					{{csrf_field()}}
				</form>
			</div>
			<!-- End Form add user -->
		</div>
	</div>
</div>
@stop