<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Temporder extends Model
{
    protected $fillable=['id','product_id','product_name','product_merk','product_price','satuan','qty','subtotal'];
}
