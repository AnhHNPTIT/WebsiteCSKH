@extends('layouts.master_home')

@section('title')
@if(isset($intro))
    Giới thiệu - FPT Telecom
@endif
@if(isset($payment))
    Hình thức thanh toán - FPT Telecom
@endif
@if(isset($policy))
    Chính sách đổi trả - FPT Telecom
@endif
@if(isset($regular))
    Chính sách bảo mật - FPT Telecom
@endif
@if(isset($shipment))
    Phương thức vận chuyển - FPT Telecom
@endif
@endsection

@section('css')
    <!-- Blog Style CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('/home/css/blog-styles.css')}}" media="all" />
@endsection

@section('home')

<div class="em-wrapper-main">
    <div class="container container-main">
        <div class="em-inner-main">
            <div class="em-wrapper-area02"></div>
            <div class="em-main-container em-col2-left-layout">
                <div class="row"> 
                    <div class="col-sm-24 em-col-main">
                        <div class="em_post-item">                           
                            <div class="" style="text-align : justify; padding: 10px 10px; line-height : 30px;">
                                @if(isset($intro))
                                    <p>
                                        {!!$intro->content!!}
                                    </p>
                                @endif
                                @if(isset($policy))
                                    <p>
                                        {!!$policy->content!!}
                                    </p>
                                @endif
                                @if(isset($regular))
                                    <p>
                                        {!!$regular->content!!}
                                    </p>
                                @endif
                                @if(isset($payment))
                                    <p>
                                        {!!$payment->content!!}
                                    </p>
                                @endif
                                @if(isset($shipment))
                                    <p>
                                        {!!$shipment->content!!}
                                    </p>
                                @endif
                            </div>
                        </div>
                    </div><!-- /.em-col-main -->
                </div>
            </div><!-- /.em-main-container -->
        </div>
    </div>
</div>

@endsection
