<!-- Default model macros -->
<#include "../libs/study.ftl">

<!-- Custom model macros, to redefine some default model macros -->
<#macro studyDefinition study type>
  <#if study.model??>
    <dl class="row mt-3">
      <#if study.model.startYear??>
        <dt class="col-sm-2">
          <@message "study.start-year"/>
        </dt>
        <dd class="col-sm-10">
          ${study.model.startYear?c}
        </dd>
      </#if>

      <#if study.model.endYear??>
        <dt class="col-sm-2">
          <@message "study.end-year"/>
        </dt>
        <dd class="col-sm-10">
          ${study.model.endYear?c}
        </dd>
      </#if>

      <#if study.model.funding??>
        <dt class="col-sm-2">
          <@message "funding"/>
        </dt>
        <dd class="col-sm-10">
          ${localize(study.model.funding)}
        </dd>
      </#if>

      <#if study.model.info??>
        <dt class="col-sm-2">
          <@message "suppl-info"/>
        </dt>
        <dd class="col-sm-10">
          ${localize(study.model.info)}
        </dd>
      </#if>
    </dl>

    <#if study.model.website??>
      <blockquote>
        <@message "visit"/> <a href="${study.model.website}" target="_blank">${localize(study.acronym)}</a>
      </blockquote>
    </#if>
  </#if>
</#macro>
