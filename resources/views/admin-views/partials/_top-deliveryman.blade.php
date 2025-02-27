<!-- Header -->
<div class="card-header">
    <h5 class="card-header-title">
        <img src="{{dynamicAsset('/public/assets/admin/img/dashboard/top-deliveryman.png')}}" alt="dashboard" class="card-header-icon">
        <span>{{ translate('Top_Deliveryman') }}</span>
    </h5>
    @php($params=session('dash_params'))
    @if($params['zone_id']!='all')
        @php($zone_name=\App\Models\Zone::where('id',$params['zone_id'])->first()->name)
    @else
    @php($zone_name=translate('All'))
    @endif
    <span class="badge badge-soft--info my-2">{{translate('messages.zone')}} : {{$zone_name}}</span>
</div>
<!-- End Header -->

<!-- Body -->
<div class="card-body">
    <div class="row g-2">
        @foreach($top_deliveryman as $key=>$item)
            <div class="col-md-4 col-6 redirect-url" data-url="{{route('admin.delivery-man.preview',[$item['id']])}}">
                <div class="grid-card top--deliveryman cursor-pointer">
                    <div class="text-center py-3">
                        <img class="initial-41 onerror-image" data-onerror-image="{{dynamicAsset('public/assets/admin/img/160x160/img1.jpg')}}"
                             src="{{ \App\CentralLogics\Helpers::onerror_image_helper(
                            $item['image'] ?? '',
                            dynamicStorage('storage/app/public/delivery-man').'/'.$item['image'] ?? '',
                            dynamicAsset('public/assets/admin/img/160x160/img1.jpg'),
                            'delivery-man/'
                        ) }}" alt="{{$item['f_name']}}" >
                    </div>
                    <div class="text-center mt-2">
                        <h5 class="name m-0">{{$item['f_name'] ?? translate('messages.Not_exist')}}</h5>
                        <h5 class="info m-0 mt-1"><span class="text-warning">{{$item['order_count']}}</span> {{ translate('Orders') }}</h5>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
<!-- End Body -->
