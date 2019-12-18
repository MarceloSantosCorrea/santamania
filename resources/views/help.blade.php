@extends('layouts.default')
@section('title', 'Ajuda')
@section('content')
    <div class="content-page">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <h4 class="page-title">@lang('Ajuda')</h4>
                        <ol class="breadcrumb">
                            <li>
                                <a href="{{ route('home') }}"> {{ __('Home') }} </a>
                            </li>
                            <li class="active">
                                <span> {{ __('Ajuda') }} </span>
                            </li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box">

                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="text-center">
                                        <h3 class="font-600">Questões Frequentes</h3>
                                    </div>
                                </div><!-- end col -->
                            </div><!-- end row -->

                            <div class="row m-t-40">
                                <div class="col-md-6">
                                    <div class="p-20 p-t-0">
                                        <!-- Question/Answer -->
                                        <div class="faq-box">
                                            <h4 class="question" data-wow-delay=".1s">What is Lorem Ipsum?</h4>
                                            <p class="answer">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                                        </div>

                                        <!-- Question/Answer -->
                                        <div class="faq-box">
                                            <h4 class="question">Why use Lorem Ipsum?</h4>
                                            <p class="answer">Lorem ipsum dolor sit amet, in mea nonumes dissentias dissentiunt, pro te solet oratio iriure. Cu sit consetetur moderatius intellegam, ius decore accusamus te. Ne primis suavitate disputando nam. Mutat convenirete.</p>
                                        </div>

                                        <!-- Question/Answer -->
                                        <div class="faq-box">
                                            <h4 class="question">How many variations exist?</h4>
                                            <p class="answer">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                                        </div>

                                        <!-- Question/Answer -->
                                        <div class="faq-box">
                                            <h4 class="question">What is Lorem Ipsum?</h4>
                                            <p class="answer">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                                        </div>
                                    </div>
                                </div>
                                <!--/col-md-5 -->

                                <div class="col-md-6">
                                    <div class="p-20 p-t-0">
                                        <!-- Question/Answer -->
                                        <div class="faq-box">
                                            <h4 class="question">Is safe use Lorem Ipsum?</h4>
                                            <p class="answer">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                                        </div>

                                        <!-- Question/Answer -->
                                        <div class="faq-box">
                                            <h4 class="question">When can be used?</h4>
                                            <p class="answer">Lorem ipsum dolor sit amet, in mea nonumes dissentias dissentiunt, pro te solet oratio iriure. Cu sit consetetur moderatius intellegam, ius decore accusamus te. Ne primis suavitate disputando nam. Mutat convenirete.</p>
                                        </div>

                                        <!-- Question/Answer -->
                                        <div class="faq-box">
                                            <h4 class="question">License &amp; Copyright</h4>
                                            <p class="answer">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                                        </div>

                                        <!-- Question/Answer -->
                                        <div class="faq-box">
                                            <h4 class="question">Is safe use Lorem Ipsum?</h4>
                                            <p class="answer">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                                        </div>
                                    </div>
                                </div>
                                <!--/col-md-5-->
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- container -->
        </div>
        @include('layouts.components.footer')
    </div>
@endsection
