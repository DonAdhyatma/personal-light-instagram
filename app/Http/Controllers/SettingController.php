<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SettingController extends Controller
{
    public function edit()
    {
        $user = Auth::user();
        return view('settings.edit', compact('user'));
    }

    public function update(Request $request)
    {
        $request->validate([
            'bio' => 'nullable|string|max:1000',
            'feed_per_row' => 'required|integer|min:1|max:6',
            'photo_profile' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
    
        $user = Auth::user();
    
        // Simpan foto profil jika diupload
        if ($request->hasFile('photo_profile')) {
            $file = $request->file('photo_profile');
            $filename = time() . '_' . $file->getClientOriginalName();
            $file->storeAs('public/profile_photos', $filename);
    
            $user->photo_profile = $filename;
        }
    
        $user->bio = $request->bio;
        $user->feed_per_row = $request->feed_per_row;
        $user->save();
    
        return redirect()->route('profile')->with('success', 'Pengaturan berhasil disimpan!');
    }
    
}
