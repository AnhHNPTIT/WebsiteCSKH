@extends('layouts.master_home')

@section('title')
    Liên hệ - Mạng FPT
@endsection

@section('css')
    <!-- Blog Style CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('/home/css/blog-styles.css')}}"/>
@endsection

@section('home')

<div class="em-wrapper-main">
    <div class="container container-main">
        <div class="em-inner-main">
            <div class="em-wrapper-area02"></div>
            <div class="em-main-container em-col2-left-layout">
                <div class="row">
                    <div class="em-col-main col-sm-24">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.0477782480625!2d105.78056661547971!3d21.030774193084167!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab4ca83a8b6f%3A0x129d06cbf7f8acca!2zMTcgUC4gRHV5IFTDom4sIEThu4tjaCBW4buNbmcgSOG6rXUsIEPhuqd1IEdp4bqleSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1665807230983!5m2!1svi!2s" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                        <div class="row" style="margin-top : 50px; margin-bottom : 50px;">
                            
                            <div class="col-sm-12" style="line-height : 28px; padding-top : 25px;">
                                <div class="em-maps-wrapper" style="margin-b : 25px; padding-bottom : 25px;">
                                    <h1>FPT Telecom</h1>
                                </div>

                                <address><span class="fa fa-map-marker secondary2">&nbsp;</span>Địa chỉ: 17, Duy Tân, P. Dịch Vọng Hậu, Q. Cầu Giấy, TP. Hà Nội </address>

                                <p class="em-phone"><span class="fa fa-phone secondary2">&nbsp;</span>Điện thoại: <span class="primary"> 1900 6600</span>
                                </p>
                                
                                <p class="em-email"><span class="fa fa-envelope secondary2">&nbsp;</span>Email: <span class="secondary2">hotrokhachhang@fpt.com.vn</span>
                                </p>
                            </div><!-- /.col-sm-12 -->

                            <div class="col-sm-12">
                                <div class="error-message-contact" style="display:none; font-size:14px; font-weight: 500; line-height: 28px;">
                                    <ul style="color : #f27227;"></ul>
                                </div>

                                <div class="alert success-message-contact" style="display:none; font-size:14px; color : #32ca00; font-weight: 500; line-height: 28px;">
                                    <ul></ul>
                                </div>

                                <div class="alert unsuccess-message-contact" style="display:none; font-size:14px; color : #f27227; font-weight: 500; line-height: 28px;">
                                    <ul style="color : #f27227;"></ul>
                                </div>
                                <form id="contactForm">
                                    @csrf
                                    <div class="fieldset">
                                        <ul class="form-list">
                                            <li style="margin-top : 20px;">
                                                <label for="name" class="required"><em>*</em>Tên của bạn</label>
                                                <div class="input-box">
                                                    <input name="name" id="name" value="" class="input-text required-entry" type="text" />
                                                </div>
                                            </li>

                                            <li style="margin-top : 20px;">
                                                <label for="email" class="required"><em>*</em>Email</label>
                                                <div class="input-box">
                                                    <input name="email" id="email" value="" class="input-text required-entry validate-email" type="text" />
                                                </div>
                                            </li>
                                            
                                            <li class="wide" style="margin-top : 20px;">
                                                <label for="content" class="required"><em>*</em>Nội dung</label>
                                                <div class="input-box">
                                                    <textarea name="content" id="content" class="required-entry input-text" cols="5" rows="3"></textarea>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="buttons-set">
                                        <button type="button" class="button btn-contact" style="font-size : 14px; width : 100px;">GỬI
                                        </button>
                                    </div>
                                </form><!-- /#contactForm -->
                            </div><!-- /.col-sm-12 -->
                        </div>
                    </div>
                </div>
            </div><!-- /.em-main-container -->
        </div>
    </div>
</div>
<script>
    $('.btn-contact').click(function(){
        var form_data = new FormData();
        form_data.append("_token", '{{csrf_token()}}');
        form_data.append("name", $('#name').val());
        form_data.append("email", $('#email').val());
        form_data.append("content", $('#content').val());
        $.ajax({
            type : 'post',
            url : '/lien-he',
            data : form_data,
            dataType : 'json',
            contentType: false,
            processData: false,
            success : function(response){
                if(response.is === 'failed'){
                    $(".error-message-contact").find("ul").html('');
                    $(".error-message-contact").css('display','block');
                    $(".success-message-contact").css('display','none');
                    $(".unsuccess-message-contact").css('display','none');

                    $.each(response.error, function( key, value ) {
                        $(".error-message-contact").find("ul").append('<li><i class="fa fa-exclamation-triangle" style="color: #ff0000;"></i> '+value+'</li>');
                    });

                    window.scroll({
                        top: 500,
                        behavior: 'smooth'
                    });
                }
                if(response.is === 'success'){
                    $(".success-message-contact").find("ul").html('');
                    $(".success-message-contact").css('display','block');
                    $(".error-message-contact").css('display','none');
                    $(".unsuccess-message-contact").css('display','none');

                    $(".success-message-contact").find("ul").append('<li><i class="fa fa-check"></i> '+response.complete+'</li>');
                    
                    window.scroll({
                        top: 500,
                        behavior: 'smooth'
                    });
                }
                if(response.is === 'unsuccess'){
                    $(".unsuccess-message-contact").find("ul").html('');
                    $(".unsuccess-message-contact").css('display','block');
                    $(".error-message-contact").css('display','none');
                    $(".success-message-contact").css('display','none');

                    $(".unsuccess-message-contact").find("ul").append('<li><i class="fa fa-exclamation-triangle"></i> '+response.uncomplete+'</li>');
                    
                    window.scroll({
                        top: 500,
                        behavior: 'smooth'
                    });
                }
            }

        });
    })
</script>
@endsection
