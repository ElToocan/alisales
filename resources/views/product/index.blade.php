@extends('layout.default')

@section('title',__('Products'))

@section('content_header')
    <h1>{{__('Products')}}</h1>
@stop


@section('content')
    <x-adminlte-card>

        <a class="btn btn-success mb-3" href="{{ route('products.create') }}"> {{ __('Add') }} <i class="fa fa-plus"></i> </a>

        {{-- Setup data for datatables --}}
        @php
            $heads = [
                __('Name'),
                __('Reference'),
                __('Description'),
                __('Purchase price'),
                __('Selling price'),
                __('Vat rate'),
                __('------------')
            ];
        @endphp

        {{-- Minimal example / fill data using the component slot --}}
        <div class="row">
            <x-adminlte-datatable id="table1" :heads="$heads">
                @foreach($products as $product)
                    <tr>
                        <td> {{ $product->name }} </td>
                        <td> {{ $product->reference }} </td>
                        <td> {{ $product->description }} </td>
                        <td> {{ $product->purchasePrice }} </td>
                        <td> {{ $product->sellingPrice }} </td>
                        <td>{{ \App\Models\Vat::find($product->vat_id)->rate }}</td>
                        <td>
                            <a class="btn btn-primary" href="{{ route('products.edit',$product) }}" > <i class="fa fa-edit"></i> </a>
                            <a class="btn btn-warning mt-1" href="{{ route('products.show',$product) }}" > <i class="fa fa-eye"></i> <a>
                        </td>
                    </tr>
                @endforeach
            </x-adminlte-datatable>
        </div>
    </x-adminlte-card>
@endsection
