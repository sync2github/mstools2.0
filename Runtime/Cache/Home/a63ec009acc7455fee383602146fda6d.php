<?php if (!defined('THINK_PATH')) exit();?>﻿<!-- 普通版请保留部分版权，感谢您对作者的尊重，一经发现可能会上黑名单的哦  -->
<!doctype html>
<html>

<head>
	<title><?php echo ($temp["title"]); ?>-<?php echo ($temp["descc"]); ?></title>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"
	/>
	<meta name="description" content="<?php echo ($temp["descc"]); ?>" />
	<meta name="keywords" content="<?php echo ($temp["keyword"]); ?>" />
	<meta name="theme-color" content="#279de4">
	<link rel="shortcut icon" href="base/favicon.ico" />
	<link href="/Public/Home/css/bootstrap.min.css" rel="stylesheet" />
	<link href="/Public/Home/css/docs.min.css" rel="stylesheet">
	<link href="/Public/Home/css/font-awesome.min.css" rel="stylesheet" />
	<link href="/Public/Home/css/animate.min.css" rel="stylesheet">
	<link href="/Public/Home/css/index.css" rel="stylesheet" />
	<script src="/Public/Home/js/jquery.js"></script>
	<script src="/Public/Home/js/bootstrap.min.js"></script>
	<script src="/Public/Home/js/tool.js"></script>
	<!-- <script src="https://cdn.jsdelivr.net/npm/vue"></script> -->
  <meta name="360-site-verification" content="1e42f05e4207aff7269ecb07adf5a9a1" />
  <style>
  #myTab li:first-child .active{
	  background: red;
  }
  </style>
</head>

<body onload="init()">
	<header class="navbar navbar-static-top bs-docs-nav" role="banner">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#bs-navbar" aria-controls="bs-navbar"
				 aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="/index.php" class="navbar-brand" data-toggle="tooltip" data-placement="bottom" title="最全工具箱">默笙工具箱</a>
			</div>
			<nav id="bs-navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
				<?php if(is_array($menu)): $i = 0; $__LIST__ = $menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$me): $mod = ($i % 2 );++$i;?><li>
						<a href="<?php echo ($me["link"]); ?>" target="_blank" data-toggle="tooltip" data-placement="bottom" title="<?php echo ($me["descc"]); ?>"><?php echo ($me["menu"]); ?></a>
					</li><?php endforeach; endif; else: echo "" ;endif; ?>
					<li>
						<div class="searchbutton">
							<input type="text" id="getsearch" placeholder="搜索..." />
							<button onclick="search()" data-toggle="modal" data-target="#searchmodal" data-toggle="tooltip"></button>
						</div>
					</li>
				</ul>
			</nav>
			<div class="preloader">
				<div class="preloader-box">
					<div><?php echo ($temp["t1"]); ?></div>
					<div><?php echo ($temp["t2"]); ?></div>
					<div><?php echo ($temp["t3"]); ?></div>
					<div><?php echo ($temp["t4"]); ?></div>
					<div><?php echo ($temp["t5"]); ?></div>
					<div><?php echo ($temp["t6"]); ?></div>
					
				</div>
			</div>
			<p class="stitle"><?php echo ($temp["ftitle"]); ?></p>
			<p class="notice">
				<marquee direction="right" behavior="scroll" scrollamount="6" scrolldelay="0" loop="-1" hspace="10" vspace="10"></marquee>
			</p>
		</div>
	</header>
	<div class="nav-list">
		<ul id="myTab" class="nav nav-tabs nav-justified">
			<?php if(is_array($class)): $k = 0; $__LIST__ = array_slice($class,0,10,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ls): $mod = ($k % 2 );++$k;?><li <?php if($k == 1): ?>class="active"<?php endif; ?>>
				
				<a href="#<?php echo ($ls["classid"]); ?>" data-toggle="tab" id="toWx">
					<?php echo ($ls["classname"]); ?>
				</a>
			</li><?php endforeach; endif; else: echo "" ;endif; ?>
		</ul>
	</div>
	<div class="container">
		<div id="myTabContent" class="tab-content">
			<?php if(is_array($tools)): $i = 0; $__LIST__ = $tools;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$cs): $mod = ($i % 2 );++$i;?><div class='tab-pane fade <?php if($cs[classid]==fun ): ?>in active<?php endif; ?>' id="<?php echo ($cs["classid"]); ?>">
			 	<?php if(is_array($cs["arr"])): $i = 0; $__LIST__ = $cs["arr"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$css): $mod = ($i % 2 );++$i;?><a href="<?php echo ($css["url"]); ?>" target="_blank">
						<li class="item">
							<div class="i-head">
								<span class="<?php echo ($css["color"]); ?>"><?php echo ($css["logo"]); ?></span>
								<p><?php echo ($css["title"]); ?></p>
							</div>
							<div class="i-body">
								<p class="hot">
									<i class="fa fa-user" aria-hidden="true"></i><?php echo ($css["author"]); ?></p>
								<p class="goto">
									<i class="fa fa-sign-in" aria-hidden="true"></i>Go</p>
							</div>
						</li>
					</a><?php endforeach; endif; else: echo "" ;endif; ?>
			</div><?php endforeach; endif; else: echo "" ;endif; ?>
		</div>
	</div>
	<footer>
		<div class="container">
			<div class="nowtime">
				<h4>
					<i class="fa fa-clock-o" aria-hidden="true"></i>&nbsp;当前时间</h4>
				<div id="time"></div>
			</div>
			<div class="weather">
				<p>您的IP地址:<?php echo ($ip); ?>				<p>来自<?php echo ($weather["lives"]["0"]["province"]); echo ($weather["lives"]["0"]["city"]); ?>    						<p>今天白天:<?php echo ($weather["lives"]["0"]["winddirection"]); ?>风</p>
							 体感温度: <?php echo ($weather["lives"]["0"]["temperature"]); ?>℃
							 </p>
						<p>更新于:<?php echo ($weather["lives"]["0"]["reporttime"]); ?></p>
						<p>享受生活每一天</p> 
						

			</div>
			<div class="oneword">
				<h4>
					<i class="fa fa-commenting-o" aria-hidden="true"></i>&nbsp;一言</h4>
				<script type="text/javascript" >
					function xsjhitokoto(){document.write("<?php echo file_get_contents('https://api.tecms.net/api/yiyan.php');?>");}

				</script>
				<div id="xsjhitokoto">
					<script>xsjhitokoto()</script>
				</div>
			</div>
		</div>
		<div class="contact">
			<a id="weixin" data-toggle="popover" data-placement="top" data-original-title="" title="">
					<i class="fa fa-qq" aria-hidden="true"></i>
				</a>
			
			<a href="http://weibo.com/weizhuangxingfu">
				<i class="fa fa-weibo" aria-hidden="true"></i>
			</a>
		</div>
		<div class="copyright">
			<span><?php echo ($temp["footer"]); ?></span>
			<?php if(is_array($link)): $i = 0; $__LIST__ = $link;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$lk): $mod = ($i % 2 );++$i;?><a href="<?php echo ($lk["link"]); ?>" target="_blank" data-toggle="tooltip" data-placement="top" title="<?php echo ($lk["desc"]); ?>"><?php echo ($lk["title"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>
				
		</div>
	</footer>
	<div class="modal fade" id="aboutmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
	<div class="modal fade" id="searchmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;
					</button>
					<h4 class="modal-title" id="myModalLabel">
						搜索结果
					</h4>
				</div>
				<div class="modal-body" id="searchresult">
					<!-- <li class="item" style="width:50%;"><div class="i-head"><span class="open open1">百</span><p>让我帮你百度</p></div><div class="i-body"><p class="hot"><i class="fa fa-eye" aria-hidden="true"></i>5087</p><p class="goto"><i class="fa fa-sign-in" aria-hidden="true"></i>Go</p></div></li> -->
				</div>
				<div id="loading" style="display: none;">
					<img src="/Public/Home/picture/loading.gif" class="loading" style="position: absolute;top: 50%;left: 50%;margin-left: -16px">
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	<div class="side">
		<ul>
			<li>
				<a href="#wx" data-toggle="tab" id="goWx">
					<i class="fa fa-header" aria-hidden="true">
						<p>工作室</p>
					</i>
				</a>
			</li>
			<li>
				<a href="#useful" data-toggle="tab" id="goUseful">
					<i class="fa fa-cubes" aria-hidden="true">
						<p>实用</p>
					</i>
				</a>
			</li>
			<li>
				<a href="#effect" data-toggle="tab" id="goEffect">
					<i class="fa fa-fire" aria-hidden="true">
						<p>特效</p>
					</i>
				</a>
			</li>
			<li>
				<a href="#fun" data-toggle="tab" id="goFun">
					<i class="fa fa-paper-plane-o" aria-hidden="true">
						<p>有趣</p>
					</i>
				</a>
			</li>
			<li>
				<a href="#api" data-toggle="tab" id="goApi">
					<i class="fa fa-font" aria-hidden="true">
						<p>API</p>
					</i>
				</a>
			</li>
			<li>
				<a href="#game" data-toggle="tab" id="goGame">
					<i class="fa fa-gamepad" aria-hidden="true">
						<p>游戏</p>
					</i>
				</a>
			</li>
			<li>
				<a href="#" id="goTop">
					<i class="fa fa-chevron-up" aria-hidden="true"></i>
				</a>
			</li>
		</ul>
	</div>
	
	<!-- <script src="/Public/Home/js/docs.min.js"></script> -->
	
<!-- power By Mosheng 默笙 免费用户请保留此处版权 -->
</html>