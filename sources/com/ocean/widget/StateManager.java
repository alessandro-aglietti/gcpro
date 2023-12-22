package com.ocean.widget;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class StateManager {
    private boolean mIsEnabled;
    private int mProgress;

    public StateManager(CircularProgressButton circularProgressButton) {
        this.mIsEnabled = circularProgressButton.isEnabled();
        this.mProgress = circularProgressButton.getProgress();
    }

    public void saveProgress(CircularProgressButton circularProgressButton) {
        this.mProgress = circularProgressButton.getProgress();
    }

    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    public int getProgress() {
        return this.mProgress;
    }

    public void checkState(CircularProgressButton circularProgressButton) {
        if (circularProgressButton.getProgress() != getProgress()) {
            circularProgressButton.setProgress(circularProgressButton.getProgress());
        } else if (circularProgressButton.isEnabled() != isEnabled()) {
            circularProgressButton.setEnabled(circularProgressButton.isEnabled());
        }
    }
}
