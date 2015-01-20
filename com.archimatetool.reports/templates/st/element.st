<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<link href="../css/style.css" rel="stylesheet">
<script>
$(function () {
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
			margin-top: 2px;
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
		.table-condensed th,td {
			font-size: 14px;
		}
	</style>
<body class="bs-example">
	<div class="panel panel-default">
		<div class="panel-heading">
			<b>^element.Name^</b> (TODO)
			<a href="javascript:window.open('../hints/TODO.html', 'Hint', 'location=no,menubar=no,status=no,toolbar=no,scrollbars=yes')"><i class="glyphicon glyphicon-info-sign"></i></a>
		</div>
		<div class="panel-body">
			<div role="tabpanel">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#documentation" aria-controls="documentation" role="tab" data-toggle="tab">Documentation</a></li>
					<li role="presentation"><a href="#properties" aria-controls="properties" role="tab" data-toggle="tab">Properties</a></li>
				</ul>
		
				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="documentation">
					<br>
						<pre>^element.Documentation^</pre>
					</div>
					<div role="tabpanel" class="tab-pane" id="properties">
						<table class="table table-striped table-hover table-condensed">
							<thead>
								<tr>
									<th>Key</th>
									<th>Value</th>
								</tr>
							</thead>
							<tbody>
^properties:{property | <tr><td>^property.Key^</td><td>^property.Value^</td></tr>
}^
							</tbody>
						</table>
					</div>
			  </div>
			</div>
		</div>
	</div>
</body>
</html>