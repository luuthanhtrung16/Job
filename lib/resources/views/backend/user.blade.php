@extends('backend.master')
@section('title','')
@section('content')
<div class="main-content">
	<div class="section__content section__content--p30">
		<div class="container-fluid">
			<!-- Table -->
			<div class="table-responsive table--no-card m-b-30">
				<table class="table table-borderless table-striped table-earning">
					<thead>
						<tr>
							<th>STT</th>
							<th>Mã ID</th>
							<th>Avatar</th>
							<th>Email</th>
							<th class="text-right">Loại quản lý</th>
							<th class="text-right">Thời gian lập</th>
							<th class="text-right">Sửa</th>
							<th class="text-right">Xóa</th>
						</tr>
					</thead>
					<tbody>
						<?php $i=1; ?>
						@foreach($userhome as $us)
						
						<tr>
							<td>{{$i}}</td>
							<td>{{$us["id"]}}</td>
							<td><img src="{{asset('lib/storage/app/hinhanh/'.$us->user_img)}}"></td>
							<td>{{$us["email"]}}</td>
							<td class="text-right">{{$us["level"]}}</td>
							<td class="text-right">{{$us["created_at"]}}</td>
							<td class="text-right"><a href="">Sửa</a></td>
							<td class="text-right"><a href="">Xóa</a></td>
						</tr>
						<?php $i++; ?>
						@endforeach
					</tbody>
				</table>
			</div>
			<!-- End table -->
		</div>
	</div>
</div>
@stop