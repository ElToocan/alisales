@extends('layout.default')

@section('title','clients')

@section('content_header')
    <h1>{{__('Customers')}}</h1>
@stop


@section('content')
    <x-adminlte-card>

        <a class="btn btn-success mb-3" href="{{ route('customers.create') }}"> {{ __('Add') }} <i class="fa fa-plus"></i> </a>

        {{-- Setup data for datatables --}}
        @php
            $heads = [
                __('Name'),
                __('Address'),
                __('Email'),
                __('Url'),
                __('------------')
            ];
        @endphp

        {{-- Minimal example / fill data using the component slot --}}
        <div class="row">
            <x-adminlte-datatable id="table1" :heads="$heads" class="table-hover table-bordered">
                @foreach($customers as $customer)
                    <tr>
                        <td> {{ $customer->name }} </td>
                        <td> <x-address>{{ $customer->address }} , {{ $customer->postalCode }} -  {{ $customer->city }} </x-address> </td>
                        <td><a href="mailto:{{ $customer->email }}">{{ $customer->email }}</a></td>
                        <td><a href="{{ $customer->url }}" target="_blank" >{{ $customer->url }}</a></td>
                        <td>
                            <div style="display: flex; gap: 10px;">
                                <x-buttons :model="$customer" :route="'edit'" :class="'primary'" :icon="'edit'"/>
                                <x-buttons :model="$customer" :route="'show'" :class="'warning'" :icon="'eye'"/>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </x-adminlte-datatable>
        </div>
    </x-adminlte-card>
@endsection
