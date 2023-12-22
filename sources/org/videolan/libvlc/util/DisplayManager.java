package org.videolan.libvlc.util;

import android.app.Activity;
import android.app.Presentation;
import android.content.Context;
import android.content.DialogInterface;
import android.media.MediaRouter;
import android.os.Bundle;
import android.os.Handler;
import android.view.Display;
import android.view.SurfaceView;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import org.videolan.R;
import org.videolan.libvlc.RendererItem;
/* loaded from: classes.dex */
public class DisplayManager {
    private static final String TAG = "VLC/DisplayManager";
    private Activity mActivity;
    private DisplayType mDisplayType;
    private MediaRouter mMediaRouter;
    private MediaRouter.SimpleCallback mMediaRouterCallback;
    private SecondaryDisplay mPresentation;
    private RendererItem mRendererItem;
    private LiveData<RendererItem> mSelectedRenderer;
    private boolean mTextureView;
    private int mPresentationId = -1;
    private Observer<RendererItem> mRendererObs = new Observer<RendererItem>() { // from class: org.videolan.libvlc.util.DisplayManager.1
        @Override // androidx.lifecycle.Observer
        public void onChanged(RendererItem rendererItem) {
            if (DisplayManager.this.mRendererItem != rendererItem) {
                DisplayManager.this.mRendererItem = rendererItem;
                DisplayManager.this.updateDisplayType();
            }
        }
    };
    private DialogInterface.OnDismissListener mOnDismissListener = new DialogInterface.OnDismissListener() { // from class: org.videolan.libvlc.util.DisplayManager.2
        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (dialogInterface == DisplayManager.this.mPresentation) {
                DisplayManager.this.mPresentation = null;
                DisplayManager.this.mPresentationId = -1;
            }
        }
    };

    /* loaded from: classes.dex */
    public enum DisplayType {
        PRIMARY,
        PRESENTATION,
        RENDERER
    }

    public DisplayManager(@NonNull Activity activity, @Nullable LiveData<RendererItem> liveData, boolean z, boolean z2, boolean z3) {
        this.mActivity = activity;
        this.mSelectedRenderer = liveData;
        this.mMediaRouter = (MediaRouter) ContextCompat.getSystemService(activity.getApplicationContext(), MediaRouter.class);
        this.mTextureView = z;
        this.mPresentation = (z2 || z3 || liveData == null || liveData.getValue() != null) ? null : createPresentation();
        if (this.mSelectedRenderer != null) {
            this.mRendererItem = this.mSelectedRenderer.getValue();
            this.mSelectedRenderer.observeForever(this.mRendererObs);
        }
        this.mDisplayType = z3 ? DisplayType.PRIMARY : getCurrentType();
    }

    public boolean isPrimary() {
        return this.mDisplayType == DisplayType.PRIMARY;
    }

    public boolean isSecondary() {
        return this.mDisplayType == DisplayType.PRESENTATION;
    }

    public boolean isOnRenderer() {
        return this.mDisplayType == DisplayType.RENDERER;
    }

    public void release() {
        if (this.mPresentation != null) {
            this.mPresentation.dismiss();
            this.mPresentation = null;
        }
        if (this.mSelectedRenderer != null) {
            this.mSelectedRenderer.removeObserver(this.mRendererObs);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDisplayType() {
        if (this.mDisplayType != getCurrentType()) {
            new Handler().postDelayed(new Runnable() { // from class: org.videolan.libvlc.util.DisplayManager.3
                @Override // java.lang.Runnable
                public void run() {
                    DisplayManager.this.mActivity.recreate();
                }
            }, 100L);
        }
    }

    private DisplayType getCurrentType() {
        return this.mPresentationId != -1 ? DisplayType.PRESENTATION : this.mRendererItem != null ? DisplayType.RENDERER : DisplayType.PRIMARY;
    }

    @Nullable
    public SecondaryDisplay getPresentation() {
        return this.mPresentation;
    }

    @Nullable
    public DisplayType getDisplayType() {
        return this.mDisplayType;
    }

    private SecondaryDisplay createPresentation() {
        if (this.mMediaRouter == null) {
            return null;
        }
        MediaRouter.RouteInfo selectedRoute = this.mMediaRouter.getSelectedRoute(2);
        Display presentationDisplay = selectedRoute != null ? selectedRoute.getPresentationDisplay() : null;
        if (presentationDisplay != null) {
            SecondaryDisplay secondaryDisplay = new SecondaryDisplay(this.mActivity, presentationDisplay);
            secondaryDisplay.setOnDismissListener(this.mOnDismissListener);
            try {
                secondaryDisplay.show();
                this.mPresentationId = presentationDisplay.getDisplayId();
                return secondaryDisplay;
            } catch (WindowManager.InvalidDisplayException unused) {
                this.mPresentationId = -1;
            }
        }
        return null;
    }

    public boolean setMediaRouterCallback() {
        if (this.mMediaRouter == null || this.mMediaRouterCallback != null) {
            return false;
        }
        this.mMediaRouterCallback = new MediaRouter.SimpleCallback() { // from class: org.videolan.libvlc.util.DisplayManager.4
            @Override // android.media.MediaRouter.Callback
            public void onRoutePresentationDisplayChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
                int displayId = routeInfo.getPresentationDisplay() != null ? routeInfo.getPresentationDisplay().getDisplayId() : -1;
                if (displayId == DisplayManager.this.mPresentationId) {
                    return;
                }
                DisplayManager.this.mPresentationId = displayId;
                if (displayId == -1) {
                    DisplayManager.this.removePresentation();
                } else {
                    DisplayManager.this.updateDisplayType();
                }
            }
        };
        this.mMediaRouter.addCallback(2, this.mMediaRouterCallback);
        return true;
    }

    public void removeMediaRouterCallback() {
        if (this.mMediaRouter != null) {
            this.mMediaRouter.removeCallback(this.mMediaRouterCallback);
        }
        this.mMediaRouterCallback = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removePresentation() {
        if (this.mMediaRouter == null) {
            return;
        }
        if (this.mPresentation != null) {
            this.mPresentation.dismiss();
            this.mPresentation = null;
        }
        updateDisplayType();
    }

    /* loaded from: classes.dex */
    public class SecondaryDisplay extends Presentation {
        public static final String TAG = "VLC/SecondaryDisplay";
        private SurfaceView mSubtitlesSurfaceView;
        private FrameLayout mSurfaceFrame;
        private SurfaceView mSurfaceView;

        public SecondaryDisplay(Context context, Display display) {
            super(context, display);
        }

        public SecondaryDisplay(Context context, Display display, int i) {
            super(context, display, i);
        }

        @Override // android.app.Dialog
        protected void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            setContentView(R.layout.player_remote);
            this.mSurfaceFrame = (FrameLayout) findViewById(R.id.remote_player_surface_frame);
            this.mSurfaceView = (SurfaceView) this.mSurfaceFrame.findViewById(R.id.remote_player_surface);
            this.mSubtitlesSurfaceView = (SurfaceView) this.mSurfaceFrame.findViewById(R.id.remote_subtitles_surface);
            this.mSubtitlesSurfaceView.setZOrderMediaOverlay(true);
            this.mSubtitlesSurfaceView.getHolder().setFormat(-3);
        }

        public FrameLayout getSurfaceFrame() {
            return this.mSurfaceFrame;
        }

        public SurfaceView getSurfaceView() {
            return this.mSurfaceView;
        }

        public SurfaceView getSubtitlesSurfaceView() {
            return this.mSubtitlesSurfaceView;
        }
    }
}
