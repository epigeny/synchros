<!-- Network page macros -->

<!-- Network model template -->
<#macro networkModel network>

  <div class="row">
    <div class="col-sm-12 col-lg-6">
      <@networkInfo network=network/>
      <@networkParticipants network=network/>
    </div>

    <div class="col-sm-12 col-lg-6">
      <@networkMethodology network=network/>
    </div>
  </div>

</#macro>

<#macro networkInfo network>
  <div class="card card-info card-outline">
    <div class="card-header">
      <h3 class="card-title">
        <@message "study.general-info"/>
      </h3>
      <div class="card-tools">
        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
          <i class="fas fa-minus"></i></button>
      </div>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
      <dl class="row">

        <#if network.model.yearCreated??>
          <dt class="col-sm-4">
            <@message "initiative.yearCreated.title"/>
          </dt>
          <dd class="col-sm-8">
            ${network.model.yearCreated?c}
          </dd>
        </#if>

        <#if network.model.typesOfCohorts??>
          <dt class="col-sm-4">
            <@message "initiative.typesOfCohorts.title"/>
          </dt>
          <dd class="col-sm-8">
            <ul class="pl-3">
              <#list network.model.typesOfCohorts as type>
                <li>
                  <#assign text = "initiative.typesOfCohorts." + type/>
                  <@message text/>
                </li>
              </#list>
            </ul>
          </dd>
        </#if>

        <#if network.model.countries?? && network.model.countries?size != 0>
          <dt class="col-sm-4">
            <@message "initiative.countries.title"/>
          </dt>
          <dd class="col-sm-8">
            <ul class="pl-3">
              <#list network.model.countries as country>
                <li>
                  <@message country/>
                </li>
              </#list>
            </ul>
          </dd>
        </#if>

        <#if network.model.region??>
          <dt class="col-sm-4">
            <@message "initiative.region.title"/>
          </dt>
          <dd class="col-sm-8">
            ${network.model.region}
          </dd>
        </#if>

        <#if network.model.setting??>
          <dt class="col-sm-4">
            <@message "initiative.setting.title"/>
          </dt>
          <dd class="col-sm-8">
            <#assign text = "initiative.setting." + network.model.setting/>
            <@message text/>
          </dd>
        </#if>

        <#if network.model.funding??>
          <dt class="col-sm-4">
            <@message "initiative.funding.title"/>
          </dt>
          <dd class="col-sm-8">
            ${network.model.funding}
          </dd>
        </#if>

        <#if network.model.cohortCriteria??>
          <dt class="col-sm-4">
            <@message "initiative.cohortCriteria.title"/>
          </dt>
          <dd class="col-sm-8">
            ${network.model.cohortCriteria}
          </dd>
        </#if>

        <#if network.model.socioEnvContext??>
          <dt class="col-sm-4">
            <@message "initiative.socioEnvContext.title"/>
          </dt>
          <dd class="col-sm-8">
            <ul class="pl-3">
              <#list network.model.socioEnvContext as type>
                <li>
                  <#if type == "na">
                    <@message "initiative.na"/>
                  <#else>
                    <#assign text = "initiative.socioEnvContext." + type/>
                    <@message text/>
                    <#if type == "other" && network.model.socioEnvContextOther??>
                      : ${network.model.socioEnvContextOther}
                    </#if>
                  </#if>
                </li>
              </#list>
            </ul>
          </dd>
        </#if>

      </dl>
    </div>
  </div>
</#macro>

<#macro networkParticipants network>
  <div class="card card-info card-outline">
    <div class="card-header">
      <h3 class="card-title">
        <@message "participants"/>
      </h3>
      <div class="card-tools">
        <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
          <i class="fas fa-minus"></i></button>
      </div>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
      <#if network.model.nbParticipants??>
        <p class="border-bottom pb-2">
          <@message "initiative.nbParticipants.title"/>
        </p>
        <dl class="row">
          <#if network.model.nbParticipants.total??>
            <dt class="col-sm-4">
              <@message "initiative.nbParticipantsTotal.title"/>
            </dt>
            <dd class="col-sm-8">
              ${network.model.nbParticipants.total}
            </dd>
          </#if>
          <#if network.model.nbParticipants.harmonized??>
            <dt class="col-sm-4">
              <@message "initiative.nbParticipantsHarmonized.title"/>
            </dt>
            <dd class="col-sm-8">
              ${network.model.nbParticipants.harmonized}
            </dd>
          </#if>
        </dl>
      </#if>
      <#if network.model.age??>
        <p class="border-bottom pb-2">
          <@message "initiative.ageRange.title"/>
        </p>
        <dl class="row">
          <#if network.model.age.min??>
            <dt class="col-sm-4">
              <@message "initiative.ageMin.title"/>
            </dt>
            <dd class="col-sm-8">
              ${network.model.age.min}
            </dd>
          </#if>
          <#if network.model.age.max??>
            <dt class="col-sm-4">
              <@message "initiative.ageMax.title"/>
            </dt>
            <dd class="col-sm-8">
              ${network.model.age.max}
            </dd>
          </#if>
        </dl>
      </#if>
    </div>
  </div>
</#macro>

<#macro networkMethodology network>
  <#if network.model.methodology??>
    <div class="card card-info card-outline">
      <div class="card-header">
        <h3 class="card-title">
          <@message "initiative.methodology.title"/>
        </h3>
        <div class="card-tools">
          <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
            <i class="fas fa-minus"></i></button>
        </div>
      </div>
      <!-- /.card-header -->
      <div class="card-body">
        <dl class="row">
          <#if network.model.methodology.harmonizationStrategy??>
            <dt class="col-sm-6">
              <@message "initiative.harmonizationStrategy.title"/>
            </dt>
            <dd class="col-sm-6">
              <#if network.model.methodology.harmonizationStrategy == "na">
                <@message "initiative.na"/>
              <#else>
                <#assign text = "initiative.harmonizationStrategy." + network.model.methodology.harmonizationStrategy/>
                <@message text/>
              </#if>
            </dd>
          </#if>

          <#if network.model.methodology.harmonizationType??>
            <dt class="col-sm-6">
              <@message "initiative.harmonizationType.title"/>
            </dt>
            <dd class="col-sm-6">
              <#if network.model.methodology.harmonizationType == "na">
                <@message "initiative.na"/>
              <#else>
                <#assign text = "initiative.harmonizationType." + network.model.methodology.harmonizationType/>
                <@message text/>
              </#if>
            </dd>
          </#if>

          <#if network.model.methodology.supplementaryInformation??>
            <dt class="col-sm-6">
              <@message "initiative.supplementaryInformation.title"/>
            </dt>
            <dd class="col-sm-6">
              ${network.model.methodology.supplementaryInformation}
            </dd>
          </#if>
        </dl>

        <#if network.model.methodology.nbCohorts??>
          <p class="border-bottom pb-2">
            <@message "initiative.nbCohorts.title"/>
          </p>
          <dl class="row">
            <#if network.model.methodology.nbCohorts.total??>
              <dt class="col-sm-6">
                <@message "initiative.nbCohortsTotal.title"/>
              </dt>
              <dd class="col-sm-6">
                ${network.model.methodology.nbCohorts.total}
              </dd>
            </#if>
            <#if network.model.methodology.nbCohorts.harmonized??>
              <dt class="col-sm-6">
                <@message "initiative.nbCohortsHarmonized.title"/>
              </dt>
              <dd class="col-sm-6">
                ${network.model.methodology.nbCohorts.harmonized}
              </dd>
            </#if>
            <#if network.model.methodology.moreCohortsToBeHarmonized??>
              <dt class="col-sm-6">
                <@message "initiative.moreCohortsToBeHarmonized.title"/>
              </dt>
              <dd class="col-sm-6">
                <@yesnoModel value=network.model.methodology.moreCohortsToBeHarmonized?c/>
              </dd>
            </#if>
            <#if network.model.methodology.nbHarmonizedVariables??>
              <dt class="col-sm-6">
                <@message "initiative.nbHarmonizedVariables.title"/>
              </dt>
              <dd class="col-sm-6">
                ${network.model.methodology.nbHarmonizedVariables}
              </dd>
            </#if>
          </dl>
        </#if>

        <p class="border-bottom pb-2">
          <@message "initiative.analyses.title"/>
        </p>
        <dl class="row">
          <#if network.model.methodology.software??>
            <dt class="col-sm-6">
              <@message "initiative.software.title"/>
            </dt>
            <dd class="col-sm-6">
              <#if network.model.methodology.software == "na">
                <@message "initiative.na"/>
              <#else>
                <#assign text = "initiative.software." + network.model.methodology.software/>
                <@message text/>
                <#if network.model.methodology.software == "other" && network.model.methodology.softwareOther??>
                  : ${network.model.methodology.softwareOther}
                </#if>
              </#if>
            </dd>
          </#if>
          <#if network.model.methodology.analyses??>
            <dt class="col-sm-6">
              <@message "initiative.analyses.title"/>
            </dt>
            <dd class="col-sm-6">
              <ul class="pl-3">
                <#list network.model.methodology.analyses as type>
                  <li>
                    <#if type == "na">
                      <@message "initiative.na"/>
                    <#else>
                      <#assign text = "initiative.analyses." + type/>
                      <@message text/>
                      <#if type == "other" && network.model.methodology.analysesOther??>
                        : ${network.model.methodology.analysesOther}
                      </#if>
                    </#if>
                  </li>
                </#list>
              </ul>
            </dd>
          </#if>
          <#if network.model.methodology.dataProcessingMethods??>
            <dt class="col-sm-6">
              <@message "initiative.dataProcessingMethods.title"/>
            </dt>
            <dd class="col-sm-6">
              <#if network.model.methodology.dataProcessingMethods == "na">
                <@message "initiative.na"/>
              <#else>
                <#assign text = "initiative.dataProcessingMethods." + network.model.methodology.dataProcessingMethods/>
                <@message text/>
                <#if network.model.methodology.dataProcessingMethods == "others" && network.model.methodology.dataProcessingMethodsOthers??>
                  : ${network.model.methodology.dataProcessingMethodsOthers}
                </#if>
              </#if>
            </dd>
          </#if>
        </dl>

        <#if network.model.methodology.access??>
          <p class="border-bottom pb-2">
            <@message "initiative.access.title"/>
          </p>
          <dl class="row">
            <#if network.model.methodology.access.metadata??>
              <dt class="col-sm-6">
                <@message "initiative.metadata.title"/>
              </dt>
              <dd class="col-sm-6">
                <@yesnoModel value=network.model.methodology.access.metadata/>
              </dd>
            </#if>
            <#if network.model.methodology.access.individualData??>
              <dt class="col-sm-6">
                <@message "initiative.individualData.title"/>
              </dt>
              <dd class="col-sm-6">
                <@yesnoModel value=network.model.methodology.access.individualData/>
              </dd>
            </#if>
          </dl>
        </#if>

      </div>
    </div>
  </#if>
</#macro>

<!-- Yes-no etc. coded answers -->
<#macro yesnoModel value>
  <#if value??>
    <#if value == "yes" || value == "true">
      <i class="fas fa-check"></i>
    <#elseif value == "no" || value == "false">
      <i class="fas fa-times"></i>
    <#elseif value == "na">
      <i class="fas fa-minus"></i>
    <#elseif value == "dk">
      <i class="fas fa-question"></i>
    <#elseif value == "na">
      <@message "initiative.na"/>
    <#elseif value == "under_request">
      <@message "initiative.under_request"/>
    <#else>
      <@message value/>
    </#if>
  <#else>
    <i class="fas fa-times"></i>
  </#if>
</#macro>

<!-- Individual study list: headers -->
<#macro individualStudyTHs>
  <th><@message "study-design"/></th>
  <th><@message "participants"/></th>
  <th><@message "countries"/></th>
</#macro>
<!-- Individual study list: data -->
<#macro individualStudyTDs study>
  <td>
    <#assign code="study_taxonomy.vocabulary.methods-design.term." + study.model.methods.design + ".title"/>
    <@message code/>
  </td>
  <td>${study.model.numberOfParticipants.participant.number}</td>
  <td>
    <#if study.populations?? && study.populations?size != 0>
      <#assign countries = []/>
      <#list study.populations as population>
        <#if population.model.selectionCriteria?? && population.model.selectionCriteria.countriesIso?? && population.model.selectionCriteria.countriesIso?size != 0>
          <#list population.model.selectionCriteria.countriesIso as country>
            <#if countries?seq_contains(country)>
            <#else>
              <#if countries?size != 0>,</#if>
              <#assign countries = countries + [country]/>
              <@message country/>
            </#if>
          </#list>
        </#if>
      </#list>
    </#if>
  </td>
</#macro>

<!-- Harmonization study list: headers -->
<#macro harmonizationStudyTHs>
</#macro>
<!-- Harmonization study list: data -->
<#macro harmonizationStudyTDs study>
</#macro>

<!-- Network list: headers -->
<#macro networkTHs>
</#macro>
<!-- Network list: data -->
<#macro networkTDs network>
</#macro>
