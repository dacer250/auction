package com.springmvc.controller;

import com.frame.util.ImgCompress;
import com.frame.util.PropertiesTools;
import com.frame.util.SystemUtil;
import com.springmvc.pojo.FileMeta;
import com.springmvc.pojo.FileMsg;
import net.coobird.thumbnailator.Thumbnails;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by zhangjk on 2016/1/14.
 */
@RestController
public class FileUploadController {
    private static final Logger logger = LoggerFactory.getLogger(FileUploadController.class);

    /**
     * Upload single file using Spring Controller
     */
    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST, produces = "application/json;charset=utf8")
    @ResponseBody
    public FileMsg uploadFileHandler(@RequestParam("file") MultipartFile file, @RequestParam("g_id") String g_id) throws IOException {

        if (!file.isEmpty()) {
            InputStream in = null;
            OutputStream out = null;

            try {
                // 获得在tomcat中项目的路径， 需要在web.xml配置ft.webapp
                String webRootPath = PropertiesTools.class.getClassLoader().getResource("/").getPath().replace("WEB-INF/classes/", "");
                //logger.info(webRootPath);
                // String rootPath = System.getProperty("catalina.home");
                String dateStr = new SimpleDateFormat("yyyyMMdd").format(new Date());
                File dir = new File(webRootPath + File.separator + "uploadFiles" + File.separator + dateStr);
                if (!dir.exists())
                    dir.mkdirs();

                String fileName = SystemUtil.randomUUID() +
                        file.getOriginalFilename().substring(file.getOriginalFilename().indexOf("."), file.getOriginalFilename().length());

                File serverFile = new File(dir.getAbsolutePath() + File.separator + fileName);
                in = file.getInputStream();
                out = new FileOutputStream(serverFile);
                byte[] b = new byte[1024];
                int len = 0;
                while ((len = in.read(b)) > 0) {
                    out.write(b, 0, len);
                }
                out.close();
                in.close();
                logger.info("Server File Location=" + serverFile.getAbsolutePath());

                Thumbnails.of(dir.getAbsolutePath() + File.separator + fileName)
                        .size(650, 650)
                        .outputFormat("jpg")
                        .toFile(dir.getAbsolutePath() + File.separator + fileName+".x");

                FileMeta fileMeta = new FileMeta();
                fileMeta.setName(fileName);
                fileMeta.setUrl("/uploadFiles/" + dateStr + "/" + fileName);
                List<FileMeta> files = new ArrayList<>();
                files.add(fileMeta);
                FileMsg fileMsg = new FileMsg();
                fileMsg.setFiles(files);
                return fileMsg;

            } catch (Exception e) {
                e.printStackTrace();

                FileMeta fileMeta = new FileMeta();
                fileMeta.setName(file.getOriginalFilename());
                List<FileMeta> files = new ArrayList<>();
                files.add(fileMeta);
                FileMsg fileMsg = new FileMsg();
                fileMsg.setFiles(files);
                return fileMsg;
            } finally {
                if (out != null) {
                    out.close();
                    out = null;
                }

                if (in != null) {
                    in.close();
                    in = null;
                }
            }
        } else {
            FileMeta fileMeta = new FileMeta();
            fileMeta.setName(file.getOriginalFilename());
            fileMeta.setUrl("uploadFiles" + File.separator + file.getOriginalFilename());
            List<FileMeta> files = new ArrayList<>();
            files.add(fileMeta);
            FileMsg fileMsg = new FileMsg();
            fileMsg.setFiles(files);
            return fileMsg;
        }
    }
}
