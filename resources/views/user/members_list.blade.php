@extends('layouts.master_admin') 

@section('controll')
Users List
@endsection

@section('content')
<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-xs-12">
			<div class="box">
				<div class="box-header">
					<h3 class="box-title">Khách hàng đăng kí dịch vụ</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					@csrf
					<table id="list-users" class="table table-bordered table-striped" style="margin-top : 10px;">
						<thead>
							<tr>
								<th class="col-sm-2">Tên khách hàng</th>
								<th class="col-sm-1">Số điện thoại</th>
								<th class="col-sm-2">Địa chỉ lắp đặt</th>
								<th class="col-sm-3">Dịch vụ đăng kí</th>
								<th class="col-sm-2">Hình thức thanh toán</th>
								<th class="col-sm-2">Hành động</th>
							</tr>
						</thead>
						<tbody>
						    @php Carbon\Carbon::setLocale('vi'); @endphp
							@foreach ($users as $value)
							<tr>
								<td class="col-sm-2">{{$value->name}}</td>
								<td class="col-sm-1">{{$value->phone_number}}</td>
								<td class="col-sm-2">{{$value->address}}</td>
								<td class="col-sm-3">{{$value->service_package}}</td>
								<td class="col-sm-2">{{$value->payment_method}}</td>
								<td class="col-sm-2">
									@if($value->status == 0)
									<button data-id="{{$value->id}}" disabled type="button" class="btn btn-success btn-edit" >
									Đã xử lý
									</button>
									@else
									<button data-id="{{$value->id}}" type="button" class="btn btn-warning btn-edit" >
									Chưa xử lý
									</button>
									@endif

									<!-- <button data-id="{{$value->id}}" type="button" title="Xóa" class="btn btn-danger btn-delete">
										<i class="fa fa-user-times"></i>
									</button> -->
								</td>
							</tr>
							@endforeach
						</tbody>
					</table>

					{{-- {{$users->links()}} --}}
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</div>
		<!-- /.col -->
	</div>

	<script>
		$(document).ready(function() {
			$('#list-users').DataTable( {
				"lengthMenu": [[25, 50, 100, 500, 1000, 5000, -1], [25, 50, 100, 500, 1000, 5000, "All"]],
				"order": [[6, "desc" ]],
			} );
		} );
	</script>
	<!-- /.row -->
	<script type="text/javascript">
		// block or unblock
		$('.btn-edit').click(function(){
			var user_id = $(this).attr('data-id');
			$.ajax({
				type: 'put',
				url: '/admin/user/member/' + user_id,
				data:{
					_token :$('[name="_token"]').val(),
					id : user_id,
				},
				success: function(response){
					toastr.success('Update Successfully!');
				}
			});

			setTimeout(function () {
				window.location.href="/admin/user/member";
			},500);
		});

		// // delete
		// $('.btn-delete').click(function(){
		// 	if(confirm('Bạn thực sự muốn xóa ?')){
		// 		var _this = $(this);
		// 		var id = $(this).attr('data-id');
		// 		$.ajax({
		// 			type: 'delete',
		// 			url: '/admin/user/member/' + id,
		// 			data:{
		// 				_token : $('[name="_token"]').val(),
		// 			},
		// 			success: function(response){
		// 				_this.parent().parent().remove();
		// 			}
		// 		})
		// 	}
		// });
	</script>

</section>
<!-- /.content -->
@endsection