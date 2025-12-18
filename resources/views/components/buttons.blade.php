
<a class="btn btn-{{ $class }}" href="{{ route(Str::lower(Str::plural($model->getClassName())).'.'.$route , $model) }}" > <i class="fa fa-{{$icon}}"> </i> </a>


