function Make-HtmlMetaTags
{
    [cmdletbinding()]
    Param(
        [Parameter(Mandatory=$true)]
        [string]$Title,
        [Parameter(Mandatory=$true)]
        [string]$PreviewImageUri,
        [Parameter(Mandatory=$true)]
        [string]$Description,
        [Parameter(Mandatory=$true)]
        [string]$Url,
        [Parameter(Mandatory=$true)]
        [string]$Tags
    )
    Add-Type -TypeDefinition "namespace Html`n{`n    using System;`n    using System.Collections.Generic;`n    public class Meta`n    {`n        public string Type`n        {`n            get;`n            set;`n        }`n        public string Name`n        {`n            get;`n            set;`n        }`n        public string Content`n        {`n            get;`n            set;`n        }`n        public Meta()`n        {`n        }`n    }`n    public class MetaList`n    {`n        public DateTime Date`n        {`n            get;`n            set;`n        }`n        public string DateSuffix`n        {`n            get;`n            set;`n        }`n        public MetaList()`n        {`n            this.Date = DateTime.Now;`n            this.DateSuffix = (this.Date.Day % 10 == 1 && this.Date.Day % 100 != 11) ? `"st`" : (this.Date.Day % 10 == 2 && this.Date.Day % 100 != 12) ? `"nd`" : (this.Date.Day % 10 == 3 && this.Date.Day % 100 != 13) ? `"rd`" : `"th`";`n        }`n        public List<Meta> TagList = new List<Meta>()`n        {`n            new Meta()`n            {`n                Name=`"viewport`",`n                Type=`"name`",`n                Content=`"width=device-width,initial-scale=1`",`n            },`n            new Meta()`n            {`n                Name=`"og:locale`",`n                Type=`"property`",`n                Content=`"en_US`",`n            },`n            new Meta()`n            {`n                Name=`"og:type`",`n                Type=`"property`",`n                Content=`"website`",`n            },`n            new Meta()`n            {`n                Name=`"og:title`",`n                Type=`"property`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"og:image`",`n                Type=`"property`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"og:description`",`n                Type=`"property`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"og:url`",`n                Type=`"property`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"image`",`n                Type=`"itemprop`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"article:published_time`",`n                Type=`"property`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"article:modified_time`",`n                Type=`"property`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"article:tag`",`n                Type=`"property`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"twitter:locale`",`n                Type=`"property`",`n                Content=`"en_US`",`n            },`n            new Meta()`n            {`n                Name=`"twitter:type`",`n                Type=`"property`",`n                Content=`"article`",`n            },`n            new Meta()`n            {`n                Name=`"twitter:title`",`n                Type=`"property`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"twitter:description`",`n                Type=`"property`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"twitter:url`",`n                Type=`"property`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"twitter:domain`",`n                Type=`"property`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"twitter:card`",`n                Type=`"name`",`n                Content=`"summary_large_image`",`n            },`n            new Meta()`n            {`n                Name=`"twitter:image`",`n                Type=`"name`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"title`",`n                Type=`"name`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"description`",`n                Type=`"name`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"keywords`",`n                Type=`"name`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"abstract`",`n                Type=`"name`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"classification`",`n                Type=`"name`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"format-detection`",`n                Type=`"name`",`n                Content=`"telephone=yes`",`n            },`n            new Meta()`n            {`n                Name=`"HandheldFriendly`",`n                Type=`"name`",`n                Content=`"True`",`n            },`n            new Meta()`n            {`n                Name=`"MobileOptimized`",`n                Type=`"name`",`n                Content=`"320`",`n            },`n            new Meta()`n            {`n                Name=`"Content-Style-Type`",`n                Type=`"http-equiv`",`n                Content=`"text/css`",`n            },`n            new Meta()`n            {`n                Name=`"Content-Script-Type`",`n                Type=`"http-equiv`",`n                Content=`"application/javascript`",`n            },`n            new Meta()`n            {`n                Name=`"X-UA-Compatible`",`n                Type=`"http-equiv`",`n                Content=`"IE=edge`",`n            },`n            new Meta()`n            {`n                Name=`"date`",`n                Type=`"name`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"search_date`",`n                Type=`"name`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"revised`",`n                Type=`"name`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"rating`",`n                Type=`"name`",`n                Content=`"General`",`n            },`n            new Meta()`n            {`n                Name=`"revisit-after`",`n                Type=`"name`",`n                Content=`"1 days`",`n            },`n            new Meta()`n            {`n                Name=`"target`",`n                Type=`"name`",`n                Content=`"all`",`n            },`n            new Meta()`n            {`n                Name=`"robots`",`n                Type=`"name`",`n                Content=`"index, follow`",`n            },`n            new Meta()`n            {`n                Name=`"Content-Type`",`n                Type=`"http-equiv`",`n                Content=`"text/html; charset=utf-8`",`n            },`n            new Meta()`n            {`n                Name=`"language`",`n                Type=`"name`",`n                Content=`"English`",`n            },`n            new Meta()`n            {`n                Name=`"copyright`",`n                Type=`"name`",`n                Content=`"`",`n            },`n            new Meta()`n            {`n                Name=`"cache-control`",`n                Type=`"http-equiv`",`n                Content=`"no-cache`",`n            },`n            new Meta()`n            {`n                Name=`"Pragma`",`n                Type=`"http-equiv`",`n                Content=`"no-cache`",`n            }`n        };`n    }`n}`n"
    $meta_list = [Html.MetaList]::new()
    $meta_list.TagList.Where({
        $_.Name -in @("og:title","twitter:title","title","classification")
    }).ForEach({
        $_.Content = $Title
    })
    $meta_list.TagList.Where({
        $_.Name -in @("og:image","image","twitter:image")
    }).ForEach({
        $_.Content = $PreviewImageUri
    })
    $meta_list.TagList.Where({
        $_.Name -in @("og:description","twitter:description","description","abstract")
    }).ForEach({
        $_.Content = $Description
    })
    $meta_list.TagList.Where({
        $_.Name -in @("og:url","twitter:url")
    }).ForEach({
        $_.Content = $Url
    })
    $meta_list.TagList.Where({$_.Name -eq "twitter:domain"})[0].Content = [uri]::new($Url).Host
    $meta_list.TagList.Where({
        $_.Name -in @("article:tag","keywords")
    }).ForEach({
        $_.Content = $Tags
    })
    $meta_list.TagList.Where({$_.Name -eq "date"})[0].Content = $meta_list.Date.ToString("MMM. dd, yyyy")
    $meta_list.TagList.Where({$_.Name -eq "search_date"})[0].Content = $meta_list.Date.ToString("yyyy-MM-dd")
    $month = [regex]::New("^\S+,\s+(\S+)").Match($meta_list.Date.ToString("f")).Groups[1].Value
    $meta_list.TagList.Where({$_.Name -in @("article:published_time","article:modified_time","revised") }).ForEach({
        $_.Content = "$($meta_list.Date.DayOfWeek), $($month) $($meta_list.Date.Day)$($meta_list.DateSuffix), $($meta_list.Date.Year), $($meta_list.Date.ToShortTimeString())"
    })
    $meta_list.TagList.Where({$_.Name -eq "copyright"})[0].Content = "Copyright $($meta_list.Date.Year)"
    $meta_tags = [System.Collections.Generic.List[string]]::New()
    $meta_tags.Add("        <meta charset=`"utf-8`"/>")
    $meta_tags.Add("        <title>$($title)</title>")
    for($i = 0; $i -lt $meta_list.TagList.Count; $i++)
    {
        $tag = $meta_list.TagList[$i]
        if(
            ![string]::IsNullOrEmpty($tag.Type) -and `
            ![string]::IsNullOrEmpty($tag.Name) -and `
            ![string]::IsNullOrEmpty($tag.Content)
        ){
            $meta_tags.Add("        <meta $($tag.Type)=`"$($Tag.Name)`" content=`"$($Tag.Content)`" />")
        }
    }
    return $meta_tags
}
