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
                            @foreach($item['son'] as $value)
                                <div class="col-sm-2 text-center">
                                    <a href="https://www.taobao.com" title="" target="_blank">{{$value['name']}}</a>
                                </div>
                            @endforeach
                        @endif
                        @if(count($links_list)>5)
                            <div class="col-sm-2 text-center">
                                <a class="btn btn-outline-success btn-sm" title="更多" target="_blank"
                                   style="font-size: 10px;">更多>></a>
                            </div>
                        @endif
                    </div>
                @endforeach
            @endif
        </article>
    </div>
@endsection
@section("my-script")
    <script>
        $(function () {
            $('#myTab li:first-child a').tab('show');
        })
    </script>
@endsection
