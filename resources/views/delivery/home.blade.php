@extends('delivery.layouts.app')



@section('content')
<x-container class="py-12">
  <h2 class="font-semibold text-lg">Escolha uma das categorias</h2>
</x-container>

<script>
  $(function() {
    $.ajax({
      url: 'https://fastdelivery-admin.lojadodesenvolvedor.com/api/v1/config',
      success: (data) => {
        console.log({
          data
        })
      }
    })
  })
</script>

@endsection
