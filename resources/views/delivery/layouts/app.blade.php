<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- CSRF Token -->
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <title>{{ config('app.name', 'Laravel') }}</title>

  <!-- Scripts -->
  <script src="{{ asset('delivery/js/app.js') }}"></script>

  <!-- Fonts -->
  <link rel="dns-prefetch" href="//fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

  <!-- Styles -->
  <link href="{{ asset('delivery/css/app.css') }}" rel="stylesheet"/>
</head>

<body class="bg-gray-100">
  <header class="bg-white">
    <x-container class="flex items-center h-16">
      <span name="logo" class="w-36">LOGO</span>
      <nav class="flex-1 space-x-2 font-semibold">
        <a href="/" class="px-2">Inicio</a>
        <a href="/" class="px-2">Categorias</a>
        <a href="/" class="px-2">Cozinhas</a>
        <a href="/" class="px-2">Restaurantes</a>
      </nav>
    </x-container>
  </header>
  @yield('content')
</body>

</html>
