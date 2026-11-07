package com.exteragram.messenger.plugins.ui.components;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H\u0014J0\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007H\u0014R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/ChipsLayout;", "Landroid/view/ViewGroup;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "gap", _UrlKt.FRAGMENT_ENCODE_SET, "onMeasure", _UrlKt.FRAGMENT_ENCODE_SET, "widthMeasureSpec", "heightMeasureSpec", "onLayout", "changed", _UrlKt.FRAGMENT_ENCODE_SET, "l", "t", "r", "b", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
final class ChipsLayout extends ViewGroup {
    private final int gap;

    public ChipsLayout(Context context) {
        super(context);
        this.gap = AndroidUtilities.dp(6.0f);
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int childCount = getChildCount();
        int measuredWidth = 0;
        int i = 0;
        int iMax = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            childAt.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(32.0f), TLObject.FLAG_30));
            if (measuredWidth > 0 && childAt.getMeasuredWidth() + measuredWidth > size) {
                i += iMax + this.gap;
                measuredWidth = 0;
                iMax = 0;
            }
            measuredWidth += childAt.getMeasuredWidth() + this.gap;
            iMax = Math.max(iMax, childAt.getMeasuredHeight());
        }
        setMeasuredDimension(size, getChildCount() != 0 ? i + iMax : 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean changed, int l, int t, int r, int b2) {
        int i = r - l;
        boolean z = LocaleController.isRTL;
        int childCount = getChildCount();
        int measuredWidth = 0;
        int i2 = 0;
        int iMax = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (measuredWidth > 0 && childAt.getMeasuredWidth() + measuredWidth > i) {
                i2 += iMax + this.gap;
                measuredWidth = 0;
                iMax = 0;
            }
            int measuredWidth2 = z ? (i - measuredWidth) - childAt.getMeasuredWidth() : measuredWidth;
            childAt.layout(measuredWidth2, i2, childAt.getMeasuredWidth() + measuredWidth2, childAt.getMeasuredHeight() + i2);
            measuredWidth += childAt.getMeasuredWidth() + this.gap;
            iMax = Math.max(iMax, childAt.getMeasuredHeight());
        }
    }
}
