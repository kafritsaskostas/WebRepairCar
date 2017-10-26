<#import "/spring.ftl" as spring/>

<head>
  <title> User Repairs</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link rel="stylesheet" type="text/css" href="stylesear.css">
</head>

<body>


<#include "/navbar.ftl">

   <div class="container">
       <h1>User Repairs</h1>





       <p>&nbsp;</p>
       <p>&nbsp;</p>


<#if (repairList??) && (repairList?size > 0 )>

       <table id="repairTable" class="table" >
         <thead>
           <tr>
             <th>#ID</th>
             <th>Service Date</th>
             <th>Service Time</th>
             <th>Service Type</th>
             <th>Service Status</th>
             <th>Plate Number</th>
             <th>Owner Tax Id</th>
             <th>Last Name</th>



           </tr>
         </thead>
         <tbody>

          <#list repairList as repair>


           <tr>
             <th scope="row">${repair?counter}</th>

             <td>${repair.repairDate!""}</td>
             <td>${repair.repairTime!""}</td>
             <td>${repair.repairType!""}</td>
             <td>${repair.repairStatus!""}</td>
             <td>${repair.plateNo}</td>
             <td>${repair.afm}</td>
             <td>${repair.lastname}</td>

           </tr>
          </#list>
           </tbody>
         </table>
           <#else>
                    <div class="alert alert-danger">
             <strong>Error!</strong> No vehicles found.
                    </div>
           </#if>
   </div>
 </body>


