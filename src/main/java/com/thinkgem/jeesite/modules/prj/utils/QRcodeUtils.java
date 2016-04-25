package com.thinkgem.jeesite.modules.prj.utils;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.thinkgem.jeesite.common.utils.CacheUtils;
import com.thinkgem.jeesite.common.utils.SpringContextHolder;
import com.thinkgem.jeesite.modules.sys.dao.DictDao;
import com.thinkgem.jeesite.modules.sys.entity.Dict;
import org.apache.commons.lang3.StringUtils;

import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 二维码工具类
 * @author ThinkGem
 */
public class QRcodeUtils {
	
	public static String printQRcode(String content) {
		String filePath = "D://";
		String fileName = "sample.png";
		int width = 200; 		// 图像宽度
		int height = 200; 		// 图像高度
		String format = "png";	// 图像类型
		Map<EncodeHintType, Object> hints = new HashMap<EncodeHintType, Object>();
//		hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
		hints.put(EncodeHintType.CHARACTER_SET, "gbk");
		try {
			BitMatrix bitMatrix = new MultiFormatWriter().encode(content,
					BarcodeFormat.QR_CODE, width, height, hints);        // 生成矩阵
			Path path = FileSystems.getDefault().getPath(filePath, fileName);
			MatrixToImageWriter.writeToPath(bitMatrix, format, path);    // 输出图像
			return "success";
		}catch (WriterException e){
			e.printStackTrace();
			return "fail";
		}catch (IOException e){
			e.printStackTrace();
			return "fail";
		}
	}

}
