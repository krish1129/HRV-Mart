<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Image;
use Illuminate\Http\Request;



class ImageController extends Controller
{
    public function index()
    {
        $data = Image::first();
        return view('admin.pagesetting.image', compact('data'));
    }

    public function update(Request $request)
    {
//        dd($request->all());
        try {
            $request->validate([
                'url1' => 'required',
                'url2' => 'required',
                'url3' => 'required'
            ]);
            $images = Image::first();
            $images->update([
                'url1' => $request->input('url1'),
                'url2' => $request->input('url2'),
                'url3' => $request->input('url3'),

            ]);
            if (!empty($request->file('image1'))) {
                if (file_exists('assets/images/image/' . $images->image1)) {
                    unlink('assets/images/image/' . $images->image1);
                }
                $image1Name = 'image1_' . time() . '.' . $request->file('image1')->getClientOriginalExtension();
                $request->image1->move('assets/images/image/', $image1Name);
                $images->image1 = $image1Name;
                $images->update();
            }

            if (!empty($request->file('image2'))) {
                if (file_exists('assets/images/image/' . $images->image2)) {
                    unlink('assets/images/image/' . $images->image2);
                }
                $image2Name = 'image2_' . time() . '.' . $request->file('image2')->getClientOriginalExtension();
                $request->image2->move('assets/images/image/', $image2Name);
                $images->image2 = $image2Name;
                $images->update();
            }
            if (!empty($request->file('image3'))) {
                if (file_exists('assets/images/image/' . $images->image3)) {
                    unlink('assets/images/image/' . $images->image3);
                }
                $image3Name = 'image3_' . time() . '.' . $request->file('image3')->getClientOriginalExtension();
                $request->image3->move('assets/images/image/', $image3Name);
                $images->image3 = $image3Name;
                $images->update();
            }
            return redirect()->back();
        }catch (\Exception $exception){
            //dd($exception->getMessage());
        }

    }
}





