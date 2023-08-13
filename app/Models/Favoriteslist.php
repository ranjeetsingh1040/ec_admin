<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
// use Illuminate\Database\Eloquent\SoftDeletes;

class Favoriteslist extends Model
{
    // use SoftDeletes;
    protected $table = 'favoriteslists';

    public function product()
    {
        return $this->belongsTo('App\Models\Product', 'product_id', 'id');
    }
    public function user()
    {
       return $this->belongsTo('App\Models\User','user_id','id');
    }
}
