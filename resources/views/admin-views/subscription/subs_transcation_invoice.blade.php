@extends('layouts.admin.app')


@section('title', translate('Invoice'))
@section('content')
<?php
use App\Models\BusinessSetting;
$company_phone =BusinessSetting::where('key', 'phone')->first()->value;
$company_email =BusinessSetting::where('key', 'email_address')->first()->value;
$company_name =BusinessSetting::where('key', 'business_name')->first()->value;
$company_address =BusinessSetting::where('key', 'address')->first()->value;
$logo =BusinessSetting::where('key', 'logo')->first()->value;
$company_mobile_logo = $logo;
$company_links = json_decode(BusinessSetting::where('key','landing_page_links')->first()->value, true);
?>

    <div class="content container-fluid initial-38">
        <div class="row justify-content-center" id="printableArea">
            <div class="col-md-12">
                <div class="text-center">
                    <input type="button" class="btn btn-primary non-printable" onclick="printDiv('printableArea')"
                        value="{{ translate('Proceed,_If_printer_is_ready.') }}" />
                    <a href="{{ url()->previous() }}" class="btn btn-danger non-printable">{{ translate('Back') }}</a>
                </div>
                <hr class="non-printable">
                <div class="initial-38-1 __trx-print">
                    <div class="pt-3 text-center">
                        <img src="{{asset('/storage/app/public/business/'.$logo)}}" alt="{{$company_name}}" class="initial-38-2" >
                    </div>

                    {{-- <div class="pt-3 text-center mb-3 pb-1">
                        <img src="{{dynamicAsset('/public/assets/admin/img/success_image 2.png')}}" class="initial-38-2" alt="">
                    </div> --}}

                    <div class="text-center pt-2 mb-3">
                        {{-- <h1 class="initial-38-3" >{{ translate('messages.Transaction_Sucessfull') }}</h1> --}}
                        <h4 class="initial-38-4"> {{ translate('messages.for') }}
                            {{ $subscription_transaction->package->package_name }} {{ translate('messages.Package') }}</h4>

                        <h4> <span class="text--base">{{ translate('Purches_Status: ') }}</span> {{ translate('Subscribed.') }}</h4>
                        <h3 class="initial-38-3 name my-3"> {{$restaurant->vendor->f_name ?? null}} {{$restaurant->vendor->l_name ?? null}}</h3>
                        <h5 class="pb-4 pt-2 mv-2">
                            {{ translate('Thank_You_for_transcation_with') }} &nbsp; <span class="text--base">{{ $company_name }}</span> &nbsp; {{ translate('messages.in') }}
                            {{ $subscription_transaction->package->package_name }} {{ translate('messages.Package') }}
                        </h5>
                    </div>
                    <table class="table __subscribe-table table-borderless mt-3" style="color: rgb(105, 101, 101)">
                        <thead>
                            <tr>
                                <th>
                                    <span>{{ translate('Transaction_ID') }}</span>
                                </th>
                                <th >
                                    <span>{{ translate('Package_Name') }}</span>
                                </th>
                                <th>
                                    <span>{{ translate('Transaction_Time') }}</span>
                                </th>
                                <th>
                                    <span>{{ translate('Validity_Time') }}</span>
                                </th>
                                <th>
                                    <span>{{ translate('Amount') }}</span>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <span>{{ $subscription_transaction->id }}</span>
                                </td>
                                <td>
                                    <span>{{ $subscription_transaction->package->package_name }}</span>
                                </td>
                                <td>
                                    <span>{{ $subscription_transaction->created_at->format('d M Y') }}</span>
                                </td>
                                <td>
                                    <span>{{ $subscription_transaction->validity }} {{ translate('messages.Days') }}</span>
                                </td>
                                <td>
                                    <span class="__txt-nowrap">
                                        {{ \App\CentralLogics\Helpers::format_currency($subscription_transaction->paid_amount)}}
                                    </span>
                                </td>
                            </tr>
                        </tbody>

                    </table>

                    <div class="text-center my-5 py-4">
                        {{ translate('If_you_require_any_assistance_or_have_feedback_or_suggestions_about_our_site,_you_can_email_us_at') }}
                        <a href="mailto:{{$company_email}}" style="text-decoration: none; color: inherit;">{{translate('messages.email')}}: {{$company_email}}</a>
                    </div>

                    <div class="d-block text-center mt-3">
                        @php($social_media = \App\Models\SocialMedia::active()->get())

                        @if(isset($social_media))
                                @foreach ($social_media as $item)
                                <div style="display: inline-block;" >
                                    <a href="{{$item->link}}" target=”_blank”>
                                    <img src="{{dynamicAsset('public/assets/admin/img/'.$item->name.'.png')}}" alt="" style="height: 14px; width:14px;object-fit:contain">
                                    </a>
                                </div>
                                @endforeach
                        @endif
                        @if ($company_links['web_app_url_status'])
                        <div class="mb-3 mt-2" style="font-weight: 400;font-size: 11px;line-height: 22px;color: #242A30;">
                            <a href="{{$company_links['web_app_url']}}" style="text-decoration: none; color: inherit;">{{$company_links['web_app_url']}}</a></div>
                        @endif
                            <div style="font-weight: 400;font-size: 11px;line-height: 22px;color: #242A30;">
                                <span style="margin-inline-end:5px;">
                                    <a href="tel:{{$company_phone}}" style="text-decoration: none; color: inherit;">{{translate('messages.phone')}}: {{$company_phone}}</a>
                                </span>
                                <span>
                                    <a href="mailto:{{$company_email}}" style="text-decoration: none; color: inherit;">{{translate('messages.email')}}: {{$company_email}}</a>
                                </span>
                            </div>
                            <div style="font-weight: 400;font-size: 11px;line-height: 22px;color: #242A30;">{{$company_address}}</div>
                            <span style="font-weight: 400;font-size: 10px;line-height: 22px;color: #242A30;">{{translate('messages.All_copy_right_reserved',['year'=>date('Y'),'title'=>$company_name])}}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

@push('script')
    <script>
        "use strict";
        function printDiv(divName) {

            if($('html').attr('dir') === 'rtl') {
                $('html').attr('dir', 'ltr')
                let printContents = document.getElementById(divName).innerHTML;
                let originalContents = document.body.innerHTML;
                document.body.innerHTML = printContents;
                $('.initial-38-1').attr('dir', 'rtl')
                window.print();
                document.body.innerHTML = originalContents;
                $('html').attr('dir', 'rtl')
                location.reload();
            }else{
                let printContents = document.getElementById(divName).innerHTML;
                let originalContents = document.body.innerHTML;
                document.body.innerHTML = printContents;
                window.print();
                document.body.innerHTML = originalContents;
                location.reload();
            }

        }
    </script>
@endpush
