<?php
/***
***公共验证控制器CommonAction
***
***/

class CommonAction extends Action {
	
	//_initialize自动运行方法，在每个方法前，系统会首先运动这个方法
	public function _initialize() {
		header("Content-Type:text/html; charset=utf-8");
	//	Load('extend'); 
		/*
		$uid = intval(get_cookie('uid'));
		if (empty($uid)) {
			$this->redirect(GROUP_NAME . '/Public/login');
		}
		 */
		 
        //栏目导航
        $nav_list = D('Category')->where('pid=0 AND status=1')->order('sort')->select();
        if(is_array($nav_list)){
            
	
		foreach ($nav_list as $key=>$val){
		
                //$nav_list[$key] = $this->changurl($val);
			$nav_list[$key]['url'] = getUrl($val);
			
                $nav_list[$key]['sub_nav'] = D('Category')->where('pid='.$val['id'].' AND status=1')->select();
                
                foreach ($nav_list[$key]['sub_nav'] as $key2=>$val2){
                    //$nav_list[$key]['sub_nav'][$key2] = $this->changurl($val2);
			//$nav_list[$key]['sub_nav']['url'] = getUrl($val2);
			$nav_list[$key]['sub_nav'][$key2]['url'] = getUrl($val2);
                }
		}
		
		/*
		 *echo '<pre>';
		 *print_r($nav_list);
		 *echo '</pre>';
		 */
        }

        
        $this->assign('nav_list',$nav_list);


	
	}


  public function changurl($ary){
    	if(is_array($ary)){
            if(key_exists('modelname', $ary)){
                $ary['url']=U($ary['modelname'].'/index/',array('id'=>$ary['id']));
            }
            return $ary;
        }		
	  }


	/*get url */
//jumpflag针对文档跳转属性
function getcUrl($cate, $id = 0, $jumpflag = false, $jumpurl = '') {
    $url = '';
    //如果是跳转，直接就返回跳转网址
    if ($jumpflag && !empty($jumpurl)) {
        return $jumpurl;
    }

    if (empty($cate)) {
        return $url;
    }
    
    $ename = $cate['ename'];
    if ($cate['type'] == 1) {
        $firstChar = substr($ename, 0, 1);
        if ($firstChar == '@') {//内部
            
            $ename = ucfirst(substr($ename, 1));//
            //开启路由
            if(C('URL_ROUTER_ON') == true) {
                //$url = U('/'.$ename,'', '');
                //$url = $id > 0 ? U('/'.$ename,'', array('id' => $id)) : U('/'.$ename,'', '');
                $url = $id > 0 ? U(''.$ename.'/'.$id,'') : U('/'.$ename,'');
            }else {
                $url  = U(''.$ename.'');
                if ($id > 0) {
                    //$url  = U(GROUP_NAME.'/Show/'.$cate['tablename'], array('id'=> $cate['id']));
                    $url  = U($ename.'/shows', array('e' => $cate['tablename'], 'id'=> $cate['id']));
                }

            }

        }else {
            $url = $ename;//http://
        }
        
    }else {
        //开启路由
        if(C('URL_ROUTER_ON') == true) {
            //$url = $id > 0 ? U('/'.$ename,'', array('id' => $id)) : U('/'.$ename,'', '');
            $url = $id > 0 ? U(''.$ename.'/'.$id,'') : U('/'.$ename,'', '');
        }else {

            //$url  = U(GROUP_NAME.'/List/index', array('cid'=> $cate['id']));
            $url  = U('List/index', array('cid'=> $cate['id']));
            //$url  = U(GROUP_NAME.'/List/index', array('e' => $ename));
            if ($id > 0) {
                //$url  = U(GROUP_NAME.'/Show/'.$cate['tablename'], array('id'=> $cate['id']));
                $url  = U('Show/index', array('cid' => $cate['cid'], 'id'=> $cate['id']));
            }
            
        }

    }

    return $url;

}


}


?>
