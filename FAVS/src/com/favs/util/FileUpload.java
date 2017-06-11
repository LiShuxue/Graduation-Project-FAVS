package com.favs.util;

import com.favs.bean.FileImage;


public interface FileUpload {

	/**
	 * 3.实现文件上传的功能，返回上传后新的文件名称
	 */
	public abstract String uploadFile(FileImage fileImage);
	public String[] getBankImage();

}