package org.telegram.p029ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.SimpleTextView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes6.dex */
public class CreationTextCell extends FrameLayout {
    boolean divider;
    private ImageView imageView;
    public int startPadding;
    private SimpleTextView textView;

    public CreationTextCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.startPadding = i;
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.textView = simpleTextView;
        simpleTextView.setTextSize(16);
        this.textView.setGravity(LocaleController.isRTL ? 5 : 3);
        SimpleTextView simpleTextView2 = this.textView;
        int i2 = Theme.key_windowBackgroundWhiteBlueText2;
        simpleTextView2.setTextColor(Theme.getColor(i2, resourcesProvider));
        this.textView.setTag(Integer.valueOf(i2));
        addView(this.textView);
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        addView(this.imageView);
        setWillNotDraw(false);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        AndroidUtilities.m1124dp(48.0f);
        this.textView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m1124dp(94.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(20.0f), TLObject.FLAG_30));
        this.imageView.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(50.0f), TLObject.FLAG_30));
        setMeasuredDimension(size, AndroidUtilities.m1124dp(50.0f));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int iM1124dp;
        int i5 = i3 - i;
        int textHeight = ((i4 - i2) - this.textView.getTextHeight()) / 2;
        if (LocaleController.isRTL) {
            iM1124dp = (getMeasuredWidth() - this.textView.getMeasuredWidth()) - AndroidUtilities.m1124dp(this.imageView.getVisibility() == 0 ? this.startPadding : 25.0f);
        } else {
            iM1124dp = AndroidUtilities.m1124dp(this.imageView.getVisibility() == 0 ? this.startPadding : 25.0f);
        }
        SimpleTextView simpleTextView = this.textView;
        simpleTextView.layout(iM1124dp, textHeight, simpleTextView.getMeasuredWidth() + iM1124dp, this.textView.getMeasuredHeight() + textHeight);
        int iM1124dp2 = !LocaleController.isRTL ? (AndroidUtilities.m1124dp(this.startPadding) - this.imageView.getMeasuredWidth()) / 2 : (i5 - this.imageView.getMeasuredWidth()) - AndroidUtilities.m1124dp(25.0f);
        ImageView imageView = this.imageView;
        imageView.layout(iM1124dp2, 0, imageView.getMeasuredWidth() + iM1124dp2, this.imageView.getMeasuredHeight());
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.divider) {
            canvas.drawLine(AndroidUtilities.m1124dp(this.startPadding), getMeasuredHeight() - 1, getMeasuredWidth() + AndroidUtilities.m1124dp(23.0f), getMeasuredHeight(), Theme.dividerPaint);
        }
    }

    public void setTextAndIcon(String str, Drawable drawable, boolean z) {
        this.textView.setText(str);
        this.imageView.setImageDrawable(drawable);
        this.divider = z;
    }
}
