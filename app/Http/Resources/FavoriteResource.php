<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use Carbon\Carbon;
use App\Models\RatingReview;



class FavoriteResource extends JsonResource
{
    public function toArray($request)
    {
        $myDate=$this->created_at->format('d-m-Y');
        return [
                    'fav_id'=>$this->id,
                    'id'=>$this->id,
                    'date'=>$myDate,
                    'productName'=>$this->product->name,
                    'productPrice'=>$this->product->product_formattedprice,
                    'slug'=>$this->product->slug,
                    'productImage'=>$this->product->productgallery[0]->imagepath,
                    'product_Id'=>$this->product->id,
                    'user_id'=>$this->user->id,
                    'username'=>$this->user->name,
                    'useremail'=>$this->user->email,
                    // 'status'=>$this->status,
                    // 'visibility'=>$this->visibility,
        ];
    }
}
