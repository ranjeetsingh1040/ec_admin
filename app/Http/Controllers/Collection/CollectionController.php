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

class CollectionController extends Controller
{
    use ProductDelete_Process;

    public function addcollection(Request $request)
    {
        // return response()->json(['success' => true, 'message' => $request->all()], 200);
        try {
            $collection = new Collection();
            $collection->name = $request->name;
            $collection->user_id = auth()->user()->id;
            $collection->save();
            foreach ($request->collectionProductid as $item) {
                    $collectionproduct = new CollectionProduct();
                    $collectionproduct->collection_id = $collection->id;
                    $collectionproduct->product_id = $item;
                    $collectionproduct->save();
            }
            return response()->json(['success' => true, 'message' => 'Collection Create Successfully'], 200);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unprocessable Entity'], 422);
        }
    }
    public function getmyproducts(Request $request)
    {
        $products = Product::where('user_id', auth()->user()->id)->paginate(15);
        return ProductIndexResource::collection($products);
    }
    public function getCollectionProduct(Request $request, $sellerid)
    {
        $show = (int)$request->show;
        if ($show != 0) {
            $collection = Collection::with('collectionproduct')->where('user_id', $sellerid)->orderBy('id', 'DESC')->paginate($show);
        } else {
            $collection = Collection::with('collectionproduct')->where('user_id', $sellerid)->orderBy('id', 'DESC')->paginate(15);
        }
        return $collection;
    }

    public function edit($collectionid)
    {
        $collection = Collection::with('collectionproduct')->where('id', $collectionid)->first();
        if (is_null($collection)) {
            return response()->json(['success' => false, 'message' => 'Unprocessable Entity'], 422);
        } elseif (auth()->user()->id != $collection->user_id) {
            return response()->json(['success' => false, 'message' => 'Forbidden'], 403);
        }
        return $collection;
    }
    public function editCollectionProduct($collectionid)
    {
        $collection = CollectionProduct::where('collection_id', $collectionid)->get();
        if (is_null($collection)) {
            return response()->json(['success' => false, 'message' => 'Unprocessable Entity'], 422);
        }
        return $collection;
    }

    public function update(Request $request, $collectionid)
    {
        // $rs = var_dump($request->collectionProductid);
        
        // $rs = explode(",",$request->collectionProductid);
        // return response()->json(['success' => 'test', 'message' => $rs], 200);
        $collection = Collection::find($collectionid);
        if (is_null($collection)) {
            return response()->json(['success' => false, 'message' => 'Unprocessable Entity'], 422);
        } elseif (auth()->user()->id != $collection->user_id) {
            return response()->json(['success' => false, 'message' => 'Forbidden'], 403);
        } else {
            $collection->name = $request->name;
            $collection->user_id = auth()->user()->id;
            $collection->save();
            $this->deleteCollectionProduct($collection->toArray());
            foreach ($request->collectionProductid as $item) {
                // return response()->json(['success' => true, 'message' => $item], 200);
                $collectionproduct = new CollectionProduct();
                $collectionproduct->collection_id = $collection->id;
                $collectionproduct->product_id = $item;
                $collectionproduct->save();
            }
            return response()->json(['success' => true, 'message' => 'Collection Update Successfully'], 200);
        }
    }

    public function destroy($id)
    {
        try {

            $collection = Collection::where('id', $id)->first();
            $collectionid = $collection->where('id', $id)->pluck('id')->toArray();
            if (is_null($collection)) {
                return response()->json(['success' => false, 'message' => 'Unprocessable Entity111'], 422);
            } elseif (auth()->user()->id != $collection->user_id) {
                return response()->json(['success' => false, 'message' => 'Forbidden'], 403);
            } else {
                $this->deleteCollectionProduct($collectionid);
                $this->deleteCollection($collectionid);
                return response()->json(['success' => true, 'message' => 'Deleted Successfully'], 200);
            }
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Unprocessable Entity2222'], 422);
        }
    }
}
