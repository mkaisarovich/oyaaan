@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Your email verified successfully!</h1>
        <div>
            {{request()->all()}}
        </div>
    </div>
@endsection
