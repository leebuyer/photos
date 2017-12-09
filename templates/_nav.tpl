<div class="navigation-wrapper">
    <a class="logo responsive"><img src="img/logo.png" alt="" /></a>

    <!--主選單，如果有的話-->
    {if isset($smarty.session.username) and $smarty.session.username=='admin'}
    <div class="navigation-overflow">
        <nav class="text-left clearfix">
            <ul>
                <li>
                    <a href="javascript:;" style="text-shadow:none;cursor:default;">Hi! {$smarty.session.username}</a>
                </li>
                <li>
                    <a href="admin_classify.php?op=classify_insert">新增作品分類</a>
                </li>
                <li>
                    <a href="logout.php">登出</a>
                </li>
            </ul>
        </nav>
    </div>
    {elseif isset($smarty.session.username)}
    <div class="navigation-overflow">
        <nav class="text-left clearfix">
            <ul>
                <li>
                    <a href="javascript:;" style="text-shadow:none;cursor:default;">Hi! {$smarty.session.username}</a>
                </li>
                <li>
                    <a href="logout.php">登出</a>
                </li>
            </ul>
        </nav>
    </div>
    {else}
    <div class="navigation-overflow">
        <nav class="text-left clearfix">
            <ul>
                <li>
                    <a href="main_login.php">學員登入</a>
                </li>
            </ul>
        </nav>
    </div>
    {/if}

</div>
<!--主選單收合按鈕，如果有的話-->
<div class="hamburger-icon open-navigation" data-rel="1">
    <span></span>
    <span></span>
    <span></span>
</div>
<div class="" style="float:right;margin-top:-7px;">
    <a href="index.php?op=submission" class="btn btn-warning btn-lg">
        <i class="fa fa-camera" aria-hidden="true"></i>&nbsp;&nbsp;我要投稿
    </a>
</div>