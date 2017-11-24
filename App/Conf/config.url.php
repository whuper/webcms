<?php return array ('URL_MODEL' => 3,'URL_MODEL__INDEX' => 1,'URL_PATHINFO_DEPR' => '/','URL_ROUTER_ON' => false,'URL_ROUTE_RULES' => array (
  'Mobile$' => 'Mobile/Index/index',
  'Special/:id\d' => 'Special/shows',
  ':e/p/:p\d' => 'List/index',
  ':e/:id\d' => 'Show/index',
  '/^(\w+)$/' => 'List/index?e=:1',
),'HTML_CACHE_ON__INDEX' => false,'HTML_CACHE_ON__NOBILE' => false,'HTML_CACHE_RULES' => array (
  'index:index' => 
  array (
    0 => '{:group}/Index_{:action}',
    1 => 0,
  ),
  'list:index' => 
  array (
    0 => '{:group}/List/{:action}_{e}{cid|intval}_{p|intval}',
    1 => 0,
  ),
  'show:index' => 
  array (
    0 => '{:group}/Show/{:action}_{e}{cid|intval}_{id|intval}',
    1 => 0,
  ),
  'special:index' => 
  array (
    0 => '{:group}/Special/{:action}_{cid|intval}_{p|intval}',
    1 => 0,
  ),
  'special:shows' => 
  array (
    0 => '{:group}/Special/{:action}_{id|intval}',
    1 => 0,
  ),
),);?>
