<!-- Macros -->
<#include "libs/header.ftl">

<!DOCTYPE html>
<html lang="${.lang}">
<head>
  <title>${config.name!""}</title>
  <#include "libs/head.ftl">
</head>
<body class="hold-transition layout-top-nav layout-navbar-fixed">
<div class="wrapper">

  <!-- Navbar -->
  <#include "libs/top-navbar.ftl">
  <!-- /.navbar -->


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper mb-5">

    <div class="jumbotron jumbotron-fluid">
      <div class="container">
        <#if config.repositoryEnabled && config.dataAccessEnabled>
          <h1 class="display-4"><@message "data-portal-title"/></h1>
          <p class="lead"><@message "data-portal-text"/></p>
        <#elseif config.repositoryEnabled>
          <h1 class="display-4"><@message "data-repository-portal-title"/></h1>
          <p class="lead"><@message "data-repository-portal-text"/></p>
        <#elseif config.dataAccessEnabled>
          <h1 class="display-4"><@message "data-access-portal-title"/></h1>
          <p class="lead"><@message "data-access-portal-text"/></p>
        </#if>
      </div>
    </div>

    <!-- Main content -->
    <div class="content">
      <div class="container">

        <div class="card">
          <div class="card-body">
            <p>
            The SYNCHROS repository is part of the European Project SYNCHROS: <strong>SYNergies for Cohorts in Health Integrating the ROle of all Stakeholders</strong>.
            </p>
            <blockquote class="quote-secondary">
            SYNCHROS aims to make sustainable recommendations on standards to improve future sample, data collection and data sharing methods and disseminate
            this information so as to contribute to defining an international strategic agenda for better coordination of cohorts globally.
            </blockquote>
            <p>
              For more information, visit <a href="https://synchros.eu" target="_blank">SYNCHROS</a> main website.
            </p>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-2 col-sm-6"></div>
          <div class="col-lg-4 col-sm-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3 id="network-hits">-</h3>
                <p><@message "networks"/></p>
              </div>
              <div class="icon">
                <i class="${networkIcon}"></i>
              </div>
              <a href="${networksLink}" class="small-box-footer"><@message "more-info"/> <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->

          <div class="col-lg-4 col-sm-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3 id="study-hits">-</h3>
                <p><@message "studies"/></p>
              </div>
              <div class="icon">
                <i class="${studyIcon}"></i>
              </div>
              <a href="${studiesLink}" class="small-box-footer"><@message "more-info"/> <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->

          <div class="col-lg-2 col-sm-6"></div>
        </div>

        <div class="callout callout-info">
          <p>
            <strong>What we offer</strong>
          </p>
          <div class="row">
            <div class="col-sm-10">
              <p class="text-justify">
                The SYNCHROS repository that provides a collection of information about the main European and international efforts
                to harmonise and integrate cohort data including details about harmonisation and integration methodology, communication
                technologies used in cohorts and exposure and health risk cohorts.
              </p>
            </div><!-- /.col -->
            <div class="col-sm-2">
              <div class="text-right">
                <button type="button"  onclick="location.href='search${defaultSearchState}';" class="btn btn-success btn-lg">
                  <i class="fas fa-search"></i> <@message "search"/>
                </button>
              </div>
            </div><!-- /.col -->
          </div><!-- /.row -->
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
<#include "libs/index-scripts.ftl">

</body>
</html>

