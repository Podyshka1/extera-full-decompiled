package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.MediaMetadataRetriever;
import android.os.AsyncTask;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes3.dex */
public abstract class VideoTimelinePlayView extends View {
    public static int TYPE_LEFT = 0;
    public static int TYPE_PROGRESS = 2;
    public static int TYPE_RIGHT = 1;
    private static final Object sync = new Object();
    Paint bitmapPaint;
    private Path clipPath;
    private int currentMode;
    private AsyncTask currentTask;
    private final Paint cutPaint;
    private VideoTimelineViewDelegate delegate;
    private final Paint dimPaint;
    private ArrayList exclusionRects;
    private Rect exclustionRect;
    private int frameHeight;
    private long frameTimeOffset;
    private int frameWidth;
    private ArrayList frames;
    private int framesToLoad;
    private final Paint handlePaint;
    private boolean hasBlur;
    private int lastWidth;
    private final AnimatedFloat loopProgress;
    private float maxProgressDiff;
    private MediaMetadataRetriever mediaMetadataRetriever;
    private float minProgressDiff;
    private float playProgress;
    private float pressDx;
    private boolean pressedLeft;
    private boolean pressedPlay;
    private boolean pressedRight;
    private float progressLeft;
    private float progressRight;
    private RectF rect3;
    private final Paint shadowPaint;
    private int videoHeight;
    private long videoLength;
    private int videoWidth;
    private final Paint whitePaint;

    /* JADX INFO: loaded from: classes7.dex */
    public interface VideoTimelineViewDelegate {
        void didStartDragging(int i);

        void didStopDragging(int i);

        void onLeftProgressChanged(float f);

        void onPlayProgressChanged(float f);

        void onRightProgressChanged(float f);
    }

    protected abstract boolean customBlur();

    protected abstract void drawBlur(Canvas canvas, RectF rectF);

    public VideoTimelinePlayView(Context context) {
        super(context);
        this.progressRight = 1.0f;
        this.playProgress = 0.5f;
        this.frames = new ArrayList();
        this.maxProgressDiff = 1.0f;
        this.minProgressDiff = 0.0f;
        this.rect3 = new RectF();
        this.currentMode = 0;
        this.bitmapPaint = new Paint(3);
        this.exclusionRects = new ArrayList();
        this.exclustionRect = new Rect();
        Paint paint = new Paint(1);
        this.whitePaint = paint;
        Paint paint2 = new Paint(1);
        this.shadowPaint = paint2;
        Paint paint3 = new Paint(1);
        this.dimPaint = paint3;
        Paint paint4 = new Paint(1);
        this.cutPaint = paint4;
        Paint paint5 = new Paint(1);
        this.handlePaint = paint5;
        this.loopProgress = new AnimatedFloat(0.0f, this, 0L, 200L, CubicBezierInterpolator.EASE_BOTH);
        this.clipPath = new Path();
        paint.setColor(-1);
        paint2.setColor(637534208);
        paint3.setColor(1291845632);
        paint4.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        paint5.setColor(-16777216);
        this.exclusionRects.add(this.exclustionRect);
    }

    public float getProgress() {
        return this.playProgress;
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

    public void setMode(int i) {
        if (this.currentMode == i) {
            return;
        }
        this.currentMode = i;
        invalidate();
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

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT >= 29) {
            this.exclustionRect.set(i, 0, i3, getMeasuredHeight());
            setSystemGestureExclusionRects(this.exclusionRects);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int measuredWidth = getMeasuredWidth() - AndroidUtilities.m1124dp(44.0f);
        float f = measuredWidth;
        int iM1124dp = ((int) (this.progressLeft * f)) + AndroidUtilities.m1124dp(22.0f);
        int iM1124dp2 = ((int) (this.playProgress * f)) + AndroidUtilities.m1124dp(22.0f);
        int iM1124dp3 = ((int) (this.progressRight * f)) + AndroidUtilities.m1124dp(22.0f);
        if (motionEvent.getAction() == 0) {
            getParent().requestDisallowInterceptTouchEvent(true);
            if (this.mediaMetadataRetriever == null) {
                return false;
            }
            int iM1124dp4 = AndroidUtilities.m1124dp(16.0f);
            int iM1124dp5 = AndroidUtilities.m1124dp(8.0f);
            if (iM1124dp3 != iM1124dp && iM1124dp2 - iM1124dp5 <= x && x <= iM1124dp5 + iM1124dp2 && y >= 0.0f && y <= getMeasuredHeight()) {
                VideoTimelineViewDelegate videoTimelineViewDelegate = this.delegate;
                if (videoTimelineViewDelegate != null) {
                    videoTimelineViewDelegate.didStartDragging(TYPE_PROGRESS);
                }
                this.pressedPlay = true;
                this.pressDx = (int) (x - iM1124dp2);
                invalidate();
                return true;
            }
            if (iM1124dp - iM1124dp4 <= x && x <= Math.min(iM1124dp + iM1124dp4, iM1124dp3) && y >= 0.0f && y <= getMeasuredHeight()) {
                VideoTimelineViewDelegate videoTimelineViewDelegate2 = this.delegate;
                if (videoTimelineViewDelegate2 != null) {
                    videoTimelineViewDelegate2.didStartDragging(TYPE_LEFT);
                }
                this.pressedLeft = true;
                this.pressDx = (int) (x - iM1124dp);
                invalidate();
                return true;
            }
            if (iM1124dp3 - iM1124dp4 <= x && x <= iM1124dp4 + iM1124dp3 && y >= 0.0f && y <= getMeasuredHeight()) {
                VideoTimelineViewDelegate videoTimelineViewDelegate3 = this.delegate;
                if (videoTimelineViewDelegate3 != null) {
                    videoTimelineViewDelegate3.didStartDragging(TYPE_RIGHT);
                }
                this.pressedRight = true;
                this.pressDx = (int) (x - iM1124dp3);
                invalidate();
                return true;
            }
            if (iM1124dp <= x && x <= iM1124dp3 && y >= 0.0f && y <= getMeasuredHeight()) {
                VideoTimelineViewDelegate videoTimelineViewDelegate4 = this.delegate;
                if (videoTimelineViewDelegate4 != null) {
                    videoTimelineViewDelegate4.didStartDragging(TYPE_PROGRESS);
                }
                this.pressedPlay = true;
                float fM1124dp = (x - AndroidUtilities.m1124dp(16.0f)) / f;
                this.playProgress = fM1124dp;
                VideoTimelineViewDelegate videoTimelineViewDelegate5 = this.delegate;
                if (videoTimelineViewDelegate5 != null) {
                    videoTimelineViewDelegate5.onPlayProgressChanged(fM1124dp);
                }
                this.pressDx = 0.0f;
                invalidate();
                return true;
            }
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            if (this.pressedLeft) {
                VideoTimelineViewDelegate videoTimelineViewDelegate6 = this.delegate;
                if (videoTimelineViewDelegate6 != null) {
                    videoTimelineViewDelegate6.didStopDragging(TYPE_LEFT);
                }
                this.pressedLeft = false;
                return true;
            }
            if (this.pressedRight) {
                VideoTimelineViewDelegate videoTimelineViewDelegate7 = this.delegate;
                if (videoTimelineViewDelegate7 != null) {
                    videoTimelineViewDelegate7.didStopDragging(TYPE_RIGHT);
                }
                this.pressedRight = false;
                return true;
            }
            if (this.pressedPlay) {
                VideoTimelineViewDelegate videoTimelineViewDelegate8 = this.delegate;
                if (videoTimelineViewDelegate8 != null) {
                    videoTimelineViewDelegate8.didStopDragging(TYPE_PROGRESS);
                }
                this.pressedPlay = false;
            }
        } else if (motionEvent.getAction() == 2) {
            if (this.pressedPlay) {
                float fM1124dp2 = (((int) (x - this.pressDx)) - AndroidUtilities.m1124dp(16.0f)) / f;
                this.playProgress = fM1124dp2;
                float f2 = this.progressLeft;
                if (fM1124dp2 < f2) {
                    this.playProgress = f2;
                } else {
                    float f3 = this.progressRight;
                    if (fM1124dp2 > f3) {
                        this.playProgress = f3;
                    }
                }
                VideoTimelineViewDelegate videoTimelineViewDelegate9 = this.delegate;
                if (videoTimelineViewDelegate9 != null) {
                    videoTimelineViewDelegate9.onPlayProgressChanged(this.playProgress);
                }
                invalidate();
                return true;
            }
            if (this.pressedLeft) {
                int i = (int) (x - this.pressDx);
                if (i < AndroidUtilities.m1124dp(16.0f)) {
                    iM1124dp3 = AndroidUtilities.m1124dp(16.0f);
                } else if (i <= iM1124dp3) {
                    iM1124dp3 = i;
                }
                float fM1124dp3 = (iM1124dp3 - AndroidUtilities.m1124dp(16.0f)) / f;
                this.progressLeft = fM1124dp3;
                float f4 = this.progressRight;
                float f5 = f4 - fM1124dp3;
                float f6 = this.maxProgressDiff;
                if (f5 > f6) {
                    this.progressRight = fM1124dp3 + f6;
                } else {
                    float f7 = this.minProgressDiff;
                    if (f7 != 0.0f && f4 - fM1124dp3 < f7) {
                        float f8 = f4 - f7;
                        this.progressLeft = f8;
                        if (f8 < 0.0f) {
                            this.progressLeft = 0.0f;
                        }
                    }
                }
                float f9 = this.progressLeft;
                float f10 = this.playProgress;
                if (f9 > f10) {
                    this.playProgress = f9;
                } else {
                    float f11 = this.progressRight;
                    if (f11 < f10) {
                        this.playProgress = f11;
                    }
                }
                VideoTimelineViewDelegate videoTimelineViewDelegate10 = this.delegate;
                if (videoTimelineViewDelegate10 != null) {
                    videoTimelineViewDelegate10.onLeftProgressChanged(f9);
                }
                invalidate();
                return true;
            }
            if (this.pressedRight) {
                int i2 = (int) (x - this.pressDx);
                if (i2 >= iM1124dp) {
                    iM1124dp = i2 > AndroidUtilities.m1124dp(16.0f) + measuredWidth ? measuredWidth + AndroidUtilities.m1124dp(16.0f) : i2;
                }
                float fM1124dp4 = (iM1124dp - AndroidUtilities.m1124dp(16.0f)) / f;
                this.progressRight = fM1124dp4;
                float f12 = this.progressLeft;
                float f13 = fM1124dp4 - f12;
                float f14 = this.maxProgressDiff;
                if (f13 > f14) {
                    this.progressLeft = fM1124dp4 - f14;
                } else {
                    float f15 = this.minProgressDiff;
                    if (f15 != 0.0f && fM1124dp4 - f12 < f15) {
                        float f16 = f12 + f15;
                        this.progressRight = f16;
                        if (f16 > 1.0f) {
                            this.progressRight = 1.0f;
                        }
                    }
                }
                float f17 = this.progressLeft;
                float f18 = this.playProgress;
                if (f17 > f18) {
                    this.playProgress = f17;
                } else {
                    float f19 = this.progressRight;
                    if (f19 < f18) {
                        this.playProgress = f19;
                    }
                }
                VideoTimelineViewDelegate videoTimelineViewDelegate11 = this.delegate;
                if (videoTimelineViewDelegate11 != null) {
                    videoTimelineViewDelegate11.onRightProgressChanged(this.progressRight);
                }
                invalidate();
                return true;
            }
        }
        return true;
    }

    public void setVideoPath(String str, float f, float f2) {
        int i;
        destroy();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        this.mediaMetadataRetriever = mediaMetadataRetriever;
        this.progressLeft = f;
        this.progressRight = f2;
        float f3 = this.playProgress;
        if (f3 < f) {
            this.playProgress = f;
        } else if (f3 > f2) {
            this.playProgress = f2;
        }
        try {
            mediaMetadataRetriever.setDataSource(str);
            String strExtractMetadata = this.mediaMetadataRetriever.extractMetadata(9);
            if (strExtractMetadata != null) {
                this.videoLength = Long.parseLong(strExtractMetadata);
            }
            String strExtractMetadata2 = this.mediaMetadataRetriever.extractMetadata(18);
            if (strExtractMetadata2 != null) {
                this.videoWidth = Integer.parseInt(strExtractMetadata2);
            }
            String strExtractMetadata3 = this.mediaMetadataRetriever.extractMetadata(19);
            if (strExtractMetadata3 != null) {
                this.videoHeight = Integer.parseInt(strExtractMetadata3);
            }
            String strExtractMetadata4 = this.mediaMetadataRetriever.extractMetadata(24);
            if (strExtractMetadata4 != null && ((i = Integer.parseInt(strExtractMetadata4)) == 90 || i == 270)) {
                int i2 = this.videoWidth;
                this.videoWidth = this.videoHeight;
                this.videoHeight = i2;
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        invalidate();
    }

    public long getLength() {
        return Math.max(1L, this.videoLength);
    }

    public void setRightProgress(float f) {
        this.progressRight = f;
        VideoTimelineViewDelegate videoTimelineViewDelegate = this.delegate;
        if (videoTimelineViewDelegate != null) {
            videoTimelineViewDelegate.didStartDragging(TYPE_RIGHT);
        }
        VideoTimelineViewDelegate videoTimelineViewDelegate2 = this.delegate;
        if (videoTimelineViewDelegate2 != null) {
            videoTimelineViewDelegate2.onRightProgressChanged(this.progressRight);
        }
        VideoTimelineViewDelegate videoTimelineViewDelegate3 = this.delegate;
        if (videoTimelineViewDelegate3 != null) {
            videoTimelineViewDelegate3.didStopDragging(TYPE_RIGHT);
        }
        invalidate();
    }

    public void setDelegate(VideoTimelineViewDelegate videoTimelineViewDelegate) {
        this.delegate = videoTimelineViewDelegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reloadFrames(int i) {
        int i2;
        if (this.mediaMetadataRetriever == null) {
            return;
        }
        if (i == 0) {
            this.frameHeight = AndroidUtilities.m1124dp(38.0f);
            this.framesToLoad = Math.max(1, (int) Math.ceil((getMeasuredWidth() - AndroidUtilities.m1124dp(32.0f)) / (this.frameHeight * Utilities.clamp((this.videoWidth == 0 || (i2 = this.videoHeight) == 0) ? 1.0f : r1 / i2, 1.3333334f, 0.5625f))));
            this.frameWidth = (int) Math.ceil((getMeasuredWidth() - AndroidUtilities.m1124dp(32.0f)) / this.framesToLoad);
            this.frameTimeOffset = this.videoLength / ((long) this.framesToLoad);
        }
        AsyncTask asyncTask = new AsyncTask() { // from class: org.telegram.ui.Components.VideoTimelinePlayView.1
            private int frameNum = 0;
            private final Paint paint = new Paint(3);

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Bitmap doInBackground(Integer... numArr) {
                Bitmap frameAtTime;
                this.frameNum = numArr[0].intValue();
                Bitmap bitmap = null;
                if (isCancelled()) {
                    return null;
                }
                try {
                    frameAtTime = VideoTimelinePlayView.this.mediaMetadataRetriever.getFrameAtTime(VideoTimelinePlayView.this.frameTimeOffset * ((long) this.frameNum) * 1000, 2);
                } catch (Exception e) {
                    e = e;
                }
                try {
                    if (isCancelled()) {
                        return null;
                    }
                    if (frameAtTime == null) {
                        return frameAtTime;
                    }
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(VideoTimelinePlayView.this.frameWidth, VideoTimelinePlayView.this.frameHeight, frameAtTime.getConfig());
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    float fMax = Math.max(VideoTimelinePlayView.this.frameWidth / frameAtTime.getWidth(), VideoTimelinePlayView.this.frameHeight / frameAtTime.getHeight());
                    int width = (int) (frameAtTime.getWidth() * fMax);
                    int height = (int) (frameAtTime.getHeight() * fMax);
                    canvas.drawBitmap(frameAtTime, new Rect(0, 0, frameAtTime.getWidth(), frameAtTime.getHeight()), new Rect((VideoTimelinePlayView.this.frameWidth - width) / 2, (VideoTimelinePlayView.this.frameHeight - height) / 2, (VideoTimelinePlayView.this.frameWidth + width) / 2, (VideoTimelinePlayView.this.frameHeight + height) / 2), this.paint);
                    frameAtTime.recycle();
                    return bitmapCreateBitmap;
                } catch (Exception e2) {
                    e = e2;
                    bitmap = frameAtTime;
                    FileLog.m1136e(e);
                    return bitmap;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Bitmap bitmap) {
                if (isCancelled()) {
                    return;
                }
                VideoTimelinePlayView.this.frames.add(new BitmapFrame(bitmap));
                VideoTimelinePlayView.this.invalidate();
                if (this.frameNum < VideoTimelinePlayView.this.framesToLoad) {
                    VideoTimelinePlayView.this.reloadFrames(this.frameNum + 1);
                }
            }
        };
        this.currentTask = asyncTask;
        asyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Integer.valueOf(i), null, null);
    }

    public void destroy() {
        Bitmap bitmap;
        MediaMetadataRetriever mediaMetadataRetriever;
        synchronized (sync) {
            try {
                mediaMetadataRetriever = this.mediaMetadataRetriever;
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
            if (mediaMetadataRetriever != null) {
                mediaMetadataRetriever.release();
                this.mediaMetadataRetriever = null;
            }
        }
        for (int i = 0; i < this.frames.size(); i++) {
            BitmapFrame bitmapFrame = (BitmapFrame) this.frames.get(i);
            if (bitmapFrame != null && (bitmap = bitmapFrame.bitmap) != null) {
                bitmap.recycle();
            }
        }
        this.frames.clear();
        AsyncTask asyncTask = this.currentTask;
        if (asyncTask != null) {
            asyncTask.cancel(true);
            this.currentTask = null;
        }
    }

    public boolean isDragging() {
        return this.pressedPlay;
    }

    public void setProgress(float f) {
        long j = this.videoLength;
        float f2 = j == 0 ? 0.0f : 240.0f / j;
        float f3 = this.playProgress;
        if (f < f3 && f <= this.progressLeft + f2 && f3 + f2 >= this.progressRight) {
            this.loopProgress.set(1.0f, true);
        }
        this.playProgress = f;
        invalidate();
    }

    public void clearFrames() {
        Bitmap bitmap;
        for (int i = 0; i < this.frames.size(); i++) {
            BitmapFrame bitmapFrame = (BitmapFrame) this.frames.get(i);
            if (bitmapFrame != null && (bitmap = bitmapFrame.bitmap) != null) {
                bitmap.recycle();
            }
        }
        this.frames.clear();
        AsyncTask asyncTask = this.currentTask;
        if (asyncTask != null) {
            asyncTask.cancel(true);
            this.currentTask = null;
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        if (this.lastWidth != size) {
            clearFrames();
            this.lastWidth = size;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0135  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float fDpf2 = AndroidUtilities.dpf2(12.0f);
        float measuredWidth = getMeasuredWidth() - (fDpf2 * 2.0f);
        float fM1124dp = AndroidUtilities.m1124dp(10.0f) + fDpf2 + ((int) ((measuredWidth - AndroidUtilities.m1124dp(20.0f)) * this.progressLeft));
        float fM1124dp2 = ((int) ((measuredWidth - AndroidUtilities.m1124dp(20.0f)) * this.progressRight)) + AndroidUtilities.m1124dp(10.0f) + fDpf2;
        float f14 = 6.0f;
        float fM1124dp3 = AndroidUtilities.m1124dp(6.0f);
        float fM1124dp4 = AndroidUtilities.m1124dp(38.0f) + fM1124dp3;
        float f15 = 1.0f;
        int i = 0;
        if (this.frames.isEmpty() && this.currentTask == null) {
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(fDpf2, fM1124dp3, measuredWidth + fDpf2, fM1124dp4);
            if (customBlur()) {
                canvas.save();
                this.clipPath.rewind();
                this.clipPath.addRoundRect(rectF, AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(6.0f), Path.Direction.CW);
                canvas.clipPath(this.clipPath);
                drawBlur(canvas, rectF);
                canvas.restore();
            } else {
                canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(6.0f), this.dimPaint);
            }
            reloadFrames(0);
            f11 = fM1124dp4;
            f = 2.0f;
            f2 = 10.0f;
            f7 = 6.0f;
            f8 = 1.0f;
            f9 = fM1124dp;
            f4 = fM1124dp2;
            f10 = fM1124dp3;
        } else {
            canvas.save();
            this.clipPath.rewind();
            RectF rectF2 = AndroidUtilities.rectTmp;
            float f16 = fDpf2 + measuredWidth;
            rectF2.set(fDpf2, fM1124dp3, f16, fM1124dp4);
            f = 2.0f;
            f2 = 10.0f;
            this.clipPath.addRoundRect(rectF2, AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(6.0f), Path.Direction.CW);
            canvas.clipPath(this.clipPath);
            boolean z = this.frames.size() < this.framesToLoad;
            this.hasBlur = z;
            if (!z) {
                int i2 = 0;
                while (true) {
                    if (i2 >= this.frames.size()) {
                        break;
                    }
                    if (((BitmapFrame) this.frames.get(i2)).bitmap == null) {
                        this.hasBlur = true;
                        break;
                    }
                    i2++;
                }
            }
            if (this.hasBlur) {
                if (customBlur()) {
                    RectF rectF3 = AndroidUtilities.rectTmp;
                    rectF3.set(fDpf2, fM1124dp3, AndroidUtilities.m1124dp(4.0f) + f16, fM1124dp4);
                    drawBlur(canvas, rectF3);
                    f3 = fM1124dp;
                    f4 = fM1124dp2;
                    f5 = fM1124dp3;
                    f6 = fM1124dp4;
                    int i3 = 0;
                    while (i < this.frames.size()) {
                    }
                    f7 = f14;
                    f8 = f15;
                    float f17 = f3;
                    canvas.drawRect(fDpf2, f5, f17, AndroidUtilities.m1124dp(46.0f), this.dimPaint);
                    f9 = f17;
                    float f18 = f6;
                    canvas.drawRect(f4, f5, f16, f18, this.dimPaint);
                    f10 = f5;
                    f11 = f18;
                    canvas.restore();
                } else {
                    f3 = fM1124dp;
                    f5 = fM1124dp3;
                    canvas.drawRect(f3, f5, fM1124dp2, fM1124dp4, this.dimPaint);
                    f4 = fM1124dp2;
                    f6 = fM1124dp4;
                    int i32 = 0;
                    while (i < this.frames.size()) {
                    }
                    f7 = f14;
                    f8 = f15;
                    float f172 = f3;
                    canvas.drawRect(fDpf2, f5, f172, AndroidUtilities.m1124dp(46.0f), this.dimPaint);
                    f9 = f172;
                    float f182 = f6;
                    canvas.drawRect(f4, f5, f16, f182, this.dimPaint);
                    f10 = f5;
                    f11 = f182;
                    canvas.restore();
                }
            } else {
                f3 = fM1124dp;
                f4 = fM1124dp2;
                f5 = fM1124dp3;
                f6 = fM1124dp4;
                int i322 = 0;
                while (i < this.frames.size()) {
                    BitmapFrame bitmapFrame = (BitmapFrame) this.frames.get(i);
                    if (bitmapFrame.bitmap != null) {
                        float f19 = (this.frameWidth * i322) + fDpf2;
                        float fM1124dp5 = AndroidUtilities.m1124dp(f14);
                        float f20 = bitmapFrame.alpha;
                        if (f20 != f15) {
                            float f21 = f20 + 0.045714285f;
                            bitmapFrame.alpha = f21;
                            if (f21 > f15) {
                                bitmapFrame.alpha = f15;
                            } else {
                                invalidate();
                            }
                            f12 = f14;
                            f13 = f15;
                            this.bitmapPaint.setAlpha((int) (CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(bitmapFrame.alpha) * 255.0f));
                            canvas.drawBitmap(bitmapFrame.bitmap, f19, fM1124dp5, this.bitmapPaint);
                        } else {
                            f12 = f14;
                            f13 = f15;
                            canvas.drawBitmap(bitmapFrame.bitmap, f19, fM1124dp5, (Paint) null);
                        }
                    } else {
                        f12 = f14;
                        f13 = f15;
                    }
                    i322++;
                    i++;
                    f14 = f12;
                    f15 = f13;
                }
                f7 = f14;
                f8 = f15;
                float f1722 = f3;
                canvas.drawRect(fDpf2, f5, f1722, AndroidUtilities.m1124dp(46.0f), this.dimPaint);
                f9 = f1722;
                float f1822 = f6;
                canvas.drawRect(f4, f5, f16, f1822, this.dimPaint);
                f10 = f5;
                f11 = f1822;
                canvas.restore();
            }
        }
        canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), 255, 31);
        this.rect3.set(f9 - AndroidUtilities.dpf2(f2), f10, AndroidUtilities.dpf2(f2) + f4, f11);
        this.whitePaint.setAlpha(255);
        canvas.drawRoundRect(this.rect3, AndroidUtilities.dpf2(f7), AndroidUtilities.dpf2(f7), this.whitePaint);
        this.rect3.set(f9, f10 + AndroidUtilities.dpf2(f), f4, f11 - AndroidUtilities.dpf2(f));
        canvas.drawRect(this.rect3, this.cutPaint);
        canvas.restore();
        float fM1124dp6 = AndroidUtilities.m1124dp(f);
        float fM1124dp7 = AndroidUtilities.m1124dp(f2);
        float fDpf22 = f9 - ((AndroidUtilities.dpf2(f2) - fM1124dp6) / f);
        float f22 = f10 + (((f11 - f10) - fM1124dp7) / f);
        float f23 = fM1124dp7 + f22;
        this.rect3.set(fDpf22, f22, fDpf22 - fM1124dp6, f23);
        canvas.drawRoundRect(this.rect3, AndroidUtilities.dpf2(f7), AndroidUtilities.dpf2(f7), this.handlePaint);
        float fDpf23 = ((AndroidUtilities.dpf2(f2) - fM1124dp6) / f) + f4;
        this.rect3.set(fDpf23, f22, fM1124dp6 + fDpf23, f23);
        canvas.drawRoundRect(this.rect3, AndroidUtilities.dpf2(f7), AndroidUtilities.dpf2(f7), this.handlePaint);
        float f24 = this.loopProgress.set(0.0f);
        if (f24 > 0.0f) {
            drawProgress(canvas, this.progressRight, f24);
        }
        drawProgress(canvas, this.playProgress, f8 - f24);
    }

    private void drawProgress(Canvas canvas, float f, float f2) {
        float fDpf2 = AndroidUtilities.dpf2(12.0f);
        float fM1124dp = AndroidUtilities.m1124dp(2.0f);
        float fM1124dp2 = AndroidUtilities.m1124dp(46.0f) + fM1124dp;
        float f3 = ((fM1124dp2 - fM1124dp) / 2.0f) * (1.0f - f2);
        float f4 = fM1124dp + f3;
        float f5 = fM1124dp2 - f3;
        this.shadowPaint.setAlpha((int) (38.0f * f2));
        this.whitePaint.setAlpha((int) (f2 * 255.0f));
        float fM1124dp3 = fDpf2 + AndroidUtilities.m1124dp(10.0f) + (((getMeasuredWidth() - (fDpf2 * 2.0f)) - AndroidUtilities.m1124dp(20.0f)) * f);
        this.rect3.set(fM1124dp3 - AndroidUtilities.dpf2(1.5f), f4, AndroidUtilities.dpf2(1.5f) + fM1124dp3, f5);
        this.rect3.inset(-AndroidUtilities.dpf2(0.66f), -AndroidUtilities.dpf2(0.66f));
        canvas.drawRoundRect(this.rect3, AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(6.0f), this.shadowPaint);
        this.rect3.set(fM1124dp3 - AndroidUtilities.dpf2(1.5f), f4, fM1124dp3 + AndroidUtilities.dpf2(1.5f), f5);
        canvas.drawRoundRect(this.rect3, AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(6.0f), this.whitePaint);
    }

    /* JADX INFO: loaded from: classes7.dex */
    private static class BitmapFrame {
        float alpha;
        Bitmap bitmap;

        public BitmapFrame(Bitmap bitmap) {
            this.bitmap = bitmap;
        }
    }

    public void invalidateBlur() {
        if (customBlur() && this.hasBlur) {
            invalidate();
        }
    }
}
