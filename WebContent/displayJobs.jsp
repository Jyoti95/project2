

<%@page import="bean.Jobs"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="dao.JobOpenings"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Register </title>

  <!-- Bootstrap core CSS -->
  <link href="css" rel="stylesheet">

  <link href="css/bootstrap.min.css" rel="stylesheet">

  <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
  <link href="css/animate.min.css" rel="stylesheet">

  <!-- Custom styling plus plugins -->
  <link href="css/custom.css" rel="stylesheet">
  <link href="css/icheck/flat/green.css" rel="stylesheet">


  <script src="js/jquery.min.js"></script>

 

<!-- <style type="text/css">
.footer {
  position: absolute;
  right: 0;
  bottom: 1000;
  left: 0;
  padding: 1rem;
  background-color: #efefef;
  text-align: center;
}
 -->

</style>
</head>


<body class="nav-md" >

  <div class="container body">


    <div class="main_container">

      <div class="col-md-3 left_col">
        <div class="left_col scroll-view">

          <div class="navbar nav_title" style="border: 0;">
            <a href="index.jsp" class="site_title"><i class="fa fa-paw"></i> <span>Career-Hike..</span></a>
          </div>
          <div class="clearfix"></div>


          <!-- menu prile quick infso -->
          <div class="profile">
            <div class="profile_pic">
              <img src="images/logo.jpg" alt="..." class="img-circle profile_img">
            </div>
            <div class="profile_info">
              <span>Welcome,</span>
               
            </div>
          </div>
          <!-- /menu prile quick info -->

          <br />

          <!-- sidebar menu -->
          <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

            <div class="menu_section">
             
              <ul class="nav side-menu">
                <li><a href="home.jsp"><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                   <!--  <li><a href="index.html">Dashboard</a>
                    </li> -->
                  
                  </ul>
                </li>
                <li><a><i class="fa fa-edit"></i> Companies <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                   <!--  <li><a href="form.html">General Form</a>
                     
                    <li><a href="form_buttons.html">Form Buttons</a>
                    </li> -->
                  </ul>
                </li>
                <li><a><i class="fa fa-desktop"></i> Recruiter <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                   
                  </ul>
                </li>
                <li><a a href="jobs.jsp"><i class="fa fa-table"></i> Jobs <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                   <!--   <li><a href="jobs.jsp">Walkins</a>
                    </li> -->
          <!--           <li><a href="tables_dynamic.html">Table Dynamic</a>
           -->          </li> 
                  </ul>
                </li>
                 
              </ul>
            </div>
           

          </div>
          <!-- /sidebar menu -->

          <!-- /menu footer buttons -->
          <div class="sidebar-footer hidden-small">
            <a data-toggle="tooltip" data-placement="top" title="Settings">
              <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
            </a>
            
          </div>
          <!-- /menu footer buttons -->
        </div>
      </div>

      <!-- top navigation -->
      <div class="top_nav">

        <div class="nav_menu">
          <nav class="" role="navigation">
            <div class="nav toggle">
              <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>

            <ul class="nav navbar-nav navbar-right">
              <!-- <li class="">
              <a href="register1.jsp">Register</a>
              
               
              </li> -->

              <li role="presentation" class="dropdown">
                 
                 <a href="home.jsp">Logout</a>
              </li>
              
               <!-- <li role="presentation" class="dropdown">
                 
                 <a href="companylogin.jsp">Company Login</a>
              </li> -->

            </ul>
          </nav>
        </div>

      </div>
      <!-- /top navigation -->

      <!-- page content -->
      <div class="right_col" role="main">

        <div class="">
          <div class="page-title">
            <div class="title_left">
              
       </div>
     
        <!-- <div >
        <form action="jobsearch">
      <h3>Job Search </h3>
      
      <input type="text" name="skills" placeholder="Skills"> 
      <input type="text" name="qualification" placeholder="Qualification">
      <input type="text" name="location" placeholder="Location">
      <button type="submit" class="btn btn-info"  >
      <span class="glyphicon glyphicon-search"></span> Search
    </button>
    </form>
    </div> -->
    
    
       <div class="container">
       <div class="row">
    <div class="col-sm-4">
    <br>
    <br>
    <br>
    </div>
       </div>
    
    <div class="container">
  <div class="row">
    <div class="col-sm-4">
   <img   src="images/img1.jpg" alt=""  height="200" width="200" >
    </div>
    <div class="col-sm-8">
       
   
<%
JobOpenings j=new JobOpenings();
List<Jobs>  jobs= j.displayJobs();

%>
<table border="1">
<tr>
<td><h3><% out.print("Company Name"); %></h3></td>
<td><h3><% out.print("Designation"); %></h3></td>
<td><h3><% out.print("Salary"); %></h3></td>
<td><h3><% out.print("Location"); %></h3></td>
<td><h3><% out.print("Skills"); %></h3></td>
<td><h3><% out.print("Qualification"); %></h3></td>
<%-- <td><h3><% out.print("Apply"); %></h3></td> --%>
</tr>

<% 
//Iterator iter=jobs.iterator();
for (Iterator<Jobs> iterator = jobs.iterator();iterator.hasNext();){
   Jobs job = (Jobs) iterator.next(); 
  
   %>
   <tr>
   <td width="250px" align="center"><h3><% out.print(job.getCompanyname()); %></h3></td>
   
   
   
   <td width="250px" align="center"><h3><% out.print(job.getDesignation()); %></h3></td>
   
   
   <td width="250px" align="center"><% out.print(job.getSalary()); %></td>
   
    <td width="250px" align="center"><% out.print(job.getLocation()); %></td>
   
   <td width="250px" align="center"><% out.print(job.getSkills()); %></td>
  <td width="250px" align="center"><% out.print(job.getQualification()); %></td>
 <!--  <td width="250px" align="center"><input type="submit" value="Apply"></td>   --> 
 </tr>
 <% 
}
%>
 
     </table>
    </div>
  </div>
  </div></div>  
  </div>
</div>
    
    
    
    
    
    
    
      </div>
      <!-- /page content -->
    </div>

  </div>

  <div id="custom_notifications" class="custom-notifications dsp_none">
    <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
    </ul>
    <div class="clearfix"></div>
    <div id="notif-group" class="tabbed_notifications"></div>
  </div>

  <script src="js/bootstrap.min.js"></script>

  <!-- bootstrap progress js -->
  <script src="js/progressbar/bootstrap-progressbar.min.js"></script>
  <script src="js/nicescroll/jquery.nicescroll.min.js"></script>
  <!-- icheck -->
  <script src="js/icheck/icheck.min.js"></script>
  <!-- pace -->
  <script src="js/pace/pace.min.js"></script>
  <script src="js/custom.js"></script>
  <!-- form validation -->
  <script src="js/validator/validator.js"></script>
  <script>
    // initialize the validator function
    validator.message['date'] = 'not a real date';

    
    
    
    // validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
    $('form')
      .on('blur', 'input[required], input.optional, select.required', validator.checkField)
      .on('change', 'select.required', validator.checkField)
      .on('keypress', 'input[required][pattern]', validator.keypress);
 
     $('.multi.required')
      .on('keyup blur', 'input', function() {
        validator.checkField.apply($(this).siblings().last()[0]);
      });

    // bind the validation to the form submit event
    //$('#send').click('submit');//.prop('disabled', true);

    $('form').submit(function(e) {
      e.preventDefault();
      var submit = true;
      // evaluate the form using generic validaing
      if (!validator.checkAll($(this))) {
        submit = false;
      }

      if (submit)
        this.submit();
      return false;
    });

    /* FOR DEMO ONLY */
    $('#vfields').change(function() {
      $('form').toggleClass('mode2');
    }).prop('checked', false);

    $('#alerts').change(function() {
      validator.defaults.alerts = (this.checked) ? false : true;
      if (this.checked)
        $('form .alert').remove();
    }).prop('checked', false); 
  </script>

</body>

</html>

























