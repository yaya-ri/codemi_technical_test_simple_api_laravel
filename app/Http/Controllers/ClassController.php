<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\ClassModel;
use Ramsey\Uuid\Uuid;
// use Webpatser\Uuid\Uuid;

class ClassController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $database = \App\ClassModel::All();
        if(count($database)>0){
            $res['success']         =true;
            $res['message']         =['OK'];
            $res['data']['class']   =$database;
            return response($res);
        }else{
            $res['success']         =true;
            $res['message']         =['OK'];
            $res['data']['class']   ="Empty!!";
            return response($res);
        }
    }

    public function classAndStudents($id)
    {
        $database = ClassModel::where('id',$id)->with('students')->get();
        if(count($database)>0){
            $res['success']         =true;
            $res['message']         =['OK'];
            $res['data']['class']   =$database;
            //$res['data']['class']['students']   =$database->students();
            return response($res);
        }else{
            $res['success']         =true;
            $res['message']         =['OK'];
            $res['data']['class']   ="Empty!!";
            return response($res);
        }
    }

    public function createStudents(Request $request)
    {
        $class_id   = $request->input('class_id');
        $name       = $request->input('name');
        $phone      = $request->input('phone');
        $id         = Uuid::uuid4()->getHex();

        $database = ClassModel::findOrFail($class_id);
        
        $save = $database->students()->create([
            'id'       => $id,
            'class_id' => $class_id,
            'name'     => $name,
            'phone'    => $phone
            
        ]);

        if($save){
            $res['success'] = true;
            $res['message'] = ['OK'];
            $res['data']['student']= $save;
            return response($res);
        }else{
            $res['success'] = false;
            $res['message'] = ['Check your ID'];
            //$res['data']['student']= $database;
            return response($res);
        }
        
        

    }

    public function store(Request $request)
    {
        
        $class_name = $request->input('class_name');
        $class_time = $request->input('class_time');
        $room       = $request->input('room');

        $database =  new \App\ClassModel();
        $database->id         = Uuid::uuid4()->getHex();
        //$database->id         = Uuid::generate(4)->string;
        $database->class_name = $class_name;
        $database->class_time = $class_time;
        $database->room       = $room;

        if($database->save()){
            $res['success']         =true;
            $res['message']         =['OK'];
            $res['data']['class'] =$database;
            return response($res);
        }else{
            $res['success'] = false;
            $res['message'] = ['Error!!'];
            return response($res);
        }
    }
    
}
