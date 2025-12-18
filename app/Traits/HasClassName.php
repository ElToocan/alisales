<?php

namespace App\Traits;

use Illuminate\Support\Str;

trait HasClassName
{
    public function getFullClassName(): string
    {
        return static::class;
    }

    public function getClassName(): string
    {
        return Str::lower(class_basename(static::class));
    }

}
