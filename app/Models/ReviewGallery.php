<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\RatingReview;

class ReviewGallery extends Model
{
    protected $table='review_gallery';

    protected $fillable=['rating_id','imagepath','thumbnailimage'];

    public function product()
    {
    	return $this->belongsTo('App\Models\Product','rating_id','id');
    }
    public function ratingreview()
    {
    	return $this->belongsTo(RatingReview::class);
    }
}
