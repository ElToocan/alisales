<form action="{{ $action }}" method="POST">
    @csrf
    @method($method)

    <div class="card card-primary">
        <div class="card-header">
            <h3> {{$title}} </h3>
        </div>
    </div>

    {{ $slot }}

</form>
