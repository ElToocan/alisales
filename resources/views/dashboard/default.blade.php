@extends('layout.default')

@section('title', 'Dashboard')

@section('content_header')
    <h1>{{__('Dashboard')}}</h1>
@stop

@section('content')
    <div class="row">
        <div class="col-12">
            <x-adminlte-card> {{__('You are logged in !')}} </x-adminlte-card>
        </div>
    </div>
@stop

