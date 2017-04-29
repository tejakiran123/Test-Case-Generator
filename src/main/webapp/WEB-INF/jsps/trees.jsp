<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/css/styles.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <script src="js/trees.js"></script>        
</head>
<body>
    <!-- Header Section-->
    <header class="container-fluid text-center" >
            <h1>Trees</h1>
    </header>
    <!-- sliding form when button is clicked-->
    <div class="accordion" id="myAccordion">
        <div class="panel">
            <button type="button"  class="btn btn-primary btn-xl"   data-toggle="collapse" data-target="#NumericTree" data-parent="#myAccordion">Numeric Tree</button>
            <div  id="NumericTree" class="collapse" class="container">
                <!--Numeric Tree Form-->
                <div class="center-block" style="width:385px; background:lightgreen;border-radius:10px;padding:10px;margin-top:45px;">
                        <h2>  Numeric Tree </h2>
                        <form action="" method='post'>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <label for="number">Test cases</label>
                                        <input type="number" class="form-control"  name="noOfTestcases">
                                    </div>
                                    <div class="col-xs-6">
                                        <label for="number">No Of Nodes</label>
                                        <input type="number" class="form-control"  name="noOfNodes">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="number">Indexed From</label>
                                <select>
                                    <option value="0">0</option>
                                    <option value="1">1</option>
                                </select>   
                            </div>
                            <!-- Form Fields are placed in a row call script function when user changes option-->
                           <div class="form-group">
                                        <label for="text">Weighted</label>
                                        <select onchange="setDisplay(this,'SetDisplayForWeighted')">
                                            <option value="true" selected>True</option>
                                            <option value="false">False</option>
                                        </select>
                                    <div class="row">
                                    <div id="SetDisplayForWeighted">
                                        <br />
                                        <div class="col-xs-4">
                                            <label for="number">Min Weight</label>
                                            <input type="number" class="form-control"  name="minWeight">
                                        </div>
                                        <div class="col-xs-4">
                                            <label for="number">Max Weight</label>
                                            <input type="number" class="form-control"  name="maxWeight"> 
                                        </div>
                                        <div class="col-xs-4">
                                             <label for="boolean">Distinct:</label>
                                            <select>
                                                <option value="true">True</option>
                                                <option value="false">False</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                             <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-4">
                                        <label for="text">No Of Children</label>
                                        <select onchange="setDisplay(this,'SetDisplayForChildren')">
                                            <option value="random">random</option>
                                            <option value="specify" selected>specify</option>
                                        </select>
                                    </div>
                                    <div id="SetDisplayForChildren">
                                        <div class="col-xs-4">
                                            <br />
                                            <input type="number" class="form-control"  name="noOfChildren">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Directed</label>
                                <select>
                                    <option value="true">True</option>
                                    <option value="false">False</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                    <!-- Numeric Tree Form ends here-->
                </div>


                <button type="button"   class="btn btn-primary btn-xl"   data-toggle="collapse" data-target="#CharacterTree" data-parent="#myAccordion">Character Tree </button>
                <div  id="CharacterTree" class="collapse" class="container">
                <!-- Character Tree Form-->
                <div class="center-block" style="width:375px; background:lightgreen;border-radius:10px;padding:10px;margin-top:45px;">
                        <h2>Character Tree </h2>
                        <form action="" method=''>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <label for="number">Test cases</label>
                                        <input type="number" class="form-control"  name="noOfTestcases">
                                    </div>
                                    <div class="col-xs-6">
                                        <label for="number">No Of Nodes</label>
                                        <input type="number" class="form-control"  name="noOfNodes">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="number">Min Node Char value</label>
                                <input type="number" class="form-control"  name="minNodeCharValue">
                            </div>
                             <div class="form-group">
                                <label for="number">Max Node Char value</label>
                                <input type="number" class="form-control"  name="maxNodeCharValue">
                            </div>
                            <div class="form-group">
                                        <label for="text">Weighted</label>
                                        <select onchange="setDisplay(this,'SetDisplayForWeighted1')">
                                            <option value="true" selected>True</option>
                                            <option value="false">False</option>
                                        </select>
                                    <div class="row">
                                    <div id="SetDisplayForWeighted1">
                                        <br />
                                        <div class="col-xs-4">
                                            <label for="number">Min Weight</label>
                                            <input type="number" class="form-control"  name="minWeight">
                                        </div>
                                        <div class="col-xs-4">
                                            <label for="number">Max Weight</label>
                                            <input type="number" class="form-control"  name="maxWeight"> 
                                        </div>
                                        <div class="col-xs-4">
                                             <label for="boolean">Distinct:</label>
                                            <select>
                                                <option value="true">True</option>
                                                <option value="false">False</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-5">
                                        <label for="text">No Of Children</label>
                                        <select onchange="setDisplay(this,'SetDisplayForChildren1')">
                                            <option value="random">random</option>
                                            <option value="specify" selected>specify</option>
                                        </select>
                                    </div>
                                    <div id="SetDisplayForChildren1">
                                        <div class="col-xs-5">
                                            <br />
                                            <input type="number" class="form-control"  name="noOfChildren">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Directed</label>
                                <select>
                                    <option value="true">True</option>
                                    <option value="false">False</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                    <!-- Character Tree form ended-->
            </div>
            <button type="button"   class="btn btn-primary btn-xl"   data-toggle="collapse" data-target="#FullBinaryTree" data-parent="#myAccordion">Full Binary Tree</button>
            <div  id="FullBinaryTree" class="collapse" class="container">
                <!-- FullBinary Tree Form-->
                <div class="center-block" style="width:375px; background:lightgreen;border-radius:10px;padding:10px;margin-top:45px;">
                        <h2> FullBinary Tree</h2>
                        <form action="" method='post'>
                              <!-- Form Fields are placed in a row-->
                             <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <label for="number">Test cases</label>
                                        <input type="number" class="form-control"  name="noOfTestcases">
                                    </div>
                                    <div class="col-xs-6">
                                        <label for="number">No Of Levels</label>
                                        <input type="number" class="form-control"  name="noOfLevels">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="number">Indexed From</label>
                                <select>
                                    <option value="0">0</option>
                                    <option value="1">1</option>
                                </select>   
                            </div>
                            <!-- Form Fields are placed in a row call script function when user changes option-->
                           <div class="form-group">
                                        <label for="text">Weighted</label>
                                        <select onchange="setDisplay(this,'SetDisplayForWeighted2')">
                                            <option value="true" selected>True</option>
                                            <option value="false">False</option>
                                        </select>
                                    <div class="row">
                                    <div id="SetDisplayForWeighted2">
                                        <br />
                                        <div class="col-xs-4">
                                            <label for="number">Min Weight</label>
                                            <input type="number" class="form-control"  name="minWeight">
                                        </div>
                                        <div class="col-xs-4">
                                            <label for="number">Max Weight</label>
                                            <input type="number" class="form-control"  name="maxWeight"> 
                                        </div>
                                        <div class="col-xs-4">
                                             <label for="boolean">Distinct:</label><br />
                                            <select>
                                                <option value="true">True</option>
                                                <option value="false">False</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                    <!-- NPartite Graph form ended-->
            </div>
             <button type="button"   class="btn btn-primary btn-xl"   data-toggle="collapse" data-target="#SkewTree" data-parent="#myAccordion">Skew Tree</button>
             <div  id="SkewTree" class="collapse" class="container">
                <!-- Skew Tree Form-->
                <div class="center-block" style="width:375px; background:lightgreen;border-radius:10px;padding:10px;margin-top:45px;">
                        <h2> Skew Tree</h2>
                        <form action="" method='post'>
                              <!-- Form Fields are placed in a row-->
                             <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <label for="number">Test cases</label>
                                        <input type="number" class="form-control"  name="noOfTestcases">
                                    </div>
                                    <div class="col-xs-6">
                                        <label for="number">No Of Levels</label>
                                        <input type="number" class="form-control"  name="noOfLevels">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="number">Indexed From</label>
                                <select>
                                    <option value="0">0</option>
                                    <option value="1">1</option>
                                </select>   
                            </div>
                            <!-- Form Fields are placed in a row call script function when user changes option-->
                           <div class="form-group">
                                        <label for="text">Weighted</label>
                                        <select onchange="setDisplay(this,'SetDisplayForWeighted3')">
                                            <option value="true" selected>True</option>
                                            <option value="false">False</option>
                                        </select>
                                    <div class="row">
                                    <div id="SetDisplayForWeighted3">
                                        <br />
                                        <div class="col-xs-4">
                                            <label for="number">Min Weight</label>
                                            <input type="number" class="form-control"  name="minWeight">
                                        </div>
                                        <div class="col-xs-4">
                                            <label for="number">Max Weight</label>
                                            <input type="number" class="form-control"  name="maxWeight"> 
                                        </div>
                                        <div class="col-xs-4">
                                             <label for="boolean">Distinct:</label><br />
                                            <select>
                                                <option value="true">True</option>
                                                <option value="false">False</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                    <!-- Skew Tree form ended-->
            </div>
        </div>
    </div>
</body>
</html>
	