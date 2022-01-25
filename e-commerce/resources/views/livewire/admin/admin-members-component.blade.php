<div>
    <style>
        nav svg{
            height: 20px;
        }
        nav .hidden{
            display: block !important;
        }
    </style>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-4">
                                All Members
                            </div>
                            <div class="col-md-8">
                                <a href="{{ route('admin.addmembers') }}" class="btn btn-success pull-right">Add New</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        @if(Session::has('message'))
                            <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
                        @endif
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>Id</th>
                                <th>Photo</th>
                                <th>Name</th>
                                <th>Work</th>
                                <th>Description</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($members as $member)
                                <tr>
                                    <td>{{ $member->id }}</td>
                                    <td><img src="{{ asset('assets/images/members') }}/{{ $member->photo }}" width="60"/></td>
                                    <td>{{ $member->name }}</td>
                                    <td>{{ $member->work }}</td>
                                    <td>{{ $member->description }}</td>
                                    <td>
                                        <a href="{{ route('admin.editmember', ['member_id' => $member->id]) }}"><i class="fa fa-edit fa-2x text-info"></i></a>
                                        <a href="#" onclick="confirm('Are you sure, you want delete this member?') || event.stopImmediatePropagation()" style="margin-left: 10px;" wire:click.prevent="deleteMember({{ $member->id }})"><i class="fa fa-times fa-2x text-danger"></i></a>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
