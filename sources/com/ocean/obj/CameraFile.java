package com.ocean.obj;

import java.io.Serializable;
/* loaded from: classes.dex */
public class CameraFile implements Serializable, Comparable<CameraFile> {
    private static final long serialVersionUID = 348982879;
    private String fileCatch;
    private String fileDownloadPath;
    private String fileDuration;
    private String fileName;
    private String filePath;
    private String fileSize;
    private String fileTime;
    private String fileTimeCode;
    private int downloadProgress = 0;
    private boolean thumbDownloaded = true;

    public CameraFile() {
    }

    public CameraFile(String str) {
        setFileName(str);
    }

    public int getDownloadProgress() {
        return this.downloadProgress;
    }

    public void setDownloadProgress(int i) {
        this.downloadProgress = i;
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public String getFileCatch() {
        return this.fileCatch;
    }

    public void setFileCatch(String str) {
        this.fileCatch = str;
    }

    public String getFileTime() {
        return this.fileTime;
    }

    public void setFileTime(String str) {
        this.fileTime = str;
    }

    public String getFileDuration() {
        return this.fileDuration;
    }

    public void setFileDuration(String str) {
        this.fileDuration = str;
    }

    public String getFileDownloadPath() {
        return this.fileDownloadPath;
    }

    public void setFileDownloadPath(String str) {
        this.fileDownloadPath = str;
    }

    public String getFileTimeCode() {
        return this.fileTimeCode;
    }

    public void setFileTimeCode(String str) {
        this.fileTimeCode = str;
    }

    public String getFileSize() {
        return this.fileSize;
    }

    public void setFileSize(String str) {
        this.fileSize = str;
    }

    public boolean getThumbDownloaded() {
        return this.thumbDownloaded;
    }

    public void setThumbDownloaded(boolean z) {
        this.thumbDownloaded = z;
    }

    @Override // java.lang.Comparable
    public int compareTo(CameraFile cameraFile) {
        try {
            return this.fileName.compareTo(cameraFile.fileName);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof CameraFile) && getFileName().equals(((CameraFile) obj).getFileName());
    }
}
