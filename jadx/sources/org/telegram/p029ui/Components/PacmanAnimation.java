package org.telegram.p029ui.Components;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.SharedConfig;
import org.telegram.p029ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes3.dex */
public class PacmanAnimation {
    private boolean currentGhostWalk;
    private Runnable finishRunnable;
    private Path ghostPath;
    private float ghostProgress;
    private boolean ghostWalk;
    private View parentView;
    private float progress;
    private float translationProgress;
    private Paint paint = new Paint(1);
    private Paint edgePaint = new Paint(1);
    private long lastUpdateTime = 0;
    private RectF rect = new RectF();

    public PacmanAnimation(View view) {
        this.edgePaint.setStyle(Paint.Style.STROKE);
        this.edgePaint.setStrokeWidth(AndroidUtilities.m1124dp(2.0f));
        this.parentView = view;
    }

    public void setFinishRunnable(Runnable runnable) {
        this.finishRunnable = runnable;
    }

    private void update() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.lastUpdateTime;
        this.lastUpdateTime = jCurrentTimeMillis;
        if (j > 17) {
            j = 17;
        }
        if (this.progress >= 1.0f) {
            this.progress = 0.0f;
        }
        float f = j;
        float f2 = this.progress + (f / 400.0f);
        this.progress = f2;
        if (f2 > 1.0f) {
            this.progress = 1.0f;
        }
        float f3 = this.translationProgress + (f / 2000.0f);
        this.translationProgress = f3;
        if (f3 > 1.0f) {
            this.translationProgress = 1.0f;
        }
        float f4 = this.ghostProgress + (f / 200.0f);
        this.ghostProgress = f4;
        if (f4 >= 1.0f) {
            this.ghostWalk = !this.ghostWalk;
            this.ghostProgress = 0.0f;
        }
        this.parentView.invalidate();
    }

    public void start() {
        this.translationProgress = 0.0f;
        this.progress = 0.0f;
        this.lastUpdateTime = System.currentTimeMillis();
        this.parentView.invalidate();
    }

    private void drawGhost(Canvas canvas, int i) {
        float f;
        float f2;
        Path path = this.ghostPath;
        if (path == null || this.ghostWalk != this.currentGhostWalk) {
            if (path == null) {
                this.ghostPath = new Path();
            }
            this.ghostPath.reset();
            boolean z = this.ghostWalk;
            this.currentGhostWalk = z;
            if (z) {
                f = 35.0f;
                this.ghostPath.moveTo(0.0f, AndroidUtilities.m1124dp(50.0f));
                this.ghostPath.lineTo(0.0f, AndroidUtilities.m1124dp(24.0f));
                f2 = 28.0f;
                this.rect.set(0.0f, 0.0f, AndroidUtilities.m1124dp(42.0f), AndroidUtilities.m1124dp(24.0f));
                this.ghostPath.arcTo(this.rect, 180.0f, 180.0f, false);
                this.ghostPath.lineTo(AndroidUtilities.m1124dp(42.0f), AndroidUtilities.m1124dp(50.0f));
                this.ghostPath.lineTo(AndroidUtilities.m1124dp(35.0f), AndroidUtilities.m1124dp(43.0f));
                this.ghostPath.lineTo(AndroidUtilities.m1124dp(28.0f), AndroidUtilities.m1124dp(50.0f));
                this.ghostPath.lineTo(AndroidUtilities.m1124dp(21.0f), AndroidUtilities.m1124dp(43.0f));
                this.ghostPath.lineTo(AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(50.0f));
                this.ghostPath.lineTo(AndroidUtilities.m1124dp(7.0f), AndroidUtilities.m1124dp(43.0f));
            } else {
                f = 35.0f;
                f2 = 28.0f;
                this.ghostPath.moveTo(0.0f, AndroidUtilities.m1124dp(43.0f));
                this.ghostPath.lineTo(0.0f, AndroidUtilities.m1124dp(24.0f));
                this.rect.set(0.0f, 0.0f, AndroidUtilities.m1124dp(42.0f), AndroidUtilities.m1124dp(24.0f));
                this.ghostPath.arcTo(this.rect, 180.0f, 180.0f, false);
                this.ghostPath.lineTo(AndroidUtilities.m1124dp(42.0f), AndroidUtilities.m1124dp(43.0f));
                this.ghostPath.lineTo(AndroidUtilities.m1124dp(35.0f), AndroidUtilities.m1124dp(50.0f));
                this.ghostPath.lineTo(AndroidUtilities.m1124dp(28.0f), AndroidUtilities.m1124dp(43.0f));
                this.ghostPath.lineTo(AndroidUtilities.m1124dp(21.0f), AndroidUtilities.m1124dp(50.0f));
                this.ghostPath.lineTo(AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(43.0f));
                this.ghostPath.lineTo(AndroidUtilities.m1124dp(7.0f), AndroidUtilities.m1124dp(50.0f));
            }
            this.ghostPath.close();
        } else {
            f = 35.0f;
            f2 = 28.0f;
        }
        canvas.drawPath(this.ghostPath, this.edgePaint);
        if (i == 0) {
            this.paint.setColor(-90112);
        } else if (i == 1) {
            this.paint.setColor(-85326);
        } else {
            this.paint.setColor(-16720161);
        }
        canvas.drawPath(this.ghostPath, this.paint);
        this.paint.setColor(-1);
        this.rect.set(AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(20.0f), AndroidUtilities.m1124dp(f2));
        canvas.drawOval(this.rect, this.paint);
        this.rect.set(AndroidUtilities.m1124dp(24.0f), AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(36.0f), AndroidUtilities.m1124dp(f2));
        canvas.drawOval(this.rect, this.paint);
        this.paint.setColor(-16777216);
        this.rect.set(AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(18.0f), AndroidUtilities.m1124dp(19.0f), AndroidUtilities.m1124dp(24.0f));
        canvas.drawOval(this.rect, this.paint);
        this.rect.set(AndroidUtilities.m1124dp(30.0f), AndroidUtilities.m1124dp(18.0f), AndroidUtilities.m1124dp(f), AndroidUtilities.m1124dp(24.0f));
        canvas.drawOval(this.rect, this.paint);
    }

    public void draw(Canvas canvas, int i) {
        int iM1124dp = AndroidUtilities.m1124dp(110.0f);
        int iM1124dp2 = AndroidUtilities.m1124dp(SharedConfig.useThreeLinesLayout ? 78.0f : 72.0f);
        float measuredWidth = ((this.parentView.getMeasuredWidth() + r1) * this.translationProgress) - ((AndroidUtilities.m1124dp(62.0f) * 3) + iM1124dp);
        int i2 = iM1124dp / 2;
        this.paint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        int i3 = iM1124dp2 / 2;
        float f = measuredWidth + i2;
        canvas.drawRect(0.0f, i - i3, f, i3 + i + 1, this.paint);
        this.paint.setColor(-69120);
        float f2 = measuredWidth + iM1124dp;
        this.rect.set(measuredWidth, i - i2, f2, r10 + iM1124dp);
        float f3 = this.progress;
        int i4 = (int) (f3 < 0.5f ? (1.0f - (f3 / 0.5f)) * 35.0f : ((f3 - 0.5f) * 35.0f) / 0.5f);
        float f4 = i4;
        float f5 = 360 - (i4 * 2);
        canvas.drawArc(this.rect, f4, f5, true, this.edgePaint);
        canvas.drawArc(this.rect, f4, f5, true, this.paint);
        this.paint.setColor(-16777216);
        canvas.drawCircle(f - AndroidUtilities.m1124dp(8.0f), r10 + (iM1124dp / 4), AndroidUtilities.m1124dp(8.0f), this.paint);
        canvas.save();
        canvas.translate(f2 + AndroidUtilities.m1124dp(20.0f), i - AndroidUtilities.m1124dp(25.0f));
        for (int i5 = 0; i5 < 3; i5++) {
            drawGhost(canvas, i5);
            canvas.translate(AndroidUtilities.m1124dp(62.0f), 0.0f);
        }
        canvas.restore();
        if (this.translationProgress >= 1.0f) {
            this.finishRunnable.run();
        }
        update();
    }
}
