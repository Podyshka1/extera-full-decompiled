package org.telegram.p029ui.Stories.recorder;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.Components.PlayPauseDrawable;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public class PlayPauseButton extends View {
    private final Paint circlePaint;
    public final PlayPauseDrawable drawable;

    public PlayPauseButton(Context context) {
        super(context);
        Paint paint = new Paint(1);
        this.circlePaint = paint;
        PlayPauseDrawable playPauseDrawable = new PlayPauseDrawable(10);
        this.drawable = playPauseDrawable;
        paint.setColor(-1);
        paint.setShadowLayer(1.0f, 0.0f, 0.0f, 419430400);
        paint.setStyle(Paint.Style.STROKE);
        playPauseDrawable.setCallback(this);
        playPauseDrawable.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.drawable || super.verifyDrawable(drawable);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.circlePaint.setStrokeWidth(AndroidUtilities.dpf2(1.66f));
        canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, AndroidUtilities.m1124dp(10.0f), this.circlePaint);
        this.drawable.setBounds(0, 0, AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f));
        canvas.save();
        canvas.translate((getWidth() - AndroidUtilities.m1124dp(10.0f)) / 2.0f, (getHeight() - AndroidUtilities.m1124dp(10.0f)) / 2.0f);
        this.drawable.draw(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(56.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(56.0f), TLObject.FLAG_30));
    }
}
