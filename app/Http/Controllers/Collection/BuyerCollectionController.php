<?php

namespace App\Http\Controllers\Collection;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Resources\ProductIndexResource;
use App\Http\Resources\ProductResource;
use App\Models\Product;
use App\Models\Collection;
use App\Models\CollectionProduct;
use PhpParser\Node\Expr\New_;
use Exception;
use App\Traits\ProductDelete_Process;
use App\Models\User;
use App\Http\Resources\CollectionIndexResource;

class BuyerCollectionController extends Controller
{
    public function getCollection()
    {
        $collections = Collection::with('collectionproduct')->orderBy('id', 'DESC');
        $collections = $collections->paginate(12);
        return $collections;
    }
    public function getCollectionProduct($collectionID)
    {
        $collectionproducts = CollectionProduct::where('collection_id', $collectionID)->with('collection');
        $collectionproducts = $collectionproducts->paginate(12);
        // return $collectionproducts;
        return CollectionIndexResource::collection($collectionproducts);
    }
}
