@extends('layout.default')

@section('title','Customer Show')

@section('content_header')
    <h1> customer n°{{ $customer->id }}</h1>
@stop

@section('content')

    <x-adminlte-card>


        <form method="post" action="{{  route('customers.update', $customer) }}">

            @csrf
            @method('delete')

            <x-adminlte-input name="name" type="text" value="{{ $customer->name }}" label="{{__('Name') }}"
                              disabled></x-adminlte-input>

            <x-adminlte-input name="address" type="text" value="{{ $customer->address }}" label="{{__('Adress')}}"
                              disabled></x-adminlte-input>

            <x-adminlte-input name="postalCode" type="text" value="{{$customer->postalCode}}"
                              label="{{__('Postal code')}}" disabled></x-adminlte-input>

            <x-adminlte-input name="city" type="text" value="{{$customer->city}}" label="{{__('City')}}"
                              disabled></x-adminlte-input>

            <x-adminlte-input name="email" type="text" value=" {{$customer->email }}" label="{{__('Email')}}"
                              disabled></x-adminlte-input>

            <x-adminlte-input name="url" type="text" value=" {{ $customer->url }} " label="{{__('Url')}}"
                              disabled></x-adminlte-input>

            <x-adminlte-button type="submit" theme="danger" icon="fa fa-trash"
                               onclick="return confirm('Are you sure you want to destroy this customer ?')"></x-adminlte-button>

            <a class="btn btn-primary" href="{{ route('customers.edit',$customer) }}" > <i class="fa fa-edit"></i> </a>

            <a class="btn btn-primary " href="{{ route('customers.index') }}">{{__('Back')}}</a>

    </x-adminlte-card>

@endsection
