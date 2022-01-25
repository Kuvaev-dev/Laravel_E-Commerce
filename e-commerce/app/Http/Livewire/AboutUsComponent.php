<?php

namespace App\Http\Livewire;

use App\Models\CommandMember;
use Livewire\Component;

class AboutUsComponent extends Component
{
    public function render()
    {
        $members = CommandMember::all();
        return view('livewire.about-us-component', ['members' => $members])->layout('layouts.base');
    }
}
