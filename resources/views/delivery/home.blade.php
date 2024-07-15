@extends('delivery.layouts.app')

@section('content')
<x-container class="py-12 space-y-4">
  <h2 class="font-semibold text-lg">Escolha uma das categorias</h2>
  <ul class="flex space-x-6" data-categories>
    <li class="w-32 h-32 bg-gray-200 animate-pulse rounded-md overflow-hidden" />
    <li class="w-32 h-32 bg-gray-200 animate-pulse rounded-md overflow-hidden" />
    <li class="w-32 h-32 bg-gray-200 animate-pulse rounded-md overflow-hidden" />
    <li class="w-32 h-32 bg-gray-200 animate-pulse rounded-md overflow-hidden" />
    <li class="w-32 h-32 bg-gray-200 animate-pulse rounded-md overflow-hidden" />
  </ul>
</x-container>

<script type="module">

</script>

@endsection
