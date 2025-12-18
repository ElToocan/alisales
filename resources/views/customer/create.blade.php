@extends('layout.default')

@section('title','Customer create')

@section('content_header')
    <h1> {{__('Customer create')}} </h1>
@stop

@section('content')
    <x-adminlte-card>
        <form action="{{route('customers.store')}}" method="post">
            <label>{{__('Create a new customer')}}</label>
            @csrf

            <x-adminlte-input name="name" type="text" placeholder="Dupont" label="{{__('Name') }}"></x-adminlte-input>

            <x-adminlte-input name="address" type="text" placeholder="13 Rue de la paix" label="{{__('Adress')}}"></x-adminlte-input>

            <x-adminlte-input name="postalCode" type="text" placeholder="75000" label="{{__('Postal code')}}"></x-adminlte-input>

            <x-adminlte-input name="city" type="text" placeholder="Paris" label="{{__('City')}}"></x-adminlte-input>

            <x-adminlte-input name="email" type="text" placeholder="mail@exemple.com" label="{{__('Email')}}"></x-adminlte-input>

            <x-adminlte-input name="url" type="text" placeholder="https://free.fr" label="{{__('Url')}}"></x-adminlte-input>

            <x-adminlte-button type="submit" theme="success" label="{{__('Add')}}" ></x-adminlte-button>


        </form>

        <a class="btn btn-primary mt-3" href="{{ route('customers.index') }}">{{__('Back')}}</a>

    </x-adminlte-card>

@endsection

