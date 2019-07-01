@extends('base.layout')
@section("content")
    <div class="container">
        <div class="row logo text-center" style="padding-top:100px;">
            <a class="mt-center" href="/" title="PFSoSo主页">
                <h2><b>PFSoSo</b></h2>
            </a>
        </div>
        <div class="row sotab nav nav-tabs" id="myTab" role="tablist">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                @if(count($engine_list)>0)
                    @foreach($engine_list as $item)
                        <li class="nav-item"><a class="nav-link" id="active_{{$item->id}}-tab" data-toggle="tab"
                                                href="#active_{{$item->id}}"
                                                role="tab" aria-controls="home" aria-selected="true">{{$item->name}}</a>
                        </li>
                    @endforeach
                @endif
            </ul>
        </div>
        <div class="row search text-center" id="nav-tabContent">
            <div class="tab-content">
                @if(count($engine_list)>0)
                    @foreach($engine_list as $item)
                        <div class="tab-pane fade mt-center" id="active_{{$item->id}}" role="tabpanel"
                             aria-labelledby="home-tab">
                            <form class="mt-center" action="{{$item->api}}" target="_blank">
                                <input type="text" id="{{$item->engine_sn}}" class="index-search-input"
                                       name="{{$item->params_name}}"
                                       size="30"
                                       placeholder="{{$item->name}}一下" autocomplete="off">
                                <span class="addbtn"><button type="submit"
                                                             class="index-search-button"
                                                             data-content="{{$item->engine_sn}}">{{$item->name}}一下</button></span>
                                <input type="hidden" id="hid" name="tn" value="pfinal.club">
                            </form>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
        <div class="row" style="height: 50px;"></div>
        <article class="mt-center article">
            @if(count($links_list)>0)
                @foreach($links_list as $item)
                    <div class="row">
                        <div class="col-sm-2 text-center">
                            <strong>{{$item[0]['name']}}</strong>
                        </div>
                        @if(isset($item['son']))
                            @foreach($item['son'] as $k=>$value)
                                @if($k<4)
                                    <div class="col-sm-2 text-center">
                                        <a href="{{$value['url']}}" title="" target="_blank">{{$value['name']}}</a>
                                    </div>
                                @else
                                    @break
                                @endif
                            @endforeach
                        @endif
                        @if(isset($item['son']) && count($item['son'])>=4)
                            <div class="col-sm-2 text-center">
                                <div class="dropdown show">
                                    <a class="btn btn-outline-success btn-sm dropdown-toggle" style="font-size: 10px;"
                                       href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown"
                                       aria-haspopup="true" aria-expanded="false">
                                        更多
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                            @foreach(array_splice($item['son'],4) as $ite)
                                                <a href="{{$ite['url']}}" class="dropdown-item">{{$ite['name']}}</a>
                                            @endforeach
                                    </div>
                                </div>
                            </div>
                        @endif
                    </div>
                @endforeach
            @endif
        </article>
    </div>
    <div class="container">
        <div class="row footer">
            <div class="mt-center">
                Copyright © 陇ICP备19000188号-1 <img src="{{asset('img/ba.png')}}"> - <a
                        href="http://pfinal.club/">衿若科技</a>
                <br>
            </div>
        </div>
    </div>
@endsection
@section("my-script")
    <script>
        $(function () {
            $('#myTab li:first-child a').tab('show');
        });
    </script>
@endsection
