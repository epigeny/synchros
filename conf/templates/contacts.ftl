<!DOCTYPE html>
<html lang="${.lang}">
<head>
  <#include "libs/head.ftl">
  <title>${config.name!""} | Contacts</title>
</head>
<body class="hold-transition layout-top-nav layout-navbar-fixed">
<div class="wrapper">

  <!-- Navbar -->
    <#include "libs/top-navbar.ftl">
  <!-- /.navbar -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header bg-info mb-4">
      <div class="container">
        <div class="row mb-2">
          <div class="col-12">
            <h1 class="m-0">Contacts</h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-lg-6">
            <div class="card card-primary card-outline">
              <div class="card-header">
                <h3 class="card-title">Acknowledgment</h3>
              </div>
              <div class="card-body">
                <p>
                  The work presented herein was made possible using the OBiBa software suite (<a href="https://www.obiba.org/" target="_blank">obiba.org</a>),
                  developed by Maelstrom Research (<a href="https://www.maelstrom-research.org" target="_blank">maelstrom-research.org</a>)
                  and by Epigeny (<a href="https://www.epigeny.io" target="_blank">epigeny.io</a>).
                </p>

                <p>
                  The default data model was designed by <a href="https://www.maelstrom-research.org" target="_blank">Maelstrom Research</a> under
                  the <a href="https://creativecommons.org/licenses/by-nc-nd/4.0/" target="_blank">Creative Commons License with Non-Commercial and No Derivative</a> constraints.
                </p>
              </div>
            </div>
          </div>

          <div class="col-sm-12 col-lg-6">
            <div class="card card-primary card-outline">
              <div class="card-header">
                <h3 class="card-title">Contact</h3>
              </div>
              <div class="card-body">
                Have a question? Send an email to <a href="mailto:info@synchros.eu">info@synchros.eu</a>.
              </div>
            </div>
          </div>
        </div>

      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

    <#include "libs/footer.ftl">
</div>
<!-- ./wrapper -->

<#include "libs/scripts.ftl">

</body>
</html>
