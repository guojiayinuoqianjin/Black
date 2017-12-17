<header class="header" id="header">
    <div class="header-bg"></div>
    <div class="header-top">
        <div class="container">
            <a href="${request.contextPath}/index" class="header-logo"></a>
            <nav class="header-nav">
                <a href="#main"
                   onclick="{iframeContent.setAttribute('src', '${request.contextPath}/content/content')}"
                   class="item">最新</a>
                <a href="#main"
                   onclick="{iframeContent.setAttribute('src', '${request.contextPath}/notice')}"
                   class="item">公告栏</a>

                <a href="http://blog.bhusk.com" class="item">黑壳博客</a>
                <#--<a href="#" onclick="alert('耐心等待~ 小黑正在努力带着ss飞机票来了~')" class="item">免费SS</a>-->

            </nav>
            <div class="header-user">
                <a href="#main" onclick="{iframeContent.setAttribute('src', '${request.contextPath}/addCompany')}"  class="register">举报</a>
            <#--<a href="#" class="register">注册</a>-->
            <#--<a href="#" class="login">登录</a>-->
            </div>
            <div class="search">
                <form action="#">
                    <input type="text" id="search1" value="<#if userInfo.common??>${userInfo.common}</#if>"
                           class="search-text" placeholder="搜~ 例如:xxx科技有限公司 or 苏州街23号名商大厦6层"
                    />
                    <a href="#main" id="search-btn" class="search-btn sprite_icon"
                       onclick="{
                                    $('#search').val($('#search1').val())
                                    searchFrom(1,${rows})
                               }
                               "></a>
                </form>
            </div>
        </div>
    </div>
    <div class="banner">
    <#--<h2 class="banner-titlte"><img src="${request.contextPath}/static/index/images/banner-title_img.svg" alt="#">-->
    <#--</h2>-->
        <img src="${request.contextPath}/static/images/banner-title_img.png">
        <div class="search">
            <form action="#">
                <input type="text" id="search2" class="search-text"
                       value="<#if userInfo.common??>${userInfo.common}</#if>"
                       placeholder="搜~ 例如:xxx科技有限公司 or 苏州街23号名商大厦6层" onkeydown="KeyDown(1,${pageInfo.pageSize})"
                />
                <a href="#" id="search-btn" class="search-btn sprite_icon"
                   onclick="{
                           $('#search').val($('#search2').val())
                           searchFrom(1,${rows})
                           }"></a>
            </form>
        </div>
    </div>
</header>