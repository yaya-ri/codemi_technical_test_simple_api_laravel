<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ClassModel extends Model
{

    protected $table = 'classes';

    protected $casts = [
        'id' => 'string'
    ];

    protected $fillable = [
        'id','class_name', 'class_time', 'room'
    ];

    public function students(){
        return $this->hasMany('\App\StudentModel','class_id','id');
    }
}
