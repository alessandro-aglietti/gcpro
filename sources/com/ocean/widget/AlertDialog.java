package com.ocean.widget;

import android.app.Dialog;
import android.content.Context;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ocean.gamecamerapro2.R;
/* loaded from: classes.dex */
public class AlertDialog {
    private Button btn_neg;
    private Button btn_pos;
    private Context context;
    private Dialog dialog;
    private Display display;
    private ImageView img_line;
    private LinearLayout lLayout_bg;
    private TextView txt_msg;
    private TextView txt_title;
    private boolean showTitle = false;
    private boolean showMsg = false;
    private boolean showPosBtn = false;
    private boolean showNegBtn = false;

    public AlertDialog(Context context) {
        this.context = context;
        this.display = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    public AlertDialog builder() {
        View inflate = LayoutInflater.from(this.context).inflate(R.layout.view_alertdialog, (ViewGroup) null);
        this.lLayout_bg = (LinearLayout) inflate.findViewById(R.id.lLayout_bg);
        this.txt_title = (TextView) inflate.findViewById(R.id.txt_title);
        this.txt_title.setVisibility(8);
        this.txt_msg = (TextView) inflate.findViewById(R.id.txt_msg);
        this.txt_msg.setVisibility(8);
        this.btn_neg = (Button) inflate.findViewById(R.id.btn_neg);
        this.btn_neg.setVisibility(8);
        this.btn_pos = (Button) inflate.findViewById(R.id.btn_pos);
        this.btn_pos.setVisibility(8);
        this.img_line = (ImageView) inflate.findViewById(R.id.img_line);
        this.img_line.setVisibility(8);
        this.dialog = new Dialog(this.context, R.style.AlertDialogStyle);
        this.dialog.setContentView(inflate);
        StringBuilder sb = new StringBuilder();
        sb.append("Dialog Width : ");
        double width = this.display.getWidth();
        Double.isNaN(width);
        sb.append(width * 0.85d);
        Log.i("Makoto", sb.toString());
        double width2 = this.display.getWidth();
        Double.isNaN(width2);
        if (width2 * 0.85d > 1000.0d) {
            this.lLayout_bg.setLayoutParams(new FrameLayout.LayoutParams(850, -2));
        } else {
            LinearLayout linearLayout = this.lLayout_bg;
            double width3 = this.display.getWidth();
            Double.isNaN(width3);
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams((int) (width3 * 0.85d), -2));
        }
        return this;
    }

    public AlertDialog setTitle(String str) {
        this.showTitle = true;
        if ("".equals(str)) {
            this.txt_title.setText("����");
        } else {
            this.txt_title.setText(str);
        }
        return this;
    }

    public AlertDialog setMsg(String str) {
        this.showMsg = true;
        if ("".equals(str)) {
            this.txt_msg.setText("����");
        } else {
            this.txt_msg.setText(str);
        }
        return this;
    }

    public AlertDialog setCancelable(boolean z) {
        this.dialog.setCancelable(z);
        return this;
    }

    public AlertDialog setPositiveButton(String str, final View.OnClickListener onClickListener) {
        this.showPosBtn = true;
        if ("".equals(str)) {
            this.btn_pos.setText("ȷ��");
        } else {
            this.btn_pos.setText(str);
        }
        this.btn_pos.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.widget.AlertDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                onClickListener.onClick(view);
                AlertDialog.this.dialog.dismiss();
            }
        });
        return this;
    }

    public AlertDialog setNegativeButton(String str, final View.OnClickListener onClickListener) {
        this.showNegBtn = true;
        if ("".equals(str)) {
            this.btn_neg.setText(this.context.getString(R.string.no));
        } else {
            this.btn_neg.setText(str);
        }
        this.btn_neg.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.widget.AlertDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                onClickListener.onClick(view);
                AlertDialog.this.dialog.dismiss();
            }
        });
        return this;
    }

    private void setLayout() {
        if (!this.showTitle && !this.showMsg) {
            this.txt_title.setText(this.context.getString(R.string.my_dialog_title));
            this.txt_title.setVisibility(0);
        }
        if (this.showTitle) {
            this.txt_title.setVisibility(0);
        }
        if (this.showMsg) {
            this.txt_msg.setVisibility(0);
        }
        if (!this.showPosBtn && !this.showNegBtn) {
            this.btn_pos.setText(this.context.getString(R.string.ok));
            this.btn_pos.setVisibility(0);
            this.btn_pos.setBackgroundResource(R.drawable.alertdialog_single_selector);
            this.btn_pos.setOnClickListener(new View.OnClickListener() { // from class: com.ocean.widget.AlertDialog.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AlertDialog.this.dialog.dismiss();
                }
            });
        }
        if (this.showPosBtn && this.showNegBtn) {
            this.btn_pos.setVisibility(0);
            this.btn_pos.setBackgroundResource(R.drawable.alertdialog_right_selector);
            this.btn_neg.setVisibility(0);
            this.btn_neg.setBackgroundResource(R.drawable.alertdialog_left_selector);
            this.img_line.setVisibility(0);
        }
        if (this.showPosBtn && !this.showNegBtn) {
            this.btn_pos.setVisibility(0);
            this.btn_pos.setBackgroundResource(R.drawable.alertdialog_single_selector);
        }
        if (this.showPosBtn || !this.showNegBtn) {
            return;
        }
        this.btn_neg.setVisibility(0);
        this.btn_neg.setBackgroundResource(R.drawable.alertdialog_single_selector);
    }

    public void show() {
        setLayout();
        this.dialog.show();
    }
}
