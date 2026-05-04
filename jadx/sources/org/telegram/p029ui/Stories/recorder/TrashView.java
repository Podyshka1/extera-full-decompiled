package org.telegram.p029ui.Stories.recorder;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.ButtonBounce;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.RLottieDrawable;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public class TrashView extends View {
    private final ButtonBounce bounce;
    private final Paint circlePaint;
    private boolean dragged;
    private final AnimatedFloat draggedT;
    private final RLottieDrawable drawable;
    private final Paint greyPaint;
    private final AnimatedTextView.AnimatedTextDrawable textDrawable;

    public TrashView(Context context) {
        super(context);
        Paint paint = new Paint(1);
        this.circlePaint = paint;
        Paint paint2 = new Paint(1);
        this.greyPaint = paint2;
        this.bounce = new ButtonBounce(this);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.draggedT = new AnimatedFloat(this, 0L, 240L, cubicBezierInterpolator);
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(AndroidUtilities.dpf2(2.66f));
        paint.setShadowLayer(AndroidUtilities.dpf2(3.0f), 0.0f, AndroidUtilities.m1124dp(1.66f), 805306368);
        paint2.setColor(AndroidUtilities.DARK_STATUS_BAR_OVERLAY);
        RLottieDrawable rLottieDrawable = new RLottieDrawable(C2888R.raw.group_pip_delete_icon, _UrlKt.FRAGMENT_ENCODE_SET + C2888R.raw.group_pip_delete_icon, AndroidUtilities.m1124dp(48.0f), AndroidUtilities.m1124dp(48.0f), true, null);
        this.drawable = rLottieDrawable;
        rLottieDrawable.setMasterParent(this);
        rLottieDrawable.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
        rLottieDrawable.setPlayInDirectionOfCustomEndFrame(true);
        rLottieDrawable.setCustomEndFrame(0);
        rLottieDrawable.setAllowDecodeSingleFrame(true);
        rLottieDrawable.start();
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(true, true, false);
        this.textDrawable = animatedTextDrawable;
        animatedTextDrawable.setAnimationProperties(0.3f, 0L, 250L, cubicBezierInterpolator);
        animatedTextDrawable.setOverrideFullWidth(AndroidUtilities.displaySize.x);
        animatedTextDrawable.setTextSize(AndroidUtilities.m1124dp(14.0f));
        animatedTextDrawable.setTextColor(-1);
        animatedTextDrawable.setShadowLayer(AndroidUtilities.dpf2(1.33f), 0.0f, AndroidUtilities.m1124dp(1.0f), TLObject.FLAG_30);
        animatedTextDrawable.setText(LocaleController.getString(C2888R.string.TrashHintDrag));
        animatedTextDrawable.setGravity(17);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.textDrawable || super.verifyDrawable(drawable);
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float fM1124dp = AndroidUtilities.m1124dp(30.0f);
        float width = getWidth() / 2.0f;
        float height = getHeight() / 2.0f;
        float fM1124dp2 = (AndroidUtilities.m1124dp(3.0f) * this.draggedT.set(this.dragged)) + fM1124dp;
        canvas.drawCircle(width, height, fM1124dp2, this.greyPaint);
        canvas.drawCircle(width, height, fM1124dp2, this.circlePaint);
        float fM1124dp3 = AndroidUtilities.m1124dp(48.0f) / 2.0f;
        this.drawable.setBounds((int) (width - fM1124dp3), (int) (height - fM1124dp3), (int) (width + fM1124dp3), (int) (fM1124dp3 + height));
        this.drawable.draw(canvas);
        this.textDrawable.setBounds(0, (int) (height + fM1124dp + AndroidUtilities.m1124dp(7.0f)), getWidth(), getHeight());
        this.textDrawable.draw(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(i, AndroidUtilities.m1124dp(120.0f));
    }

    public void onDragInfo(boolean z, boolean z2) {
        this.bounce.setPressed(z);
        this.textDrawable.setText(LocaleController.getString((z || z2) ? C2888R.string.TrashHintRelease : C2888R.string.TrashHintDrag));
        boolean z3 = z && !z2;
        this.dragged = z3;
        if (z3) {
            if (this.drawable.getCurrentFrame() > 34) {
                this.drawable.setCurrentFrame(0, false);
            }
            this.drawable.setCustomEndFrame(33);
            this.drawable.start();
        } else {
            this.drawable.setCustomEndFrame(z2 ? 66 : 0);
            this.drawable.start();
        }
        invalidate();
    }
}
