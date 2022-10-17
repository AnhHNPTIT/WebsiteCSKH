@extends('layouts.master_home')


@section('title')
Mạng FPT
@endsection

@section('js')
<script type="text/javascript" src="{{asset('home/js/sweetalert.min.js')}}"></script>
@endsection

@section('introduction')
<div class="row em-wrapper-ads-13 hidden-xs">
    <div class="text-box col-sm-8">
        <a class="icon-banner-left pull-left"href="javascript:void(0)">
            <em class="fa fa-fw"><i class="fa fa-hospital-o"></i></em>
        </a>
        <div class="em-banner-right">
            <h5><a href="javascript:void(0)">Cam kết dịch vụ</a></h5>
            <p style="font-size : 13px;">Tốc độ, đường truyền cáp quang ổn định</p>
        </div>
    </div>
    <div class="text-box col-sm-8">
        <a class="icon-banner-left pull-left" href="javascript:void(0)">
            <em class="fa fa-fw"><i class="fa fa-user-md"></i></em>
        </a>
        <div class="em-banner-right">
            <h5><a title="Free shipping all order" href="javascript:void(0)">Tư vấn tận tình</a></h5>
            <p style="font-size : 13px;">Đội ngũ nhân viên trẻ, năng động, nhiệt huyết</p>
        </div>
    </div>
    <div class="text-box col-sm-8">
        <a class="icon-banner-left pull-left" href="javascript:void(0)">
            <em class="fa fa-fw"><i class="fa fa-tags"></i></em>
        </a>
        <div class="em-banner-right">
            <h5><a href="javascript:void(0)">ƯU ĐÃI TỐI ĐA</a></h5>
            <p style="font-size : 13px;">Dịch vụ hàng đầu, giá thành đa dạng</p>
        </div>
    </div>
</div><!-- /.em-wrapper-ads-13-->
@endsection


@section('home')
<div class="row">
    @include('alert_message')
    
    <div class="col-sm-24 em-col-main">
        <div class="em-wrapper-area03">
            <div class="em-slideshow">
                <div class="em-owlcarousel-slideshow">
                    <div id="em_owlcarousel_2_2484_sync1" class="owl-carousel">

                        @if(isset($banners))
                            @foreach($banners as $item)
                                <div class="item">
                                    <a href="{{ url(''.$item->link) }}"> 
                                        <img alt="{{$item->name}}" class="lazyOwl img-responsive" src="{{asset('home/images/loading.gif')}}" data-src="{{asset('images/slides/'.$item->image)}}" /> 
                                    </a>
                                </div><!-- /.item -->
                            @endforeach
                        @endif

                    </div><!-- /# em_owlcarousel_2_2484_sync1 -->
                </div><!-- /.em-owlcarousel-slideshow -->
            </div><!-- /.em-slideshow -->
        </div><!-- /.em-wrapper-area03 -->
        <div class="std"></div>
    </div><!-- /.em-col-main -->


    @if(isset($promotion))
    <div class="em-wrapper-banners hidden-xs">
        <div class="em-effect06">
            <a class="em-eff06-04" href="javascript:void(0)">
            <img class="img-responsive retina-img" src="{{asset('/images/promotions/'.$promotion->image)}}" style="min-height:152px;"/>
            </a>
        </div>
    </div><!--  /.em-wrapper-banners -->
    @endif

    
    <!-- <div class="row">
        <div class="col-sm-24">
            <div class="em-wrapper-ads-15">
                <div class="em-slider em-slider-category" data-emslider-pagination="true" data-emslider-items="1">
                    
                    @if(isset($feedbacks))
                        @foreach($feedbacks as $feedback)
                            <div class="em-ads-item">
                                <div class="em-ads-img">
                                    <a href="javascript:avoid(0)">
                                        <img style="height: 69px;" class="img-responsive" src="{{asset('/images/feedbacks/'.$feedback->image)}}" />
                                    </a>
                                </div>
                                <div class="em-ads-content">
                                    <p class="em-ads-des">
                                    <i class="fa fa-fw"></i>
                                    {{$feedback->content}}
                                    </p>
                                    <p class="em-ads-author"><span class="em-text-upercase">{{$feedback->name}}</span><span>- {{$feedback->occupation}}</span>
                                    </p>
                                </div>
                            </div>
                        @endforeach
                    @endif
                   
                </div>
            </div>
        </div>
    </div> -->
    </div><!-- /.em-sidebar -->
</div>

<script type="text/javascript">
    $('.btn-add-to-cart').click(function(){
        var id = $(this).attr('data-id');
        var count = Number($(".em-topcart-qty").html());
        $.ajax({
            type : 'post',
            url : '/checkout/cart',
            data : {
                _token :$('[name="_token"]').val(),
                id : id,
            },
            success : function(response){
                count++;
                $(".em-topcart-qty").html(count);
                swal({
                    title: "Đã xong!",
                    text: "Sản phẩm của bạn đã được thêm vào giỏ hàng",
                    icon: "success",
                    buttons: true,
                    dangerMode: true,
                    buttons: ["Tiếp tục mua hàng ", "Gửi đơn hàng ngay!"],
                })
                .then(flag =>{
                    if(flag){
                        window.location.href="/checkout/cart";
                    }
                })
            }
        });
    });

    $('.btn-add-to-wishlist').click(function(){
        var id = $(this).attr('data-id');
        $.ajax({
            type : 'post',
            url : '/wishlist',
            data : {
                _token :$('[name="_token"]').val(),
                id : id,
            },
            success : function(response){
                if(response.is === 'success'){
                    swal({
                        title: "Hoàn thành!",
                        text: "Sản phẩm đã được thêm vào danh sách yêu thích",
                        icon: "success",
                        buttons: true,
                        buttons: ["Ok"],
                        timer: 1500
                    });
                }
                if(response.is === 'unsuccess'){
                    swal({
                        title: "Thất bại!",
                        text: "Sản phẩm đang được cập nhật!",
                        icon: "warning",
                        buttons: true,
                        buttons: ["Ok"],
                        timer: 1500
                    });
                }
                if(response.is === 'exist'){
                    swal({
                        text: "Sản phẩm đã tồn tại trong danh sách yêu thích của bạn!",
                        icon: "info",
                        buttons: true,
                        buttons: ["Ok"],
                        timer: 2000
                    });
                }
                if(response.is === 'notlogged'){
                    swal({
                        title: "Bạn chưa đăng nhập",
                        text: "Bạn cần đăng nhập để thực hiện chức năng này!",
                        icon: "info",
                        buttons: true,
                        dangerMode: true,
                        buttons: ["Đóng","Đăng nhập"],
                        
                    })
                    .then(flag => {
                        if(flag){
                            window.location.href="/login";
                        }
                    })
                }
            },
        });
    })
</script>
@endsection


@section('interesting')
<div class="row">
<div class="col-sm-24  text-center">
    <h3 class="section-title section-title-center" style="text-align: center; text-transform: uppercase; color : #555;">
    <b></b>
    <span class="section-title-main">SẢN PHẨM – DỊCH VỤ</span>
    <b></b>
    <br>
</div>
<div class="em-wrapper-ads-09">
    <div class="row">
        <a href="{{ url('/dich-vu-internet/fpt-lap-mang-wifi-gia-re-mien-phi-lap-dat-1665809156') }}" style="cursor: pointer !important;">
            <div class="col-sm-8 text-center em-wrapper-ads-item">
                <div class="em-ads-item">
                    <p><em class="fa fa-globe" style="cursor: pointer !important;"></em>
                    </p>
                    <div class="em-ads-content">
                        <h4 class="primary em-text-upercase">Dịch vụ Internet</h4>
                        <p>Internet FPT nhanh kết nối an toàn tốc độ đạt tới 1Gigabit/giây gia tăng tốc độ trải nghiệm gấp rất nhiều lần đáp ứng tốt nhu cầu: làm việc, học tập online, chơi game, lướt web.</p>
                    </div>
                </div>
            </div>
        </a>

        <a href="{{ url('/dich-vu-truyen-hinh/fpt-shop-lap-mang-wifi-gia-re-mien-phi-lap-dat-1665808523') }}" style="cursor: pointer !important;">
            <div class="col-sm-8 text-center em-wrapper-ads-item  line-left line-right">
                <div class="em-ads-item">
                    <p><em class="fa fa-play" style="cursor: pointer !important;"></em>
                    </p>
                    <div class="em-ads-content">
                        <h4 class="primary em-text-upercase">Dịch vụ Truyền hình</h4>
                        <p>FPT Play sở hữu hơn 200 kênh truyền hình trong nước và quốc tế. Độc quyền mùa giải Cúp UEFA đỉnh cao & còn cung cấp các ứng dụng học tập online, giải trí, phim truyện.</p>
                    </div>
                </div>
            </div>
        </a>

        <a href="{{ url('/dich-vu-camera/fpt-shop-lap-mang-wifi-gia-re-mien-phi-lap-dat-1665808522') }}" style="cursor: pointer !important;">
            <div class="col-sm-8 text-center  em-wrapper-ads-item  line-left line-right">
                <div class="em-ads-item">
                    <p><em class="fa fa-camera" style="cursor: pointer !important;"></em>
                    </p>
                    <div class="em-ads-content">
                        <h4 class="primary em-text-upercase">Dịch vụ Camera</h4>
                        <p>FPT Camera được ra mắt thị trường Việt Nam vào năm 2019. FPT Telecom đem tới một dịch vụ tiện lợi – thông minh, hỗ trợ giám sát an toàn và bảo mật thông tin.</p>
                    </div>
                </div>
            </div>
        </a>
    </div>
</div>
</div>

<div class="row">
    <h3 class="section-title section-title-center" style="text-align: center; text-transform: uppercase; color : #555;">
    <b></b>
    <span class="section-title-main">TIN TỨC</span>
    <b></b>
    </h3>
    <div class="em-wrapper-banners">
        <div class=" slider-style02">
            <div class="em-slider em-slider-banners em-slider-navigation-icon" 
                data-emslider-navigation="true" data-emslider-items="4" 
                data-emslider-desktop="3" data-emslider-desktop-small="3" 
                data-emslider-tablet="2" data-emslider-mobile="1">

                    @if(isset($new_posts))
                        @foreach($new_posts as $post)
                        <div class="item" style="margin-top : 30px; padding: 0px 10px;">
                            <a href="{{ url('/tin-tuc/'.$post->slug) }}">
                                <img class="img-responsive em-alt-org em-lazy-loaded" src="{{asset('/images/'.$post->thumbnail)}}" alt="{{$post->name}}" style="height:160px; width:100%;">
                            </a>
                            <div>
                                <div style="padding: 5px 8px; text-align:center;">
                                    <!--post title-->
                                    <h1 style="margin-top : 10px; font-size: 17px; font-weight:600 !important; text-transform: capitalize !important;">
                                        <a href="{{ url('/tin-tuc/'.$post->slug) }}" title="" style="text-align: justify !important;">
                                            {{$post->title}}
                                        </a>
                                    </h1>
                                    <p style="font-size: 16px !important;">
                                        <span>
                                            @if(strlen($post->description) < 120)
                                                {!! $post->description !!}
                                            @else
                                                {!! substr($post->description, 0, 120) !!}...
                                            @endif
                                        </span>
                                    </p>   
                                </div>
                            </div>
                        </div><!-- /.item -->
                        @endforeach
                    @endif
            </div>
        </div><!-- /.slider-style02 --> 
    </div>
</div>

<style>
    .section-title {
        position: relative;
        display: flex;
        flex-flow: row wrap;
        align-items: center;
        justify-content: space-between;
        width: 100%;
    }
    .section-title b {
        display: block;
        -ms-flex: 1;
        flex: 1;
        height: 2px;
        opacity: .1;
        background-color: currentColor;
    }
</style>
@endsection


@section('feature')
<div class="col-sm-24  text-center">
    <h3 class="section-title section-title-center" style="text-align: center; text-transform: uppercase; color : #555;">
    <b></b>
    <span class="section-title-main">LÝ DO NÊN LỰA CHỌN MẠNG FPT?</span>
    <b></b>
    <br>
</div>
<div class="em-wrapper-ads-09">
    <div class="row">
        <div class="col-sm-6 text-center em-wrapper-ads-item">
            <div class="em-ads-item">
                <p><em class="fa fa-fw"></em>
                </p>
                <div class="em-ads-content">
                    <h4 class="primary em-text-upercase">CHẤT LƯỢNG HÀNG ĐẦU</h4>
                    <p>Viễn thông MẠNG FPT tự hào là 1 trong 3 những đơn vị cung cấp dich vụ internet lớn nhất Việt Nam trong hàng chục năm qua, mạng lưới phủ sóng toàn quốc.</p>
                </div>
            </div>
        </div><!-- /.em-wrapper-ads-item -->
        <div class="col-sm-6 text-center em-wrapper-ads-item  line-left line-right">
            <div class="em-ads-item">
                <p><em class="fa fa-fw"></em>
                </p>
                <div class="em-ads-content">
                    <h4 class="primary em-text-upercase">ĐĂNG KÝ ONLINE – TIỆN LỢI</h4>
                    <p>Quý khách hàng chỉ cần để lại thông tin hoặc gọi đến Hotline tổng đài FPT: 0961.343.688, nhân viên sẽ hỗ trợ giải đáp và tư vấn dịch vụ  phù hợp.</p>
                </div>
            </div>
        </div><!-- /.em-wrapper-ads-item -->
        <div class="col-sm-6 text-center  em-wrapper-ads-item  line-left line-right">
            <div class="em-ads-item">
                <p><em class="fa fa-fw"></em>
                </p>
                <div class="em-ads-content">
                    <h4 class="primary em-text-upercase">ĐA DẠNG GÓI CƯỚC – ƯU ĐÃI</h4>
                    <p>Mạng FPT Internet luôn nhanh và ổn định được thiết kế phù hợp, đáp ứng tốt mọi nhu cầu của cá nhân gia đình, doanh nghiệp với nhiều khuyến mãi tốt nhất.</p>
                </div>
            </div>
        </div><!-- /.em-wrapper-ads-item -->
        <div class="col-sm-6 text-center  em-wrapper-ads-item">
            <div class="em-ads-item">
                <p><em class="fa fa-fw"></em>
                </p>
                <div class="em-ads-content">
                    <h4 class="primary em-text-upercase">HỖ TRỢ NHANH 24/7</h4>
                    <p>Đội ngũ nhân viên trẻ, năng động luôn chăm sóc và hỗ trợ giải đáp khách hàng 24/7. Quý khách hãy liên hệ với nhà mạng FPT Telecom mỗi khi gặp sự cố thông qua:1900 6600.</p>
                </div>
            </div>
        </div><!-- /.em-wrapper-ads-item -->
    </div>
</div>
@endsection


@section('brand')
<div class="em-wrapper-brands">
    <div class="slider-style02">
        <div class="em-slider em-slider-banners em-slider-navigation-icon" data-emslider-navigation="true" data-emslider-items="6" data-emslider-desktop="5" data-emslider-desktop-small="4" data-emslider-tablet="3" data-emslider-mobile="2">
            @if(isset($counterparts))
                @foreach($counterparts as $counterpart)
                    <div class="em-banners-item" style="width : 80px; height : 60px; box-sizing : border-box;">
                        <a href="{{$counterpart->link}}">
                            <img class="img-responsive" alt="{{$counterpart->name}}" src="{{asset('images/counterparts/'.$counterpart->logo)}}" style="width : 100%; height : 50px;" />
                        </a>
                    </div>
                @endforeach
            @endif
            <!-- brand -->
                        
        </div>
    </div><!-- /.slider-style02 -->
</div>
@endsection



