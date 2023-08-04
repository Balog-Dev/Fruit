<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class headerController extends Controller
{
    //
    function index(){
        return view('home');
    }

    function ChangeLang($langcode){
        session()->put("lang_code", $langcode);
        return redirect()->back();
    

    }

 
}
