@extends('adminlte::auth.login')

@section('auth_footer')
    @parent
    @if(config('app.env')==='local')
        <a class="btn btn-danger" href="{{route('autologin',['email'=>'test@example.com'])}}">Auto login</a>
    @endif
@endsection
