@extends('layouts.admin.layout')
@section('content')
    @include('admin.review.success')

    <div class="flex items-center justify-between pt-2 pb-4 border-b" style="border-color: 1px solid #f3f3f3;">
        <h2 class="text-base text-gray-700 font-semibold">Banner</h2>
        <a href="{{ url('/admin/banner/add') }}" class="bg_orange text-white text-sm px-4 py-1 rounded-full">Add image</a>
    </div>


    <div class="product_table seller_table bg-white">
        <div>
            @if (!$banner->isEmpty())
                <table class="w-full">
                    <thead>
                        <tr>
                            <!-- <th width="5%"></th> -->
                            <th width="5%">id</th>
                            <th width="70%">image</th>
                            <th width="10%">status</th>
                            <th width="5%">Change</th>
                            <th width="5%">Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($banner as $value)
                            <tr>

                                <!-- <td class="px-3 py-3"><input type="checkbox"></td> -->
                                <td class="px-3 py-3">{{ $value->id }}</td>
                                {{-- <td class="px-2 py-1"><img src="{{ url($ratingReview->product->productgallery[0]->thumbnailimage) }}" class="w-16 h-10"></td> --}}
                                <td class="px-2 py-2"><img src="{{ url($value->bannerImage) }}"></td>
                                <td>
                                    @if ($value->status == 1)
                                        Active
                                    @else
                                        Deactive
                                    @endif
                                </td>
                                <td class="px-3 py-3">
                                    <form method="post" action="{{ url('/admin/banner/change') }}/{{ $value->id }}"
                                        enctype="multipart/form-data">
                                        @csrf
                                        <input type="file" name="changeImage">
										<p class="text-xs text-red-600"> {{$errors->first('changeImage')}}</p> 
                                        <button type="submit"
                                            class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-full">
                                            Change
                                        </button>
                                    </form>
                                </td>

                                <td class="px-3 py-3">
									<a href="{{url('admin/banner/delete')}}/{{$value->id}}">
										<button type="button" class="focus:outline-none text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-900">Delete</button>
									</a></div>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            @else
                <h1 class="bg-red-300">add image first</h1>
            @endif
        </div>
    </div>
@endsection
