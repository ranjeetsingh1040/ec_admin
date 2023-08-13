<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\CollectionProduct;

class Collection extends Model
{
    protected $table="collections";



    public function collectionproduct()
    {
        return $this->hasMany(CollectionProduct::class);
    }
}
