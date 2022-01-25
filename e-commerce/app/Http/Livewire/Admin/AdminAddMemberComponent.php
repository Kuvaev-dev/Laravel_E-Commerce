<?php

namespace App\Http\Livewire\Admin;

use App\Models\CommandMember;
use Carbon\Carbon;
use Livewire\Component;
use Livewire\WithFileUploads;

class AdminAddMemberComponent extends Component
{
    use WithFileUploads;
    public $name;
    public $work;
    public $description;
    public $photo;

    public function updated($fields) {
        $this->validateOnly($fields, [
           'name' => 'required',
           'work' => 'required',
           'description' => 'required',
           'photo' => 'required|mimes:jpg,png'
        ]);
    }

    public function addMember() {
        $this->validate([
            'name' => 'required',
            'work' => 'required',
            'description' => 'required',
            'photo' => 'required|mimes:jpg,png'
        ]);

        $member = new CommandMember();
        $member->name = $this->name;
        $member->work = $this->work;
        $member->description = $this->description;
        $member->photo = $this->photo;
        $imagename = Carbon::now()->timestamp.'.'.$this->photo->extension();
        $this->photo->storeAs('members', $imagename);
        $member->photo = $imagename;
        $member->save();
        session()->flash('message', 'Member has been created successfully');
    }

    public function render()
    {
        return view('livewire.admin.admin-add-member-component')->layout('layouts.base');
    }
}
