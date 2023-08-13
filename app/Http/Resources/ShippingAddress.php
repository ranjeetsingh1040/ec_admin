<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ShippingAddress extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        [
            'id' => $this->id,
            'name'=>$this->name,
            // 'firstname'=>$this->firstname,
            // 'lastname'=>$this->lastname,
            // 'mobile'=>$this->mobileno,
            // 'address'=>$this->address_1,
            // // 'city' => $this->city->name,
            // // 'state' => $this->city->state,
            // 'country_id' => $this->country_id,
            // 'postal_code' => $this->postal_code,
            // 'country' => $this->country_id,
        ];
    }
}
