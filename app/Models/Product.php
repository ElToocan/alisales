<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Traits\HasClassName;
class Product extends Model
{
    /** @use HasFactory<\Database\Factories\ProductFactory> */
    use HasFactory, HasClassName;

    protected $fillable = [
        'name',
        'reference',
        'description',
        'sellingPrice',
        'purchasePrice',
        'vat_id',
    ];


}
