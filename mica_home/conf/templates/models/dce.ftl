<!-- DCE macros -->

<!-- DCE model -->
<#macro dceModel dce>
  <dl class="row">
    <#if dce.model.dataSources?? && dce.model.dataSources?size != 0>
      <dt class="col-sm-4" title="<@message "study_taxonomy.vocabulary.populations-dataCollectionEvents-dataSources.description"/>">
        <@message "study_taxonomy.vocabulary.populations-dataCollectionEvents-dataSources.title"/>
      </dt>
      <dd class="col-sm-8">
        <ul class="pl-3">
          <#list dce.model.dataSources as item>
            <li>
              <#assign txt = "study_taxonomy.vocabulary.populations-dataCollectionEvents-dataSources.term." + item + ".title"/>
              <@message txt/>
              <#if item == "others" && dce.model.otherDataSources??>
                : ${dce.model.otherDataSources[.lang]}
              <#elseif  item == "mobile_data_collection" && dce.model.mobileDataCollection??>
                <#assign txt = "study_taxonomy.vocabulary.populations-dataCollectionEvents-mobileDataCollection.term." + dce.model.mobileDataCollection + ".title"/>
                :
                <#if dce.model.mobileDataCollection == "others" && dce.model.otherMobileDataCollection??>
                  ${dce.model.otherMobileDataCollection[.lang]}
                <#else>
                  <@message txt/>
                </#if>
              <#elseif  item == "social_media" && dce.model.socialMedia??>
                <#assign txt = "study_taxonomy.vocabulary.populations-dataCollectionEvents-socialMedia.term." + dce.model.socialMedia + ".title"/>
                :
                <#if dce.model.socialMedia == "others" && dce.model.otherSocialMedia??>
                  ${dce.model.otherSocialMedia[.lang]}
                <#else>
                  <@message txt/>
                </#if>
              <#elseif  item == "geospatial_technology" && dce.model.geospatialTechnology??>
                <#assign txt = "study_taxonomy.vocabulary.populations-dataCollectionEvents-geospatialTechnology.term." + dce.model.geospatialTechnology + ".title"/>
                :
                <#if dce.model.geospatialTechnology == "others" && dce.model.otherGeospatialTechnology??>
                  ${dce.model.otherGeospatialTechnology[.lang]}
                <#else>
                  <@message txt/>
                </#if>
              <#elseif  item == "smart_sensors" && dce.model.socialMedia??>
                <#assign txt = "study_taxonomy.vocabulary.populations-dataCollectionEvents-smartSensors.term." + dce.model.smartSensors + ".title"/>
                :
                <#if dce.model.smartSensors == "others" && dce.model.otherSmartSensors??>
                  ${dce.model.otherSmartSensors[.lang]}
                <#else>
                  <@message txt/>
                </#if>
              <#elseif  item == "internet" && dce.model.internet??>
                <#assign txt = "study_taxonomy.vocabulary.populations-dataCollectionEvents-internet.term." + dce.model.internet + ".title"/>
                :
                <#if dce.model.internet == "others" && dce.model.otherInternet??>
                  ${dce.model.otherInternet[.lang]}
                <#else>
                  <@message txt/>
                </#if>
              <#elseif  item == "crowdsourcing_crowseeding" && dce.model.crowd??>
                <#assign txt = "study_taxonomy.vocabulary.populations-dataCollectionEvents-crowd.term." + dce.model.crowd + ".title"/>
                :
                <@message txt/>
              </#if>
            </li>
          </#list>
        </ul>
      </dd>
    </#if>

    <#if dce.model.bioSamples?? && dce.model.bioSamples?size != 0>
      <dt class="col-sm-4" title="<@message "study_taxonomy.vocabulary.populations-dataCollectionEvents-bioSamples.description"/>">
          <@message "study_taxonomy.vocabulary.populations-dataCollectionEvents-bioSamples.title"/>
      </dt>
      <dd class="col-sm-8">
        <ul class="pl-3">
          <#list dce.model.bioSamples as item>
            <li>
              <#assign txt = "study_taxonomy.vocabulary.populations-dataCollectionEvents-bioSamples.term." + item + ".title"/>
              <@message txt/>
              <#if item == "tissues" && dce.model.tissueTypes??>
                : ${dce.model.tissueTypes[.lang]}
              <#elseif item == "others" && dce.model.otherBioSamples??>
                : ${dce.model.otherBioSamples[.lang]}
              </#if>
            </li>
          </#list>
        </ul>
      </dd>
    </#if>

    <#if dce.model.administrativeDatabases?? && dce.model.administrativeDatabases?size != 0>
      <dt class="col-sm-4" title="<@message "study_taxonomy.vocabulary.populations-dataCollectionEvents-administrativeDatabases.description"/>">
          <@message "study_taxonomy.vocabulary.populations-dataCollectionEvents-administrativeDatabases.title"/>
      </dt>
      <dd class="col-sm-8">
        <ul class="pl-3">
          <#list dce.model.administrativeDatabases as item>
            <li>
              <#assign txt = "study_taxonomy.vocabulary.populations-dataCollectionEvents-administrativeDatabases.term." + item + ".title"/>
              <@message txt/>
            </li>
          </#list>
        </ul>
      </dd>
    </#if>
  </dl>
</#macro>

<!-- DCE modal dialog -->
<#macro dceDialog id dce>
  <div class="modal fade" id="modal-${id}">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">${dce.name[.lang]!""}</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <#if dce.description??>
            <div>${dce.description[.lang]!""}</div>
          </#if>
          <dl class="row">
            <#if dce.start??>
              <dt class="col-sm-4">
                Start date
              </dt>
              <dd class="col-sm-8">
                <div>${dce.start.yearMonth!""}</div>
              </dd>
            </#if>
            <#if dce.end??>
              <dt class="col-sm-4">
                End date
              </dt>
              <dd class="col-sm-8">
                <div>${dce.end.yearMonth!""}</div>
              </dd>
            </#if>
          </dl>
            <@dceModel dce=dce/>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
        </div>
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>
  <!-- /.modal -->
</#macro>
