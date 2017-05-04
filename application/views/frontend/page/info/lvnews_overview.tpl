[{capture append="oxidBlock_content"}]
    <div class="lvNewsContainer">
    [{assign var="oNews" value=$oView->lvGetNews() }]
    <h1 class="pageHead">[{$oView->lvGetTitle()}]</h1>
    <div class="listRefine clear bottomRound">
    </div>
        [{if !empty($oNews)}]
        [{foreach from=$oNews item=oNewsEntry}]
            [{if !empty($oNewsEntry) && !empty($oNewsEntry->oxnews__oxshortdesc->value)}]
                <div class="lvNewsEntry">
                    <h3>
                        <a class="lvNewsHeadline" href="[{$oNewsEntry->lvGetNewsDetailsLink()}]"><span>[{$oNewsEntry->oxnews__oxdate->value|date_format:"%d.%m.%Y"}] - </span> [{$oNewsEntry->oxnews__oxshortdesc->value}]</a>
                    </h3>
                    [{$oNewsEntry->lvGetTeaserText() force=1}]
                </div>
            [{/if}]
        [{/foreach}]
        [{else}]
            [{oxmultilang ident="LATEST_NEWS_NOACTIVENEWS"}]
        [{/if}]
    </div>
    [{include file="widget/locator/listlocator.tpl" locator=$oView->getPageNavigation() place="bottom"}]
[{/capture}]
[{include file="layout/page.tpl"}]