<title>Plataforma Educativa</title>
@extends('layouts.app')

@section('content')


<div class="container">
@if(Session::has('Mensaje'))

<div class="alert alert-success" role="alert">
{{Session::get('Mensaje')}}
</div>
@endif

<center>
<form class="navbar-form navbar-center" role="search">
	<div class="form-group">
		<input type="text" class="form-control" placeholder="buscar" name="">
	</div>

	<a href="{{ url('Tareas/index2') }}" class="btn btn-success ">Tarea</a>

	<a href="{{ url('Calificaciones/create') }}" class="btn btn-success "> Mostrar Calificaciones</a>
<br/>
</center>
{{$Tareas->links()}}

</div>
@endsection