<!DOCTYPE html>
<html lang="${.lang}">
<head>
  <#include "libs/head.ftl">
  <title>${config.name!""} | Methodology</title>
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
            <h1 class="m-0">Methodology for harmonization and integration</h1>
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
                <h3 class="card-title">Strategy of harmonization</h3>
              </div>
              <div class="card-body">
                <dl>
                  <dt>Prospective harmonization</dt>
                  <dd>
                    Typically used in multi-center studies, this strategy imposes strict standards and protocols from the
                    beginning. All cohort studies share the same study design, survey, meta-data, etc. Some adaptations may
                    occur for individual data collection sites, but the goal is to maintain comparability.
                  </dd>
                  <dt>Ex-ante retrospective harmonization</dt>
                  <dd>
                    This strategy combines data from cohort studies that were not specifically designed to be comparable,
                    but they used standard collection tools and standard operating procedures permitting data to be easily
                    integrated.
                  </dd>
                  <dt>Ex-post retrospective harmonization</dt>
                  <dd>
                    This strategy combines data from cohort studies that were not specifically designed to be comparable,
                    but no standard formats or protocols were used in general. Data can anyway be assessed and edited to
                    achieve commonality through data processing procedures.
                  </dd>
                </dl>
              </div>
            </div>
          </div>
          <div class="col-sm-12 col-lg-6">
            <div class="card card-primary card-outline">
              <div class="card-header">
                <h3 class="card-title">Data processing methods</h3>
              </div>
              <div class="card-body">
                <dl>
                  <dt>Algorithmic</dt>
                  <dd>
                    Harmonize the same measures (continuous variables, categorical, or both) with different but combinable
                    ranges or categories.
                  </dd>
                  <dt>Calibration</dt>
                  <dd>
                    Harmonize to the same metric measure.
                  </dd>
                  <dt>Standardization</dt>
                  <dd>
                    Harmonize the same constructs measured using different scales with no known calibration method or
                    bridging items.
                  </dd>
                  <dt>Latent variable model</dt>
                  <dd>
                    Harmonize the same constructs measured using different scales with no known calibration method but with
                    bridging items present.
                  </dd>
                  <dt>Multiple imputation</dt>
                  <dd>
                    Harmonize datasets (and not variables) with the same set of variables using bridging variables.
                  </dd>
                </dl>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-12 col-lg-6">
            <div class="card card-primary card-outline">
              <div class="card-header">
                <h3 class="card-title">Types of infrastructure</h3>
              </div>
              <div class="card-body">

                <dl>
                  <dt>Data are centrally located</dt>
                  <dd>
                    Data from all studies are stored on the same server.
                  </dd>
                  <dt>Data are in different locations</dt>
                  <dd>
                    Data from each study is stored in their local server. Each study imposes its data restrictions.
                  </dd>
                  <dt>Some centrally, other locally</dt>
                  <dd>
                    Some studies share their datasets to be stored in the same server, and other studies store their
                    datasets in their local server.
                  </dd>
                </dl>
              </div>
            </div>
          </div>
          <div class="col-sm-12 col-lg-6">
            <div class="card card-primary card-outline">
              <div class="card-header">
                <h3 class="card-title">Integrative data analysis</h3>
              </div>
              <div class="card-body">

                <dl>
                  <dt>Meta-analysis</dt>
                  <dd>
                    Combines the results of multiple studies addressing the same variable.
                  </dd>
                  <dt>Pooled-analysis</dt>
                  <dd>
                    Analyses can be carried out at individual-level after pooling data.
                  </dd>
                  <dt>Federated analysis</dt>
                  <dd>
                    Centralized analysis with individual-level data remaining on their local servers.
                  </dd>
                </dl>
              </div>
            </div>
          </div>
        </div>

        <div class="card card-primary card-outline">
          <div class="card-header">
            <h3 class="card-title">Software</h3>
          </div>
          <div class="card-body">
            <dl>
              <dt>OBiBa (Opal/Mica)</dt>
              <dd>
                OBiBa software suite (<a href="https://www.obiba.org/" target="_blank">obiba.org</a>),
                developed by Maelstrom Research (<a href="https://www.maelstrom-research.org" target="_blank">maelstrom-research.org</a>)
                and Epigeny (<a href="https://www.epigeny.io" target="_blank">epigeny.io</a>),
                includes advanced software components enabling data harmonization and federation for study networks that
                aim to harmonize and share data securely among their members.
              </dd>
              <dt>DataShield</dt>
              <dd>
                DataSHIELD is a method that enables advanced statistical analysis of individual-level data from several
                sources without actually pooling the data from these sources together (<a href="http://www.datashield.ac.uk/" target="_blank">datashield.ac.uk</a>).
              </dd>
              <dt>Molgenis</dt>
              <dd>
                Molgenis is an open-source web application to collect, manage, analyze, visualize and share large and
                complex biomedical datasets (https://www.molgenis.org/<a href="" target="_blank"></a>)
              </dd>
              <dt>CharmStats</dt>
              <dd>
                CharmStats allows you to work with your variables, to document the process as you go and even
                electronically publish your completed harmonization for review and citation
                (<a href="https://www.gesis.org/en/services/data-analysis/data-harmonization" target="_blank">gesis.org/en/services/data-analysis/data-harmonization</a>).
              </dd>
              <dt>R / Rmarkdown</dt>
              <dd>
                R is a free software environment for statistical computing and graphics (<a href="https://www.r-project.org/" target="_blank">r-project.org</a>).
                R-markdown turns the R analyses into reproducible documents (<a href="https://rmarkdown.rstudio.com/" target="_blank">rmarkdown.rstudio.com</a>).
              </dd>
              <dt>Stata</dt>
              <dd>
                Stata is a statistical software for data management, statistical analysis, graphics, simulations,
                regression, and custom programming (<a href="https://www.stata.com/" target="_blank">stata.com</a>).
              </dd>
              <dt>SAS</dt>
              <dd>
                SAS is a statistical software suite for data management, advanced analytics, multivariate analysis,
                business intelligence, criminal investigation, and predictive analytics (<a href="https://www.sas.com/" target="_blank">sas.com</a>).
              </dd>
              <dt>SPSS</dt>
              <dd>
                SPSS is a software platform that offers advanced statistical analysis, a vast library of machine
                learning algorithms, text analysis, open-source extensibility, integration with big data and seamless
                deployment into applications (<a href="https://www.ibm.com/analytics/spss-statistics-software" target="_blank">ibm.com/analytics/spss-statistics-software</a>).
              </dd>
            </dl>
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
