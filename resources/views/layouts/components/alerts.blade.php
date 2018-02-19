@if($errors->any())
    <div class="alert alert-warning alert-dismissable">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        @foreach($errors->all() as $error)
            <p>{{ $error }}</p>
        @endforeach
    </div>
@endif

@if(session('success'))
    <div class="alert alert-success alert-dismissable">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <p>{{ session('success') }}</p>
    </div>
@endif

@if(session('error'))
    <div class="alert alert-dange alert-dismissabler">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <p>{{ session('error') }}</p>
    </div>
@endif