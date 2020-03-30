<!-- Main Footer -->
<footer class="main-footer d-print-none" style="background-color: #292929">
  <div class="text-center">
    This project has received funding from the European Union’s Horizon 2020 research and innovation programme under grant agreement No 825884
    <img  src="https://synchros.eu/wp-content/uploads/europe-stars.jpg" alt="" width="49" height="32">
  </div>

  <div class="row">
    <div class="col-sm-12 col-lg-4">
      <!-- Default to the left -->
      <small><@message "powered-by"/> <a href="https://www.obiba.org">OBiBa Agate</a></small>

    </div>
    <div class="col-sm-12 col-lg-4 text-center">
      <a title="LinkedIn" href="https://www.linkedin.com/in/synchros-linked-a7508a184/" target="_blank" class="pr-2"><i class="fab fa-linkedin"></i></a>
      <a title="Follow us on twitter" href="https://twitter.com/SynchrosTweets" target="_blank" class="pr-2"><i class="fab fa-twitter-square"></i></a>
      <a href="mailto:info@synchros.eu" class="pr-2">info@synchros.eu</a>
    </div>
    <div class="col-sm-12 col-lg-4">
      <!-- To the right -->
      <#if config??>
        <div class="float-right d-none d-sm-inline border-left pl-2 ml-2">
          <strong><@message "copyright"/> &copy; 2020 <a href="${config.portalUrl!"#"}">${config.name!""}</a>.</strong> <@message "all-rights-reserved"/>
        </div>
      </#if>
      <a href="/admin" title="<@message "administration"/>" class="float-right"><i class="fas fa-lock"></i> </a>

    </div>
  </div>
</footer>

