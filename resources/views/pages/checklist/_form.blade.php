@push('styles')
    <link href="{{ asset('assets/plugins/multiselect/css/multi-select.css') }}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/plugins/select2/css/select2.min.css') }}" rel="stylesheet">
@endpush
<div class="form-group">
    <label class="col-md-2 control-label" for="date">{{ __('Data') }}</label>
    <div class="col-md-8">
        <input type="date" name="date" id="date" class="form-control" value="{{ old('date', isset($checklist)? date('Y-m-d', strtotime($checklist->date)): null) }}">
        @if ($errors->has('date'))
            <span class="help-block text-danger"><strong>{{ $errors->first('date') }}</strong></span>
        @endif
    </div>
</div>

{{--<div class="form-group">--}}
{{--    <label class="col-md-2 control-label" for="time_start">{{ __('Início') }}</label>--}}
{{--    <div class="col-md-3">--}}
{{--        <input type="time" name="time_start" id="time_start" class="form-control" value="{{ old('time_start', $checklist->time_start ?? null) }}">--}}
{{--        @if ($errors->has('time_start'))--}}
{{--            <span class="help-block text-danger"><strong>{{ $errors->first('time_start') }}</strong></span>--}}
{{--        @endif--}}
{{--    </div>--}}

{{--    <label class="col-md-2 control-label" for="time_end">{{ __('Final') }}</label>--}}
{{--    <div class="col-md-3">--}}
{{--        <input type="time" name="time_end" id="time_end" class="form-control" value="{{ old('time_end', $checklist->time_end ?? null) }}">--}}
{{--        @if ($errors->has('time_end'))--}}
{{--            <span class="help-block text-danger"><strong>{{ $errors->first('time_end') }}</strong></span>--}}
{{--        @endif--}}
{{--    </div>--}}
{{--</div>--}}

<div class="form-group">
    <label class="col-md-2 control-label" for="sectors">{{ __('Setores') }}</label>
    <div class="col-md-10">
        <select multiple="multiple" name="sectors[]" id="sectors" data-plugin="multiselect">
            @php $sectors = \App\Models\Sector::where(['active' => 1])->get() @endphp
            @if($sectors->count())
                @foreach($sectors as $sector)
                    <option value="{{ $sector->id }}" {{ isset($checklist) && $checklist->sectors->contains('id' , $sector->id) ? 'selected' : null }}>{{ $sector->name }}</option>
                @endforeach
            @endif
        </select>
        @if ($errors->has('sectors'))
            <span class="help-block text-danger"><strong>{{ $errors->first('sectors') }}</strong></span>
        @endif
    </div>
</div>

<div class="form-group m-b-0">
    <div class="col-sm-offset-2 col-sm-8">
        <button name="submit" class="btn btn-info waves-effect waves-light">{{ __('Salvar') }}</button>
    </div>
</div>

@push('scripts')
    <script src="{{ asset('assets/plugins/multiselect/js/jquery.multi-select.js') }}"></script>
    <script src="{{ asset('assets/plugins/select2/js/select2.min.js') }}"></script>
    <script>
        jQuery(document).ready(function () {
            $(".select2").select2();
        });
    </script>
@endpush
