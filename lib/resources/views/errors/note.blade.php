@if(Session::has('error'))
	<p class="alert alert-danger">
		{{Session::get('error')}}
	</p>
@endif
@if(Session::has('success'))
	<p class="alert alert-success">
		{{Session::get('success')}}
	</p>
@endif
@if(Session::has('errors'))
	<p class="alert alert-danger">
		{{Session::get('errors')}}
	</p>
@endif


@if(Session::has('token'))
	<p class="alert alert-danger">
		{{Session::get('Chuyển hướng token thành công sau 30p')}}
	</p>
@endif