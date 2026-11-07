package org.telegram.messenger.pip;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.view.View;
import android.widget.FrameLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ViewConstructor"})
class PipActivityContentLayout extends FrameLayout {
    private final Activity activity;
    private boolean isViewInPip;
    private int originalHeight;
    private int originalWidth;

    public PipActivityContentLayout(Activity activity) {
        super(activity);
        this.activity = activity;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        boolean zIsInPictureInPictureMode = AndroidUtilities.isInPictureInPictureMode(this.activity);
        if (!zIsInPictureInPictureMode) {
            this.originalWidth = size;
            this.originalHeight = size2;
        }
        this.isViewInPip = zIsInPictureInPictureMode && size < this.originalWidth && size2 < this.originalHeight;
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, TLObject.FLAG_30));
    }

    public boolean isViewInPip() {
        return this.isViewInPip;
    }
}
