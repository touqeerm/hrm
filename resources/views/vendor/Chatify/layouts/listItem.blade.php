
@php
$setting = App\Models\Utility::colorset();

$color = 'theme-3';
if (!empty($setting)) {
    $color = $setting;
}



$currantLang = Cookie::get('LANGUAGE');
if (!isset($currantLang)) {
    $currantLang = 'en';
}

$cust_theme_bg = Cookie::get('cust_theme_bg');
if ($cust_theme_bg == '') {
    $cust_theme_bg = 'on';
}

$cust_darklayout = Cookie::get('cust_darklayout');
if ($cust_darklayout == '') {
    $cust_darklayout = 'off';
}

@endphp
 {{-- -------------------- Saved Messages -------------------- --}}
@if($get == 'saved')
    <table class="messenger-list-item m-li-divider @if('user_'.Auth::user()->id == $id && $id != "0") m-list-active @endif">
        <tr data-action="0">
            {{-- Avatar side --}}
            <td>
            @if($color == "theme-1")
            <div class="avatar av-m" style="background-color: #d9efff; text-align: center;">
                <span class="far fa-bookmark" style="font-size: 22px; color: #51459d; "></span>
            </div>
            @endif
             @if($color == "theme-2")
            <div class="avatar av-m" style="background-color: #d9efff; text-align: center;">
                <span class="far fa-bookmark" style="font-size: 22px; color: #1f3996; "></span>
            </div>
            @endif
             @if($color == "theme-3")
            <div class="avatar av-m" style="background-color: #d9efff; text-align: center;">
                <span class="far fa-bookmark" style="font-size: 22px; color: #6fd943; "></span>
            </div>
            @endif
             @if($color == "theme-4")
            <div class="avatar av-m" style="background-color: #d9efff; text-align: center;">
                <span class="far fa-bookmark" style="font-size: 22px; color: #584ed2; "></span>
            </div>
            @endif

            </td>
            {{-- center side --}}
            <td style="width: 100%;">
                <p data-id="{{ 'user_'.Auth::user()->id }}" style="text-align: start;">Saved Messages <span>You</span></p>
                <span style="justify-content: left;display: flex;">Save messages secretly</span>
            </td>
        </tr>
    </table>
@endif

{{-- -------------------- All users/group list -------------------- --}}
@if(!empty($user) && $user->count() > 0)

@if($get == 'users')
<table class="messenger-list-item @if($user->id == $id && $id != "0") m-list-active @endif" data-contact="{{ $user->id }}">
    <tr data-action="0">
        {{-- Avatar side --}}
        <td style="position: relative">
            @if($user->active_status)
                <span class="activeStatus"></span>
            @endif
                 @if(!empty($user->avatar))
        <div class="avatar av-m" 
        style="background-image: url('{{ asset('/storage/uploads/'.config('chatify.user_avatar.folder').'/'.$user->avatar) }}');">
        </div>
          @else
         <div class="avatar av-m"
                         style="background-image: url('{{ asset('/storage/uploads/'.config('chatify.user_avatar.folder').'/avatar.png') }}');">
                    </div>
                @endif
        </td>
        {{-- center side --}}
        @if(!empty($lastMessage))

            <td style="width: 100%;">
            <p data-id="{{ $type.'_'.$user->id }}"   style="text-align: start;">
                {{ strlen($user->name) > 12 ? trim(substr($user->name,0,12)).'..' : $user->name }} 
                <span>{{ $lastMessage->created_at->diffForHumans() }}</span></p>
            <span style="justify-content: left;display: flex;">
                {{-- Last Message user indicator --}}
                {!!
                    $lastMessage->from_id == Auth::user()->id 
                    ? '<span class="lastMessageIndicator">You :</span>'
                    : ''
                !!}
                {{-- Last message body --}}
                @if($lastMessage->attachment == null)
                {!!
                    strlen($lastMessage->body) > 30 
                    ? trim(substr($lastMessage->body, 0, 30)).'..'
                    : $lastMessage->body
                !!}
                @else
                <span class="fas fa-file"></span> Attachment
                @endif
            </span>
            {{-- New messages counter --}}
                {!! $unseenCounter > 0 ? "<b>".$unseenCounter."</b>" : '' !!}
            </td>
            @else
            <td></td>
        @endif
        
    </tr>
</table>
@endif

{{-- -------------------- Search Item -------------------- --}}
@if($get == 'search_item')
<table class="messenger-list-item" data-contact="{{ $user->id }}">
    <tr data-action="0">
        {{-- Avatar side --}}
            <td style="position: relative">
             @if($user->active_status)
                    <span class="activeStatus"></span>
                @endif

          @if(!empty($user->avatar))   
        <div class="avatar av-m"
        style="background-image: url('{{ asset('/storage/'.config('chatify.user_avatar.folder').'/'.$user->avatar) }}');">
        </div>
         @else
         <div class="avatar av-m"
                         style="background-image: url('{{ asset('/storage/'.config('chatify.user_avatar.folder').'/avatar.png') }}');">
                    </div>
                @endif
        </td>
        {{-- center side --}}
        <td>
        <p data-id="{{ $type.'_'.$user->id }}">
            {{ strlen($user->name) > 12 ? trim(substr($user->name,0,12)).'..' : $user->name }} 
        </td>
        
    </tr>
</table>
@endif



{{-- -------------------- Get All Members -------------------- --}}

@if($get == 'all_members')
    <table class="messenger-list-item" data-contact="{{ $user->id }}">
        <tr data-action="0">
            {{-- Avatar side --}}
            <td style="position: relative">
                @if($user->active_status)
                    <span class="activeStatus"></span>
                @endif
                @if(!empty($user->avatar))
                    <div class="avatar av-m"
                         style="background-image: url('{{ asset('/storage/'.config('chatify.user_avatar.folder').'/'.$user->avatar) }}');">
                    </div>
                @else
                    <div class="avatar av-m"
                         style="background-image: url('{{ asset('/storage/'.config('chatify.user_avatar.folder').'/avatar.png') }}');">
                    </div>
                @endif
            </td>
            {{-- center side --}}
            <td>
                <p data-id="{{ $type.'_'.$user->id }}">
                {{ strlen($user->name) > 12 ? trim(substr($user->name,0,12)).'..' : $user->name }}
            </td>

        </tr>
    </table>
@endif
@endif
{{-- -------------------- Shared photos Item -------------------- --}}
@if($get == 'sharedPhoto')
<div class="shared-photo chat-image" style="background-image: url('{{ $image }}')"></div>
@endif




 

