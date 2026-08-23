package org.telegram.p029ui.Stories.recorder;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MediaController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.CombinedDrawable;

/* JADX INFO: loaded from: classes7.dex */
public class AlbumButton extends View {
    private StaticLayout countLayout;
    private float countLayoutLeft;
    private float countLayoutWidth;
    private final TextPaint countPaintLayout;
    private final ImageReceiver imageReceiver;
    final float imageSize;
    private StaticLayout nameLayout;
    private float nameLayoutLeft;
    private float nameLayoutWidth;
    private final TextPaint namePaintLayout;
    private final CharSequence subtitle;
    private final CharSequence title;

    public AlbumButton(Context context, MediaController.PhotoEntry photoEntry, CharSequence charSequence, int i, Theme.ResourcesProvider resourcesProvider) {
        String str;
        super(context);
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.imageReceiver = imageReceiver;
        TextPaint textPaint = new TextPaint(1);
        this.namePaintLayout = textPaint;
        TextPaint textPaint2 = new TextPaint(1);
        this.countPaintLayout = textPaint2;
        this.imageSize = 30.0f;
        setPadding(AndroidUtilities.m1124dp(16.0f), 0, AndroidUtilities.m1124dp(16.0f), 0);
        setBackground(Theme.getSelectorDrawable(false));
        setMinimumWidth(AndroidUtilities.m1124dp(196.0f));
        setLayoutParams(new LinearLayout.LayoutParams(-1, 48));
        int i2 = Theme.key_actionBarDefaultSubmenuItem;
        textPaint.setColor(Theme.getColor(i2, resourcesProvider));
        textPaint.setTextSize(AndroidUtilities.m1124dp(16.0f));
        textPaint2.setColor(Theme.getColor(i2, resourcesProvider));
        textPaint2.setAlpha(102);
        textPaint2.setTextSize(AndroidUtilities.m1124dp(13.0f));
        this.title = _UrlKt.FRAGMENT_ENCODE_SET + ((Object) charSequence);
        this.subtitle = _UrlKt.FRAGMENT_ENCODE_SET + i;
        imageReceiver.setRoundRadius(AndroidUtilities.m1124dp(4.0f));
        Drawable drawableMutate = context.getResources().getDrawable(C2888R.drawable.msg_media_gallery).mutate();
        drawableMutate.setColorFilter(new PorterDuffColorFilter(1308622847, PorterDuff.Mode.MULTIPLY));
        CombinedDrawable combinedDrawable = new CombinedDrawable(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(6.0f), -13750737), drawableMutate);
        combinedDrawable.setFullsize(false);
        combinedDrawable.setIconSize(AndroidUtilities.m1124dp(18.0f), AndroidUtilities.m1124dp(18.0f));
        if (photoEntry != null && (str = photoEntry.thumbPath) != null) {
            imageReceiver.setImage(ImageLocation.getForPath(str), "30.0_30.0", (ImageLocation) null, (String) null, combinedDrawable, (Object) null, 0);
            return;
        }
        if (photoEntry != null && photoEntry.path != null) {
            if (photoEntry.isVideo) {
                imageReceiver.setImage(ImageLocation.getForPath("vthumb://" + photoEntry.imageId + ":" + photoEntry.path), "30.0_30.0", (ImageLocation) null, (String) null, combinedDrawable, (Object) null, 0);
                return;
            }
            imageReceiver.setImage(ImageLocation.getForPath("thumb://" + photoEntry.imageId + ":" + photoEntry.path), "30.0_30.0", (ImageLocation) null, (String) null, combinedDrawable, (Object) null, 0);
            return;
        }
        imageReceiver.setImageBitmap(combinedDrawable);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.imageReceiver.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.imageReceiver.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        updateLayouts((((View.MeasureSpec.getSize(i) - AndroidUtilities.m1124dp(30.0f)) - AndroidUtilities.m1124dp(12.0f)) - getPaddingLeft()) - getPaddingRight());
        if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension((int) Math.min(getPaddingLeft() + AndroidUtilities.m1124dp(30.0f) + AndroidUtilities.m1124dp(12.0f) + this.nameLayoutWidth + AndroidUtilities.m1124dp(8.0f) + this.countLayoutWidth + getPaddingRight(), View.MeasureSpec.getSize(i)), AndroidUtilities.m1124dp(48.0f));
        } else if (View.MeasureSpec.getMode(i) == 1073741824) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m1124dp(48.0f));
        }
    }

    private void updateLayouts(int i) {
        StaticLayout staticLayout = this.nameLayout;
        if (staticLayout == null || staticLayout.getWidth() != i) {
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            CharSequence charSequenceEllipsize = TextUtils.ellipsize(this.title, this.namePaintLayout, i, truncateAt);
            TextPaint textPaint = this.namePaintLayout;
            int iMax = Math.max(0, i);
            Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
            StaticLayout staticLayout2 = new StaticLayout(charSequenceEllipsize, textPaint, iMax, alignment, 1.0f, 0.0f, false);
            this.nameLayout = staticLayout2;
            this.nameLayoutLeft = staticLayout2.getLineCount() > 0 ? this.nameLayout.getLineLeft(0) : 0.0f;
            float lineWidth = this.nameLayout.getLineCount() > 0 ? this.nameLayout.getLineWidth(0) : 0.0f;
            this.nameLayoutWidth = lineWidth;
            int iM1124dp = i - ((int) (lineWidth + AndroidUtilities.m1124dp(8.0f)));
            StaticLayout staticLayout3 = new StaticLayout(TextUtils.ellipsize(this.subtitle, this.countPaintLayout, iM1124dp, truncateAt), this.countPaintLayout, Math.max(0, iM1124dp), alignment, 1.0f, 0.0f, false);
            this.countLayout = staticLayout3;
            this.countLayoutLeft = staticLayout3.getLineCount() > 0 ? this.countLayout.getLineLeft(0) : 0.0f;
            this.countLayoutWidth = this.countLayout.getLineCount() > 0 ? this.countLayout.getLineWidth(0) : 0.0f;
        }
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float paddingLeft = getPaddingLeft();
        this.imageReceiver.setImageCoords(paddingLeft, (getMeasuredHeight() - AndroidUtilities.m1124dp(30.0f)) / 2.0f, AndroidUtilities.m1124dp(30.0f), AndroidUtilities.m1124dp(30.0f));
        this.imageReceiver.draw(canvas);
        float fM1124dp = paddingLeft + AndroidUtilities.m1124dp(30.0f) + AndroidUtilities.m1124dp(12.0f);
        if (this.nameLayout != null) {
            canvas.save();
            canvas.translate(fM1124dp - this.nameLayoutLeft, (getMeasuredHeight() - this.nameLayout.getHeight()) / 2.0f);
            this.nameLayout.draw(canvas);
            fM1124dp = fM1124dp + this.nameLayoutWidth + AndroidUtilities.m1124dp(6.0f);
            canvas.restore();
        }
        if (this.countLayout != null) {
            canvas.save();
            canvas.translate(fM1124dp - this.countLayoutLeft, ((getMeasuredHeight() - this.countLayout.getHeight()) / 2.0f) + AndroidUtilities.dpf2(1.6f));
            this.countLayout.draw(canvas);
            canvas.restore();
        }
    }
}
