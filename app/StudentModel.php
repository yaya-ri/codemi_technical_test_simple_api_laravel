<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StudentModel extends Model
{

    protected $table = 'students';

    protected $casts = [
        'id' => 'string'
    ];

    protected $fillable = [
        'id','class_id', 'name', 'phone'
    ];

    protected $hidden = [
        'class_id'
    ];

    public function classes(){
        return $this->belongsTo('\App\ClassModel','class_id','id');
    }
}
