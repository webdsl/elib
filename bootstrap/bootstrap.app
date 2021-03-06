module elib/bootstrap/bootstrap

imports elib/bootstrap/icons    

section positioning

  template pullRight() { 
  	span[class="pull-right", all attributes]{ elements }
  }
  template pullLeft() {  
  	span[class="pull-left", all attributes]{ elements }
  }

section grid system

  template gridContainer() {
  	div[class="container", all attributes]{ elements }
  }
  template gridContainerFluid(){
  	div[class="container-fluid", all attributes]{ elements }  	
  } 
  template gridRowFluid(){
  	div[class="row-fluid", all attributes]{ elements }
  }
  template gridRow(){
  	div[class="row", all attributes]{ elements }
  }
  template gridRow(cls: String){
    div[class="row " + cls, all attributes]{ elements }
  }
  template gridSpan(span: Int){
  	  div[class="span" + span, all attributes]{ elements }
  }
  template gridSpan(span: Int, offset: Int){
  	div[class="span" + span + " offset" + offset, all attributes]{ elements }
  }
  
section footer

  template footer() { 
    <footer class="footer"> 
      elements
    </footer>
  }
  
section navigation bar

  template appname() { "<default>" }

  template brand() { 
    navigate root() [class="brand"]{ appname }
  }

  template navbar() {
  	div[class="navbar navbar-inverse navbar-fixed-top"]{
      div[class="navbar-inner"]{
        div[class="container"]{
        	elements
        }
      }
    }
  }
  
  template navbarResponsive() {
    div[class="navbar navbar-inverse navbar-fixed-top"]{
      div[class="navbar-inner"]{
        div[class="container"]{
          navCollapseButton
          brand
          div[class="nav-collapse collapse", style="height: 0px;"]{
            elements
          }
        }
      }
    }
  }
  
  template navbarFluid() {
    div[class="navbar navbar-inverse navbar-fixed-top"]{
      div[class="navbar-inner"]{
        div[class="container-fluid"]{
          elements
        }
      }
    }
  }
  template navbarStatic() {
  	div[class="navbar"]{
      div[class="navbar-inner"]{
        div[class="container"]{
        	elements
        }
      }
    }
  }
  template navCollapse() {
  	div[class="nav-collapse"]{
  		elements
  	}
  }  
  template navItems() {
  	list[class="nav"]{
  		elements
  	}
  }
  template navItem() {
    listitem{ elements }
  }
  
  template navCollapseButton() {
    <button class="btn btn-navbar" data-target=".nav-collapse" data-toggle="collapse" type="button">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
  }
  
section sections

  template pageHeader() {
  	div[class="page-header"]{
  		header1{ elements }
  	}
  }
  template pageHeader2() {
    div[class="page-header"]{
      header2{ elements }
    }
  }
  template pageHeader3() {
    div[class="page-header"]{
      header3{ elements }
    }
  }
  template pageHeader4() {
    div[class="page-header"]{
      header4{ elements }
    }
  }
  template small() {
  	<small>elements</small>
  }
 
section tables

  template tableBordered(){
  	table[class="table table-bordered table-striped table-condensed",  all attributes]{
  		elements
  	}
  }
  
  template tableHovered(){
  	table[class="table table-hover",  all attributes]{
  		elements
  	}
  }
  
  template theader() {
  	<thead all attributes>elements</thead>
  }
  
  template tbody() {
  	<thead all attributes>elements</thead>
  }
  
  template th(){
  	<th all attributes>elements</th>
  }

section forms

  template inlForm() { 
  	span[class="inlineForm"]{ 
  		form{
  		  elements
  	  } 
  	}
  }

  template formEntry(l: String){    
    <label>output(l)</label> elements
  }
  
  template formEntry(l: String, help: String){    
    <label>output(l)</label>
    elements
    <span class="help-inline">output(help)</span>
  }
  
  template formActions(){
  	div[class="form-actions"]{ elements }
  }
  
  template formSearch(query: Ref<String>) {
    form[class="form-search"]{
      input(query)[class="input-medium search-query", placeholder="Search"] 
      elements
    }
  } 
  
  template navbarSearch(query: Ref<String>) {
    form[class="navbar-search pull-left"]{
      input(query)[class="search-query", placeholder="Search"]
      elements
    }
  }
      
section horizontal forms

  template horizontalForm(){
  	form[class="form-horizontal"] {
  		elements
  	}
  }
  template horizontalForm(title: String){
  	horizontalForm{
  		fieldset(title){
  			elements
  		}
  	}
  }  
  template controlGroup(s: String){
    div[class="control-group"]{
    	label(s)[class="control-label"]{ 
    		div[class="controls"]{
    		  elements
    		}
    	}
    }
  }

  template inputAppend() {
    <span class="input-append">
      elements
    </span>
  }
  template inputPrepend() {
    <span class="input-prepend">
      elements
    </span>
  }
  template inputPrependAppend() {
    <span class="input-prepend input-append">
      elements
    </span>
  }
    
section breadcrumbs

  template breadcrumbs(){ 
  	<ul class="breadcrumb"> elements </ul>
  }
  template breadcrumb() {
  	<li> <span class="divider">"/"</span> elements </li>
  }
  template breadcrumbFirst() {
  	<li> elements </li>
  }
  
section pagers

  template pager() {
  	<ul class="pager">
  	  elements
  	</ul>
  }
  template pagerPrevious(nav: String){
  	<li>navigate url(nav) { "Previous" }</li>
  }  
  template pagerNext(nav: String){
  	<li>navigate url(nav) { "Next" }</li>
  }
  
section buttons

  template buttonToolbar() {
  	div[class="btn-toolbar"]{
  		elements
  	}
  }
  template buttonGroup(){
  	div[class="btn-group", all attributes]{
  		elements
  	}
  }
  template buttonGroupSpan(){
    span[class="btn-group", all attributes]{
      elements
    }
  }
  template buttonGroupVertical(){
    div[class="btn-group btn-group-vertical", all attributes]{
      elements
    }
  }
  template buttonNavigate(nav: String) {
  	//navigate url(nav) [class="btn"]{ elements }
  	<a href=nav class="btn">elements</a>
  }
  template button() {
  	div[class="btn", all attributes]{ elements }
  }
  template buttonMini(){
  	div[class="btn btn-mini", all attributes]{ elements }
  }
  template buttonSmall(){
  	div[class="btn btn-small", all attributes]{ elements }
  }
  template buttonPrimary() {
  	div[class="btn btn-primary ", all attributes]{ elements }
  }
  template buttonPrimaryMini(){
  	div[class="btn btn-mini btn-primary", all attributes]{ elements }
  }
  template buttonPrimarySmall(){
  	div[class="btn btn-small btn-primary", all attributes]{ elements }
  }

  
section dropdowns

  template dropdownMenu(){
  	list[class="dropdown-menu", all attributes]{
  		elements
  	}
  }
  template dropdownMenuRight(){
    list[class="dropdown-menu pull-right", all attributes]{
      elements
    }
  }
  template subMenu() {
  	dropdownMenuDivider
  	elements
  }
  template dropdownMenuItem() {
  	listitem[all attributes]{ elements }
  }
  template dropdownMenuDivider() {
  	listitem[class="divider"]{  }
  }  
  template dropdownToggle(cls: String){
  	<a class="btn dropdown-toggle "+cls href="#" data-toggle="dropdown" style="height:18px;">
  	  <span class="caret"></span>
  	</a>
  }
  template dropdownToggle(){ 
  	dropdownToggle("")
  }
  template dropdown() {
    listitem[class="dropdown"]{ elements }
  }
  template dropdownInNavbar(title: String) {
  	<li class="dropdown">
  	  <a class="dropdown-toggle" href="#" data-toggle="dropdown">
  	    output(title) " " <span class="caret"></span>
  	  </a>
  	  elements
  	</li>
  }
  template dropdownCaret() {
    <a class="btn dropdown-toggle" href="#" data-toggle="dropdown" style="height:14px;padding:7px;">
       <span class="caret"></span>
    </a>
    dropdownMenu{ elements }
  }
  template dropdownButton(title: String) {
  	<a class="btn dropdown-toggle" href="#" data-toggle="dropdown">
	  	    output(title) " " <span class="caret"></span>
	  </a>
	  dropdownMenu{ elements }
  }
  
  
section miscellaneous

  template well(){ 
  	div[class="well", all attributes]{ elements }
  }
  template wellSmall(){
  	div[class="well well-small", all attributes]{ elements }
  }
  
  template blockquote() {
  	<blockquote> elements </blockquote>
  }
  
section tabs

  template tabsBS() {  
  	<ul id="tab" class="nav nav-tabs">
  		elements
  	</ul>
  }
  
  template tabActive(label: String, idtab: String) { 
  	tab(label, idtab, true)
  }  
  template tabActive(label: String) { 
  	tab(label, label, true)
  }  
  template tab(label: String, idtab: String) { 
  	tab(label, idtab, false)
  }
  template tab(label: String, idtab: String, active: Bool) { 
  	<li class=activeClass(active)><a href="#"+idtab data-toggle="tab">output(label)</a></li>
  	<script>
      $(function () {
        $('#~idtab').tab('show')
      })
    </script>
  }
  function activeClass(active: Bool): String {
    if(active) { return "active"; } else { return ""; }
  }
  
  template tabBS(label: String) { 
  	tab(label, label){ elements } 
  }
  
  template tabContent(){
  	div[class="tab-content"]{ 
  		elements
  	}
  }
  
  template tabPaneActive(idtab: String){
  	tabPane(idtab, true) { elements }
  }
  template tabPane(idtab: String){
  	tabPane(idtab, false) { elements }
  }
  template tabPane(idtab: String, active: Bool){
  	div[class="tab-pane " + activeClass(active), id=idtab]{
  		elements 
  	}
  }
  
section alerts

  template alert() {
  	div[class="alert"]{
  		<a class="close" data-dismiss="alert">"x"</a>
  		elements
  	}
  }
  
  template alertSuccess() {
  	div[class="alert alert-success"]{
  		<a class="close" data-dismiss="alert">"x"</a>
  		elements
  	}
  }
  
  template alertInfo() {
  	div[class="alert alert-info"]{
  		<a class="close" data-dismiss="alert">"x"</a>
  		elements
  	}
  }  
  
  template alertError() {
  	div[class="alert alert-error"]{
  		<a class="close" data-dismiss="alert">"x"</a>
  		elements
  	}
  }

/*
  template tabExperiment() {
  	<ul id="tab" class="nav nav-tabs">
    <li><a href="#home" data-toggle="tab">"Home"</a></li>
    <li><a href="#profile" data-toggle="tab">"Profile"</a></li>
    <li><a href="#messages" data-toggle="tab">"Messages"</a></li>
    <li><a href="#settings" data-toggle="tab">"Settings"</a></li>
    </ul>
     
    <div class="tab-content">
      <div class="tab-pane active" id="home">"home content"</div>
      <div class="tab-pane" id="profile">"profile content"</div>
      <div class="tab-pane" id="messages">"messages content"</div>
      <div class="tab-pane" id="settings">"settings content"</div>
    </div>
     
    <script>
      $(function () {
        $('.tabs a:last').tab('show')
        $('#home').tab('show')
        $('#profile').tab('show')     
        $('#messages').tab('show')      
        $('#settings').tab('show')
      })
    </script>
  }
*/

/*   
  template tabDefault(label: String) { 
  	tab(label, true){ elements }
  }
    
  template tab(label: String, checked: Bool) { 
  	var tname := getTemplate().getUniqueId()
  	div[class="tab"]{
  		if(checked) {
	  	  <input type="radio" id=tname name="tab-group-1" checked="true"></input>
	  	} else {
	  	  <input type="radio" id=tname name="tab-group-1"></input>	  		
	  	}
	  	<label for=tname>output(label)</label>
	  	div[class="content"]{
	  		elements
	  	}
  	}
  }
*/

section modal

  define modalLink (modalID : String){
  	<a data-toggle="modal" href="#" + modalID all attributes except ["href","data-toggle"] >elements</a>
  }

  define modal(modalID : String){
  	<div class="modal " + attribute("class") id=modalID>
  		elements
  	</div>
  }

  define modalHeader(){
  	<div class="modal-header">
  		<a class="close" data-dismiss="modal">iRemove()</a>
  		elements
  	</div>
  }

  define modalBody(){
  	<div class="modal-body">
  		elements
  	</div>
  }
 
  define modalFooter(){ 
  	<div class="modal-footer">
  		elements
  	</div>
  }
  
  define modalCloseLink(){
  	<a href="#" data-dismiss="modal" all attributes except ["href","data-dismiss"]>elements</a>
  }

  define modalHide(modalID : String){
  	<script>
  		$('#~modalID').hide();
  	</script>
  }
  
section definitionList

	 define definitionList() {
		<dl>elements</dl>
	}
	
	define definitionItem(term : String) {
		<dt> output(term) </dt>
		<dd> elements </dd>
	}
  
  	define definitionListDescription() {
  		<dl class="dl-horizontal"> elements </dl>
  	}
  	


