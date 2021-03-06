<!DOCTYPE html>
<html>
<head>
	[#include "include.ftl"]
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>${index}</title>
	<script>
		window.ctx="${ctx}";
	</script>
</head>
<body>
    <div class="layui-layout-admin fly-body">
        <div class="layui-header">
            <div class="admin-title dp-ib">
                <h1 class="fs-24 dp-ib c-fff mgl-20 mgt-10">后台管理</h1>
            </div>
            [@shiro.user]
            	aaaa
            [/@shiro.user]
            [@shiro.hasRole name="admin"]
            	拥有角色admin[@shiro.principal/]
            [/@shiro.hasRole]
            [@shiro.hasPermission name="user:create"]
            	创建操作
            [/@shiro.hasPermission]
            <div class="layui-top-nav dp-ib ve-t">
                <ul class="layui-nav">
                	[#list list?sort_by("username") as user]
					    <li class="layui-nav-item"><a href="javascript:;">${user.username}</a></li>
					[/#list]
                </ul>
            </div>
            <div href="#!" class="layui-right user"><a href="#!" class="user-avatar"><img src="${ctx}/static/images/common/user-photo.jpg" alt="" class="layui-circle"><span class="c-fff mgl-20">超级管理员</span></a>
                <ul
                    class="user-nav">
                    <li class="user-nav-item"><a href="#!"><i class="layui-icon">&#xe612;</i> 个人设置</a></li>
                    <li class="user-nav-item"><a href="javascript:;" id="btn-exit"><i class="layui-icon">&#xe623;</i> 退出</a></li>
                    </ul>
            </div>
        </div>
        <div class="layui-side">
            <ul class="layui-nav layui-nav-tree" id="sideNav" lay-filter="sideNav">
                <li class="layui-nav-item layui-nav-itemed"><a>用户管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" data-url="user/user-list.html"><label>用户列表</label></a></dd>
                        <dd><a href="javascript:;" data-url="user/user-collect.html"><label>用户统计</label></a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a>产品管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" data-url="product/product-list.html"><label>产品列表</label></a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a>订单管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" data-url="order/order-list.html"><label>订单列表</label></a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a>文章管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" data-url="article/article-list.html"><label>文章列表</label></a></dd>
                        <dd><a href="javascript:;" data-url="article/article-sorts.html"><label>文章栏目</label></a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a>相册管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" data-url="album/album-manage.html"><label>相册列表</label></a></dd>
                        <dd><a href="javascript:;" data-url="album/album-sorts.html"><label>相册栏目</label></a></dd>
                    </dl>
                </li>
            </ul>
        </div>
        <div class="layui-body">
            <div class="layui-tab fly-tab layui-tab-card" lay-filter="page-tab" lay-allowclose="true">
                <ul class="layui-tab-title" id="tabTitle">
                    <li class="layui-this" lay-id="0"><label>首页</label></li>
                </ul>
                <div class="layui-tab-content" id="tabContainers">
                    <div class="layui-tab-item layui-show">
                        <p>提示<span class="icon-i-b tips-icon mgl-5 ve-m"><span class="dialog-warp right"><label class="dialog-box">床前明月光，疑是地上霜，举头望明月，低头思故乡。</label></span></span>
                        </p>
                        <div class="fly-echart echart-map sw-100" id="user-form-map">地图</div>
                        <div class="fly-echart echart-pie sw-50 fl" id="user-form-pie">饼状图</div>
                        <div class="fly-echart echart-line sw-50 fl" id="user-form-line">折线图</div>
                        <div class="fly-echart echart-bar sw-100 fl" id="user-form-bar">柱状和折线</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html> 