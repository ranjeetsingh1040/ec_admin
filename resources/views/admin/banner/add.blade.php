@extends('layouts.admin.layout')
@section('content')
    @include('admin.review.success')

    <div class="flex items-center justify-center w-full my-10">
        <form method="post" action="{{ url('/admin/banner/add') }}" enctype="multipart/form-data">
            @csrf
            {{-- @if (Session::has('success'))
                <div class="alert alert-success">{{ Session::get('success') }}</div>
            @endif --}}
            <label class="block mb-2 text-sm font-medium text-gray-900 dark:text-white" for="large_size">Banner image</label>
            <input
                class="block w-full text-lg text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 dark:text-gray-400 focus:outline-none dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400"
                id="large_size" type="file" name="bannerImage">
				<p class="text-xs text-red-600"> {{$errors->first('bannerImage')}}</p> 
            <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 my-5 px-4 rounded">
                Button
            </button>
        </form>
    </div>
@endsection
