<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\CategoryProduct;

class SimilarproductController extends Controller
{
    //
    public function getsimilarproduct($id)
    {
        $category=CategoryProduct::with('product')->where('category_id',$id)->get();
        return $category;
    }
}
