@extends('layouts.installer')

@section('content')
    <!-- Title -->
    <div class="text-center text-white mb-4">
        <h2>Instalação do software FastDelivery</h2>
        <h6 class="fw-normal">Prossiga passo a passo com dados adequados de acordo com as instruções</h6>
    </div>

    <!-- Progress -->
    <div class="pb-2 px-2 px-sm-5 mx-xl-4">
        <div class="progress cursor-pointer" role="progressbar" aria-label="Instalação do software FastDelivery"
             aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" data-bs-toggle="tooltip"
             data-bs-placement="top" data-bs-custom-class="custom-progress-tooltip" data-bs-title="Etapa de introdução!"
             data-bs-delay='{"hide":1000}'>
            <div class="progress-bar" style="width: 0%"></div>
        </div>
    </div>

    <!-- Card -->
    <div class="card mt-4">
        <div class="p-4 my-md-3 mx-xl-4 px-md-5">
            <p class="text-center mb-4 top-info-text">Antes de iniciar o processo de instalação, colete essas informação. 
                Sem essas informações, você não poderá concluir o processo de instalação</p>

            <div class="bg-light p-4 rounded mb-4">
                <div class="d-flex justify-content-between gap-1 align-items-center flex-wrap mb-4 pb-sm-3">
                    <h6 class="fw-bold text-uppercase fs m-0 letter-spacing" style="--fs: 14px">
                    Informações obrigatórias do banco de dados
                    </h6>
                    <a href="https://docs.google.com/document/d/1Bx9o4sVmzpsPjKbLpMXuFa55ClzA1zkfGdIDdeURzz8/edit?usp=sharing"
                       target="_blank">Onde obter essas informações?</a>
                </div>

                <div class="px-md-4 pb-sm-3">
                    <div class="row gy-sm-5 g-4">
                        <div class="col-sm-6">
                            <div class="d-flex gap-4 align-items-center flex-wrap">
                                <img
                                    src="{{dynamicAsset('public/assets/installation')}}/assets/img/svg-icons/database-name.svg"
                                    alt="">
                                <div>Nome do banco de dados</div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="d-flex gap-4 align-items-center flex-wrap">
                                <img
                                    src="{{dynamicAsset('public/assets/installation')}}/assets/img/svg-icons/database-password.svg"
                                    alt="">
                                <div>Senha do banco de dados</div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="d-flex gap-4 align-items-center flex-wrap">
                                <img
                                    src="{{dynamicAsset('public/assets/installation')}}/assets/img/svg-icons/database-username.svg"
                                    alt="">
                                <div>Nome de usuário do banco de dados</div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="d-flex gap-4 align-items-center flex-wrap">
                                <img
                                    src="{{dynamicAsset('public/assets/installation')}}/assets/img/svg-icons/database-hostname.svg"
                                    alt="">
                                <div>Nome do host do banco de dados</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="text-center">
                <p>Você está pronto para iniciar o processo de instalação?</p>

                <a href="{{ route('step1',['token'=>bcrypt('step_1')]) }}" class="btn btn-dark px-sm-5">
                    Iniciar</a>
            </div>
        </div>
    </div>
@endsection
