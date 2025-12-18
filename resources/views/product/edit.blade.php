@extends('layout.default')

@section('title','Product Edit')

@section('content_header')
    <h1> product n°{{ $product->id }}</h1>
@stop

@section('content')

    <x-adminlte-card>


        <form method="post" action="{{  route('products.update', $product) }}">

            @csrf
            @method('put')

            <x-adminlte-input name="name" type="text" value="{{ $product->name }}" label="{{__('Name') }}"
                              ></x-adminlte-input>

            <x-adminlte-input name="reference" type="text" value="{{ $product->reference }}" label="{{__('Reference')}}"
                              ></x-adminlte-input>

            <x-adminlte-input name="description" type="text" value="{{$product->description}}"
                              label="{{__('Description')}}" ></x-adminlte-input>

            <x-adminlte-input name="purchasePrice" type="text" value="{{$product->purchasePrice}}" label="{{__('Purchase price')}}"
                              ></x-adminlte-input>

            <x-adminlte-input name="sellingPrice" type="text" value=" {{$product->sellingPrice }}" label="{{__('Selling price')}}"
                              ></x-adminlte-input>

            <x-adminlte-select2 name="vat_id" label="Vat rate">
                @foreach($vats as $vat)
                    <option value="{{$vat->id}}"> {{ $vat->categorie }} {{ ' : ' }}{{  $vat->rate }} {{ '%' }}</option>
                @endforeach
            </x-adminlte-select2>

            <x-adminlte-button type="submit" theme="secondary" label="{{__('Update')}}" ></x-adminlte-button>


            <a class="btn btn-primary " href="{{ route('products.index') }}">{{__('Back')}}</a>

    </x-adminlte-card>

@endsection
