package com.forward.blog.model;

import com.forward.blog.service.TagService;

/**  
* @ClassName: MySetTpcontact  
* @Description: 比较新旧tag，增加的tag插入，减少的tag删除，没有新tag清空文章所有旧tag，没有旧tag直接插入新tag  
* @author Administrator  
* @date 2017年9月2日  
*    
*/  
public class MySetTpcontact {
	
	public static void updateTpcontact(Post post,TagService tagService){
		String[] oldTagids =  post.getOldtagids();
		String[] newTagids = post.getTids();
		if(newTagids != null){
			
			if(oldTagids != null){
				
				for(String oldTagid : oldTagids){
					boolean exist = true;
					for(String newTagid : newTagids){
						if(oldTagid.equals(newTagid)){
							exist = false;
						}
						if(exist){
							/*System.out.println("删除多余tag");*/
							Tpcontact tpcontact = new Tpcontact();
							tpcontact.setTppostid(post.getPid());
							tpcontact.setTptagid(Integer.parseInt(oldTagid));
							tagService.deletePostTagByPostIdAndTagid(tpcontact);
						}
					}
				}
				
				for(String newTagid : newTagids){
					boolean exist = true;
					for(String oldTagid : oldTagids){
						if(newTagid.equals(oldTagid)){
							exist = false;
						}
						if(exist){
							/*System.out.println("插入新的tag");*/
							Tpcontact tpcontact = new Tpcontact();
							tpcontact.setTppostid(post.getPid());
							tpcontact.setTptagid(Integer.parseInt(newTagid));
							tagService.insertPostTag(tpcontact);
						}
					}
				}
				
			}else if(post.getTids() != null){
				/*System.out.println("不存在旧tag");*/
				for(int i = 0;i < post.getTids().length;i++){
					Tpcontact tpcontact = new Tpcontact();
					tpcontact.setTppostid(post.getPid());
					tpcontact.setTptagid(Integer.parseInt(post.getTids()[i]));
					tagService.insertPostTag(tpcontact);
				}
			}
		}else{
			/*System.out.println("清空该文章所有tag");*/
			tagService.deletePostTagByPostId(post.getPid());
		}
	}
}
