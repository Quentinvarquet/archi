<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<link href="../css/style.css" rel="stylesheet">
<script>
$(function () {
    $('.tree li:has(ul)').addClass('parent_li').find(' > span').attr('title', 'Expand this branch');
	$('.tree li:has(ul)').addClass('parent_li').find(' > ul > li').hide();
	
    $('.tree li.parent_li > span').on('click', function (e) {
        var children = $(this).parent('li.parent_li').find(' > ul > li');
        if (children.is(":visible")) {
            children.hide('fast');
            $(this).attr('title', 'Expand this branch').find(' > i').addClass('glyphicon-plus-sign').removeClass('glyphicon-minus-sign');
        } else {
            children.show('fast');
            $(this).attr('title', 'Collapse this branch').find(' > i').addClass('glyphicon-minus-sign').removeClass('glyphicon-plus-sign');
        }
        e.stopPropagation();
    });
	
	$('.panel-body').css('height', $('.panel').outerHeight() - $('.panel-heading').outerHeight());
	$(window).resize(function (e) {
		$('.panel-body').css('height', $('.panel').outerHeight() - $('.panel-heading').outerHeight());
		e.stopPropagation();
	});
});
</script>
	<style type="text/css">
		.bs-example{
			margin: 5px;
			margin-bottom: 2px;
			margin-right: 2px;
		}
		.panel{
			height: 100%;
			overflow:hidden;
		}
		.panel-body{
			overflow-y:auto;
		}
		body {
			background:#ddd !important;
		}
	</style>
<body class="bs-example">
<div class="panel panel-default">
  <div class="panel-heading"> <b>Model</b> </a></div>
  <div class="panel-body tree">
  <b><a href="../elements/model.html" target="view">Model Name</a></b>
    <ul>
        <li>
            <span><i class="glyphicon glyphicon-plus-sign"></i> Elements</span>
            <ul>
                <li>
                	<span><i class="glyphicon glyphicon-plus-sign"></i> Business</span>
                    <ul>
^businessList:{element | <li><a href="../elements/^element.Id^.html" target="element"> ^element.Name^ </a></li>
}^
                    </ul>
                </li>
                <li>
                	<span><i class="glyphicon glyphicon-plus-sign"></i> Application</span>
                    <ul>
^applicationList:{element | <li><a href="../elements/^element.Id^.html" target="element"> ^element.Name^ </a></li>
}^
                    </ul>
                </li>
				<li>
                	<span><i class="glyphicon glyphicon-plus-sign"></i> Technology</span>
                    <ul>
^technologyList:{element | <li><a href="../elements/^element.Id^.html" target="element"> ^element.Name^ </a></li>
}^
                    </ul>
                </li>
            </ul>
        </li>
        <li>
            <span><i class="glyphicon glyphicon-plus-sign"></i> Views</span>
            <ul>
^viewList:{view | <li><a href="../views/^view.Id^.html" target="view"> ^view.Name^ </a></li>
}^
		    </ul>
        </li>
    </ul>
</div>
</div>
</body>
</html>