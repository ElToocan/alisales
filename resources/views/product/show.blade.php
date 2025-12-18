@extends('layout.default')

@section('title','product Show')

@section('content_header')
    <h1> product n°{{ $product->id }}</h1>
@stop

@section('content')

    <x-adminlte-card>


        <form method="post" action="{{  route('products.destroy', $product) }}">

            @csrf
            @method('delete')

            <x-adminlte-input name="name" type="text" value="{{ $product->name }}" label="{{__('Name') }}"
                              disabled></x-adminlte-input>

            <x-adminlte-input name="reference" type="text" value="{{ $product->reference }}" label="{{__('Reference')}}"
                              disabled></x-adminlte-input>

            <x-adminlte-input name="description" type="text" value="{{$product->description}}"
                              label="{{__('Description')}}" disabled></x-adminlte-input>

            <x-adminlte-input name="purchasePrice" type="text" value="{{$product->purchasePrice}}" label="{{__('Purchase price')}}"
                              disabled></x-adminlte-input>

            <x-adminlte-input name="sellingPrice" type="text" value=" {{$product->sellingPrice }}" label="{{__('Selling price')}}"
                              disabled></x-adminlte-input>

            <x-adminlte-input name="vatRate" type="text" value=" {{ App\Models\Vat::find($product->vat_id)->rate }} " label="{{__('Vat rate')}}"
                              disabled></x-adminlte-input>


            <x-adminlte-button type="submit" theme="danger" icon="fa fa-trash"
                               onclick="return confirm('Are you sure you want to destroy this product ?')"></x-adminlte-button>


            <a class="btn btn-primary " href="{{ route('products.index') }}">{{__('Back')}}</a>

    </x-adminlte-card>

@endsection
