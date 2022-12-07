<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Top_Banner;
use Illuminate\Http\Request;
use Image;
class TopPopupController extends Controller
{
    public function index()
    {
        $data = Top_Banner::first();
        return view('admin.pagesetting.top_popup', compact('data'));
    }
    public function update(Request $request)
    {
        try {
            $request->validate([
                'url' => 'required',
                'status'=>'required',
            ]);
            $update = Top_Banner::find(1);
            if($request->file('img') == null) {
                $update->status = $request->status;
                $update->url = $request->url;
                $update->update();
                return redirect()->back();
            } else {
                $files = $request->file('img');
                $name = substr(md5(time()),0,10).'.'.$files->getClientOriginalExtension();
                Image::make($files)->resize(3000,75)->save('assets/'.$name);
                if (file_exists('assets/' . $update->img)) {
                    unlink('assets/' . $update->img);
                }
                $update->img = $name;
                $update->status = $request->status;
                $update->url = $request->url;
                $update->update();
                return redirect()->back();
            }
        }catch (\Exception $exception){
            //dd($exception->getMessage());
        }

    }
}

