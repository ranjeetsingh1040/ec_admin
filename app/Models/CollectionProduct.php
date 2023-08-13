<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Collection;

class CollectionProduct extends Model
{
    protected $table = "collection_products";
    protected $with = ['product'];


    public function collection()
    {
        return $this->belongsTo(Collection::class);
        // return $this->belongsTo('App\Models\Collection','collection_id');
    }
    //  public function product()
    //  {
    //  	return $this->belongsTo(Collection::class);
    //  	// return $this->belongsTo('App\Models\Product','product_id');
    //  }  
    public function product()
    {
        return $this->belongsTo('App\Models\Product', 'product_id', 'id');
    }
}
