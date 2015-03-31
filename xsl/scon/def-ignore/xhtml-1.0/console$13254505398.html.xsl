<?xml version="1.0" encoding="UTF-8" ?>

<!DOCTYPE xsl:stylesheet [
  <!ENTITY nbsp "&#160;" >
  ]>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="UTF-8" indent="no" media-type="text/html" method="html"><!--  generated by dexter-0.9-beta (copyright (c) 2007-2011 Michael Dykman, Lauren Enterprises) from `/opt/gossamer/xsl/default/xhtml-1.0/scon/console.html'   --></xsl:output>
<xsl:preserve-space elements="*"></xsl:preserve-space>

<xsl:template match="/">

<html>
<head>

<title>Gossamer Script Console </title>

<script src="/scon/js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="/scon/js/didi.js" type="text/javascript"></script>
<script src="/scon/js/scon.js" type="text/javascript"></script>
<script src="/scon/js/edit_area/edit_area_full.js" type="text/javascript"></script>
<script src="/scon/js/jquery-contextmenu/jquery.contextMenu.js" type="text/javascript"></script>
<link href="/scon/css/scon.css" rel="stylesheet" type="text/css"></link>
<link href="/scon/js/jquery-contextmenu/jquery.contextMenu.css" rel="stylesheet" type="text/css"></link>

</head>
<body style="background-color:#ccffcc">
<center> Michael's Development Script Console  </center>
<div>
<a class="tabfocus" href="javascript:void(0)" id="editorselect" onclick="showEditor();">editor</a>
-
<a class="tabblur" href="javascript:void(0)" id="mappingselect" onclick="showMappings();">mappings</a>
</div>

<div id="scripteditor" style="width:100%; position:absolute; left: 8; top: 32; visibility: visible; z-index: 2;">
<div>
<form action="/scon" id="ctlfrm" method="post" onsubmit="return checkSubmission(this)" style="float: left; width: 100%;" target="outwin">
<div id="controls">
   <div>
   <input name="format" type="hidden" value="y"></input>
   <input name="xlistb" type="hidden" value="n"></input>

<!-- 
&lt;input name="newb" class="ctlbutton" type="submit" value="new"  onclick="newCalled=true;"/> 
  -->
   <input class="ctlbutton" name="saveb" onclick="saveCalled=true;" type="submit" value="save"></input> 
<input class="ctlbutton" name="runb" onclick="runCalled=true;" type="submit" value="run"></input>&nbsp;<input name="args" size="40" type="text"></input>
<span class="ctltext">data</span><input name="forceddata" type="checkbox" value="y"></input>
<span class="ctltext">json</span><input name="forcedjson" type="checkbox" value="y"></input>
   </div>
</div>

<div style="float:left; width:220px; height:450px; overflow:auto;">
   <div id="filelist" style="float:left;"></div>
</div>
<div style="float:left">

<textarea accesskey="e" cols="100" id="editpane" name="script" rows="28"></textarea>
</div>
</form>


</div>

</div>

<div id="mappingeditor" style="position:absolute; left: 8; top: 32;  visibility: hidden; z-index: 0;">
<div>mappings</div>
<div style="float:left;">
<form action="/scon" id="mapfrm" method="post" onsubmit="return checkMappings(this);" target="outwin">
<div>

   <input name="fetchb" onclick="mloadCalled=true;" type="submit" value="load"></input>
   <input name="mfulltestb" onclick="msaveCalled=true;" type="submit" value="test"></input>
   save <input name="msaveb" type="checkbox" value="y"></input>
   <input name="mtestb" onclick="mtransCalled=true;" type="submit" value="translate"></input>
   <input name="input" type="text"></input>
   <div style="float:left">
    <textarea accesskey="m" cols="80" name="config" rows="30"></textarea>
  </div>
</div>
</form>
</div>
<div id="mdisp" style="float:left; width:40%">
</div>
</div>

<ul class="contextMenu" id="fileMenu">
   <li class="cmfopen">
      <a href="#open">Open</a>
   </li>
   <li class="cmfnew">
      <a href="#newfile">New File</a>
   </li>
   <li class="cmfrename">
      <a href="#rename">Rename</a>
   </li>
   <li class="cmdup">
      <a href="#duplicate">Copy File</a>
   </li>
   <li class="cmdexter cmseparator">
      <a href="#dexter">Dexter</a>
   </li>
   <li class="cmdelete cmseparator">
      <a href="#delete">Delete</a>
   </li>
   <li class="cmcancel cmseparator">
      <a href="#cancel">Cancel</a>
   </li>
</ul>

<ul class="contextMenu" id="folderMenu">
   <li class="cmdopen">
      <a href="#open">Open</a>
   </li>
   <li class="cmfnew">
      <a href="#newfile">New File</a>
   </li>
   <li class="cmdnew">
      <a href="#newfolder">New Folder</a>
   </li>
   <li class="cmdclose">
      <a href="#close">Close</a>
   </li>
   <li class="cmdelete cmseparator">
      <a href="#delete">Delete</a>
   </li>
   <li class="cmcancel cmseparator">
      <a href="#cancel">Cancel</a>
   </li>
</ul>



<script type="text/javascript">


$(document).ready( function() {

   editAreaLoader.init({
         id: "editpane" // id of the textarea to transform     
         ,start_highlight: true  // if start with highlight
         ,allow_resize: "both"
         ,allow_toggle: false
         ,word_wrap: false
         ,language: "en"
         ,is_multi_files: true
         ,replace_tab_by_spaces: 3
         ,syntax_selection_allow: "html,groovy,beanshell,js,php,python,ruby,xml,sql"
      });
   loadDirectory('/',$('#filelist').get(0),true);
});
</script>

</body>
</html>
</xsl:template>

</xsl:stylesheet>