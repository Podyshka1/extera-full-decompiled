package org.telegram.ui.Components;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.SystemClock;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.Pair;
import android.view.View;
import com.exteragram.messenger.player.ui.WavySeekBar;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes7.dex */
public class SeekBar {
    private static Paint paint;
    private static int thumbWidth;
    private static Path tmpPath;
    private static float[] tmpRadii;
    private int backgroundColor;
    private int backgroundSelectedColor;
    private float bufferedProgress;
    private int cacheColor;
    private int circleColor;
    private float currentRadius;
    private SeekBarDelegate delegate;
    private int height;
    private CharSequence lastCaption;
    private long lastTimestampUpdate;
    private long lastTimestampsAppearingUpdate;
    private long lastUpdateTime;
    private long lastVideoDuration;
    private long lastWavyDrawTime;
    private View parentView;
    private int progressColor;
    private boolean selected;
    private float thumbProgress;
    private StaticLayout[] timestampLabel;
    private TextPaint timestampLabelPaint;
    private ArrayList<Pair<Float, URLSpanNoUnderline>> timestamps;
    private WavySeekBar wavy;
    private int width;
    private int thumbX = 0;
    private int draggingThumbX = 0;
    private int thumbDX = 0;
    private boolean pressed = false;
    private RectF rect = new RectF();
    private int lineHeight = AndroidUtilities.dp(2.0f);
    private float alpha = 1.0f;
    private float timestampsAppearing = 0.0f;
    private final float TIMESTAMP_GAP = 1.0f;
    private int currentTimestamp = -1;
    private int lastTimestamp = -1;
    private float timestampChangeT = 1.0f;
    private float lastWidth = -1.0f;

    /* JADX INFO: loaded from: classes3.dex */
    public interface SeekBarDelegate {
        default boolean isSeekBarDragAllowed() {
            return true;
        }

        default void onSeekBarContinuousDrag(float f) {
        }

        void onSeekBarDrag(float f);

        default void onSeekBarPressed() {
        }

        default void onSeekBarReleased() {
        }

        default boolean reverseWaveform() {
            return false;
        }
    }

    public void onTimestampUpdate(URLSpanNoUnderline uRLSpanNoUnderline) {
    }

    public SeekBar(View view) {
        if (paint == null) {
            paint = new Paint(1);
        }
        this.parentView = view;
        thumbWidth = AndroidUtilities.dp(24.0f);
        this.currentRadius = AndroidUtilities.dp(6.0f);
    }

    public void setParent(View view) {
        this.parentView = view;
    }

    public void setDelegate(SeekBarDelegate seekBarDelegate) {
        this.delegate = seekBarDelegate;
    }

    public boolean onTouch(int i, float f, float f2) {
        SeekBarDelegate seekBarDelegate;
        if (i == 0) {
            int i2 = this.height;
            int i3 = thumbWidth;
            int i4 = (i2 - i3) / 2;
            if (f >= (-i4)) {
                int i5 = this.width;
                if (f <= i5 + i4 && f2 >= 0.0f && f2 <= i2) {
                    int i6 = this.thumbX;
                    if (i6 - i4 > f || f > i6 + i3 + i4) {
                        int i7 = ((int) f) - (i3 / 2);
                        this.thumbX = i7;
                        if (i7 < 0) {
                            this.thumbX = 0;
                        } else if (i7 > i5 - i3) {
                            this.thumbX = i5 - i3;
                        }
                    }
                    this.pressed = true;
                    int i8 = this.thumbX;
                    this.draggingThumbX = i8;
                    this.thumbDX = (int) (f - i8);
                    return true;
                }
            }
        } else if (i == 1 || i == 3) {
            if (this.pressed) {
                int i9 = this.draggingThumbX;
                this.thumbX = i9;
                if (i == 1 && (seekBarDelegate = this.delegate) != null) {
                    seekBarDelegate.onSeekBarDrag(i9 / (this.width - thumbWidth));
                }
                this.pressed = false;
                return true;
            }
        } else if (i == 2 && this.pressed) {
            int i10 = (int) (f - this.thumbDX);
            this.draggingThumbX = i10;
            if (i10 < 0) {
                this.draggingThumbX = 0;
            } else {
                int i11 = this.width;
                int i12 = thumbWidth;
                if (i10 > i11 - i12) {
                    this.draggingThumbX = i11 - i12;
                }
            }
            SeekBarDelegate seekBarDelegate2 = this.delegate;
            if (seekBarDelegate2 != null) {
                seekBarDelegate2.onSeekBarContinuousDrag(this.draggingThumbX / (this.width - thumbWidth));
            }
            return true;
        }
        return false;
    }

    public void setColors(int i, int i2, int i3, int i4, int i5) {
        this.backgroundColor = i;
        this.cacheColor = i2;
        this.circleColor = i4;
        this.progressColor = i3;
        this.backgroundSelectedColor = i5;
    }

    public void setAlpha(float f) {
        this.alpha = f;
    }

    public void setProgress(float f) {
        this.thumbProgress = f;
        int iCeil = (int) Math.ceil((this.width - thumbWidth) * f);
        this.thumbX = iCeil;
        if (iCeil < 0) {
            this.thumbX = 0;
            return;
        }
        int i = this.width;
        int i2 = thumbWidth;
        if (iCeil > i - i2) {
            this.thumbX = i - i2;
        }
    }

    public void setBufferedProgress(float f) {
        this.bufferedProgress = f;
    }

    public float getProgress() {
        return this.thumbX / (this.width - thumbWidth);
    }

    public boolean isDragging() {
        return this.pressed;
    }

    public void setSelected(boolean z) {
        this.selected = z;
    }

    public void setSize(int i, int i2) {
        if (this.width == i && this.height == i2) {
            return;
        }
        this.width = i;
        this.height = i2;
        setProgress(this.thumbProgress);
    }

    public int getWidth() {
        return this.width - thumbWidth;
    }

    public void setWavy(boolean z) {
        WavySeekBar wavySeekBar = !z ? null : new WavySeekBar(this.parentView.getContext()) { // from class: org.telegram.ui.Components.SeekBar.1
            @Override // android.view.View
            public boolean isShown() {
                return SeekBar.this.parentView.isShown();
            }

            @Override // android.view.View
            public boolean isAttachedToWindow() {
                return SeekBar.this.parentView.isAttachedToWindow();
            }

            @Override // android.view.View
            public void invalidate() {
                SeekBar.this.parentView.invalidate();
            }

            @Override // android.view.View
            public void postInvalidateOnAnimation() {
                SeekBar.this.parentView.postInvalidateOnAnimation();
            }
        };
        this.wavy = wavySeekBar;
        if (wavySeekBar != null) {
            wavySeekBar.setWaveStyle(2.5f, 2.0f, 20.0f, 12.0f, 3.0f, 14.0f);
        }
    }

    public void setWavyPlaying(boolean z, boolean z2) {
        WavySeekBar wavySeekBar = this.wavy;
        if (wavySeekBar != null) {
            wavySeekBar.setPlaying(z, 1.0f, z2);
        }
    }

    public void draw(Canvas canvas) {
        Canvas canvas2;
        ArrayList<Pair<Float, URLSpanNoUnderline>> arrayList;
        float f = this.alpha;
        if (f <= 0.0f) {
            return;
        }
        if (f < 1.0f) {
            canvas2 = canvas;
            canvas2.saveLayerAlpha(0.0f, 0.0f, this.width, this.height, (int) (f * 255.0f), 31);
        } else {
            canvas2 = canvas;
        }
        if (this.wavy != null && ((arrayList = this.timestamps) == null || arrayList.isEmpty())) {
            boolean z = false;
            this.wavy.layout(0, 0, (this.width - thumbWidth) + AndroidUtilities.dp(4.0f), (this.height / 2) + AndroidUtilities.dp(16.0f));
            WavySeekBar wavySeekBar = this.wavy;
            int i = this.progressColor;
            boolean z2 = this.selected;
            wavySeekBar.setColors(i, z2 ? this.backgroundSelectedColor : this.backgroundColor, z2 ? this.backgroundSelectedColor : this.cacheColor, 0, 0);
            this.wavy.setBufferedProgress(this.bufferedProgress);
            long jUptimeMillis = SystemClock.uptimeMillis();
            WavySeekBar wavySeekBar2 = this.wavy;
            boolean z3 = this.pressed;
            float f2 = (z3 ? this.draggingThumbX : this.thumbX) / (this.width - thumbWidth);
            if (!z3 && jUptimeMillis - this.lastWavyDrawTime < 100) {
                z = true;
            }
            wavySeekBar2.setProgress(f2, z);
            this.lastWavyDrawTime = jUptimeMillis;
            canvas2.translate((thumbWidth / 2) - AndroidUtilities.dp(2.0f), 0.0f);
            this.wavy.draw(canvas2);
            canvas2.translate(AndroidUtilities.dp(2.0f) - (thumbWidth / 2), 0.0f);
            if (this.alpha < 1.0f) {
                canvas2.restore();
                return;
            }
            return;
        }
        RectF rectF = this.rect;
        int i2 = thumbWidth;
        int i3 = this.height;
        int i4 = this.lineHeight;
        rectF.set(i2 / 2, (i3 / 2) - (i4 / 2), this.width - (i2 / 2), (i3 / 2) + (i4 / 2));
        paint.setColor(this.selected ? this.backgroundSelectedColor : this.backgroundColor);
        drawProgressBar(canvas2, this.rect, paint);
        if (this.bufferedProgress > 0.0f) {
            paint.setColor(this.selected ? this.backgroundSelectedColor : this.cacheColor);
            RectF rectF2 = this.rect;
            int i5 = thumbWidth;
            int i6 = this.height;
            int i7 = this.lineHeight;
            rectF2.set(i5 / 2, (i6 / 2) - (i7 / 2), (i5 / 2) + (this.bufferedProgress * (this.width - i5)), (i6 / 2) + (i7 / 2));
            drawProgressBar(canvas2, this.rect, paint);
        }
        RectF rectF3 = this.rect;
        float f3 = thumbWidth / 2;
        int i8 = this.height;
        int i9 = this.lineHeight;
        rectF3.set(f3, (i8 / 2) - (i9 / 2), (r0 / 2) + (this.pressed ? this.draggingThumbX : this.thumbX), (i8 / 2) + (i9 / 2));
        paint.setColor(this.progressColor);
        drawProgressBar(canvas2, this.rect, paint);
        paint.setColor(this.circleColor);
        float fDp = AndroidUtilities.dp(this.pressed ? 8.0f : 6.0f);
        if (this.currentRadius != fDp) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.lastUpdateTime;
            if (jElapsedRealtime > 18) {
                jElapsedRealtime = 16;
            }
            float f4 = this.currentRadius;
            if (f4 < fDp) {
                float fDp2 = f4 + (AndroidUtilities.dp(1.0f) * (jElapsedRealtime / 60.0f));
                this.currentRadius = fDp2;
                if (fDp2 > fDp) {
                    this.currentRadius = fDp;
                }
            } else {
                float fDp3 = f4 - (AndroidUtilities.dp(1.0f) * (jElapsedRealtime / 60.0f));
                this.currentRadius = fDp3;
                if (fDp3 < fDp) {
                    this.currentRadius = fDp;
                }
            }
            View view = this.parentView;
            if (view != null) {
                view.invalidate();
            }
        }
        canvas2.drawCircle((this.pressed ? this.draggingThumbX : this.thumbX) + (thumbWidth / 2), this.height / 2, this.currentRadius, paint);
        if (this.alpha < 1.0f) {
            canvas2.restore();
        }
        updateTimestampAnimation();
    }

    public void clearTimestamps() {
        this.timestamps = null;
        this.currentTimestamp = -1;
        this.timestampsAppearing = 0.0f;
        StaticLayout[] staticLayoutArr = this.timestampLabel;
        if (staticLayoutArr != null) {
            staticLayoutArr[1] = null;
            staticLayoutArr[0] = null;
        }
        this.lastCaption = null;
        this.lastVideoDuration = -1L;
    }

    public void updateTimestamps(MessageObject messageObject, Long l) {
        int i;
        String str;
        if (messageObject == null) {
            clearTimestamps();
            return;
        }
        if (l == null) {
            l = Long.valueOf(((long) messageObject.getDuration()) * 1000);
        }
        if (l.longValue() < 0) {
            clearTimestamps();
            return;
        }
        CharSequence charSequence = messageObject.caption;
        if (messageObject.isYouTubeVideo()) {
            if (messageObject.youtubeDescription == null && (str = messageObject.messageOwner.media.webpage.description) != null) {
                messageObject.youtubeDescription = SpannableString.valueOf(str);
                MessageObject.addUrlsByPattern(messageObject.isOut(), messageObject.youtubeDescription, false, 3, (int) l.longValue(), false);
            }
            charSequence = messageObject.youtubeDescription;
        }
        if (charSequence == this.lastCaption && this.lastVideoDuration == l.longValue()) {
            return;
        }
        this.lastCaption = charSequence;
        this.lastVideoDuration = l.longValue();
        if (!(charSequence instanceof Spanned)) {
            this.timestamps = null;
            this.currentTimestamp = -1;
            this.timestampsAppearing = 0.0f;
            StaticLayout[] staticLayoutArr = this.timestampLabel;
            if (staticLayoutArr != null) {
                staticLayoutArr[1] = null;
                staticLayoutArr[0] = null;
                return;
            }
            return;
        }
        Spanned spanned = (Spanned) charSequence;
        try {
            URLSpanNoUnderline[] uRLSpanNoUnderlineArr = (URLSpanNoUnderline[]) spanned.getSpans(0, spanned.length(), URLSpanNoUnderline.class);
            this.timestamps = new ArrayList<>();
            this.timestampsAppearing = 0.0f;
            if (this.timestampLabelPaint == null) {
                TextPaint textPaint = new TextPaint(1);
                this.timestampLabelPaint = textPaint;
                textPaint.setTextSize(AndroidUtilities.dp(12.0f));
                this.timestampLabelPaint.setColor(-1);
            }
            for (URLSpanNoUnderline uRLSpanNoUnderline : uRLSpanNoUnderlineArr) {
                try {
                    if (uRLSpanNoUnderline != null && uRLSpanNoUnderline.getURL() != null && uRLSpanNoUnderline.label != null && uRLSpanNoUnderline.getURL().startsWith("audio?") && (i = Utilities.parseInt((CharSequence) uRLSpanNoUnderline.getURL().substring(6))) >= 0) {
                        Emoji.replaceEmoji(new SpannableStringBuilder(uRLSpanNoUnderline.label), this.timestampLabelPaint.getFontMetricsInt(), false);
                        this.timestamps.add(new Pair<>(Float.valueOf((((long) i) * 1000) / l.longValue()), uRLSpanNoUnderline));
                    }
                } catch (Exception e) {
                    FileLog.m1040e(e);
                }
            }
            Collections.sort(this.timestamps, new Comparator() { // from class: org.telegram.ui.Components.SeekBar$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return SeekBar.$r8$lambda$Z3AHhuRQfXw11EzXbdCyVNofXTQ((Pair) obj, (Pair) obj2);
                }
            });
        } catch (Exception e2) {
            FileLog.m1040e(e2);
            this.timestamps = null;
            this.currentTimestamp = -1;
            this.timestampsAppearing = 0.0f;
            StaticLayout[] staticLayoutArr2 = this.timestampLabel;
            if (staticLayoutArr2 != null) {
                staticLayoutArr2[1] = null;
                staticLayoutArr2[0] = null;
            }
        }
    }

    public static /* synthetic */ int $r8$lambda$Z3AHhuRQfXw11EzXbdCyVNofXTQ(Pair pair, Pair pair2) {
        if (((Float) pair.first).floatValue() > ((Float) pair2.first).floatValue()) {
            return 1;
        }
        return ((Float) pair2.first).floatValue() > ((Float) pair.first).floatValue() ? -1 : 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:93:0x01d9 A[EDGE_INSN: B:93:0x01d9->B:84:0x01d9 BREAK  A[LOOP:2: B:29:0x00a5->B:83:0x01cf], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01cf A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawProgressBar(Canvas canvas, RectF rectF, Paint paint2) {
        int size;
        char c2;
        float fFloatValue;
        char c3;
        char c4;
        SeekBar seekBar = this;
        float f = thumbWidth / 2.0f;
        ArrayList<Pair<Float, URLSpanNoUnderline>> arrayList = seekBar.timestamps;
        if (arrayList == null || arrayList.isEmpty()) {
            canvas.drawRoundRect(rectF, f, f, paint2);
            return;
        }
        float f2 = rectF.bottom;
        int i = thumbWidth;
        float f3 = i / 2.0f;
        float f4 = seekBar.width - (i / 2.0f);
        AndroidUtilities.rectTmp.set(rectF);
        float fDp = AndroidUtilities.dp(seekBar.timestampsAppearing * 1.0f) / 2.0f;
        if (tmpPath == null) {
            tmpPath = new Path();
        }
        tmpPath.reset();
        float fDp2 = AndroidUtilities.dp(4.0f) / (f4 - f3);
        int i2 = 0;
        while (true) {
            size = -1;
            if (i2 >= seekBar.timestamps.size()) {
                i2 = -1;
                break;
            } else if (((Float) seekBar.timestamps.get(i2).first).floatValue() >= fDp2) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 < 0) {
            i2 = 0;
        }
        char c5 = 1;
        int size2 = seekBar.timestamps.size() - 1;
        while (true) {
            if (size2 < 0) {
                break;
            }
            if (1.0f - ((Float) seekBar.timestamps.get(size2).first).floatValue() >= fDp2) {
                size = size2 + 1;
                break;
            }
            size2--;
        }
        if (size < 0) {
            size = seekBar.timestamps.size();
        }
        int i3 = i2;
        while (i3 <= size) {
            if (i3 == i2) {
                fFloatValue = 0.0f;
                c2 = 0;
            } else {
                c2 = 0;
                fFloatValue = ((Float) seekBar.timestamps.get(i3 - 1).first).floatValue();
            }
            float fFloatValue2 = i3 == size ? 1.0f : ((Float) seekBar.timestamps.get(i3).first).floatValue();
            while (i3 != size && i3 != 0) {
                c3 = c5;
                if (i3 >= seekBar.timestamps.size() - 1 || ((Float) seekBar.timestamps.get(i3).first).floatValue() - fFloatValue > fDp2) {
                    break;
                }
                i3++;
                fFloatValue2 = ((Float) seekBar.timestamps.get(i3).first).floatValue();
                c5 = c3;
            }
            c3 = c5;
            RectF rectF2 = AndroidUtilities.rectTmp;
            rectF2.left = AndroidUtilities.lerp(f3, f4, fFloatValue) + (i3 > 0 ? fDp : 0.0f);
            float fLerp = AndroidUtilities.lerp(f3, f4, fFloatValue2) - (i3 < size ? fDp : 0.0f);
            rectF2.right = fLerp;
            float f5 = rectF.right;
            char c6 = fLerp > f5 ? c3 : c2;
            if (c6 != 0) {
                rectF2.right = f5;
            }
            float f6 = rectF2.right;
            float f7 = rectF.left;
            if (f6 >= f7) {
                if (rectF2.left < f7) {
                    rectF2.left = f7;
                }
                if (tmpRadii == null) {
                    tmpRadii = new float[8];
                }
                if (i3 != i2) {
                    if (c6 != 0) {
                        c4 = 4;
                        if (rectF2.left >= rectF.left) {
                        }
                        tmpPath.addRoundRect(rectF2, tmpRadii, Path.Direction.CW);
                        if (c6 != 0) {
                            break;
                        }
                    } else {
                        c4 = 4;
                    }
                    float f8 = seekBar.timestampsAppearing;
                    if (i3 >= size) {
                        float[] fArr = tmpRadii;
                        float f9 = 0.7f * f * f8;
                        fArr[7] = f9;
                        fArr[6] = f9;
                        fArr[c3] = f9;
                        fArr[c2] = f9;
                        fArr[5] = f;
                        fArr[c4] = f;
                        fArr[3] = f;
                        fArr[2] = f;
                    } else {
                        float[] fArr2 = tmpRadii;
                        float f10 = 0.7f * f * f8;
                        fArr2[5] = f10;
                        fArr2[c4] = f10;
                        fArr2[3] = f10;
                        fArr2[2] = f10;
                        fArr2[7] = f10;
                        fArr2[6] = f10;
                        fArr2[c3] = f10;
                        fArr2[c2] = f10;
                    }
                    tmpPath.addRoundRect(rectF2, tmpRadii, Path.Direction.CW);
                    if (c6 != 0) {
                    }
                } else {
                    c4 = 4;
                }
                float[] fArr3 = tmpRadii;
                fArr3[7] = f;
                fArr3[6] = f;
                fArr3[c3] = f;
                fArr3[c2] = f;
                float f11 = 0.7f * f * seekBar.timestampsAppearing;
                fArr3[5] = f11;
                fArr3[c4] = f11;
                fArr3[3] = f11;
                fArr3[2] = f11;
                tmpPath.addRoundRect(rectF2, tmpRadii, Path.Direction.CW);
                if (c6 != 0) {
                }
            }
            i3++;
            seekBar = this;
            c5 = c3;
        }
        canvas.drawPath(tmpPath, paint2);
    }

    private void updateTimestampAnimation() {
        ArrayList<Pair<Float, URLSpanNoUnderline>> arrayList = this.timestamps;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        float f = (this.pressed ? this.draggingThumbX : this.thumbX) / (this.width - thumbWidth);
        int size = this.timestamps.size() - 1;
        while (true) {
            if (size < 0) {
                size = -1;
                break;
            } else if (((Float) this.timestamps.get(size).first).floatValue() - 0.001f <= f) {
                break;
            } else {
                size--;
            }
        }
        if (this.timestampLabel == null) {
            this.timestampLabel = new StaticLayout[2];
        }
        int i = thumbWidth;
        this.lastWidth = Math.abs((i / 2.0f) - (this.width - (i / 2.0f))) - AndroidUtilities.dp(66.0f);
        if (size != this.currentTimestamp) {
            if (this.pressed) {
                AndroidUtilities.vibrateCursor(this.parentView);
            }
            this.currentTimestamp = size;
            if (size >= 0 && size < this.timestamps.size()) {
                onTimestampUpdate((URLSpanNoUnderline) this.timestamps.get(this.currentTimestamp).second);
            }
        }
        if (this.timestampChangeT < 1.0f) {
            this.timestampChangeT = Math.min(this.timestampChangeT + (Math.min(17L, Math.abs(SystemClock.elapsedRealtime() - this.lastTimestampUpdate)) / (this.timestamps.size() > 8 ? 160.0f : 220.0f)), 1.0f);
            View view = this.parentView;
            if (view != null) {
                view.invalidate();
            }
            this.lastTimestampUpdate = SystemClock.elapsedRealtime();
        }
        if (this.timestampsAppearing < 1.0f) {
            this.timestampsAppearing = Math.min(this.timestampsAppearing + (Math.min(17L, Math.abs(SystemClock.elapsedRealtime() - this.lastTimestampUpdate)) / 200.0f), 1.0f);
            View view2 = this.parentView;
            if (view2 != null) {
                view2.invalidate();
            }
            this.lastTimestampsAppearingUpdate = SystemClock.elapsedRealtime();
        }
    }
}
