<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Bus Booking Project</title>
    <meta name="description" content="Travel the world by bus. Compare and easily book bus tickets from thousands of bus companies for your next destination with Busbud. ">
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
    <meta name="theme-color" content="#127ccb">
    <link rel="canonical" href="${contextPath}/welcome">
    <style>.row{width:100%;margin:0 auto;max-width:71.4285714286rem}.row:after{clear:both;content:"";display:block}.row .row{width:auto;margin:0 -.7142857143rem;max-width:none}.row .row:after{clear:both;content:"";display:block}.column{padding-left:.7142857143rem;padding-right:.7142857143rem;width:100%;float:left}@media only screen{.column{position:relative;padding-left:.7142857143rem;padding-right:.7142857143rem;float:left}.small-2{width:16.6666666667%}.small-3{width:25%}.small-6{width:50%}.small-9{width:75%}.small-10{width:83.3333333333%}[class*=column]+[class*=column]:last-child{float:right}}@media only screen and (min-width:40.063em){.column{position:relative;padding-left:.7142857143rem;padding-right:.7142857143rem;float:left}.medium-2{width:16.6666666667%}.medium-4{width:33.3333333333%}.medium-5{width:41.6666666667%}.medium-6{width:50%}.medium-12{width:100%}[class*=column]+[class*=column]:last-child{float:right}}@media only screen and (min-width:64.063em){.column{position:relative;padding-left:.7142857143rem;padding-right:.7142857143rem;float:left}.large-3{width:25%}.large-5{width:41.6666666667%}.large-6{width:50%}.large-7{width:58.3333333333%}[class*=column]+[class*=column]:last-child{float:right}}*,:after,:before{box-sizing:border-box}body,html{font-size:14px}body{background:#f6f6f6;padding:0;font-style:normal;line-height:1;position:relative}img{max-width:100%;height:auto;-ms-interpolation-mode:bicubic}.clearfix:after{clear:both;content:"";display:block}img{display:inline-block}select{width:100%}html{font-family:sans-serif;line-height:1.15;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%}body{margin:0}h1{font-size:2em;margin:.67em 0}hr{box-sizing:content-box;height:0;overflow:visible}a{background-color:transparent;-webkit-text-decoration-skip:objects}strong{font-weight:inherit;font-weight:bolder}small{font-size:80%}img{border-style:none}svg:not(:root){overflow:hidden}button,input,select{font-family:sans-serif;font-size:100%;line-height:1.15;margin:0}button,input{overflow:visible}button,select{text-transform:none}button,html [type=button]{-webkit-appearance:button}[type=button]::-moz-focus-inner,button::-moz-focus-inner{border-style:none;padding:0}[type=button]:-moz-focusring,button:-moz-focusring{outline:1px dotted ButtonText}[type=checkbox]{box-sizing:border-box;padding:0}::-webkit-file-upload-button{-webkit-appearance:button;font:inherit}template{display:none}html{box-sizing:border-box;-ms-overflow-style:scrollbar}@-ms-viewport{width:device-width}body{font-family:Helvetica Neue,Helvetica,Arial,sans-serif;font-size:1rem;font-weight:400;line-height:1.5;color:#1f242b;background-color:#f6f6f6}h1{margin-top:0;margin-bottom:.5rem}p{margin-bottom:1rem}ul{margin-bottom:1rem}ul{margin-top:0}ul ul{margin-bottom:0}a{color:#127ccb;text-decoration:none}a:not([href]):not([tabindex]){color:inherit;text-decoration:none}img{vertical-align:middle}a,button,input,label,select{-ms-touch-action:manipulation;touch-action:manipulation}label{display:inline-block;margin-bottom:.5rem}button,input,select{line-height:inherit}h1{margin-bottom:1.1428571429rem;font-family:inherit;font-weight:700;line-height:1.1;color:inherit}h1{font-size:2.5rem}hr{margin-top:.5714285714rem;margin-bottom:.5714285714rem;border:0;border-top:1px solid #dbdbdb}small{font-size:80%;font-weight:400}.btn{display:inline-block;font-weight:500;line-height:1.25;text-align:center;white-space:nowrap;vertical-align:middle;border:1px solid transparent;padding:.8571428571rem 1.1428571429rem;border-radius:.1428571429rem}.btn-primary{color:#fff;background-color:#127ccb;border-color:#127ccb}.dropdown{position:relative}.form-group{margin-bottom:1.15rem}.input-group{position:relative;display:-webkit-box;display:-ms-flexbox;display:flex;width:100%}.input-group-addon{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}.input-group-addon:not(:first-child):not(:last-child){border-radius:0}.input-group-addon{white-space:nowrap;vertical-align:middle}.input-group-addon{padding:.8928571429rem .7142857143rem;margin-bottom:0;font-size:1rem;font-weight:400;line-height:1.25;color:#1f242b;text-align:center;background-color:transparent;border:1px solid transparent;border-radius:.1428571429rem}.input-group-addon:not(:last-child){border-bottom-right-radius:0;border-top-right-radius:0}.input-group-addon:not(:last-child){border-right:0}.input-group-addon:not(:first-child){border-bottom-left-radius:0;border-top-left-radius:0}.nav-link{display:block;padding:.5em 1em}.nav-pills .nav-link{border-radius:.1428571429rem}.justify-content-start{-webkit-box-pack:start!important;-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-between{-webkit-box-pack:justify!important;-ms-flex-pack:justify!important;justify-content:space-between!important}.align-items-center{-webkit-box-align:center!important;-ms-flex-align:center!important;align-items:center!important}@media (min-width:992px){.justify-content-lg-start{-webkit-box-pack:start!important;-ms-flex-pack:start!important;justify-content:flex-start!important}}.d-none{display:none!important}.d-flex{display:-webkit-box!important;display:-ms-flexbox!important;display:flex!important}@media (min-width:992px){.d-lg-none{display:none!important}.d-lg-inline-block{display:inline-block!important}.d-lg-block{display:block!important}.d-lg-flex{display:-webkit-box!important;display:-ms-flexbox!important;display:flex!important}}.float-right{float:right!important}.m-0{margin:0!important}.mb-0{margin-bottom:0!important}.mb-1{margin-bottom:.5714285714rem!important}.ml-1{margin-left:.5714285714rem!important}.mx-4{margin-left:1.4285714286rem!important}.mx-4{margin-right:1.4285714286rem!important}.py-1{padding-top:.5714285714rem!important;padding-bottom:.5714285714rem!important}.text-right{text-align:right!important}.text-center{text-align:center!important}.text-white{color:#fff!important}.text-danger{color:#e74c35!important}.btn{font-size:1rem;font-weight:600;border:none;border-radius:.2857142857rem}.btn:not(.btn-link):not([class*=btn-outline]):not([disabled]){box-shadow:0 1px 1px rgba(0,0,0,.16)}.btn:not(.btn-link):not(.btn-secondary):not([disabled]){text-shadow:none}.btn-cta{color:#fff;background-color:#f19020;border-color:#f19020}body,html{height:100%;box-sizing:border-box}button,html,input,select{font-family:Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif}*{-webkit-font-smoothing:antialiased;-webkit-overflow-scrolling:touch}*,:after,:before{box-sizing:inherit}small{font-size:.8571428571rem}ul{padding-left:0;margin-bottom:0}ul li{padding:.1rem}p{margin-bottom:.5714285714rem}p{margin-top:0}label{margin-bottom:4px}a:not([href]):not([tabindex]){color:#127ccb;fill:#127ccb}.form-group label{min-height:1rem;margin-bottom:4px}@media (max-width:640px){.row.small-collapse>.column{padding:0}}body .content{background-color:#fff}.nav-link{position:relative}.text-black{color:#1f242b;fill:#1f242b}.text-white{color:#fff;fill:#fff}.text-secondary{color:#6b7072;fill:#6b7072;stroke:#6b7072}.text-danger{color:#e74c35;fill:#a94442}.hero{padding:95px 0;background-position:50%;background-size:cover;background-repeat:no-repeat}@media (max-width:991px){.hero{padding:40px 10px}}@media (max-width:640px){.hero{padding:0;background-image:none}}.top-banner{position:relative;left:0;right:0;min-height:64px;-webkit-box-align:center;-ms-flex-align:center;align-items:center;padding:.8571428571rem;line-height:1.4285714286rem;background-color:#127ccb;color:#fff;font-size:.8571428571rem}@media (min-width:641px){.top-banner{-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;padding:1.1428571429rem;font-size:1rem;line-height:1.4285714286rem}}.top-banner__content{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:start;-ms-flex-align:start;align-items:flex-start}.top-banner__content p{max-width:960px;margin:0;font-weight:700}.top-banner__content a{color:#fff;font-weight:700;text-decoration:underline}.top-banner__icon{min-width:1.4285714286rem;margin-right:8px;fill:#5fce8c;-webkit-box-align:start;-ms-flex-align:start;align-items:flex-start}form[autocomplete=off] input::-webkit-contacts-auto-fill-button{visibility:hidden;display:none!important;position:absolute;right:0}.search-form-container label{line-height:1;padding:5px 5px 5px 0;color:#fff}@media only screen and (max-width:40em){.search-form-container{padding:15px 10px 20px}}.search-form input[type=checkbox]{margin-right:5px}.header-subtitle,.header-title{color:#fff}.header-title+.header-subtitle{margin-top:10px;margin-bottom:20px}@media only screen and (max-width:40em){.header-title+.header-subtitle{margin-bottom:0}}.header-title{margin:0 0 20px;font-weight:600;font-size:28px;line-height:32px}@media only screen and (min-width:64.063em){.header-title{margin:10px 0 30px;font-size:36px;font-weight:700;line-height:44px}}@media only screen and (max-width:40em){.header-title{font-size:22px;line-height:24px;margin-top:20px;margin-bottom:0}}.header-subtitle{font-weight:400}@media only screen and (max-width:40em){.header-subtitle{margin-bottom:0}}.search-form .form-group{line-height:1.1;margin:6px 0}.search-form .form-input{width:100%;padding:10px;border:1px solid #eceeef;border-radius:3px;background-color:#fff;text-overflow:ellipsis;white-space:nowrap;box-shadow:inset 0 1px 2px rgba(0,0,0,.08);-webkit-appearance:none;-moz-appearance:none;appearance:none;line-height:20px}.search-form select.form-input{padding:8px 10px}.search-form select.form-input+.input-group-addon{padding:10px}.search-form .text-danger{color:#e74c35;line-height:1.1;font-weight:700}.search-form-inline .form-input{box-shadow:none}.search-form .form-input.disabled,.search-form .form-input.disabled+.input-group-addon use{color:#dbdbdb;fill:#dbdbdb;background-color:#eceeef}.search-form .form-input-inline{min-width:100px}.search-form .input-group{position:relative;display:block;width:auto}.search-form .input-group input,.search-form .input-group select{padding-left:30px}.search-form .input-group-addon{position:absolute;top:50%;padding:10px;-webkit-transform:translateY(-50%);transform:translateY(-50%);line-height:1;z-index:4}.input-group-addon.input-group-addon-clear-icon{right:10px;padding:5px}.search-form .input-group-addon use{fill:#6b7072}.search-form :-ms-input-placeholder{color:#6b7072}.search-form :-ms-input-placeholder{color:#6b7072}.search-form .btn.btn-cta{background-color:#f19020;width:100%}.search-form-inline .btn.btn-cta{margin-top:0}.search-form .swap-cities-icon{right:0}.search-form .swap-cities-icon use{fill:#127ccb}.search-form-inline .btn-cta{height:52px;width:100%;padding:8px}.input-search-bar{height:52px}.input-search-bar .form-input-label{color:#000;padding:14px;position:absolute;left:0;text-transform:capitalize}.input-search-bar .form-input-label.hidden{display:none}.input-search-bar .form-input-label.date-label{z-index:3;left:3px;right:3px;top:3px;bottom:3px;width:auto;height:auto;border:none;padding:13px 13px 13px 29px}.search-form--toggler select{background-color:#0a72be;padding-right:40px;border:none;outline:none;width:-webkit-fit-content;width:-moz-fit-content;width:fit-content;-webkit-appearance:none}.search-form--toggler svg{position:relative;right:25px}@media only screen and (max-width:40em),only screen and (min-width:40.063em) and (max-width:64em){.search-form .hide-medium-down{display:none}}@media only screen and (min-width:64.063em){.search-form .hide-large{display:none}.search-form-inline .btn.btn-cta:not(.cta-inline){width:300px}.search-form-inline .column-inline:not(:last-of-type){padding-right:0}.search-form-inline .column-inline:not(:first-of-type){padding-left:0}.search-form-inline .column-inline .form-input{border-left-width:1px;border-right-width:1px}.search-form-inline .column-inline:not(:last-of-type) .form-input{border-top-right-radius:0;border-bottom-right-radius:0}.search-form-inline .column-inline:not(:first-of-type) .form-input{border-top-left-radius:0;border-bottom-left-radius:0}.search-form-inline .column-inline.form-group{margin-bottom:0}.search-form-inline .btn.btn-cta{box-shadow:none;margin:0}.search-form-inline .btn-cta{border-bottom-left-radius:0;border-top-left-radius:0}.input-search-bar .form-input{height:52px}}@media only screen and (min-width:40.063em){.input-group-addon.input-group-addon-clear-icon{right:0}}@media only screen and (max-width:40em){.search-form .swap-cities-icon{-webkit-transform:translateY(-50%) rotate(90deg);transform:translateY(-50%) rotate(90deg)}}@media only screen and (max-width:40em),only screen and (min-width:40.063em) and (max-width:64em){.input-search-bar{height:44px}.search-form-inline .column-inline-sm .form-input{border-left-width:1px;border-right-width:1px}.search-form-inline .column-inline-sm .input-group .form-input,.search-form-inline .form-group .input-group .form-input{padding:9px 5px 9px 33px}}@media only screen and (min-width:40.063em) and (max-width:64em){.search-form-inline .column-inline-sm:not(:last-of-type){padding-right:0}.search-form-inline .column-inline-sm:not(:first-of-type){padding-left:0}.search-form-inline .column-inline-sm:first-of-type .form-input{border-top-right-radius:0;border-bottom-right-radius:0}.search-form-inline .column-inline-sm:not(:first-of-type) .form-input{border-top-left-radius:0;border-bottom-left-radius:0}}.calendar .calendar-dates,.calendar .month{width:280px;margin:0 auto}.calendar .month-wrapper{padding:12px;margin:16px 0;color:#1f242b;background-color:#f6f6f6;font-weight:700}.calendar .month-wrapper .month:first-letter{text-transform:uppercase}.calendar .cell{display:inline-block;width:40px;height:40px;margin:0;line-height:40px;text-align:center}.calendar .week{font-weight:600;color:rgba(32,37,43,.87);text-transform:capitalize}.calendar .day{position:relative;border-radius:50%;color:#127ccb}.calendar .day.disabled{color:#dbdbdb}.calendar .day.day_of_week_6,.calendar .day.day_of_week_7{background-color:rgba(18,124,203,.07);border-radius:0}.calendar .day.day_of_week_6.disabled,.calendar .day.day_of_week_7.disabled{background-color:#f6f6f6}.calendar .empty-day{opacity:0}.calendar-dropdown-container{background-color:#fff;position:absolute;z-index:10;margin-top:1px;left:10px;width:300px;box-shadow:0 5px 10px rgba(0,0,0,.2);border-radius:5px}.calendar-dropdown-container .calendar-dropdown-section{border-top:1px solid #dbdbdb;padding:8px 16px;margin-top:10px}.calendar-slider{position:relative}.calendar-slider .calendar-slider--btn-next,.calendar-slider .calendar-slider--btn-previous{position:absolute;top:3px;padding:4px;width:32px;height:32px}.calendar-slider .calendar-slider--btn-previous{left:3px}.calendar-slider .calendar-slider--btn-next{right:3px}.calendar-slider .calendar .month-wrapper{margin-top:0;padding:12px 42px}.passenger-input .passenger-controls{float:right}.passenger-dropdown-container .passenger-input .passenger-count-container .passenger-count,.passenger-dropdown-container .passenger-input .passenger-count-container label,.passenger-input .passenger-count-container .passenger-count,.passenger-input .passenger-count-container label{line-height:40px}@media only screen and (max-width:40em){.passenger-dropdown-container .passenger-input .passenger-count-container .passenger-count,.passenger-dropdown-container .passenger-input .passenger-count-container label,.passenger-input .passenger-count-container .passenger-count,.passenger-input .passenger-count-container label{line-height:50px}}.passenger-input .passenger-count{color:#1f242b;margin:0 15px;position:relative;top:-5px}.passenger-dropdown-section{border-bottom:1px solid #dbdbdb;padding:8px 16px}.passenger-dropdown-section .passenger-count-container .passenger-count{display:inline-block}.passenger-input label{font-weight:700}.passenger-input button{background-color:transparent;border:none;color:#127ccb;fill:#127ccb;padding:16px}.passenger-input button[disabled]{color:#6b7072;fill:#6b7072;opacity:.5}.passenger-input button:last-of-type{margin-right:-16px}.passenger-input button svg{height:20px;width:20px}.passenger-age-containers.well{padding:5px 11px 10px;margin:10px -10px 5px}.passenger-dropdown-container{background-color:#fff;position:absolute;z-index:10;margin-top:1px;right:10px;width:275px;box-shadow:0 5px 10px rgba(0,0,0,.2);border-radius:5px}.passenger-dropdown-container strong{font-weight:700}.passenger-dropdown-container .passenger-count-container label,.passenger-dropdown-container .passenger-wheelchair-container label{margin:0;padding:0}.passenger-wheelchair-container label{display:block}.passenger-wheelchair-container label span{color:#1f242b}.passenger-dropdown-container .passenger-count-container label,.passenger-dropdown-container .passenger-wheelchair-container label,.passenger-dropdown-container .text-secondary{color:#1f242b;font-weight:400;text-shadow:none}.passenger-wheelchair-container .passenger-wheelchair-input-group,.passenger-wheelchair-container .passenger-wheelchair-title{padding:10px 0;line-height:16px}.passenger-wheelchair-container label{font-weight:400}.passenger-wheelchair-container .passenger-wheelchair-input-group input,.passenger-wheelchair-container .passenger-wheelchair-title input{margin-top:2px}.passenger-wheelchair-container .float-right{float:right}.passenger-dropdown-container .passenger-input:nth-child(2n){background-color:#fff}.passenger-dropdown-container .passenger-input button{padding:8px}@media only screen and (max-width:40em){.search-form-inline .passenger-age-container{margin-bottom:10px}.search-form-inline .passenger-age-containers.well{margin:5px -10px 0}}.bb-dropdown{position:absolute;width:200px;right:15px;margin-top:9px;border-radius:3px;background:#fff;box-shadow:0 1px 3px rgba(0,0,0,.24);z-index:50;line-height:25px;max-height:0;overflow-y:scroll}.bb-dropdown .list-item{padding:0;list-style-type:none}.bb-dropdown .list-item a{padding:5px 20px;text-align:left;display:block;color:#6b7072;text-decoration:none}.bb-dropdown .list-item a.active{background:#f6f6f6;color:#127ccb;font-weight:700}@media (max-width:991px){.header .bb-dropdown{right:0}}.header{background-color:#127ccb;padding:0 16px;font-size:14px;z-index:10;text-align:center;position:relative}@media (max-width:991px){.header{padding:0}}.header-container{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;height:58px;max-width:960px;margin:0 auto;width:100%;color:#fff}@media (max-width:991px){.header>.header-container{padding:0 18px}}@media (min-width:992px){.header>.header-container{height:auto;padding-top:24px;padding-bottom:16px}}.header .nav-link{color:#fff;fill:#fff;font-weight:700}@media (max-width:991px){.header .nav-link{padding-right:0}}.header .nav-pills{width:20vw;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:end;-ms-flex-pack:end;justify-content:flex-end}@media (min-width:992px){.header .nav-pills{width:auto;margin-left:auto}}.header .nav-pills .nav-icon{opacity:.5;vertical-align:sub}.header .nav-pills .nav-item{display:inline-block;padding:0 5px}@media (max-width:991px){.header .nav-pills .nav-item{padding-right:0}}.header--mobile-logo{width:20vw}.header{background-color:transparent;box-shadow:none;position:absolute;width:100%}.hero{position:relative;padding:50px 0 0;background-color:#127ccb}@media (min-width:641px){.hero{padding:76px 0 0}}@media only screen and (min-width:64.063em){.hero{padding:96px 0}}.hero--cvv{box-shadow:inset 0 1px hsla(0,0%,100%,.25)}.banner-section{text-align:center;padding:20px 0}@media only screen and (max-width:40em){.banner-section.banner-section--usp{text-align:left;padding:0}.banner-section.banner-section--usp .banner-section-row{padding:15px;border-bottom:1px solid #dbdbdb}.banner-section.banner-section--usp .banner-img{margin-top:3px;margin-bottom:0;height:auto}.banner-section.banner-section--usp .banner-info{font-size:16px;text-align:left;margin-bottom:0}}.banner-section.banner-section--light{background-color:#fff}.banner-img{height:50px;margin:20px 0}.banner-title{font-size:20px;line-height:26px;margin-bottom:20px;color:#1f242b;font-weight:700;text-align:center}.banner-info,.banner-title{color:#1f242b}.banner-info{margin-top:10px}.banner-header-title{font-size:2em;font-weight:700;line-height:1.5}.landing-page-content{padding-top:2.285714286em}</style>
    <link rel="preload" href="https://busbud-pubweb-assets.global.ssl.fastly.net/css/972d387.landing.css" as="style" onload="this.onload=null;this.rel='stylesheet'">
    <link rel="preload" href="https://busbud-pubweb-assets.global.ssl.fastly.net/js/83c645b.landing-page-bundle.js" as="script">
    <link rel="prefetch" href="https://busbud-pubweb-assets.global.ssl.fastly.net/js/f1ee0dd.vendor-apps-bundle.js">
    <link rel="prefetch" href="https://busbud-pubweb-assets.global.ssl.fastly.net/css/4a975af.app-bb.css">
    <style>.lazy-load,.lazy-loaded{-webkit-transition:opacity .3s;transition:opacity .3s;opacity:0}.lazy-loaded{opacity:1}</style>
  </head>
  <body>
    <div class="content" id="content-atf">
      <div class="top-banner d-flex">
        <div class="top-banner__content">
          
            
          
        </div>
      </div>
      <div class="d-flex header">
        <div class="header-container justify-content-between justify-content-lg-start">
          <div class="d-flex d-lg-none justify-content-start header--mobile-logo">
            <a href="/en" class="d-flex">
              
                
              
            </a>
          </div>
          <div class="d-none d-lg-block">
            <a href="/en" class="d-flex">
              
                
              
            </a>
          </div>
          <ul class="nav-pills d-flex">
            <li class="nav-item dropdown d-none d-lg-flex">
              <div><a id="js-header-signin-link" href="${contextPath}/login" class="pill nav-link">Sign in</a></div>
            </li>
          </ul>
        </div>
      </div>
      <div class="hero hero--cvv">
        <div class="row">
          <div class="column">
            <p class="header-title mb-0">Please stay safe.<br/>Only travel if it&#x27;s essential.</p>
            <p class="header-subtitle"><strong>During these difficult times, staying home is the best way to take care of our world.</strong></p>
          </div>
        </div>
        <div class="search-form-container">
          <form id="search-form" autoComplete="off" novalidate="" class="search-form search-form-inline">
            <input type="hidden" name="form_submitted_without_js" value="1" tabindex="-1"/>
            <div class="">
              <div class="row small-collapse mb-1">
                <div class="column column-inline small-9 large-3">
                  <div class="d-flex align-items-center search-form--toggler">
                    <select id="roundtrip-toggler" class="btn btn-primary py-1">
                      <option selected="" value="one-way">One way</option>
                      <option value="roundtrip">Round trip</option>
                    </select>
                    
                      
                    
                  </div>
                </div>
              </div>
              <div class="row small-collapse">
                <div class="column column-inline large-5">
                  <div class="row">
                    <div class="column column-inline medium-6 form-group large-6">
                      <div class="input-group input-search-bar">
                        <label style="display:none">Leaving from</label><input style="opacity:0;position:absolute;z-index:-1;top:-10000px" tabindex="-1"/><input id="origin-c1ty-input" class="form-input disabled" placeholder="Leaving from" title="Leaving from" value="Chicago"/>
                        <i class="input-group-addon">
                          
                            
                          
                        </i>
                        <i id="swap-cities-icon" class="input-group-addon clickable swap-cities-icon">
                          
                            
                          
                        </i>
                      </div>
                    </div>
                    <div class="column column-inline medium-6 form-group large-6">
                      <div class="input-group input-search-bar">
                        <label style="display:none">Going to</label><input style="opacity:0;position:absolute;z-index:-1;top:-10000px" tabindex="-1"/><input id="destination-c1ty-input" class="form-input disabled" placeholder="Going to" title="Going to" value="Mexico City"/>
                        <i class="input-group-addon">
                          
                            
                          
                        </i>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="column column-inline large-7">
                  <div class="row">
                    <div class="column column-inline form-group column-inline-sm large-3 medium-5">
                      <div class="input-group input-search-bar">
                        <label style="display:none">Departure date</label><input readonly="" id="outbound-date-input" class="form-input disabled" placeholder="Departure date" aria-label="Departure date" name="outbound_date" value=""/><label for="outbound-date-input" id="outbound-date-label" class="form-input form-input-label date-label hidden" aria-hidden="true"></label>
                        <i class="input-group-addon">
                          
                            
                          
                        </i>
                      </div>
                      <div id="outbound-calendar-dropdown">
                        <div class="calendar-dropdown-container js-dropdown-container" style="display:none">
                          <div class="calendar-slider">
                            <div class="calendar-slider--btn-previous">
                              
                                
                              
                            </div>
                            <div class="calendar-slider--btn-next">
                              
                                
                              
                            </div>
                            <div class="calendar-group">
                              <div class="calendar calendar-5">
                                <div class="month-wrapper">
                                  <div class="month">June</div>
                                </div>
                                <div class="calendar-dates">
                                  <div class="cell week">Su</div>
                                  <div class="cell week">Mo</div>
                                  <div class="cell week">Tu</div>
                                  <div class="cell week">We</div>
                                  <div class="cell week">Th</div>
                                  <div class="cell week">Fr</div>
                                  <div class="cell week">Sa</div>
                                  <div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell day day_of_week_1 disabled" data-date="2020-06-01">1</div>
                                    <div class="cell day day_of_week_2 disabled" data-date="2020-06-02">2</div>
                                    <div class="cell day day_of_week_3 disabled" data-date="2020-06-03">3</div>
                                    <div class="cell day day_of_week_4 disabled" data-date="2020-06-04">4</div>
                                    <div class="cell day day_of_week_5 disabled" data-date="2020-06-05">5</div>
                                    <div class="cell day day_of_week_6 disabled" data-date="2020-06-06">6</div>
                                    <div class="cell day day_of_week_7 disabled" data-date="2020-06-07">7</div>
                                    <div class="cell day day_of_week_1 disabled" data-date="2020-06-08">8</div>
                                    <div class="cell day day_of_week_2 disabled" data-date="2020-06-09">9</div>
                                    <div class="cell day day_of_week_3 disabled" data-date="2020-06-10">10</div>
                                    <div class="cell day day_of_week_4 disabled" data-date="2020-06-11">11</div>
                                    <div class="cell day day_of_week_5 disabled" data-date="2020-06-12">12</div>
                                    <div class="cell day day_of_week_6 disabled" data-date="2020-06-13">13</div>
                                    <div class="cell day day_of_week_7 disabled" data-date="2020-06-14">14</div>
                                    <div class="cell day day_of_week_1 disabled" data-date="2020-06-15">15</div>
                                    <div class="cell day day_of_week_2 disabled" data-date="2020-06-16">16</div>
                                    <div class="cell day day_of_week_3 disabled" data-date="2020-06-17">17</div>
                                    <div class="cell day day_of_week_4 disabled" data-date="2020-06-18">18</div>
                                    <div class="cell day day_of_week_5 disabled" data-date="2020-06-19">19</div>
                                    <div class="cell day day_of_week_6 disabled" data-date="2020-06-20">20</div>
                                    <div class="cell day day_of_week_7 disabled" data-date="2020-06-21">21</div>
                                    <div class="cell day day_of_week_1 disabled" data-date="2020-06-22">22</div>
                                    <div class="cell day day_of_week_2" data-date="2020-06-23">23</div>
                                    <div class="cell day day_of_week_3" data-date="2020-06-24">24</div>
                                    <div class="cell day day_of_week_4" data-date="2020-06-25">25</div>
                                    <div class="cell day day_of_week_5" data-date="2020-06-26">26</div>
                                    <div class="cell day day_of_week_6" data-date="2020-06-27">27</div>
                                    <div class="cell day day_of_week_7" data-date="2020-06-28">28</div>
                                    <div class="cell day day_of_week_1" data-date="2020-06-29">29</div>
                                    <div class="cell day day_of_week_2" data-date="2020-06-30">30</div>
                                  </div>
                                </div>
                              </div>
                              <div class="calendar calendar-6">
                                <div class="month-wrapper">
                                  <div class="month">July</div>
                                </div>
                                <div class="calendar-dates">
                                  <div class="cell week">Su</div>
                                  <div class="cell week">Mo</div>
                                  <div class="cell week">Tu</div>
                                  <div class="cell week">We</div>
                                  <div class="cell week">Th</div>
                                  <div class="cell week">Fr</div>
                                  <div class="cell week">Sa</div>
                                  <div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell day day_of_week_3" data-date="2020-07-01">1</div>
                                    <div class="cell day day_of_week_4" data-date="2020-07-02">2</div>
                                    <div class="cell day day_of_week_5" data-date="2020-07-03">3</div>
                                    <div class="cell day day_of_week_6" data-date="2020-07-04">4</div>
                                    <div class="cell day day_of_week_7" data-date="2020-07-05">5</div>
                                    <div class="cell day day_of_week_1" data-date="2020-07-06">6</div>
                                    <div class="cell day day_of_week_2" data-date="2020-07-07">7</div>
                                    <div class="cell day day_of_week_3" data-date="2020-07-08">8</div>
                                    <div class="cell day day_of_week_4" data-date="2020-07-09">9</div>
                                    <div class="cell day day_of_week_5" data-date="2020-07-10">10</div>
                                    <div class="cell day day_of_week_6" data-date="2020-07-11">11</div>
                                    <div class="cell day day_of_week_7" data-date="2020-07-12">12</div>
                                    <div class="cell day day_of_week_1" data-date="2020-07-13">13</div>
                                    <div class="cell day day_of_week_2" data-date="2020-07-14">14</div>
                                    <div class="cell day day_of_week_3" data-date="2020-07-15">15</div>
                                    <div class="cell day day_of_week_4" data-date="2020-07-16">16</div>
                                    <div class="cell day day_of_week_5" data-date="2020-07-17">17</div>
                                    <div class="cell day day_of_week_6" data-date="2020-07-18">18</div>
                                    <div class="cell day day_of_week_7" data-date="2020-07-19">19</div>
                                    <div class="cell day day_of_week_1" data-date="2020-07-20">20</div>
                                    <div class="cell day day_of_week_2" data-date="2020-07-21">21</div>
                                    <div class="cell day day_of_week_3" data-date="2020-07-22">22</div>
                                    <div class="cell day day_of_week_4" data-date="2020-07-23">23</div>
                                    <div class="cell day day_of_week_5" data-date="2020-07-24">24</div>
                                    <div class="cell day day_of_week_6" data-date="2020-07-25">25</div>
                                    <div class="cell day day_of_week_7" data-date="2020-07-26">26</div>
                                    <div class="cell day day_of_week_1" data-date="2020-07-27">27</div>
                                    <div class="cell day day_of_week_2" data-date="2020-07-28">28</div>
                                    <div class="cell day day_of_week_3" data-date="2020-07-29">29</div>
                                    <div class="cell day day_of_week_4" data-date="2020-07-30">30</div>
                                    <div class="cell day day_of_week_5" data-date="2020-07-31">31</div>
                                  </div>
                                </div>
                              </div>
                              <div class="calendar calendar-7">
                                <div class="month-wrapper">
                                  <div class="month">August</div>
                                </div>
                                <div class="calendar-dates">
                                  <div class="cell week">Su</div>
                                  <div class="cell week">Mo</div>
                                  <div class="cell week">Tu</div>
                                  <div class="cell week">We</div>
                                  <div class="cell week">Th</div>
                                  <div class="cell week">Fr</div>
                                  <div class="cell week">Sa</div>
                                  <div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell day day_of_week_6" data-date="2020-08-01">1</div>
                                    <div class="cell day day_of_week_7" data-date="2020-08-02">2</div>
                                    <div class="cell day day_of_week_1" data-date="2020-08-03">3</div>
                                    <div class="cell day day_of_week_2" data-date="2020-08-04">4</div>
                                    <div class="cell day day_of_week_3" data-date="2020-08-05">5</div>
                                    <div class="cell day day_of_week_4" data-date="2020-08-06">6</div>
                                    <div class="cell day day_of_week_5" data-date="2020-08-07">7</div>
                                    <div class="cell day day_of_week_6" data-date="2020-08-08">8</div>
                                    <div class="cell day day_of_week_7" data-date="2020-08-09">9</div>
                                    <div class="cell day day_of_week_1" data-date="2020-08-10">10</div>
                                    <div class="cell day day_of_week_2" data-date="2020-08-11">11</div>
                                    <div class="cell day day_of_week_3" data-date="2020-08-12">12</div>
                                    <div class="cell day day_of_week_4" data-date="2020-08-13">13</div>
                                    <div class="cell day day_of_week_5" data-date="2020-08-14">14</div>
                                    <div class="cell day day_of_week_6" data-date="2020-08-15">15</div>
                                    <div class="cell day day_of_week_7" data-date="2020-08-16">16</div>
                                    <div class="cell day day_of_week_1" data-date="2020-08-17">17</div>
                                    <div class="cell day day_of_week_2" data-date="2020-08-18">18</div>
                                    <div class="cell day day_of_week_3" data-date="2020-08-19">19</div>
                                    <div class="cell day day_of_week_4" data-date="2020-08-20">20</div>
                                    <div class="cell day day_of_week_5" data-date="2020-08-21">21</div>
                                    <div class="cell day day_of_week_6" data-date="2020-08-22">22</div>
                                    <div class="cell day day_of_week_7" data-date="2020-08-23">23</div>
                                    <div class="cell day day_of_week_1" data-date="2020-08-24">24</div>
                                    <div class="cell day day_of_week_2" data-date="2020-08-25">25</div>
                                    <div class="cell day day_of_week_3" data-date="2020-08-26">26</div>
                                    <div class="cell day day_of_week_4" data-date="2020-08-27">27</div>
                                    <div class="cell day day_of_week_5" data-date="2020-08-28">28</div>
                                    <div class="cell day day_of_week_6" data-date="2020-08-29">29</div>
                                    <div class="cell day day_of_week_7" data-date="2020-08-30">30</div>
                                    <div class="cell day day_of_week_1" data-date="2020-08-31">31</div>
                                  </div>
                                </div>
                              </div>
                              <div class="calendar calendar-8">
                                <div class="month-wrapper">
                                  <div class="month">September</div>
                                </div>
                                <div class="calendar-dates">
                                  <div class="cell week">Su</div>
                                  <div class="cell week">Mo</div>
                                  <div class="cell week">Tu</div>
                                  <div class="cell week">We</div>
                                  <div class="cell week">Th</div>
                                  <div class="cell week">Fr</div>
                                  <div class="cell week">Sa</div>
                                  <div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell day day_of_week_2" data-date="2020-09-01">1</div>
                                    <div class="cell day day_of_week_3" data-date="2020-09-02">2</div>
                                    <div class="cell day day_of_week_4" data-date="2020-09-03">3</div>
                                    <div class="cell day day_of_week_5" data-date="2020-09-04">4</div>
                                    <div class="cell day day_of_week_6" data-date="2020-09-05">5</div>
                                    <div class="cell day day_of_week_7" data-date="2020-09-06">6</div>
                                    <div class="cell day day_of_week_1" data-date="2020-09-07">7</div>
                                    <div class="cell day day_of_week_2" data-date="2020-09-08">8</div>
                                    <div class="cell day day_of_week_3" data-date="2020-09-09">9</div>
                                    <div class="cell day day_of_week_4" data-date="2020-09-10">10</div>
                                    <div class="cell day day_of_week_5" data-date="2020-09-11">11</div>
                                    <div class="cell day day_of_week_6" data-date="2020-09-12">12</div>
                                    <div class="cell day day_of_week_7" data-date="2020-09-13">13</div>
                                    <div class="cell day day_of_week_1" data-date="2020-09-14">14</div>
                                    <div class="cell day day_of_week_2" data-date="2020-09-15">15</div>
                                    <div class="cell day day_of_week_3" data-date="2020-09-16">16</div>
                                    <div class="cell day day_of_week_4" data-date="2020-09-17">17</div>
                                    <div class="cell day day_of_week_5" data-date="2020-09-18">18</div>
                                    <div class="cell day day_of_week_6" data-date="2020-09-19">19</div>
                                    <div class="cell day day_of_week_7" data-date="2020-09-20">20</div>
                                    <div class="cell day day_of_week_1" data-date="2020-09-21">21</div>
                                    <div class="cell day day_of_week_2" data-date="2020-09-22">22</div>
                                    <div class="cell day day_of_week_3" data-date="2020-09-23">23</div>
                                    <div class="cell day day_of_week_4" data-date="2020-09-24">24</div>
                                    <div class="cell day day_of_week_5" data-date="2020-09-25">25</div>
                                    <div class="cell day day_of_week_6" data-date="2020-09-26">26</div>
                                    <div class="cell day day_of_week_7" data-date="2020-09-27">27</div>
                                    <div class="cell day day_of_week_1" data-date="2020-09-28">28</div>
                                    <div class="cell day day_of_week_2" data-date="2020-09-29">29</div>
                                    <div class="cell day day_of_week_3" data-date="2020-09-30">30</div>
                                  </div>
                                </div>
                              </div>
                              <div class="calendar calendar-9">
                                <div class="month-wrapper">
                                  <div class="month">October</div>
                                </div>
                                <div class="calendar-dates">
                                  <div class="cell week">Su</div>
                                  <div class="cell week">Mo</div>
                                  <div class="cell week">Tu</div>
                                  <div class="cell week">We</div>
                                  <div class="cell week">Th</div>
                                  <div class="cell week">Fr</div>
                                  <div class="cell week">Sa</div>
                                  <div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell day day_of_week_4" data-date="2020-10-01">1</div>
                                    <div class="cell day day_of_week_5" data-date="2020-10-02">2</div>
                                    <div class="cell day day_of_week_6" data-date="2020-10-03">3</div>
                                    <div class="cell day day_of_week_7" data-date="2020-10-04">4</div>
                                    <div class="cell day day_of_week_1" data-date="2020-10-05">5</div>
                                    <div class="cell day day_of_week_2" data-date="2020-10-06">6</div>
                                    <div class="cell day day_of_week_3" data-date="2020-10-07">7</div>
                                    <div class="cell day day_of_week_4" data-date="2020-10-08">8</div>
                                    <div class="cell day day_of_week_5" data-date="2020-10-09">9</div>
                                    <div class="cell day day_of_week_6" data-date="2020-10-10">10</div>
                                    <div class="cell day day_of_week_7" data-date="2020-10-11">11</div>
                                    <div class="cell day day_of_week_1" data-date="2020-10-12">12</div>
                                    <div class="cell day day_of_week_2" data-date="2020-10-13">13</div>
                                    <div class="cell day day_of_week_3" data-date="2020-10-14">14</div>
                                    <div class="cell day day_of_week_4" data-date="2020-10-15">15</div>
                                    <div class="cell day day_of_week_5" data-date="2020-10-16">16</div>
                                    <div class="cell day day_of_week_6" data-date="2020-10-17">17</div>
                                    <div class="cell day day_of_week_7" data-date="2020-10-18">18</div>
                                    <div class="cell day day_of_week_1" data-date="2020-10-19">19</div>
                                    <div class="cell day day_of_week_2" data-date="2020-10-20">20</div>
                                    <div class="cell day day_of_week_3" data-date="2020-10-21">21</div>
                                    <div class="cell day day_of_week_4" data-date="2020-10-22">22</div>
                                    <div class="cell day day_of_week_5" data-date="2020-10-23">23</div>
                                    <div class="cell day day_of_week_6" data-date="2020-10-24">24</div>
                                    <div class="cell day day_of_week_7" data-date="2020-10-25">25</div>
                                    <div class="cell day day_of_week_1" data-date="2020-10-26">26</div>
                                    <div class="cell day day_of_week_2" data-date="2020-10-27">27</div>
                                    <div class="cell day day_of_week_3" data-date="2020-10-28">28</div>
                                    <div class="cell day day_of_week_4" data-date="2020-10-29">29</div>
                                    <div class="cell day day_of_week_5" data-date="2020-10-30">30</div>
                                    <div class="cell day day_of_week_6" data-date="2020-10-31">31</div>
                                  </div>
                                </div>
                              </div>
                              <div class="calendar calendar-10">
                                <div class="month-wrapper">
                                  <div class="month">November</div>
                                </div>
                                <div class="calendar-dates">
                                  <div class="cell week">Su</div>
                                  <div class="cell week">Mo</div>
                                  <div class="cell week">Tu</div>
                                  <div class="cell week">We</div>
                                  <div class="cell week">Th</div>
                                  <div class="cell week">Fr</div>
                                  <div class="cell week">Sa</div>
                                  <div>
                                    <div class="cell day day_of_week_7" data-date="2020-11-01">1</div>
                                    <div class="cell day day_of_week_1" data-date="2020-11-02">2</div>
                                    <div class="cell day day_of_week_2" data-date="2020-11-03">3</div>
                                    <div class="cell day day_of_week_3" data-date="2020-11-04">4</div>
                                    <div class="cell day day_of_week_4" data-date="2020-11-05">5</div>
                                    <div class="cell day day_of_week_5" data-date="2020-11-06">6</div>
                                    <div class="cell day day_of_week_6" data-date="2020-11-07">7</div>
                                    <div class="cell day day_of_week_7" data-date="2020-11-08">8</div>
                                    <div class="cell day day_of_week_1" data-date="2020-11-09">9</div>
                                    <div class="cell day day_of_week_2" data-date="2020-11-10">10</div>
                                    <div class="cell day day_of_week_3" data-date="2020-11-11">11</div>
                                    <div class="cell day day_of_week_4" data-date="2020-11-12">12</div>
                                    <div class="cell day day_of_week_5" data-date="2020-11-13">13</div>
                                    <div class="cell day day_of_week_6" data-date="2020-11-14">14</div>
                                    <div class="cell day day_of_week_7" data-date="2020-11-15">15</div>
                                    <div class="cell day day_of_week_1" data-date="2020-11-16">16</div>
                                    <div class="cell day day_of_week_2" data-date="2020-11-17">17</div>
                                    <div class="cell day day_of_week_3" data-date="2020-11-18">18</div>
                                    <div class="cell day day_of_week_4" data-date="2020-11-19">19</div>
                                    <div class="cell day day_of_week_5" data-date="2020-11-20">20</div>
                                    <div class="cell day day_of_week_6" data-date="2020-11-21">21</div>
                                    <div class="cell day day_of_week_7" data-date="2020-11-22">22</div>
                                    <div class="cell day day_of_week_1" data-date="2020-11-23">23</div>
                                    <div class="cell day day_of_week_2" data-date="2020-11-24">24</div>
                                    <div class="cell day day_of_week_3" data-date="2020-11-25">25</div>
                                    <div class="cell day day_of_week_4" data-date="2020-11-26">26</div>
                                    <div class="cell day day_of_week_5" data-date="2020-11-27">27</div>
                                    <div class="cell day day_of_week_6" data-date="2020-11-28">28</div>
                                    <div class="cell day day_of_week_7" data-date="2020-11-29">29</div>
                                    <div class="cell day day_of_week_1" data-date="2020-11-30">30</div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="calendar-dropdown-section text-right pa-2"><a class="js-dropdown-close">Close</a></div>
                        </div>
                      </div>
                    </div>
                    <div class="column column-inline form-group column-inline-sm large-3 medium-5 small-9">
                      <div class="input-group input-search-bar">
                        <label style="display:none">Return</label><input readonly="" id="return-date-input" class="form-input disabled return-date-input" placeholder="Return date" aria-label="Return" name="return_date" data-one-way="No return" data-roundtrip="Return date" value=""/><label for="return-date-input" id="return-date-label" class="form-input form-input-label date-label return-date-label hidden" aria-hidden="true"></label>
                        <i id="icon-clear" class="input-group-addon input-group-addon-clear-icon clickable" style="display:none" tabindex="0">
                          
                            
                          
                        </i>
                        <i class="input-group-addon">
                          
                            
                          
                        </i>
                      </div>
                      <div id="return-calendar-dropdown">
                        <div class="calendar-dropdown-container js-dropdown-container" style="display:none">
                          <div class="calendar-slider">
                            <div class="calendar-slider--btn-previous">
                              
                                
                              
                            </div>
                            <div class="calendar-slider--btn-next">
                              
                                
                              
                            </div>
                            <div class="calendar-group">
                              <div class="calendar calendar-5">
                                <div class="month-wrapper">
                                  <div class="month">June</div>
                                </div>
                                <div class="calendar-dates">
                                  <div class="cell week">Su</div>
                                  <div class="cell week">Mo</div>
                                  <div class="cell week">Tu</div>
                                  <div class="cell week">We</div>
                                  <div class="cell week">Th</div>
                                  <div class="cell week">Fr</div>
                                  <div class="cell week">Sa</div>
                                  <div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell day day_of_week_1 disabled" data-date="2020-06-01">1</div>
                                    <div class="cell day day_of_week_2 disabled" data-date="2020-06-02">2</div>
                                    <div class="cell day day_of_week_3 disabled" data-date="2020-06-03">3</div>
                                    <div class="cell day day_of_week_4 disabled" data-date="2020-06-04">4</div>
                                    <div class="cell day day_of_week_5 disabled" data-date="2020-06-05">5</div>
                                    <div class="cell day day_of_week_6 disabled" data-date="2020-06-06">6</div>
                                    <div class="cell day day_of_week_7 disabled" data-date="2020-06-07">7</div>
                                    <div class="cell day day_of_week_1 disabled" data-date="2020-06-08">8</div>
                                    <div class="cell day day_of_week_2 disabled" data-date="2020-06-09">9</div>
                                    <div class="cell day day_of_week_3 disabled" data-date="2020-06-10">10</div>
                                    <div class="cell day day_of_week_4 disabled" data-date="2020-06-11">11</div>
                                    <div class="cell day day_of_week_5 disabled" data-date="2020-06-12">12</div>
                                    <div class="cell day day_of_week_6 disabled" data-date="2020-06-13">13</div>
                                    <div class="cell day day_of_week_7 disabled" data-date="2020-06-14">14</div>
                                    <div class="cell day day_of_week_1 disabled" data-date="2020-06-15">15</div>
                                    <div class="cell day day_of_week_2 disabled" data-date="2020-06-16">16</div>
                                    <div class="cell day day_of_week_3 disabled" data-date="2020-06-17">17</div>
                                    <div class="cell day day_of_week_4 disabled" data-date="2020-06-18">18</div>
                                    <div class="cell day day_of_week_5 disabled" data-date="2020-06-19">19</div>
                                    <div class="cell day day_of_week_6 disabled" data-date="2020-06-20">20</div>
                                    <div class="cell day day_of_week_7 disabled" data-date="2020-06-21">21</div>
                                    <div class="cell day day_of_week_1 disabled" data-date="2020-06-22">22</div>
                                    <div class="cell day day_of_week_2" data-date="2020-06-23">23</div>
                                    <div class="cell day day_of_week_3" data-date="2020-06-24">24</div>
                                    <div class="cell day day_of_week_4" data-date="2020-06-25">25</div>
                                    <div class="cell day day_of_week_5" data-date="2020-06-26">26</div>
                                    <div class="cell day day_of_week_6" data-date="2020-06-27">27</div>
                                    <div class="cell day day_of_week_7" data-date="2020-06-28">28</div>
                                    <div class="cell day day_of_week_1" data-date="2020-06-29">29</div>
                                    <div class="cell day day_of_week_2" data-date="2020-06-30">30</div>
                                  </div>
                                </div>
                              </div>
                              <div class="calendar calendar-6">
                                <div class="month-wrapper">
                                  <div class="month">July</div>
                                </div>
                                <div class="calendar-dates">
                                  <div class="cell week">Su</div>
                                  <div class="cell week">Mo</div>
                                  <div class="cell week">Tu</div>
                                  <div class="cell week">We</div>
                                  <div class="cell week">Th</div>
                                  <div class="cell week">Fr</div>
                                  <div class="cell week">Sa</div>
                                  <div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell day day_of_week_3" data-date="2020-07-01">1</div>
                                    <div class="cell day day_of_week_4" data-date="2020-07-02">2</div>
                                    <div class="cell day day_of_week_5" data-date="2020-07-03">3</div>
                                    <div class="cell day day_of_week_6" data-date="2020-07-04">4</div>
                                    <div class="cell day day_of_week_7" data-date="2020-07-05">5</div>
                                    <div class="cell day day_of_week_1" data-date="2020-07-06">6</div>
                                    <div class="cell day day_of_week_2" data-date="2020-07-07">7</div>
                                    <div class="cell day day_of_week_3" data-date="2020-07-08">8</div>
                                    <div class="cell day day_of_week_4" data-date="2020-07-09">9</div>
                                    <div class="cell day day_of_week_5" data-date="2020-07-10">10</div>
                                    <div class="cell day day_of_week_6" data-date="2020-07-11">11</div>
                                    <div class="cell day day_of_week_7" data-date="2020-07-12">12</div>
                                    <div class="cell day day_of_week_1" data-date="2020-07-13">13</div>
                                    <div class="cell day day_of_week_2" data-date="2020-07-14">14</div>
                                    <div class="cell day day_of_week_3" data-date="2020-07-15">15</div>
                                    <div class="cell day day_of_week_4" data-date="2020-07-16">16</div>
                                    <div class="cell day day_of_week_5" data-date="2020-07-17">17</div>
                                    <div class="cell day day_of_week_6" data-date="2020-07-18">18</div>
                                    <div class="cell day day_of_week_7" data-date="2020-07-19">19</div>
                                    <div class="cell day day_of_week_1" data-date="2020-07-20">20</div>
                                    <div class="cell day day_of_week_2" data-date="2020-07-21">21</div>
                                    <div class="cell day day_of_week_3" data-date="2020-07-22">22</div>
                                    <div class="cell day day_of_week_4" data-date="2020-07-23">23</div>
                                    <div class="cell day day_of_week_5" data-date="2020-07-24">24</div>
                                    <div class="cell day day_of_week_6" data-date="2020-07-25">25</div>
                                    <div class="cell day day_of_week_7" data-date="2020-07-26">26</div>
                                    <div class="cell day day_of_week_1" data-date="2020-07-27">27</div>
                                    <div class="cell day day_of_week_2" data-date="2020-07-28">28</div>
                                    <div class="cell day day_of_week_3" data-date="2020-07-29">29</div>
                                    <div class="cell day day_of_week_4" data-date="2020-07-30">30</div>
                                    <div class="cell day day_of_week_5" data-date="2020-07-31">31</div>
                                  </div>
                                </div>
                              </div>
                              <div class="calendar calendar-7">
                                <div class="month-wrapper">
                                  <div class="month">August</div>
                                </div>
                                <div class="calendar-dates">
                                  <div class="cell week">Su</div>
                                  <div class="cell week">Mo</div>
                                  <div class="cell week">Tu</div>
                                  <div class="cell week">We</div>
                                  <div class="cell week">Th</div>
                                  <div class="cell week">Fr</div>
                                  <div class="cell week">Sa</div>
                                  <div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell day day_of_week_6" data-date="2020-08-01">1</div>
                                    <div class="cell day day_of_week_7" data-date="2020-08-02">2</div>
                                    <div class="cell day day_of_week_1" data-date="2020-08-03">3</div>
                                    <div class="cell day day_of_week_2" data-date="2020-08-04">4</div>
                                    <div class="cell day day_of_week_3" data-date="2020-08-05">5</div>
                                    <div class="cell day day_of_week_4" data-date="2020-08-06">6</div>
                                    <div class="cell day day_of_week_5" data-date="2020-08-07">7</div>
                                    <div class="cell day day_of_week_6" data-date="2020-08-08">8</div>
                                    <div class="cell day day_of_week_7" data-date="2020-08-09">9</div>
                                    <div class="cell day day_of_week_1" data-date="2020-08-10">10</div>
                                    <div class="cell day day_of_week_2" data-date="2020-08-11">11</div>
                                    <div class="cell day day_of_week_3" data-date="2020-08-12">12</div>
                                    <div class="cell day day_of_week_4" data-date="2020-08-13">13</div>
                                    <div class="cell day day_of_week_5" data-date="2020-08-14">14</div>
                                    <div class="cell day day_of_week_6" data-date="2020-08-15">15</div>
                                    <div class="cell day day_of_week_7" data-date="2020-08-16">16</div>
                                    <div class="cell day day_of_week_1" data-date="2020-08-17">17</div>
                                    <div class="cell day day_of_week_2" data-date="2020-08-18">18</div>
                                    <div class="cell day day_of_week_3" data-date="2020-08-19">19</div>
                                    <div class="cell day day_of_week_4" data-date="2020-08-20">20</div>
                                    <div class="cell day day_of_week_5" data-date="2020-08-21">21</div>
                                    <div class="cell day day_of_week_6" data-date="2020-08-22">22</div>
                                    <div class="cell day day_of_week_7" data-date="2020-08-23">23</div>
                                    <div class="cell day day_of_week_1" data-date="2020-08-24">24</div>
                                    <div class="cell day day_of_week_2" data-date="2020-08-25">25</div>
                                    <div class="cell day day_of_week_3" data-date="2020-08-26">26</div>
                                    <div class="cell day day_of_week_4" data-date="2020-08-27">27</div>
                                    <div class="cell day day_of_week_5" data-date="2020-08-28">28</div>
                                    <div class="cell day day_of_week_6" data-date="2020-08-29">29</div>
                                    <div class="cell day day_of_week_7" data-date="2020-08-30">30</div>
                                    <div class="cell day day_of_week_1" data-date="2020-08-31">31</div>
                                  </div>
                                </div>
                              </div>
                              <div class="calendar calendar-8">
                                <div class="month-wrapper">
                                  <div class="month">September</div>
                                </div>
                                <div class="calendar-dates">
                                  <div class="cell week">Su</div>
                                  <div class="cell week">Mo</div>
                                  <div class="cell week">Tu</div>
                                  <div class="cell week">We</div>
                                  <div class="cell week">Th</div>
                                  <div class="cell week">Fr</div>
                                  <div class="cell week">Sa</div>
                                  <div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell day day_of_week_2" data-date="2020-09-01">1</div>
                                    <div class="cell day day_of_week_3" data-date="2020-09-02">2</div>
                                    <div class="cell day day_of_week_4" data-date="2020-09-03">3</div>
                                    <div class="cell day day_of_week_5" data-date="2020-09-04">4</div>
                                    <div class="cell day day_of_week_6" data-date="2020-09-05">5</div>
                                    <div class="cell day day_of_week_7" data-date="2020-09-06">6</div>
                                    <div class="cell day day_of_week_1" data-date="2020-09-07">7</div>
                                    <div class="cell day day_of_week_2" data-date="2020-09-08">8</div>
                                    <div class="cell day day_of_week_3" data-date="2020-09-09">9</div>
                                    <div class="cell day day_of_week_4" data-date="2020-09-10">10</div>
                                    <div class="cell day day_of_week_5" data-date="2020-09-11">11</div>
                                    <div class="cell day day_of_week_6" data-date="2020-09-12">12</div>
                                    <div class="cell day day_of_week_7" data-date="2020-09-13">13</div>
                                    <div class="cell day day_of_week_1" data-date="2020-09-14">14</div>
                                    <div class="cell day day_of_week_2" data-date="2020-09-15">15</div>
                                    <div class="cell day day_of_week_3" data-date="2020-09-16">16</div>
                                    <div class="cell day day_of_week_4" data-date="2020-09-17">17</div>
                                    <div class="cell day day_of_week_5" data-date="2020-09-18">18</div>
                                    <div class="cell day day_of_week_6" data-date="2020-09-19">19</div>
                                    <div class="cell day day_of_week_7" data-date="2020-09-20">20</div>
                                    <div class="cell day day_of_week_1" data-date="2020-09-21">21</div>
                                    <div class="cell day day_of_week_2" data-date="2020-09-22">22</div>
                                    <div class="cell day day_of_week_3" data-date="2020-09-23">23</div>
                                    <div class="cell day day_of_week_4" data-date="2020-09-24">24</div>
                                    <div class="cell day day_of_week_5" data-date="2020-09-25">25</div>
                                    <div class="cell day day_of_week_6" data-date="2020-09-26">26</div>
                                    <div class="cell day day_of_week_7" data-date="2020-09-27">27</div>
                                    <div class="cell day day_of_week_1" data-date="2020-09-28">28</div>
                                    <div class="cell day day_of_week_2" data-date="2020-09-29">29</div>
                                    <div class="cell day day_of_week_3" data-date="2020-09-30">30</div>
                                  </div>
                                </div>
                              </div>
                              <div class="calendar calendar-9">
                                <div class="month-wrapper">
                                  <div class="month">October</div>
                                </div>
                                <div class="calendar-dates">
                                  <div class="cell week">Su</div>
                                  <div class="cell week">Mo</div>
                                  <div class="cell week">Tu</div>
                                  <div class="cell week">We</div>
                                  <div class="cell week">Th</div>
                                  <div class="cell week">Fr</div>
                                  <div class="cell week">Sa</div>
                                  <div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell empty-day">0</div>
                                    <div class="cell day day_of_week_4" data-date="2020-10-01">1</div>
                                    <div class="cell day day_of_week_5" data-date="2020-10-02">2</div>
                                    <div class="cell day day_of_week_6" data-date="2020-10-03">3</div>
                                    <div class="cell day day_of_week_7" data-date="2020-10-04">4</div>
                                    <div class="cell day day_of_week_1" data-date="2020-10-05">5</div>
                                    <div class="cell day day_of_week_2" data-date="2020-10-06">6</div>
                                    <div class="cell day day_of_week_3" data-date="2020-10-07">7</div>
                                    <div class="cell day day_of_week_4" data-date="2020-10-08">8</div>
                                    <div class="cell day day_of_week_5" data-date="2020-10-09">9</div>
                                    <div class="cell day day_of_week_6" data-date="2020-10-10">10</div>
                                    <div class="cell day day_of_week_7" data-date="2020-10-11">11</div>
                                    <div class="cell day day_of_week_1" data-date="2020-10-12">12</div>
                                    <div class="cell day day_of_week_2" data-date="2020-10-13">13</div>
                                    <div class="cell day day_of_week_3" data-date="2020-10-14">14</div>
                                    <div class="cell day day_of_week_4" data-date="2020-10-15">15</div>
                                    <div class="cell day day_of_week_5" data-date="2020-10-16">16</div>
                                    <div class="cell day day_of_week_6" data-date="2020-10-17">17</div>
                                    <div class="cell day day_of_week_7" data-date="2020-10-18">18</div>
                                    <div class="cell day day_of_week_1" data-date="2020-10-19">19</div>
                                    <div class="cell day day_of_week_2" data-date="2020-10-20">20</div>
                                    <div class="cell day day_of_week_3" data-date="2020-10-21">21</div>
                                    <div class="cell day day_of_week_4" data-date="2020-10-22">22</div>
                                    <div class="cell day day_of_week_5" data-date="2020-10-23">23</div>
                                    <div class="cell day day_of_week_6" data-date="2020-10-24">24</div>
                                    <div class="cell day day_of_week_7" data-date="2020-10-25">25</div>
                                    <div class="cell day day_of_week_1" data-date="2020-10-26">26</div>
                                    <div class="cell day day_of_week_2" data-date="2020-10-27">27</div>
                                    <div class="cell day day_of_week_3" data-date="2020-10-28">28</div>
                                    <div class="cell day day_of_week_4" data-date="2020-10-29">29</div>
                                    <div class="cell day day_of_week_5" data-date="2020-10-30">30</div>
                                    <div class="cell day day_of_week_6" data-date="2020-10-31">31</div>
                                  </div>
                                </div>
                              </div>
                              <div class="calendar calendar-10">
                                <div class="month-wrapper">
                                  <div class="month">November</div>
                                </div>
                                <div class="calendar-dates">
                                  <div class="cell week">Su</div>
                                  <div class="cell week">Mo</div>
                                  <div class="cell week">Tu</div>
                                  <div class="cell week">We</div>
                                  <div class="cell week">Th</div>
                                  <div class="cell week">Fr</div>
                                  <div class="cell week">Sa</div>
                                  <div>
                                    <div class="cell day day_of_week_7" data-date="2020-11-01">1</div>
                                    <div class="cell day day_of_week_1" data-date="2020-11-02">2</div>
                                    <div class="cell day day_of_week_2" data-date="2020-11-03">3</div>
                                    <div class="cell day day_of_week_3" data-date="2020-11-04">4</div>
                                    <div class="cell day day_of_week_4" data-date="2020-11-05">5</div>
                                    <div class="cell day day_of_week_5" data-date="2020-11-06">6</div>
                                    <div class="cell day day_of_week_6" data-date="2020-11-07">7</div>
                                    <div class="cell day day_of_week_7" data-date="2020-11-08">8</div>
                                    <div class="cell day day_of_week_1" data-date="2020-11-09">9</div>
                                    <div class="cell day day_of_week_2" data-date="2020-11-10">10</div>
                                    <div class="cell day day_of_week_3" data-date="2020-11-11">11</div>
                                    <div class="cell day day_of_week_4" data-date="2020-11-12">12</div>
                                    <div class="cell day day_of_week_5" data-date="2020-11-13">13</div>
                                    <div class="cell day day_of_week_6" data-date="2020-11-14">14</div>
                                    <div class="cell day day_of_week_7" data-date="2020-11-15">15</div>
                                    <div class="cell day day_of_week_1" data-date="2020-11-16">16</div>
                                    <div class="cell day day_of_week_2" data-date="2020-11-17">17</div>
                                    <div class="cell day day_of_week_3" data-date="2020-11-18">18</div>
                                    <div class="cell day day_of_week_4" data-date="2020-11-19">19</div>
                                    <div class="cell day day_of_week_5" data-date="2020-11-20">20</div>
                                    <div class="cell day day_of_week_6" data-date="2020-11-21">21</div>
                                    <div class="cell day day_of_week_7" data-date="2020-11-22">22</div>
                                    <div class="cell day day_of_week_1" data-date="2020-11-23">23</div>
                                    <div class="cell day day_of_week_2" data-date="2020-11-24">24</div>
                                    <div class="cell day day_of_week_3" data-date="2020-11-25">25</div>
                                    <div class="cell day day_of_week_4" data-date="2020-11-26">26</div>
                                    <div class="cell day day_of_week_5" data-date="2020-11-27">27</div>
                                    <div class="cell day day_of_week_6" data-date="2020-11-28">28</div>
                                    <div class="cell day day_of_week_7" data-date="2020-11-29">29</div>
                                    <div class="cell day day_of_week_1" data-date="2020-11-30">30</div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="calendar-dropdown-section text-right pa-2"><a class="js-dropdown-close">Close</a></div>
                        </div>
                      </div>
                    </div>
                    <div class="column column-inline form-group large-3 medium-2 small-3">
                      <div class="input-group input-search-bar">
                        <input type="hidden" name="adults" value="1"/><input type="hidden" name="children" value="0"/><input type="hidden" name="seniors" value="0"/><input type="hidden" name="adult_wheelchair" value="0"/><input type="hidden" name="child_wheelchair" value="0"/><input type="hidden" name="senior_wheelchair" value="0"/><input type="hidden" name="child_ages" value=""/><input type="hidden" name="senior_ages" value=""/><input type="hidden" name="child_wheelchair_ages" value=""/><input type="hidden" name="senior_wheelchair_ages" value=""/><input id="passenger-input" class="form-input disabled" aria-label="1 passenger" readonly="" value="1 passenger"/>
                        <i class="input-group-addon">
                          
                            
                          
                        </i>
                      </div>
                      <div id="passenger-dropdown">
                        <div class="passenger-dropdown-container js-dropdown-container" style="display:none">
                          <input type="hidden" id="total-passengers-input" value="1 passenger" data-single-translation="1 passenger" data-multiple-translation="[num-placeholder] passengers"/>
                          <div class="passenger-dropdown-section">
                            <div id="adult-count-container" class="passenger-input">
                              <div class="passenger-count-container clearfix">
                                <label>Adults</label>
                                <div class="passenger-controls clearfix">
                                  <button type="button" class="js-remove-button" aria-label="- Adults" disabled="">
                                    
                                      
                                    
                                  </button>
                                  <span class="passenger-count js-passenger-count">1</span>
                                  <button type="button" class="js-add-button" aria-label="+ Adults">
                                    
                                      
                                    
                                  </button>
                                </div>
                              </div>
                            </div>
                            <div id="child-count-container" class="passenger-input">
                              <div class="passenger-count-container clearfix">
                                <label>Children</label>
                                <div class="passenger-controls clearfix">
                                  <button type="button" class="js-remove-button" aria-label="- Children" disabled="">
                                    
                                      
                                    
                                  </button>
                                  <span class="passenger-count js-passenger-count">0</span>
                                  <button type="button" class="js-add-button" aria-label="+ Children">
                                    
                                      
                                    
                                  </button>
                                </div>
                              </div>
                            </div>
                            <div id="senior-count-container" class="passenger-input">
                              <div class="passenger-count-container clearfix">
                                <label>Seniors</label>
                                <div class="passenger-controls clearfix">
                                  <button type="button" class="js-remove-button" aria-label="- Seniors" disabled="">
                                    
                                      
                                    
                                  </button>
                                  <span class="passenger-count js-passenger-count">0</span>
                                  <button type="button" class="js-add-button" aria-label="+ Seniors">
                                    
                                      
                                    
                                  </button>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="passenger-dropdown-section">
                            <div class="passenger-wheelchair-container">
                              <div class="passenger-wheelchair-title"><label><input type="checkbox" id="toggle-wheelchair-checkbox" class="float-right"/><span>Wheelchair<br/><small>Passengers travelling with a wheelchair</small></span></label></div>
                              <div id="wheelchair-checkboxes-container" style="display:none">
                                <div id="adult-wheelchair-container">
                                  <div class="passenger-wheelchair-input-group js-wheelchair-input-group"><label><input type="checkbox" class="float-right js-adult-wheelchair-checkbox"/><span>Adult 1</span></label></div>
                                  <div class="passenger-wheelchair-input-group js-wheelchair-input-group js-wheelchair-checkbox-template" style="display:none"><label><input type="checkbox" class="float-right js-adult-wheelchair-checkbox"/><span>Adult [num-placeholder]</span></label></div>
                                </div>
                                <div id="child-wheelchair-container">
                                  <div id="child-wheelchair-checkbox-container" class="passenger-wheelchair-input-group js-wheelchair-input-group js-wheelchair-checkbox-template" style="display:none"><label><input type="checkbox" class="float-right js-child-wheelchair-checkbox"/><span>Child [num-placeholder]</span></label></div>
                                </div>
                                <div id="senior-wheelchair-container">
                                  <div id="senior-wheelchair-checkbox-container" class="passenger-wheelchair-input-group js-wheelchair-input-group js-wheelchair-checkbox-template" style="display:none"><label><input type="checkbox" class="float-right js-senior-wheelchair-checkbox"/><span>Senior [num-placeholder]</span></label></div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div id="max-passengers-info" class="passenger-dropdown-section text-center" style="display:none">
                            <strong>Limit of 5 passengers per booking</strong>
                            <div class="text-secondary">To book tickets for more than 5 passengers, please complete additional bookings.</div>
                          </div>
                          <div id="unaccompanied-child-error" class="passenger-dropdown-section text-center text-danger" style="display:none">
                            <strong>At least one adult required</strong>
                            <div>Children must be accompanied by an adult. Please add at least one adult before continuing with your booking.</div>
                          </div>
                          <div class="passenger-dropdown-section text-right pa-2 m-0"><a class="js-dropdown-close">Close</a></div>
                        </div>
                      </div>
                    </div>
                    <div class="column column-inline large-3 hide-medium-down">
                      <div class="form-group text-center"><button class="btn btn-cta cta-inline">Search now</button></div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row small-collapse">
                <div id="passenger-age-containers" class="passenger-age-containers well clearfix" style="display:none">
                  <div id="child-age-container">
                    <div class="passenger-age-container js-age-input-group clearfix end js-age-input-template column small-6 medium-2" style="display:none">
                      <label class="label-age js-age-input-label">Child [num-placeholder]</label>
                      <div class="input-group">
                        <select class="form-input form-input-inline js-age-input needsclick" aria-label="Age" required="">
                          <option value="">Age</option>
                          <option value="0">Under 1</option>
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                          <option value="6">6</option>
                          <option value="7">7</option>
                          <option value="8">8</option>
                          <option value="9">9</option>
                          <option value="10">10</option>
                          <option value="11">11</option>
                          <option value="12">12</option>
                          <option value="13">13</option>
                          <option value="14">14</option>
                          <option value="15">15</option>
                          <option value="16">16</option>
                          <option value="17">17</option>
                        </select>
                        <i class="input-group-addon">
                          
                            
                          
                        </i>
                      </div>
                    </div>
                  </div>
                  <div id="senior-age-container">
                    <div class="passenger-age-container js-age-input-group clearfix end js-age-input-template column small-6 medium-2" style="display:none">
                      <label class="label-age js-age-input-label">Senior [num-placeholder]</label>
                      <div class="input-group">
                        <select class="form-input form-input-inline js-age-input needsclick" aria-label="Age" required="">
                          <option value="">Age</option>
                          <option value="60">60</option>
                          <option value="61">61</option>
                          <option value="62">62</option>
                          <option value="63">63</option>
                          <option value="64">64</option>
                          <option value="65">65</option>
                          <option value="66">66</option>
                          <option value="67">67</option>
                          <option value="68">68</option>
                          <option value="69">69</option>
                          <option value="70">70</option>
                          <option value="71">71</option>
                          <option value="72">72</option>
                          <option value="73">73</option>
                          <option value="74">74</option>
                          <option value="75">75</option>
                          <option value="76">76</option>
                          <option value="77">77</option>
                          <option value="78">78</option>
                          <option value="79">79</option>
                          <option value="80">Over 80</option>
                        </select>
                        <i class="input-group-addon">
                          
                            
                          
                        </i>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="column column-inline hide-large">
                  <div class="form-group text-center"><button class="btn btn-cta orange" data-cy="search-submit">Search for buses</button></div>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>

      </footer>
      <div class="footer-addendum"> © 2020 Ticket Booking Project | All rights reserved</div>
      <noscript>
        <div>Enable Javascript for correct site display</div>
      </noscript>
    </div>
    <style type="text/css" id="jss-server-side"></style>
    <script data-id="intent-media">window.IntentMediaDesign = {};
      window.IntentMediaProperties = {"site_name":"BUSBUD","page_id":"hotel.home","site_country":"CA","site_language":"en","site_currency":"USD","site_reporting_value_01":"1","site_reporting_value_06":"col_control_rejected","site_reporting_value_07":"ribbon_control_rejected"};
      (function() {
        var script = document.createElement("script");
        script.src = '//a.cdn.intentmedia.net/javascripts/v1/intent_media_core.js';
        script.defer = true;
        document.body.appendChild(script);
      }());
    </script><script data-id="recent-searches">function hideSearch(id) {
      var el = document.getElementById(id);
      if (el) { el.style.display = 'none'; }
      }
      function removeSearch(node) {
      hideSearch('search_' + node.id);
      var ping = new Image();
      ping.src = node.href;
      
      if (!hasVisibleSearches()) {
        hideSearch('activity-searches-header')
      }
      return false;
      }
      function hasVisibleSearches() {
      return document.querySelector('#recent-searches > div > [id^="search_"]:not([style="display: none;"])') != null;
      }
      function loadSearchesEmbed(id) {
      var el = document.getElementById(id);
      if (!(el && XMLHttpRequest)) { return; }
      var request = new XMLHttpRequest();
      request.open('GET', '/en/activity?partial=recent-searches-list', true);
      request.onload = function () {
        if (request.status === 200) {
          el.innerHTML = request.responseText;
        }
      };
      request.send();
      }
      function initSearchesTracking() {
      var tracker = window.tracker;
      if (!tracker) { return; }
      document.body.addEventListener('click', function(e) {
        var action = e.target.getAttribute('data-tracking');
        if (!action) { return; }
        tracker.track({
          action: action,
          category: 'activity',
          details: {}
        });
      });
      }
      loadSearchesEmbed('recent-searches');
      initSearchesTracking();
    </script>
    <template id="suggestion-template-city">
      <div class="search-jss1 search-jss2">
        
          
        
        
          
        
        
          
        
        <div class="search-jss1 search-jss6">
          <div class="search-jss1 search-jss7">
            <div class="search-jss1 search-jss8"><span class="search-jss11 search-jss12 search-jss9 needsclick aa-suggestion-city" type="label" color="text.primary" font-weight="bold"></span></div>
            <div class="search-jss1 search-jss13"><span class="search-jss14 search-jss15 search-jss9 needsclick aa-suggestion-region search-jss10" type="label" color="text.tertiary"></span></div>
          </div>
          <div class="search-jss1 search-jss16"><span class="search-jss17 search-jss18 search-jss9 aa-suggestion-detail" type="label" color="text.primary"></span></div>
        </div>
      </div>
    </template>
    <template id="suggestion-template-location">
      <div class="search-jss1 search-jss19">
        
          
        
        
          
        
        <div class="search-jss1 search-jss22"><span class="search-jss23 search-jss24 search-jss9 aa-suggestion-location" type="label" color="text.primary"></span></div>
      </div>
    </template>
    <style type="text/css">.search-jss2 {
      display: flex;
      padding: 16px;
      align-items: center;
      }
      .search-jss3 {
      color: #6D8BA1;
      }
      .search-jss4 {
      color: #6D8BA1;
      }
      .search-jss5 {
      color: #6D8BA1;
      }
      .search-jss6 {
      display: flex;
      overflow: hidden;
      flex-direction: column;
      }
      .search-jss7 {
      display: flex;
      align-items: baseline;
      }
      .search-jss8 {
      flex-shrink: 0;
      margin-left: 8px;
      }
      .search-jss13 {
      overflow: hidden;
      margin-left: 8px;
      }
      .search-jss16 {
      margin-left: 8px;
      }
      .search-jss19 {
      display: flex;
      padding: 16px;
      align-items: center;
      margin-left: 24px;
      }
      .search-jss20 {
      color: #6D8BA1;
      }
      .search-jss21 {
      color: #6D8BA1;
      }
      .search-jss22 {
      overflow: hidden;
      margin-left: 8px;
      }
      .search-jss10 {
      overflow: hidden;
      white-space: nowrap;
      text-overflow: ellipsis;
      }
      .search-jss12 {
      color: #1f242b;
      font-size: 16px;
      font-weight: 700;
      line-height: 1;
      }
      .search-jss15 {
      color: #6D8BA1;
      font-size: 14px;
      line-height: 1.1428571428571428;
      }
      .search-jss18 {
      color: #1f242b;
      font-size: 14px;
      line-height: 1.1428571428571428;
      }
      .search-jss24 {
      color: #1f242b;
      font-size: 14px;
      line-height: 1.1428571428571428;
      }
    </style>
  </body>
</html>