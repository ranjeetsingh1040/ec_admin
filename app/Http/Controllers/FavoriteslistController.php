<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Favoriteslist;
use Illuminate\Support\Facades\Auth;
use Exception;
use App\Http\Resources\FavoriteResource;

class FavoriteslistController extends Controller
{
    //

    public function index()
    {
        $fav = Favoriteslist::with('product','user')->where('user_id', Auth::id())->orderBy('id', 'DESC')->paginate(20);
        // $fav = $fav->paginate(5);
        return FavoriteResource::collection($fav);
    }

    public function store(Request $request, $productid)
    {
        try {
            if (Favoriteslist::where('user_id', Auth::id())->where('product_id', $productid)->first()) {
                return response()->json(['success' => false, 'message' => 'Product Already Added'], 200);
            }
            $fav = new Favoriteslist;
            $fav->user_id = Auth::id();
            $fav->product_id = $productid;
            $fav->save();
        } catch (Exception $e) {
            //   dd($e->getMessage());
        }
        return response()->json(['success' => true, 'message' => 'Added Successfully'], 200);
    }
    public function destroy($favid)
    {
        $fav = Favoriteslist::where('user_id', Auth::id())->where('id', $favid)->delete();
        return response()->json(['success' => true, 'message' => 'Removed Successfully'], 200);
    }
    public function favorites(Request $request)
    {
        $product_id = $request->input('product_id');
        $user_id = Auth::id();
        $favorite = Favoriteslist::where('product_id', $product_id)
            ->where('user_id', $user_id)
            ->first();

        if ($favorite) {
            $favorite->delete();
            return response()->json(['success' => true, 'message' => 'Product removed from favorites']);
        } else {
            $favorite = new Favoriteslist;
            $favorite->product_id = $product_id;
            $favorite->user_id = $user_id;
            $favorite->save();
            return response()->json(['success' => true, 'message' => 'Product added to favorites']);
        }
    }
}
