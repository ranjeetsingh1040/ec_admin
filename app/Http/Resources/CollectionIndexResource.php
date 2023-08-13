<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\Product_VariationsResource;
use App\Http\Resources\CategoryResource;
use App\Http\Resources\ProductQuestionResource;
use App\Http\Resources\ProductAnswerResource;
use Illuminate\Support\Str;

class CollectionIndexResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $reviewtotal = $this->product->ratereviewtotal();

        $reviewcount = $this->product->ratereviewcount();
        $averagecount = 0;
        if ($reviewtotal != 0 && $reviewcount != 0) {
            $averagecount = round(($reviewtotal / $reviewcount), 0);
        }


        return [
            'id' => $this->id,
            'product_id' => $this->product_id,
            'collection_id' => $this->collection_id,
            'collection_user_id' => $this->collection->user_id,
            'collection_name' => $this->collection->name,
            'user_id' => $this->product->user_id,
            'user_name' => $this->product->users->name,
            // 'store_id' => $this->product->store_id,
            'user' => $this->product->users->id,
            'sellerbusinessname' => $this->product->users->sellerprofies[0]->business_name,
            'name' => $this->product->name,
            'brand' => $this->product->brand,
            'slug' => $this->product->slug,
            'description' => $this->product->description,
            'productprice' => $this->product->product_price,
            'price' => $this->product->formattedPrice,
            'weight' => $this->product->weight,
            'tax_id' => $this->product->tax_id,
            'sku' => $this->product->sku,
            'type' => $this->product->type,
            'ratings' => $this->product->ratings,
            'status' => $this->product->status,
            'approved_by' => $this->product->approved_by,
            'rateproduct1' => $this->product->rateperproduct1(),
            'rateproduct2' => $this->product->rateperproduct2(),
            'rateproduct3' => $this->product->rateperproduct3(),
            'rateproduct4' => $this->product->rateperproduct4(),
            'rateproduct5' => $this->product->rateperproduct5(),
            'rate' => $averagecount,
            'ratetotal' => $reviewtotal,
            'reviewcount' => $reviewcount,
            'productgallery' => ProductGalleryResource::collection($this->product->productgallery),
            'stock_count' => $this->product->stockCount(),
            'store_name' => $this->product->stores->name,
            'in_stock' => $this->product->inStock(),
            'category' => CategoryResource::collection($this->product->categories),
            'categorychild' => $this->product->categories[0]->name,
            'productvariations' => Product_VariationsResource::collection($this->product->variations),
            'question' => ProductQuestionResource::collection($this->product->productquestion),
            'answer' => ProductAnswerResource::collection($this->product->productanswer),
            'slicename' => Str::limit($this->product->name, 80, ' ...'),
        ];
    }
}
