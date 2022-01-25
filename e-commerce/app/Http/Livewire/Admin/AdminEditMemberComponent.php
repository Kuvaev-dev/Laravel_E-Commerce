<?php

namespace App\Http\Livewire\Admin;

use App\Models\CommandMember;
use Carbon\Carbon;
use Livewire\Component;
use Livewire\WithFileUploads;

class AdminEditMemberComponent extends Component
{
    use WithFileUploads;
    public $name;
    public $work;
    public $description;
    public $photo;
    public $member_id;
    public $newphoto;

    public function mount($member_id) {
        $member = CommandMember::find($member_id);
        $this->name = $member->name;
        $this->work = $member->work;
        $this->description = $member->description;
        $this->photo = $member->photo;
        $this->member_id = $member->id;
    }

    public function updated($fields) {
        $this->validateOnly($fields, [
           'name' => 'required',
           'work' => 'required',
           'description' => 'required',
           'photo' => 'required|mimes:jpg,png',
        ]);

        if($this->newphoto) {
            $this->validateOnly($fields, [
                'newphoto' => 'required|mimes:jpeg,png'
            ]);
        }
    }

    public function updateMember() {
        $this->validate([
            'name' => 'required',
            'work' => 'required',
            'description' => 'required',
            'photo' => 'required|mimes:jpg,png'
        ]);

        $member = CommandMember::find($this->member_id);
        $member->name = $this->name;
        $member->work = $this->work;
        $member->description = $this->description;
        if ($this->newphoto) {
            $imageName = Carbon::now()->timestamp.'.'.$this->newphoto->extension();
            $this->newphoto->storeAs('members', $imageName);
            $member->photo = $imageName;
        }
        $member->save();
        session()->flash('message', 'Member data has been updated successfully');
    }

    public function render()
    {
        return view('livewire.admin.admin-edit-member-component')->layout('layouts.base');
    }
}
