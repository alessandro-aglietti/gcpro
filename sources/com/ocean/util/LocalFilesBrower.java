package com.ocean.util;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import com.ocean.gamecamerapro2.MyApplication;
import com.ocean.obj.CameraFile;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes.dex */
public class LocalFilesBrower {
    private ContentResolver contentResolver;

    public LocalFilesBrower(Context context) {
        this.contentResolver = context.getContentResolver();
    }

    public boolean getSDAlbumVedioList(String str, ArrayList<CameraFile> arrayList) {
        ContentResolver contentResolver = this.contentResolver;
        Uri uri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
        Cursor query = contentResolver.query(uri, null, "_data like ?", new String[]{"%/" + str + "/%"}, "title");
        if (query == null) {
            return false;
        }
        query.moveToFirst();
        int count = query.getCount();
        if (count <= 0) {
            return false;
        }
        for (int i = 0; i < count; i++) {
            CameraFile cameraFile = new CameraFile();
            cameraFile.setFileName(query.getString(query.getColumnIndex("_display_name")));
            cameraFile.setFilePath(query.getString(query.getColumnIndex("_data")));
            cameraFile.setFileDuration(query.getString(query.getColumnIndex("duration")));
            cameraFile.setFileCatch(query.getString(query.getColumnIndex("_size")));
            arrayList.add(cameraFile);
            query.moveToNext();
        }
        return true;
    }

    public boolean getSDAlbumImageList(String str, ArrayList<CameraFile> arrayList) {
        ContentResolver contentResolver = this.contentResolver;
        Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        Cursor query = contentResolver.query(uri, null, "_data like ?", new String[]{"%/" + str + "/%"}, "bucket_display_name");
        if (query == null) {
            return false;
        }
        query.moveToFirst();
        int count = query.getCount();
        if (count <= 0) {
            return false;
        }
        for (int i = 0; i < count; i++) {
            CameraFile cameraFile = new CameraFile();
            cameraFile.setFileName(query.getString(query.getColumnIndex("_display_name")));
            cameraFile.setFilePath(query.getString(query.getColumnIndex("_data")));
            cameraFile.setFileCatch(query.getString(query.getColumnIndex("_size")));
            arrayList.add(cameraFile);
            query.moveToNext();
        }
        return true;
    }

    public boolean getLocalFiles(String str, String str2, ArrayList<CameraFile> arrayList) {
        String str3 = MyApplication._instance.strDownloadPath;
        File file = new File(str3);
        if (!file.exists() || !file.isDirectory() || file.listFiles() == null || file.listFiles().length <= 0) {
            return false;
        }
        File[] listFiles = file.listFiles();
        for (int i = 0; i < listFiles.length; i++) {
            if (!listFiles[i].isDirectory()) {
                String name = listFiles[i].getName();
                if (str2.equalsIgnoreCase("MOVIE")) {
                    if (name.contains(".mp4") || name.contains(".MP4")) {
                        CameraFile cameraFile = new CameraFile();
                        cameraFile.setFileName(name);
                        cameraFile.setFilePath(str3 + name);
                        arrayList.add(cameraFile);
                    }
                } else if (name.contains(".jpg") || name.contains(".JPG")) {
                    CameraFile cameraFile2 = new CameraFile();
                    cameraFile2.setFileName(name);
                    cameraFile2.setFilePath(str3 + name);
                    arrayList.add(cameraFile2);
                }
            }
        }
        Collections.sort(arrayList);
        return true;
    }
}
