<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Digital & Electronics</title>
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('assets/images/favicon.ico') }}">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,400italic,700,700italic,900,900italic&amp;subset=latin,latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,400italic,600,600italic,700,700italic&amp;subset=latin,latin-ext" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/animate.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/font-awesome.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/bootstrap.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/owl.carousel.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/chosen.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/style.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/color-01.css') }}">
</head>
<body class="home-page home-01 ">

<!-- mobile menu -->
<div class="mercado-clone-wrap">
    <div class="mercado-panels-actions-wrap">
        <a class="mercado-close-btn mercado-close-panels" href="#">x</a>
    </div>
    <div class="mercado-panels"></div>
</div>

<main id="main" class="main-site left-sidebar">
    <div class="container">
        <div class="wrap-breadcrumb">
            <ul>
                <li class="item-link"><a href="#" class="link">home</a></li>
                <li class="item-link"><span>Digital & Electronics</span></li>
            </ul>
        </div>
        <div class="row">
            <div class="col-lg-9 col-md-8 col-sm-8 col-xs-12 main-content-area">
                <div class="banner-shop">
                    <a href="#" class="banner-link">
                        <figure><img src="{{ asset('assets/images/shop-banner.jpg') }}" alt=""></figure>
                    </a>
                </div>
                <div class="wrap-shop-control">
                    <h1 class="shop-title">Digital & Electronics</h1>
                    <div class="wrap-right">
                        <div class="sort-item orderby ">
                            <select name="orderby" class="use-chosen" wire:model="sorting">
                                <option value="default" selected="selected">Default sorting</option>
                                <option value="date">Sort by newness</option>
                                <option value="price">Sort by price: low to high</option>
                                <option value="price-desc">Sort by price: high to low</option>
                            </select>
                        </div>

                        <div class="sort-item product-per-page">
                            <select name="post-per-page" class="use-chosen" wire:model="pagesize">
                                <option value="12" selected="selected">12 per page</option>
                                <option value="16">16 per page</option>
                                <option value="18">18 per page</option>
                                <option value="21">21 per page</option>
                                <option value="24">24 per page</option>
                                <option value="30">30 per page</option>
                                <option value="32">32 per page</option>
                            </select>
                        </div>

                        <div class="change-display-mode">
                            <a href="/" class="grid-mode display-mode active"><i class="fa fa-th"></i>Grid</a>
                            <a href="/" class="list-mode display-mode"><i class="fa fa-th-list"></i>List</a>
                        </div>
                    </div>
                </div><!--end wrap shop control-->
                @if($products->count() > 0)
                    <div class="row">
                        <ul class="product-list grid-products equal-container">
                            @foreach($products as $product)
                                <li class="col-lg-4 col-md-6 col-sm-6 col-xs-6 ">
                                    <div class="product product-style-3 equal-elem ">
                                        <div class="product-thumnail">
                                            <a href="{{ route('product.details', ['slug' => $product->slug]) }}" title="{{ $product->name }}">
                                                <figure><img src="{{ asset('assets/images/products/') }}/{{ $product->image }}" alt="{{ $product->name }}"></figure>
                                            </a>
                                        </div>
                                        <div class="product-info">
                                            <a href="{{ route('product.details', ['slug' => $product->slug]) }}" class="product-name"><span>{{ $product->name }}</span></a>
                                            <div class="wrap-price"><span class="product-price">${{ $product->regular_price }}</span></div>
                                            <a href="#" class="btn add-to-cart" wire:click.prevent="store({{ $product->id }}, '{{ $product->name }}', {{ $product->regular_price }})">Add To Cart</a>
                                        </div>
                                    </div>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                @else
                    <p style="padding-top: 30px;">No Products</p>
                @endif

                <div class="wrap-pagination-info">
                    {{ $products->links() }}

                    {{--                    <ul class="page-numbers">--}}
                    {{--                        <li><span class="page-number-item current" >1</span></li>--}}
                    {{--                        <li><a class="page-number-item" href="#" >2</a></li>--}}
                    {{--                        <li><a class="page-number-item" href="#" >3</a></li>--}}
                    {{--                        <li><a class="page-number-item next-link" href="#" >Next</a></li>--}}
                    {{--                    </ul>--}}
                    {{--                    <p class="result-count">Showing 1-8 of 12 result</p>--}}
                </div>
            </div><!--end main products area-->

            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 sitebar">
                <div class="widget mercado-widget categories-widget">
                    <h2 class="widget-title">All Categories</h2>
                    <div class="widget-content">
                        <ul class="list-category">
                            @foreach($categories as $category)
                                <li class="category-item">
                                    <a href="{{ route('product.category', ['category_slug' => $category->slug]) }}" class="cate-link">{{ $category->name }}</a>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </div><!-- Categories widget-->

                <div class="widget mercado-widget widget-product">
                    <h2 class="widget-title">Latest Products</h2>
                    <div class="widget-content">
                        <ul class="products">
                            @foreach($lproducts as $lproduct)
                                <li class="product-item">
                                    <div class="product product-widget-style">
                                        <div class="thumbnnail">
                                            <a href="{{ route('product.details', ['slug' => $lproduct->slug]) }}" title="{{ $lproduct->name }}">
                                                <figure><img src="{{ asset('assets/images/products/') }}/{{ $lproduct->image }}" alt=""></figure>
                                            </a>
                                        </div>
                                        <div class="product-info">
                                            <a href="{{ route('product.details', ['slug' => $lproduct->slug]) }}" class="product-name"><span>{{ $lproduct->name }}</span></a>
                                            <div class="wrap-price"><span class="product-price">${{ $lproduct->regular_price }}</span></div>
                                        </div>
                                    </div>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </div><!-- brand widget-->
            </div><!--end sitebar-->
        </div><!--end row-->
    </div><!--end container-->
</main>

<script src="{{ asset('assets/js/jquery-1.12.4.minb8ff.js?ver=1.12.4') }}"></script>
<script src="{{ asset('assets/js/jquery-ui-1.12.4.minb8ff.js?ver=1.12.4') }}"></script>
<script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('assets/js/chosen.jquery.min.js') }}"></script>
<script src="{{ asset('assets/js/owl.carousel.min.js') }}"></script>
<script src="{{ asset('assets/js/jquery.countdown.min.js') }}"></script>
<script src="{{ asset('assets/js/jquery.sticky.js') }}"></script>
<script src="{{ asset('assets/js/functions.js') }}"></script>
</body>
</html>

@push('scripts')
    <script>
        var slider = document.getElementById('slider');
        noUiSlider.create(slider, {
            start: [1, 1000],
            connect:true,
            range: {
                'min' : 1,
                'max' : 1000
            },
            pips: {
                mode:'steps',
                stepped:true,
                density:4
            }
        });

        slider.noUiSlider.on('update', function (value) {
        @this.set('min_price', value[0]);
        @this.set('max_price', value[1]);
        })
    </script>
@endpush
