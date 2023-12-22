package com.ocean.wheel;
/* loaded from: classes.dex */
public class StrericWheelAdapter implements WheelAdapter {
    private String[] strContents;

    @Override // com.ocean.wheel.WheelAdapter
    public int getMaximumLength() {
        return 10;
    }

    public StrericWheelAdapter(String[] strArr) {
        this.strContents = strArr;
    }

    public String[] getStrContents() {
        return this.strContents;
    }

    public void setStrContents(String[] strArr) {
        this.strContents = strArr;
    }

    @Override // com.ocean.wheel.WheelAdapter
    public String getItem(int i) {
        if (i < 0 || i >= getItemsCount()) {
            return null;
        }
        return this.strContents[i];
    }

    @Override // com.ocean.wheel.WheelAdapter
    public int getItemsCount() {
        return this.strContents.length;
    }
}
