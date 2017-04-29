<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/css/styles.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	
</script>
<style>
.error {
	color: red;
	font-weight: bold;
}
</style>
</head>
<body>
	<!-- Header Section-->
	<header class="container-fluid text-center">
	<h1>Arrays</h1>
	</header>
	<!-- sliding form when button is clicked-->
	<div class="accordion" id="myAccordion">
		<div class="panel">
			<button type="button" class="btn btn-primary btn-xl"
				data-toggle="collapse" data-target="#ArrayOfNumbers"
				data-parent="#myAccordion">Array of Numbers</button>
			<div id="ArrayOfNumbers" class="collapse" class="container">
				<!--Array of  Numbers Form-->
				<div class="center-block"
					style="width: 375px; background: lightgreen; border-radius: 10px; padding: 10px; margin-top: 45px;">
					<h2>Array of Numbers</h2>
					<form:form modelAttribute="arrayOfNumbersForm" id="arrayOfNumbersForm">
						<div class="form-group" name="div1">
							<form:errors path="*" cssClass="error" />
						</div>
						<div class="form-group" name="div1">
							<form:label path="" for="number">Test cases</form:label>
							<form:input path="noOfTestCases" type="number"
								class="form-control" />
							<form:errors path="noOfTestCases" class="form-control" />
						</div>
						<!-- Form Fields are placed in a row-->
						<div class="form-group">
							<div class="row">
								<div class="col-xs-6">
									<form:label path="" for="number">Min Value</form:label>
									<form:input path="minValue" type="number" class="form-control"
										name="minVal" />
									<form:errors path="minValue" type="number" class="form-control"
										name="minVal" />
								</div>
								<div class="col-xs-6">
									<form:label path="" for="number">Max Value</form:label>
									<form:input path="maxValue" type="number" class="form-control"
										name="maxVal" />
									<form:errors path="maxValue" type="number" class="form-control"
										name="maxVal" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-xs-6">
									<form:label path="" for="number">Min Size</form:label>
									<form:input path="minSize" type="number" class="form-control"
										name="minSize" />
									<form:errors path="minSize" type="number" class="form-control"
										name="minSize" />
								</div>
								<div class="col-xs-6">
									<form:label path="" for="number">Max Size</form:label>
									<form:input path="maxSize" type="number" class="form-control"
										name="maxSize" />
									<form:errors path="maxSize" type="number" class="form-control"
										name="maxSize" />
								</div>
							</div>
						</div>
						<!-- div ends here-->
						<div class="form-group">
							<form:label path="" for="number">Multipleof</form:label>
							<form:input path="multipleOf" type="number" class="form-control"
								name="multipleOf" />
							<form:errors path="multipleOf" type="number" class="form-control"
								name="multipleOf" />
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-xs-6">
									<form:label path="" for="boolean">Prime:</form:label>
									<form:checkbox path="isPrime" />
									<form:errors path="isPrime" />
									<!--
                                        <form:select path="isPrime">
                                            <option value="true">True</option>
                                            <option value="false">False</option>
                                        </form:select>
                                        -->
								</div>
								<div class="col-xs-6">
									<form:label path="" for="boolean">Distinct:</form:label>
									<form:checkbox path="isDistinct" />
									<form:errors path="isDistinct" />
									<!--  
                                        <form:select path="isDistinct">
                                            <option value="true">True</option>
                                            <option value="false">False</option>
                                        </form:select>
                                        -->
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-xs-6">
									<form:label path="" for="text">Sorted:</form:label>
									<form:select path="sorted">
										<option value="ascending">Ascending</option>
										<option value="descending">Descending</option>
										<option selected="selected" value="none">None</option>
									</form:select>
									<form:errors path="sorted" />
								</div>
								<div class="col-xs-6">
									<form:label path="" for="text">PrintSize:</form:label>
									<form:checkbox path="printArraySize" />
									<form:errors path="printArraySize" />
									<!--  
                                        <form:select path="">
                                            <option value="true">True</option>
                                            <option value="false">False</option>
                                        </form:select>
                                        -->
								</div>
							</div>
						</div>
						<input type="submit" class="btn btn-primary" value="submit" />
					</form:form>
				</div>
				<!-- Array of Numbers Form ends here-->
			</div>

			<button type="button" class="btn btn-primary btn-xl"
				data-toggle="collapse" data-target="#ArrayOfCharacters"
				data-parent="#myAccordion">Array of Characters</button>
			<div id="ArrayOfCharacters" class="collapse" class="container">
				<!-- Array of Characters Form-->
				<div class="center-block"
					style="width: 375px; background: lightgreen; border-radius: 10px; padding: 10px; margin-top: 45px;">
					<h2>Array of Characters</h2>
					<form:form action="arras/characters" method="post"
						commandName="arrayOfCharactersForm">
						<div class="form-group">
							<form:label path="" for="number">Test cases</form:label>
							<form:input path="" type="number" class="form-control"
								name="noOfTestcases" />
							<form:errors path="" type="number" class="form-control"
								name="noOfTestcases" />
						</div>
						<!-- Form Fields are placed in a row-->
						<div class="form-group">
							<div class="row">
								<div class="col-xs-6">
									<form:label path="" for="number">Min Value</form:label>
									<form:input path="" type="number" class="form-control"
										name="minVal" />
									<form:errors path="" type="number" class="form-control"
										name="minVal" />
								</div>
								<div class="col-xs-6">
									<form:label path="" for="number">Max Value</form:label>
									<form:input path="" type="number" class="form-control"
										name="maxVal" />
									<form:errors path="" type="number" class="form-control"
										name="maxVal" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-xs-6">
									<form:label path="" for="number">Min Size</form:label>
									<form:input path="" type="number" class="form-control"
										name="minSize" />
									<form:errors path="" type="number" class="form-control"
										name="minSize" />
								</div>
								<div class="col-xs-6">
									<form:label path="" for="number">Max Size</form:label>
									<form:input path="" type="number" class="form-control"
										name="maxSize" />
									<form:errors path="" type="number" class="form-control"
										name="maxSize" />
								</div>
							</div>
						</div>
						<!-- div ends here-->
						<div class="form-group">
							<div class="row">
								<div class="col-xs-6">
									<form:label path="" for="text">Case:</form:label>
									<form:select path="">
										<option value="upper">upper</option>
										<option value="lower">lower</option>
										<option value="mixed">mixed</option>
									</form:select>
									<form:errors path="" />
								</div>
								<div class="col-xs-6">
									<form:label path="" for="boolean">Distinct:</form:label>
									<form:select path="">
										<option value="true">True</option>
										<option value="false">False</option>
									</form:select>
									<form:errors path="" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-xs-6">
									<form:label path="" for="text">Sorted:</form:label>
									<form:select path="">
										<option value="ascending">Ascending</option>
										<option value="descending">Descending</option>
										<option value="none">None</option>
									</form:select>
									<form:errors path="" />
								</div>
								<div class="col-xs-6">
									<form:label path="" for="text">PrintSize:</form:label>
									<form:checkbox path="printArraySize" />
									<form:errors path="" />
									<!--  
                                        <form:select path="">
                                            <option value="true">True</option>
                                            <option value="false">False</option>
                                       </form:select>
                                       -->
								</div>
							</div>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form:form>
				</div>
				<!-- Array of Characters form ended-->
			</div>
			<button type="button" class="btn btn-primary btn-xl"
				data-toggle="collapse" data-target="#ArrayOfStrings"
				data-parent="#myAccordion">Array Of Strings</button>
			<div id="ArrayOfStrings" class="collapse" class="container">
				<!-- Array of Strings Form-->
				<div class="center-block"
					style="width: 375px; background: lightgreen; border-radius: 10px; padding: 10px; margin-top: 45px;">
					<h2>Array of Strings</h2>
					<form:form action="arrays/strings" method="post"
						commandName="arrayOfStringsForm">
						<div class="form-group">
							<form:label path="" for="number">Test cases</form:label>
							<form:input path="" type="number" class="form-control"
								name="noOfTestcases" />
							<form:errors path="" />
						</div>
						<!-- Form Fields are placed in a row-->
						<div class="form-group">
							<div class="row">
								<div class="col-xs-6">
									<form:label path="" for="number">Min length</form:label>
									<form:input path="" type="number" class="form-control"
										name="minLen" />
									<form:errors path="" />
								</div>
								<div class="col-xs-6">
									<form:label path="" for="number">Max length</form:label>
									<form:input path="" type="number" class="form-control"
										name="maxLen" />
									<form:errors path="" />
								</div>
							</div>
						</div>
						<!-- Form Fields are placed in a row-->
						<div class="form-group">
							<div class="row">
								<div class="col-xs-6">
									<form:label path="" for="text">MinChar Value</form:label>
									<form:input path="" type="text" class="form-control"
										name="minCharValue" />
									<form:errors path="" />
								</div>
								<div class="col-xs-6">
									<form:label path="" for="text">MaxChar Value</form:label>
									<form:input path="" type="text" class="form-control"
										name="maxCharValue" />
									<form:errors path="" />
								</div>
							</div>
						</div>
						<!-- div ends here-->
						<div class="form-group">
							<div class="row">
								<div class="col-xs-6">
									<form:label path="" for="text">Case:</form:label>
									<form:select path="">
										<option value="upper">upper</option>
										<option value="lower">lower</option>
										<option value="mixed">mixed</option>
									</form:select>
									<form:errors path="" />
								</div>
								<div class="col-xs-6">
									<form:label path="" for="boolean">Palindrome:</form:label>
									<form:select path="">
										<option value="true">True</option>
										<option value="false">False</option>
									</form:select>
									<form:errors path="" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-xs-6">
									<form:label path="" for="boolean">Print length:</form:label>
									<form:select path="">
										<option value="true">True</option>
										<option value="false">False</option>
									</form:select>
									<form:errors path="" />
								</div>
								<div class="col-xs-6">
									<form:label path="" for="text">Sorted:</form:label>
									<form:select path="">
										<option value="ascending">Ascending</option>
										<option value="descending">Descending</option>
										<option value="none">None</option>
									</form:select>
									<form:errors path="" />
								</div>
							</div>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form:form>
				</div>
				<!-- Array of characters form ended-->
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#arrayOfNumbersForm").submit(function(event) {
				var str = $("#arrayOfNumbersForm").serialize();
				event.preventDefault();
				$.ajax({
					type : 'POST',
					data : str,
					url : "arrays/numbers",
					async : false,
					dataType : 'json',
					success : function(data) {
						console.log(JSON.stringify(data));
						alert("success");
					},
					error : function(data) {
						console.log(data);
						alert(data.responseJSON.errors);
					}
				});
			});
			$("#arrayOfCharactersForm").submit(function(event) {
				var str = $("#arrayOfCharactersForm").serialize();
				event.preventDefault();
				$.ajax({
					type : 'POST',
					data : str,
					url : "arrays/characters",
					async : false,
					dataType : 'json',
					success : function(data) {
						//console.log(JSON.stringify(data));
						//alert("success");
					},
					error : function(data) {
						//console.log("ERROR");
					}
				});
			});
			$("#arrayOfStringsForm").submit(function(event) {
				var str = $("#arrayOfStringsForm").serialize();
				event.preventDefault();
				$.ajax({
					type : 'POST',
					data : str,
					url : "arrays/strings",
					async : false,
					dataType : 'json',
					success : function(data) {
						//console.log(JSON.stringify(data));
						//alert("success");
					},
					error : function(data) {
						//console.log("ERROR");
					}
				});
			});
		});
	</script>
</body>
</html>