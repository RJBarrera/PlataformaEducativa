<title>Plataforma Educativa</title>
@extends('layouts.app')

@section('content')


<div class="container">
@if(Session::has('Mensaje'))

<div class="alert alert-success" role="alert">
{{Session::get('Mensaje')}}
</div>
@endif




</form>
<table class="table table-light table-hover">

	<thead class="thead-light">

	

			<br/>
			
		<tr>

			<th>Id</th>
			<th>Nombre de la tarea</th>
			<th>Carga Maestro</th>
			<th>Acciones</th>
			
		</tr>
	</thead>

	<tbody>
	@foreach($Tareas as $tareas)
		<tr>
			<td>{{ $tareas->id}}</td>
			<td>{{ $tareas->nombretarea}}</td>
			<td>{{ $tareas->intcargarmaestro}}</td>
		
		
		<td>

			<!--Boton para llamar la pantalla Editar Usuario-->
				<a class="btn btn-warning" href="{{ url('/Tareas/'.$tareas->id.'/edit') }}">
				Editar	
				</a> 

			| 

			
			<!--Boton para Borrar Usuario-->
			<form method="post" action="{{ url('/Tareas/'.$tareas->id) }}" style="display:inline;">
				{{csrf_field() }}
				{{ method_field('DELETE') }}
				<button class="btn btn-danger" type="submit" onclick="return confirm('¿Esta seguro que desea borrar?')">Borrar</button>


				</form>
			
		</td>

		</tr>
	@endforeach
	</tbody>

</table>
<br/>
<br/>
<br/>
<br/>
<center>
<form class="navbar-form navbar-center" role="search">
	<div class="form-group">
		<input type="text" class="form-control" placeholder="buscar" name="">
	</div>

	<a href="{{ url('Tareas/create') }}" class="btn btn-success ">Crear Tarea</a>

	<a href="{{ url('Calificaciones/create') }}" class="btn btn-success "> Eliminar tarea</a>
</center>
<br/>
{{$Tareas->links()}}

</div>
@endsection