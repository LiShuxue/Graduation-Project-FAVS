package com.favs.util;

import java.io.File;
import java.io.FilenameFilter;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.aspectj.util.FileUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import com.favs.bean.FileImage;


/**
 * 
 * @author LSX
 *	实现文件上传的业务逻辑
 */
@Component("fileUpload")
public class FileUploadUtil implements FileUpload {
	
	@Value("#{prop.basePath + prop.filePath}")//spring通过注解注入字符串或值(这个值在properties中)，用@Value
	private String filePath;
	@Value("#{prop.basePath + prop.bankPath}")
	private String bankPath;
	
	/**
	 * 1.通过文件名获得扩展名
	 * @param fileName
	 * @return
	 */
	private String getFileExt(String fileName){
		return FilenameUtils.getExtension(fileName);
	}
	
	/**
	 * 2.生成UUID随机数，作为新的文件名
	 */
	private String newFileName(String fileName){
		String ext = getFileExt(fileName);
		return UUID.randomUUID().toString() + "." + ext;
	}
	
	/* (non-Javadoc)
	 * @see cn.it.shop.util.FileUpload#uploadFile(cn.it.shop.model.FileImage)
	 */
	@Override
	public String uploadFile(FileImage fileImage){
		//获取新的文件名
		String pic = newFileName(fileImage.getFilename());
		try {
			//文件上传
			FileUtil.copyFile(fileImage.getFile(), new File(filePath, pic));
			return pic;
		} catch (Exception e) {
			throw new RuntimeException(e);
		} finally {
			fileImage.getFile().delete();
		}
	}

	@Override
	public String[] getBankImage() {
		return new File(bankPath).list(new FilenameFilter() {
			@Override
			public boolean accept(File dir, String name) {
				//通过后缀名来实现文件过滤的效果
				return name.endsWith(".gif");
			}
		});
	}
}
