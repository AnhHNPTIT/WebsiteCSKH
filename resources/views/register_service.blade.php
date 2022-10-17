@extends('layouts.master_home')


@section('title')
    Đăng ký dịch vụ - FPT Telecom
@endsection

@section('home')
    <div class="row">
        <div class="em-col-main col-sm-24" style="margin-top : 50px; margin-bottom : 50px;">
            <div class="account-login">
                <form method="post" id="login-form">
                    @csrf
                    <div class="col2-set">
                        <div class="col-1 new-users">
                            <div class="content">
                                <h1>Đăng ký dịch vụ online</h1>
                                <br>
                                <p>Mọi chi tiết thủ quý khách vui lòng liên hệ hotline bên dưới để được tư vấn hỗ trợ nhanh
                                    nhất</p>
                                <p>Rất vui được phục vụ quý khách. </p>
                            </div>
                        </div>
                        <div class="col-2 registered-users">
                            <div class="content">
                                <ul class="form-list">
                                    <li>
                                        <div class="alert alert-warning login-faile-msg" style="display:none">
                                            <ul></ul>
                                        </div>

                                        <div class="alert alert-danger access-faile-msg" style="display:none">
                                            <ul></ul>
                                        </div>

                                        <div class="alert alert-danger user-block-msg" style="display:none">
                                            <ul></ul>
                                        </div>

                                        <div class="alert alert-warning user-incorrect-msg" style="display:none">
                                            <ul></ul>
                                        </div>
                                    </li>
                                </ul>

                                <ul class="form-list">
                                    <li>
                                        <label for="name" class="required"><em>*</em>Tên cá nhân/Tên doanh
                                            nghiệp</label>
                                        <div class="input-box">
                                            <input type="text" name="name" id="name" class="input-text" />
                                        </div>
                                    </li>
                                    <li>
                                        <label for="phone" class="required"><em>*</em>Số điện thoại</label>
                                        <div class="input-box">
                                            <input type="text" name="phone" id="phone" class="input-text" />
                                        </div>
                                    </li>
                                    <li>
                                        <label for="address" class="required"><em>*</em>Địa chỉ lắp đặt</label>
                                        <div class="input-box">
                                            <input type="text" name="address" id="address" class="input-text" />
                                        </div>
                                    </li>
                                    <li>
                                        <label for="services" class="required"><em>*</em>Bạn đăng ký dịch vụ nào</label>
                                        <div class="input-box">
                                            <select id="service">
                                                <option value="Internet">Internet</option>
                                                <option value="Combo Internet và Camera">Combo Internet và Camera</option>
                                                <option value="Camera FPT">Camera FPT</option>
                                                <option value="Combo Internet và truyền hình">Combo Internet và truyền hình
                                                </option>
                                                <option value="FPT Play box">FPT Play box</option>
                                            </select>
                                        </div>
                                    </li>
                                    <li>
                                        <label for="payment" class="required"><em>*</em>Hình thức thanh toán</label>
                                        <div class="input-box">
                                            <select id="payment">
                                                <option value="Ký hợp đồng online & thanh toán chuyển khoản">Ký hợp đồng
                                                    online & thanh toán chuyển khoản</option>
                                                <option value="Ký hợp đồng và trực tiếp thanh toán">Ký hợp đồng và trực tiếp
                                                    thanh toán</option>
                                            </select>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="buttons-set">
                                <button type="button" class="button btn-register-service"><span><span>Đăng kí</span></span>
                            </div>
                        </div>
                    </div>
                </form>
            </div><!-- /.account-register-service -->
        </div>
    </div>
    <script type="text/javascript" src="{{ asset('home/js/sweetalert.min.js') }}"></script>

    <script type="text/javascript">
        $('.btn-register-service').click(function() {
            var form_data = new FormData();
            form_data.append("_token", '{{ csrf_token() }}');
            form_data.append("phone_number", $('#phone').val());
            form_data.append("name", $('#name').val());
            form_data.append("address", $('#address').val());
            form_data.append("service_package", $('#service').val());
            form_data.append("payment_method", $('#payment').val());

            $.ajax({
                type: 'post',
                url: '/create/contact',
                data: form_data,
                dataType: 'json',
                contentType: false,
                processData: false,
                success: function(response) {
                    if (response.is === 'success') {
                        swal({
                            title: "Đăng kí thành công",
                            text: "Thông tin dịch vụ được đăng ký thành công",
                            icon: "success",
                            buttons: true,
                            buttons: ["Ok"],
                            timer: 1000
                        });
                        setTimeout(function() {
                            window.location.href = "/";
                        }, 2000);
                    } else if (response.is === 'failed') {
                        $(".user-incorrect-msg").find("ul").html('');
                        $(".user-incorrect-msg").css('display', 'block');
                        $(".user-block-msg").css('display', 'none');
                        $(".login-faile-msg").css('display', 'none');
                        $(".access-faile-msg").css('display', 'none');

                        $(".user-incorrect-msg").find("ul").append('<li>' +
                            `${response.incorrect ? response.incorrect : 'Thông tin đăng kí chưa hợp lệ'}`
                            +
                            '</li>');
                        swal({
                            title: "Thất bại!",
                            text: "Quá trình đăng ký dịch vụ không thành công",
                            icon: "warning",
                            buttons: true,
                            buttons: ["Ok"],
                            timer: 1500
                        });
                    }
                    if (response.is === 'unsuccess') {
                        $(".user-incorrect-msg").find("ul").html('');
                        $(".user-incorrect-msg").css('display', 'block');
                        $(".user-block-msg").css('display', 'none');
                        $(".login-faile-msg").css('display', 'none');
                        $(".access-faile-msg").css('display', 'none');

                        $(".user-incorrect-msg").find("ul").append('<li>' + response.incorrect +
                            '</li>');
                        swal({
                            title: "Thất bại!",
                            text: "Quá trình đăng ký dịch vụ không thành công",
                            icon: "warning",
                            buttons: true,
                            buttons: ["Ok"],
                            timer: 1500
                        });
                    }
                }
            });
        });
    </script>
@endsection
