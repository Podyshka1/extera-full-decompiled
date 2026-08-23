package org.telegram.p029ui.Cells;

import android.content.Context;
import android.view.View;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes3.dex */
public class ShadowSectionCell extends View {
    private int backgroundColor;
    private boolean bottom;
    private Theme.ResourcesProvider resourcesProvider;
    private int size;
    private boolean top;

    public ShadowSectionCell(Context context) {
        this(context, 12, (Theme.ResourcesProvider) null);
    }

    public ShadowSectionCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        this(context, 12, resourcesProvider);
    }

    public ShadowSectionCell(Context context, int i) {
        this(context, i, (Theme.ResourcesProvider) null);
    }

    public ShadowSectionCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.top = true;
        this.bottom = true;
        this.resourcesProvider = resourcesProvider;
        this.size = i;
        updateBackground();
    }

    public ShadowSectionCell(Context context, int i, int i2) {
        this(context, i, i2, null);
    }

    public ShadowSectionCell(Context context, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.top = true;
        this.bottom = true;
        this.resourcesProvider = resourcesProvider;
        this.backgroundColor = i2;
        this.size = i;
        updateBackground();
    }

    public void setTopBottom(boolean z, boolean z2) {
        if (this.top == z && this.bottom == z2) {
            return;
        }
        this.top = z;
        this.bottom = z2;
        updateBackground();
    }

    public void setSize(int i) {
        this.size = i;
    }

    private void updateBackground() {
        int i = this.backgroundColor;
        if (i == 0) {
            setBackground(null);
        } else {
            setBackgroundColor(i);
        }
    }

    private int getBackgroundResId() {
        boolean z = this.top;
        if (z && this.bottom) {
            return C2888R.drawable.greydivider;
        }
        if (z) {
            return C2888R.drawable.greydivider_bottom;
        }
        if (this.bottom) {
            return C2888R.drawable.greydivider_top;
        }
        return C2888R.drawable.transparent;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(this.size), TLObject.FLAG_30));
    }
}
