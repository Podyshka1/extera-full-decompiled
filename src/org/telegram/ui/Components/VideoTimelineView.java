package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.media.MediaMetadataRetriever;
import android.os.AsyncTask;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.content.ContextCompat;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.FileLog;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes7.dex */
public class VideoTimelineView extends View {
    private static final Object sync = new Object();
    private final Paint backgroundGrayPaint;
    private AsyncTask<Integer, Integer, Bitmap> currentTask;
    private VideoTimelineViewDelegate delegate;
    private int frameHeight;
    private long frameTimeOffset;
    private int frameWidth;
    private ArrayList<Bitmap> frames;
    private boolean framesLoaded;
    private int framesToLoad;
    private boolean isRoundFrames;
    private ArrayList<Bitmap> keyframes;
    private float maxProgressDiff;
    private MediaMetadataRetriever mediaMetadataRetriever;
    private float minProgressDiff;
    private final Paint paint2;
    Path path;
    private float pressDx;
    private boolean pressedLeft;
    private boolean pressedRight;
    private float progressLeft;
    private float progressRight;
    private Rect rect1;
    private Rect rect2;
    private Bitmap roundCornerBitmap;
    private int roundCornersSize;
    Paint thumbPaint;
    private TimeHintView timeHintView;
    boolean useClip;
    private long videoLength;

    public interface VideoTimelineViewDelegate {
        void didStartDragging();

        void didStopDragging();

        void onLeftProgressChanged(float f);

        void onRightProgressChanged(float f);
    }

    public void setKeyframes(ArrayList<Bitmap> arrayList) {
        this.keyframes.clear();
        this.keyframes.addAll(arrayList);
    }

    public VideoTimelineView(Context context) {
        super(context);
        this.progressRight = 1.0f;
        Paint paint = new Paint();
        this.paint2 = paint;
        this.backgroundGrayPaint = new Paint();
        this.frames = new ArrayList<>();
        this.maxProgressDiff = 1.0f;
        this.minProgressDiff = 0.0f;
        this.keyframes = new ArrayList<>();
        this.thumbPaint = new Paint(1);
        paint.setColor(2130706432);
        this.thumbPaint.setColor(-1);
        this.thumbPaint.setStrokeWidth(AndroidUtilities.dpf2(2.0f));
        this.thumbPaint.setStyle(Paint.Style.STROKE);
        this.thumbPaint.setStrokeCap(Paint.Cap.ROUND);
        updateColors();
    }

    public void updateColors() {
        this.backgroundGrayPaint.setColor(Theme.getColor(Theme.key_windowBackgroundGray));
        this.roundCornersSize = 0;
        TimeHintView timeHintView = this.timeHintView;
        if (timeHintView != null) {
            timeHintView.updateColors();
        }
    }

    public float getLeftProgress() {
        return this.progressLeft;
    }

    public float getRightProgress() {
        return this.progressRight;
    }

    public void setMinProgressDiff(float f) {
        this.minProgressDiff = f;
    }

    public void setMaxProgressDiff(float f) {
        this.maxProgressDiff = f;
        float f2 = this.progressRight;
        float f3 = this.progressLeft;
        if (f2 - f3 > f) {
            this.progressRight = f3 + f;
            invalidate();
        }
    }

    public void setRoundFrames(boolean z) {
        this.isRoundFrames = z;
        if (z) {
            this.rect1 = new Rect(AndroidUtilities.dp(14.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(42.0f), AndroidUtilities.dp(42.0f));
            this.rect2 = new Rect();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int measuredWidth = getMeasuredWidth() - AndroidUtilities.dp(24.0f);
        float f = measuredWidth;
        int iDp = ((int) (this.progressLeft * f)) + AndroidUtilities.dp(12.0f);
        int iDp2 = ((int) (this.progressRight * f)) + AndroidUtilities.dp(12.0f);
        if (motionEvent.getAction() == 0) {
            getParent().requestDisallowInterceptTouchEvent(true);
            if (this.mediaMetadataRetriever == null) {
                return false;
            }
            int iDp3 = AndroidUtilities.dp(24.0f);
            if (iDp - iDp3 <= x && x <= iDp + iDp3 && y >= 0.0f && y <= getMeasuredHeight()) {
                VideoTimelineViewDelegate videoTimelineViewDelegate = this.delegate;
                if (videoTimelineViewDelegate != null) {
                    videoTimelineViewDelegate.didStartDragging();
                }
                this.pressedLeft = true;
                this.pressDx = (int) (x - iDp);
                this.timeHintView.setTime((int) ((this.videoLength / 1000.0f) * this.progressLeft));
                this.timeHintView.setCx(iDp + getLeft() + AndroidUtilities.dp(4.0f));
                this.timeHintView.show(true);
                invalidate();
                return true;
            }
            if (iDp2 - iDp3 <= x && x <= iDp3 + iDp2 && y >= 0.0f && y <= getMeasuredHeight()) {
                VideoTimelineViewDelegate videoTimelineViewDelegate2 = this.delegate;
                if (videoTimelineViewDelegate2 != null) {
                    videoTimelineViewDelegate2.didStartDragging();
                }
                this.pressedRight = true;
                this.pressDx = (int) (x - iDp2);
                this.timeHintView.setTime((int) ((this.videoLength / 1000.0f) * this.progressRight));
                this.timeHintView.setCx((iDp2 + getLeft()) - AndroidUtilities.dp(4.0f));
                this.timeHintView.show(true);
                invalidate();
                return true;
            }
            this.timeHintView.show(false);
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            if (this.pressedLeft) {
                VideoTimelineViewDelegate videoTimelineViewDelegate3 = this.delegate;
                if (videoTimelineViewDelegate3 != null) {
                    videoTimelineViewDelegate3.didStopDragging();
                }
                this.pressedLeft = false;
                invalidate();
                this.timeHintView.show(false);
                return true;
            }
            if (this.pressedRight) {
                VideoTimelineViewDelegate videoTimelineViewDelegate4 = this.delegate;
                if (videoTimelineViewDelegate4 != null) {
                    videoTimelineViewDelegate4.didStopDragging();
                }
                this.pressedRight = false;
                invalidate();
                this.timeHintView.show(false);
                return true;
            }
        } else if (motionEvent.getAction() == 2) {
            if (this.pressedLeft) {
                int i = (int) (x - this.pressDx);
                if (i < AndroidUtilities.dp(16.0f)) {
                    iDp2 = AndroidUtilities.dp(16.0f);
                } else if (i <= iDp2) {
                    iDp2 = i;
                }
                float fDp = (iDp2 - AndroidUtilities.dp(16.0f)) / f;
                this.progressLeft = fDp;
                float f2 = this.progressRight;
                float f3 = f2 - fDp;
                float f4 = this.maxProgressDiff;
                if (f3 > f4) {
                    this.progressRight = fDp + f4;
                } else {
                    float f5 = this.minProgressDiff;
                    if (f5 != 0.0f && f2 - fDp < f5) {
                        float f6 = f2 - f5;
                        this.progressLeft = f6;
                        if (f6 < 0.0f) {
                            this.progressLeft = 0.0f;
                        }
                    }
                }
                this.timeHintView.setCx((((f * this.progressLeft) + AndroidUtilities.dpf2(12.0f)) + getLeft()) - AndroidUtilities.dp(4.0f));
                this.timeHintView.setTime((int) ((this.videoLength / 1000.0f) * this.progressLeft));
                this.timeHintView.show(true);
                VideoTimelineViewDelegate videoTimelineViewDelegate5 = this.delegate;
                if (videoTimelineViewDelegate5 != null) {
                    videoTimelineViewDelegate5.onLeftProgressChanged(this.progressLeft);
                }
                invalidate();
                return true;
            }
            if (this.pressedRight) {
                int i2 = (int) (x - this.pressDx);
                if (i2 >= iDp) {
                    iDp = i2 > AndroidUtilities.dp(16.0f) + measuredWidth ? measuredWidth + AndroidUtilities.dp(16.0f) : i2;
                }
                float fDp2 = (iDp - AndroidUtilities.dp(16.0f)) / f;
                this.progressRight = fDp2;
                float f7 = this.progressLeft;
                float f8 = fDp2 - f7;
                float f9 = this.maxProgressDiff;
                if (f8 > f9) {
                    this.progressLeft = fDp2 - f9;
                } else {
                    float f10 = this.minProgressDiff;
                    if (f10 != 0.0f && fDp2 - f7 < f10) {
                        float f11 = f7 + f10;
                        this.progressRight = f11;
                        if (f11 > 1.0f) {
                            this.progressRight = 1.0f;
                        }
                    }
                }
                this.timeHintView.setCx((f * this.progressRight) + AndroidUtilities.dpf2(12.0f) + getLeft() + AndroidUtilities.dp(4.0f));
                this.timeHintView.show(true);
                this.timeHintView.setTime((int) ((this.videoLength / 1000.0f) * this.progressRight));
                VideoTimelineViewDelegate videoTimelineViewDelegate6 = this.delegate;
                if (videoTimelineViewDelegate6 != null) {
                    videoTimelineViewDelegate6.onRightProgressChanged(this.progressRight);
                }
                invalidate();
                return true;
            }
        }
        return false;
    }

    public void setVideoPath(String str) {
        destroy(false);
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        this.mediaMetadataRetriever = mediaMetadataRetriever;
        this.progressLeft = 0.0f;
        this.progressRight = 1.0f;
        try {
            mediaMetadataRetriever.setDataSource(str);
            this.videoLength = Long.parseLong(this.mediaMetadataRetriever.extractMetadata(9));
        } catch (Exception e) {
            FileLog.m898e(e);
        }
        invalidate();
    }

    public void setDelegate(VideoTimelineViewDelegate videoTimelineViewDelegate) {
        this.delegate = videoTimelineViewDelegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reloadFrames(int i) {
        if (this.mediaMetadataRetriever == null) {
            return;
        }
        if (i == 0) {
            if (this.isRoundFrames) {
                int iDp = AndroidUtilities.dp(56.0f);
                this.frameWidth = iDp;
                this.frameHeight = iDp;
                this.framesToLoad = Math.max(1, (int) Math.ceil((getMeasuredWidth() - AndroidUtilities.dp(16.0f)) / (this.frameHeight / 2.0f)));
            } else {
                this.frameHeight = AndroidUtilities.dp(40.0f);
                this.framesToLoad = Math.max(1, (getMeasuredWidth() - AndroidUtilities.dp(16.0f)) / this.frameHeight);
                this.frameWidth = (int) Math.ceil((getMeasuredWidth() - AndroidUtilities.dp(16.0f)) / this.framesToLoad);
            }
            this.frameTimeOffset = this.videoLength / ((long) this.framesToLoad);
            if (!this.keyframes.isEmpty()) {
                float size = this.keyframes.size() / this.framesToLoad;
                float f = 0.0f;
                for (int i2 = 0; i2 < this.framesToLoad; i2++) {
                    this.frames.add(this.keyframes.get((int) f));
                    f += size;
                }
                return;
            }
        }
        this.framesLoaded = false;
        AsyncTask<Integer, Integer, Bitmap> asyncTask = new AsyncTask<Integer, Integer, Bitmap>() { // from class: org.telegram.ui.Components.VideoTimelineView.1
            private int frameNum = 0;

            @Override // android.os.AsyncTask
            public Bitmap doInBackground(Integer... numArr) {
                this.frameNum = numArr[0].intValue();
                Bitmap bitmap = null;
                if (isCancelled()) {
                    return null;
                }
                try {
                    Bitmap frameAtTime = VideoTimelineView.this.mediaMetadataRetriever.getFrameAtTime(VideoTimelineView.this.frameTimeOffset * ((long) this.frameNum) * 1000, 2);
                    try {
                        if (isCancelled()) {
                            return null;
                        }
                        if (frameAtTime == null) {
                            return frameAtTime;
                        }
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(VideoTimelineView.this.frameWidth, VideoTimelineView.this.frameHeight, frameAtTime.getConfig());
                        Canvas canvas = new Canvas(bitmapCreateBitmap);
                        float fMax = Math.max(VideoTimelineView.this.frameWidth / frameAtTime.getWidth(), VideoTimelineView.this.frameHeight / frameAtTime.getHeight());
                        int width = (int) (frameAtTime.getWidth() * fMax);
                        int height = (int) (frameAtTime.getHeight() * fMax);
                        canvas.drawBitmap(frameAtTime, new Rect(0, 0, frameAtTime.getWidth(), frameAtTime.getHeight()), new Rect((VideoTimelineView.this.frameWidth - width) / 2, (VideoTimelineView.this.frameHeight - height) / 2, width, height), (Paint) null);
                        frameAtTime.recycle();
                        return bitmapCreateBitmap;
                    } catch (Exception e) {
                        e = e;
                        bitmap = frameAtTime;
                        FileLog.m898e(e);
                        return bitmap;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            }

            @Override // android.os.AsyncTask
            public void onPostExecute(Bitmap bitmap) {
                if (isCancelled()) {
                    return;
                }
                VideoTimelineView.this.frames.add(bitmap);
                VideoTimelineView.this.invalidate();
                int i3 = this.frameNum;
                int i4 = VideoTimelineView.this.framesToLoad;
                VideoTimelineView videoTimelineView = VideoTimelineView.this;
                if (i3 < i4) {
                    videoTimelineView.reloadFrames(this.frameNum + 1);
                } else {
                    videoTimelineView.framesLoaded = true;
                }
            }
        };
        this.currentTask = asyncTask;
        asyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Integer.valueOf(i), null, null);
    }

    public void destroy() {
        destroy(true);
    }

    public void destroy(boolean z) {
        MediaMetadataRetriever mediaMetadataRetriever;
        synchronized (sync) {
            try {
                mediaMetadataRetriever = this.mediaMetadataRetriever;
            } catch (Exception e) {
                FileLog.m898e(e);
            }
            if (mediaMetadataRetriever != null) {
                mediaMetadataRetriever.release();
                this.mediaMetadataRetriever = null;
            }
        }
        if (z) {
            int i = 0;
            if (!this.keyframes.isEmpty()) {
                while (i < this.keyframes.size()) {
                    Bitmap bitmap = this.keyframes.get(i);
                    if (bitmap != null) {
                        bitmap.recycle();
                    }
                    i++;
                }
            } else {
                while (i < this.frames.size()) {
                    Bitmap bitmap2 = this.frames.get(i);
                    if (bitmap2 != null) {
                        bitmap2.recycle();
                    }
                    i++;
                }
            }
        }
        this.keyframes.clear();
        this.frames.clear();
        AsyncTask<Integer, Integer, Bitmap> asyncTask = this.currentTask;
        if (asyncTask != null) {
            asyncTask.cancel(true);
            this.currentTask = null;
        }
    }

    public void clearFrames() {
        if (this.keyframes.isEmpty()) {
            for (int i = 0; i < this.frames.size(); i++) {
                Bitmap bitmap = this.frames.get(i);
                if (bitmap != null) {
                    bitmap.recycle();
                }
            }
        }
        this.frames.clear();
        AsyncTask<Integer, Integer, Bitmap> asyncTask = this.currentTask;
        if (asyncTask != null) {
            asyncTask.cancel(true);
            this.currentTask = null;
        }
        invalidate();
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.useClip) {
            if (this.path == null) {
                this.path = new Path();
            }
            this.path.rewind();
            int measuredHeight = (getMeasuredHeight() - AndroidUtilities.dp(32.0f)) >> 1;
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(0.0f, measuredHeight, getMeasuredWidth(), getMeasuredHeight() - measuredHeight);
            this.path.addRoundRect(rectF, AndroidUtilities.dp(7.0f), AndroidUtilities.dp(7.0f), Path.Direction.CCW);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.useClip) {
            canvas.save();
            Path path = this.path;
            if (path != null) {
                canvas.clipPath(path);
            }
        }
        float measuredWidth = getMeasuredWidth() - AndroidUtilities.dp(24.0f);
        int iDp = ((int) (this.progressLeft * measuredWidth)) + AndroidUtilities.dp(12.0f);
        int iDp2 = ((int) (measuredWidth * this.progressRight)) + AndroidUtilities.dp(12.0f);
        int measuredHeight = (getMeasuredHeight() - AndroidUtilities.dp(32.0f)) >> 1;
        if (this.frames.isEmpty() && this.currentTask == null) {
            reloadFrames(0);
        }
        if (!this.frames.isEmpty()) {
            if (!this.framesLoaded) {
                canvas.drawRect(0.0f, measuredHeight, getMeasuredWidth(), getMeasuredHeight() - measuredHeight, this.backgroundGrayPaint);
            }
            int i = 0;
            for (int i2 = 0; i2 < this.frames.size(); i2++) {
                Bitmap bitmap = this.frames.get(i2);
                if (bitmap != null && !bitmap.isRecycled()) {
                    boolean z = this.isRoundFrames;
                    int i3 = this.frameWidth;
                    if (z) {
                        i3 /= 2;
                    }
                    int i4 = i3 * i;
                    if (z) {
                        this.rect2.set(i4, measuredHeight, AndroidUtilities.dp(28.0f) + i4, AndroidUtilities.dp(32.0f) + measuredHeight);
                        canvas.drawBitmap(bitmap, this.rect1, this.rect2, (Paint) null);
                    } else {
                        canvas.drawBitmap(bitmap, i4, measuredHeight, (Paint) null);
                    }
                }
                i++;
            }
            float f = measuredHeight;
            canvas.drawRect(0.0f, f, iDp, getMeasuredHeight() - measuredHeight, this.paint2);
            canvas.drawRect(iDp2, f, getMeasuredWidth(), getMeasuredHeight() - measuredHeight, this.paint2);
            canvas.drawLine(iDp - AndroidUtilities.dp(4.0f), AndroidUtilities.dp(10.0f) + measuredHeight, iDp - AndroidUtilities.dp(4.0f), (getMeasuredHeight() - AndroidUtilities.dp(10.0f)) - measuredHeight, this.thumbPaint);
            canvas.drawLine(AndroidUtilities.dp(4.0f) + iDp2, AndroidUtilities.dp(10.0f) + measuredHeight, iDp2 + AndroidUtilities.dp(4.0f), (getMeasuredHeight() - AndroidUtilities.dp(10.0f)) - measuredHeight, this.thumbPaint);
            if (this.useClip) {
                canvas.restore();
                return;
            } else {
                drawCorners(canvas, getMeasuredHeight() - (measuredHeight * 2), getMeasuredWidth(), 0, measuredHeight);
                return;
            }
        }
        if (this.useClip) {
            canvas.restore();
        }
    }

    private void drawCorners(Canvas canvas, int i, int i2, int i3, int i4) {
        if (AndroidUtilities.dp(6.0f) != this.roundCornersSize) {
            this.roundCornersSize = AndroidUtilities.dp(6.0f);
            this.roundCornerBitmap = Bitmap.createBitmap(AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(this.roundCornerBitmap);
            Paint paint = new Paint(1);
            paint.setColor(0);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            canvas2.drawColor(Theme.getColor(Theme.key_chat_messagePanelBackground));
            int i5 = this.roundCornersSize;
            canvas2.drawCircle(i5, i5, i5, paint);
        }
        int i6 = this.roundCornersSize >> 1;
        canvas.save();
        float f = i3;
        float f2 = i4;
        canvas.drawBitmap(this.roundCornerBitmap, f, f2, (Paint) null);
        float f3 = (i + i4) - i6;
        canvas.rotate(-90.0f, i3 + i6, f3);
        canvas.drawBitmap(this.roundCornerBitmap, f, r9 - this.roundCornersSize, (Paint) null);
        canvas.restore();
        canvas.save();
        float f4 = (i3 + i2) - i6;
        canvas.rotate(180.0f, f4, f3);
        Bitmap bitmap = this.roundCornerBitmap;
        int i7 = this.roundCornersSize;
        canvas.drawBitmap(bitmap, r11 - i7, r9 - i7, (Paint) null);
        canvas.restore();
        canvas.save();
        canvas.rotate(90.0f, f4, i4 + i6);
        canvas.drawBitmap(this.roundCornerBitmap, r11 - this.roundCornersSize, f2, (Paint) null);
        canvas.restore();
    }

    public void setTimeHintView(TimeHintView timeHintView) {
        this.timeHintView = timeHintView;
    }

    public static class TimeHintView extends View {
        private float cx;
        private long lastTime;
        private float scale;
        private boolean show;
        private Drawable tooltipBackground;
        private Drawable tooltipBackgroundArrow;
        private StaticLayout tooltipLayout;
        private TextPaint tooltipPaint;

        public TimeHintView(Context context) {
            super(context);
            TextPaint textPaint = new TextPaint(1);
            this.tooltipPaint = textPaint;
            this.lastTime = -1L;
            textPaint.setTextSize(AndroidUtilities.dp(14.0f));
            this.tooltipBackgroundArrow = ContextCompat.getDrawable(context, C2573R.drawable.tooltip_arrow);
            this.tooltipBackground = Theme.createRoundRectDrawable(AndroidUtilities.dp(5.0f), Theme.getColor(Theme.key_chat_gifSaveHintBackground));
            updateColors();
            setTime(0);
        }

        public void setTime(int i) {
            long j = i;
            if (j != this.lastTime) {
                this.lastTime = j;
                String shortDuration = AndroidUtilities.formatShortDuration(i);
                TextPaint textPaint = this.tooltipPaint;
                this.tooltipLayout = new StaticLayout(shortDuration, textPaint, (int) textPaint.measureText(shortDuration), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(this.tooltipLayout.getHeight() + AndroidUtilities.dp(4.0f) + this.tooltipBackgroundArrow.getIntrinsicHeight(), TLObject.FLAG_30));
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            if (this.tooltipLayout == null) {
                return;
            }
            boolean z = this.show;
            float f = this.scale;
            if (!z) {
                if (f != 0.0f) {
                    float f2 = f - 0.12f;
                    this.scale = f2;
                    if (f2 < 0.0f) {
                        this.scale = 0.0f;
                    }
                    invalidate();
                }
                if (this.scale == 0.0f) {
                    return;
                }
            } else if (f != 1.0f) {
                float f3 = f + 0.12f;
                this.scale = f3;
                if (f3 > 1.0f) {
                    this.scale = 1.0f;
                }
                invalidate();
            }
            float f4 = this.scale;
            int i = (int) ((f4 > 0.5f ? 1.0f : f4 / 0.5f) * 255.0f);
            canvas.save();
            float f5 = this.scale;
            canvas.scale(f5, f5, this.cx, getMeasuredHeight());
            canvas.translate(this.cx - (this.tooltipLayout.getWidth() / 2.0f), 0.0f);
            this.tooltipBackground.setBounds(-AndroidUtilities.dp(8.0f), 0, this.tooltipLayout.getWidth() + AndroidUtilities.dp(8.0f), (int) (this.tooltipLayout.getHeight() + AndroidUtilities.dpf2(4.0f)));
            this.tooltipBackgroundArrow.setBounds((this.tooltipLayout.getWidth() / 2) - (this.tooltipBackgroundArrow.getIntrinsicWidth() / 2), (int) (this.tooltipLayout.getHeight() + AndroidUtilities.dpf2(4.0f)), (this.tooltipLayout.getWidth() / 2) + (this.tooltipBackgroundArrow.getIntrinsicWidth() / 2), ((int) (this.tooltipLayout.getHeight() + AndroidUtilities.dpf2(4.0f))) + this.tooltipBackgroundArrow.getIntrinsicHeight());
            this.tooltipBackgroundArrow.setAlpha(i);
            this.tooltipBackground.setAlpha(i);
            this.tooltipPaint.setAlpha(i);
            this.tooltipBackgroundArrow.draw(canvas);
            this.tooltipBackground.draw(canvas);
            canvas.translate(0.0f, AndroidUtilities.dpf2(1.0f));
            this.tooltipLayout.draw(canvas);
            canvas.restore();
        }

        public void updateColors() {
            this.tooltipPaint.setColor(Theme.getColor(Theme.key_chat_gifSaveHintText));
            int iDp = AndroidUtilities.dp(5.0f);
            int i = Theme.key_chat_gifSaveHintBackground;
            this.tooltipBackground = Theme.createRoundRectDrawable(iDp, Theme.getColor(i));
            this.tooltipBackgroundArrow.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.MULTIPLY));
        }

        public void setCx(float f) {
            this.cx = f;
            invalidate();
        }

        public void show(boolean z) {
            this.show = z;
            invalidate();
        }
    }
}
