package com.ocean.widget;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.ocean.cmdrequest.ForCancelDownload;
import com.ocean.gamecamerapro2.R;
/* loaded from: classes.dex */
public class MyLoadingDialog extends Dialog {
    private static Context mContext;
    private static MyLoadingDialog myLoadingDialog;
    private int FileCount;
    private ForCancelDownload cancelDownloadInterface;
    private TextView for_cancel;
    private RotateLoading loading;
    private TextView progress_text;
    private TextView textView;
    private int themeID;

    public MyLoadingDialog(Context context) {
        super(context);
        this.FileCount = 0;
        this.cancelDownloadInterface = null;
        this.loading = (RotateLoading) myLoadingDialog.findViewById(R.id.loading);
        this.textView = (TextView) myLoadingDialog.findViewById(R.id.loading_text);
        this.progress_text = (TextView) myLoadingDialog.findViewById(R.id.show_info);
    }

    public MyLoadingDialog(Context context, int i) {
        super(context, i);
        this.FileCount = 0;
        this.cancelDownloadInterface = null;
        this.themeID = i;
    }

    public static MyLoadingDialog createDialog(Context context) {
        mContext = context;
        myLoadingDialog = new MyLoadingDialog(context, R.style.CustomProgressDialog);
        myLoadingDialog.setContentView(R.layout.my_loading_dialog_xml);
        myLoadingDialog.getWindow().getAttributes().gravity = 17;
        return myLoadingDialog;
    }

    @Override // android.app.Dialog
    public void show() {
        this.loading = (RotateLoading) myLoadingDialog.findViewById(R.id.loading);
        this.progress_text = (TextView) myLoadingDialog.findViewById(R.id.show_info);
        this.for_cancel = (TextView) myLoadingDialog.findViewById(R.id.for_cancel);
        this.for_cancel.getPaint().setFlags(8);
        this.for_cancel.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.widget.MyLoadingDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    if (MyLoadingDialog.this.cancelDownloadInterface != null) {
                        MyLoadingDialog.this.cancelDownloadInterface.cancelDownload();
                        MyLoadingDialog.this.dismiss();
                    }
                } catch (Exception unused) {
                }
            }
        });
        try {
            setCancelable(false);
            this.loading.start();
            if (this.cancelDownloadInterface != null && this.for_cancel != null) {
                this.for_cancel.setVisibility(0);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        super.show();
    }

    @Override // android.app.Dialog
    public void hide() {
        try {
            if (this.progress_text != null && this.progress_text.getVisibility() != 8) {
                this.progress_text.setVisibility(8);
            }
            if (this.loading != null) {
                this.loading.stop();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        super.hide();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            if (this.progress_text != null && this.progress_text.getVisibility() != 8) {
                this.progress_text.setVisibility(8);
            }
        } catch (Exception unused) {
        }
        super.dismiss();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        try {
            if (this.progress_text != null && this.progress_text.getVisibility() != 8) {
                this.progress_text.setVisibility(8);
            }
            if (this.loading != null) {
                this.loading.stop();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        super.cancel();
    }

    public void setAllFileCount(int i) {
        this.FileCount = i;
    }

    public void setProgressText(int i, String str, int i2) {
        try {
            if (this.progress_text != null) {
                TextView textView = this.progress_text;
                textView.setText(mContext.getString(R.string.album_progress) + ((this.FileCount - i) + 1) + "/" + this.FileCount + " , " + str + "% , " + i2 + "KB/s");
                if (this.progress_text.getVisibility() != 0) {
                    this.progress_text.setVisibility(0);
                }
            }
        } catch (Exception unused) {
        }
    }

    public void setForCancelDownload(ForCancelDownload forCancelDownload) {
        this.cancelDownloadInterface = forCancelDownload;
    }
}
