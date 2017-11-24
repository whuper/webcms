<?php

class JobAction extends CommonAction{

	   public function index() {
     
	   $name = $this->getActionName();

     
        //获取分页设置
     	$map['status'] = 1; 
        $Model = M($name);
        import('ORG.Util.Page');      //导入分页类
        $count  = $Model ->where($map)->count();    //计算总数
        $Page = new Page($count, $pageinfo['listrows']);
        $list   = $Model->where($map)->limit($Page->firstRow. ',' . $Page->listRows)->order('id desc')->select();
	//dump($list);
        // 设置分页显示
     
        $page = $Page->show();

        
        $this->assign("page", $page);
        $this->assign("list", $list);

	  $this->display(); 
		

    }
public function show()    {
        $id= I('id');
        $name = $this->getActionName();
	$model=M($name);

        //当前记录
        $data=$model->find($id);
        //echo $data['catid'];
        //上一条记录
        //$prevdata=$model->where('id<'.$id.' AND catid='.$data['catid'])->order('id desc')->limit('1')->find();
       $prevdata=$model->where('id<'.$id)->order('id desc')->limit('1')->find();
        
        //下一条记录
       //$nextdata=$model->where('id>'.$id.' AND catid='.$data['catid'])->order('id asc')->limit('1')->find();
        $nextdata=$model->where('id>'.$id)->order('id asc')->limit('1')->find();
      
        
        //内链优化
        $Chain=D('Chain');
        $ChainMap['status']=array('eq',1);
        $Chainlist=$Chain->where($ChainMap)->select();
        foreach ($Chainlist as $key => $value) {
            $data['content']=preg_replace('/'.$value['keyword'].'/i',"<a href=".$value['url']." target=".$value['target'].">".$value['keyword']."</a>", $data['content'],$value['number']);
        }

	$name = $this->getActionName();
	$this->assign("catEnName",$name);
        $this->data=$data;
        $this->prevdata=$prevdata;
        $this->nextdata=$nextdata;
	$this->display(); 
    }
    
    
}

?>
