package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import me.vkryl.android.animator.BoolAnimator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes3.dex */
public class DialogsActivityStatusLayout extends View {
    private final RectF animatingRectF;
    private final BoolAnimator animatorStatusBarVisible;
    private final Paint fillingPaint;
    private final Runnable justForTestR;
    private final RectF statusBarRectF;
    private final RectF telegramLogoRectF;

    public DialogsActivityStatusLayout(Context context) {
        super(context);
        this.animatorStatusBarVisible = new BoolAnimator(this, CubicBezierInterpolator.EASE_OUT_QUINT, 380L);
        this.fillingPaint = new Paint(1);
        this.statusBarRectF = new RectF();
        this.telegramLogoRectF = new RectF();
        this.animatingRectF = new RectF();
        this.justForTestR = new Runnable() { // from class: org.telegram.ui.Components.DialogsActivityStatusLayout$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.justForTest();
            }
        };
        updateColors();
    }

    public void updateColors() {
        this.fillingPaint.setColor(Theme.getColor(Theme.key_telegram_color));
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int currentActionBarHeight = ActionBar.getCurrentActionBarHeight();
        int paddingTop = getPaddingTop();
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(paddingTop + currentActionBarHeight, TLObject.FLAG_30));
        this.statusBarRectF.set(0.0f, 0.0f, getMeasuredWidth(), paddingTop);
        this.telegramLogoRectF.set(AndroidUtilities.m1124dp(12.0f), (paddingTop + (currentActionBarHeight / 2)) - AndroidUtilities.m1124dp(15.0f), AndroidUtilities.m1124dp(12.0f) + AndroidUtilities.m1124dp(30.0f), r0 + AndroidUtilities.m1124dp(30.0f));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float floatValue = this.animatorStatusBarVisible.getFloatValue();
        AndroidUtilities.lerp(this.telegramLogoRectF, this.statusBarRectF, floatValue, this.animatingRectF);
        float fLerp = AndroidUtilities.lerp(AndroidUtilities.m1124dp(15.0f), 0, floatValue);
        canvas.drawRoundRect(this.animatingRectF, fLerp, fLerp, this.fillingPaint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void justForTest() {
        this.animatorStatusBarVisible.setValue(!r0.getValue(), true);
        AndroidUtilities.runOnUIThread(this.justForTestR, 3000L);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        AndroidUtilities.runOnUIThread(this.justForTestR, 3000L);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AndroidUtilities.cancelRunOnUIThread(this.justForTestR);
    }
}
