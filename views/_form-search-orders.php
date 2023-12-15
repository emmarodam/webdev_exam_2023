

<form data-url="<?= $frm_search_url ?>" id="frm_search" action="/search-orders" method="GET" class="flex items-center w-full m-auto">
    <input name="query" type="text" class="w-3/4 dark:bg-zinc-200 rounded-3xl outline-none text-gray-900 px-4 py-2" placeholder="Search by id" oninput="search_orders()" onfocus="document.querySelector('#query_results').classList.remove('hidden')" onblur="document.querySelector('#query_results').classList.add('hidden')">
    <button class="w-1/8 text-xl m-4">🔍</button>
   
    <!-- Search suggestions -->
    <!-- <div id="query_results" class="hidden absolute top-full w-full h-48 bg-white border border-slate-300 overflow-hidden overflow-y-visible"> </div> -->
</form>