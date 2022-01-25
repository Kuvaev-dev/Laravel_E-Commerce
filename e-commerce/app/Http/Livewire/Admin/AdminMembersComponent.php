<?php

namespace App\Http\Livewire\Admin;

use App\Models\CommandMember;
use Livewire\Component;

class AdminMembersComponent extends Component
{
    public function deleteMember($id) {
        $member = CommandMember::find($id);

        if($member->photo) {
            unlink('assets/images/members'.'/'.$member->photo);
        }

        $member->delete();
        session()->flash('message', 'Member has been deleted successfully');
    }

    public function render()
    {
        $members = CommandMember::all();
        return view('livewire.admin.admin-members-component', ['members' => $members])->layout('layouts.base');
    }
}
