@extends('layout.default')

@section('title','Customer Edit')

@section('content_header')
    <h1> customer n°{{ $customer->id }}</h1>
@stop

@section('content')


    <x-adminlte-card>


        <x-forms.form :action="route('customers.update',$customer )" method="PUT" :title="$customer->name">

            <x-forms.input :name="'name'" :type="'text'" :value="$customer->name" :label="'Name'" ></x-forms.input>
            <x-forms.input :name="'address'" :type="'text'" :value=" $customer->address " :label="'Address'"></x-forms.input>
            <x-forms.input :name="'postalCode'" :type="'number'" :value="$customer->postalCode" :label="'Postal code'"></x-forms.input>
            <x-forms.input :name="'city'" :type="'text'" :value="$customer->city" :label="'City'"></x-forms.input>
            <x-forms.input :name="'email'" :type="'email'" :value=" $customer->email " :label="'Email'"></x-forms.input>
            <x-forms.input :name="'url'" :type="'url'" :value=" $customer->url  " :label="'Url'"></x-forms.input>
            <input type="submit" class="btn btn-primary" value="Modifier" />
        </x-forms.form>

        <a class="btn btn-primary mt-3" href="{{ route('customers.index') }}">{{__('Back')}}</a>

    </x-adminlte-card>

@endsection
