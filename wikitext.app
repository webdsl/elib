module elib/wikitext

define outputRelaxed(s: WikiText){ rawoutput(s.relaxedFormat()) }

type WikiText{ org.webdsl.tools.WikiFormatter.wikiFormatNoTagFiltering as relaxedFormat():String }
//for WebDSL versions < r5693 use:
//type WikiText{ org.webdsl.tools.RelaxedWikiFormatter.wikiFormat as relaxedFormat():String }
