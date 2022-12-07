<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function  index(){
        $contacts=Contact::all();
        return view('admin.contact.index',compact('contacts'));
    }
    public  function create(){
        return view('admin.contact.create');
    }
    public function store(Request $request)
    {

            $request->validate([
                'title' => 'required',
                'phone' => 'required',
                'facebook' => 'required',
                'whatsapp' => 'required',
                'imo' => 'required',
                'viber' => 'required',
                'instagram' => 'required',
                'twitter' => 'required',
                'linkedin' => 'required',

            ]);
            Contact::create([
                'title' => $request->input('title'),
                'phone' => $request->input('phone'),
                'facebook' => $request->input('facebook'),
                'whatsapp' => $request->input('whatsapp'),
                'imo' => $request->input('imo'),
                'viber' => $request->input('viber'),
                'instagram' => $request->input('instagram'),
                'twitter' => $request->input('twitter'),
                'linkedin' => $request->input('linkedin'),

            ]);
            session()->flash('message','Data created successful!!');
            return redirect()->route('admin.contact');

        }
    public function edit($id)
    {

            $contact= Contact::find($id);
            if (!$contact) {
                return redirect()->route('admin.contact');
            }
            return view('admin.contact.edit', compact('contact'));

            return redirect()->back();
        }

    public function update(Request $request, $id)
    {

            $request->validate([
                'title' => 'required',
                'phone' => 'required',
                'facebook' => 'required',
                'whatsapp' => 'required',
                'imo' => 'required',
                'viber' => 'required',
                'instagram' => 'required',
                'twitter' => 'required',
                'linkedin' => 'required',
            ]);
            $contact = Contact::find($id);
            $contact->update([
                'title' => $request->input('title'),
                'phone' => $request->input('phone'),
                'facebook' => $request->input('facebook'),
                'whatsapp' => $request->input('whatsapp'),
                'imo' => $request->input('imo'),
                'viber' => $request->input('viber'),
                'instagram' => $request->input('instagram'),
                'twitter' => $request->input('twitter'),
                'linkedin' => $request->input('linkedin'),


            ]);
            session()->flash('message','Data update successful!!');
            return redirect()->back();


        }
    public function delete($id)
    {
        $contact = Contact::find($id);
        $contact->delete();
        return redirect()->back();
    }
}
