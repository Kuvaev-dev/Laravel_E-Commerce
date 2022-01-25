<div>
    <div class="container" style="padding: 30px 0">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                Add New Member
                            </div>
                            <div class="col-md-6">
                                <a href="{{ route('admin.members') }}" class="btn btn-success pull-right">All Members</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        @if(Session::has('message'))
                            <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
                        @endif
                        <form class="form-horizontal" enctype="multipart/form-data" wire:submit.prevent="addMember()">
                            <div class="form-group">
                                <label class="col-md-4 control-label">Member Name</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Member Name" class="form-control input-md" wire:model="name"/>
                                    @error('name')  <p class="text-danger">{{ $message }}</p>   @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Member Work</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Member Work" class="form-control input-md" wire:model="work"/>
                                    @error('work')  <p class="text-danger">{{ $message }}</p>   @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Member Description</label>
                                <div class="col-md-4" wire:ignore>
                                    <textarea class="form-control" id="member_description" placeholder="Member Description" wire:model="description"></textarea>
                                    @error('description')  <p class="text-danger">{{ $message }}</p>   @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Member Photo</label>
                                <div class="col-md-4">
                                    <input type="file" class="input-file" wire:model="photo"/>
                                    @if($photo)
                                        <img src="{{ $photo->temporaryUrl() }}" width="120"/>
                                    @endif
                                    @error('photo')  <p class="text-danger">{{ $message }}</p>   @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label"></label>
                                <div class="col-md-4">
                                    <button type="submit" class="btn btn-primary">Add</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@push('scripts')
    <script>
        $(function () {
            tinymce.init({
                selector: '#member_description',
                setup: function (editor) {
                    editor.on('Change', function (e) {
                        tinyMCE.triggerSave();
                        var d_data = $('#member_description').val();
                        @this.set('member_description', d_data);
                    })
                }
            });
        })
    </script>
@endpush
