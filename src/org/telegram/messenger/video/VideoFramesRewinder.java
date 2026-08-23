package org.telegram.messenger.video;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import com.google.android.gms.cast.MediaError;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.video.VideoFramesRewinder;
import org.telegram.ui.Components.AnimatedFileNative;

/* JADX INFO: loaded from: classes5.dex */
public class VideoFramesRewinder {
    private Frame currentFrame;
    private boolean destroyAfterPrepare;

    /* JADX INFO: renamed from: h */
    int f847h;
    private boolean isPreparing;
    private long lastSeek;
    private AnimatedFileNative mDecoder;
    private int maxFrameSide;
    private int maxFramesCount;
    private View parentView;
    private long prepareToMs;
    private float prepareWithSpeed;

    /* JADX INFO: renamed from: w */
    int f848w;
    private final Paint paint = new Paint(2);
    private final int[] meta = new int[7];
    private final ArrayList<Frame> freeFrames = new ArrayList<>();
    private final TreeSet<Frame> frames = new TreeSet<>(new Comparator() { // from class: org.telegram.messenger.video.VideoFramesRewinder$$ExternalSyntheticLambda1
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return VideoFramesRewinder.$r8$lambda$Gp5VzuvDbaeLquWZKjlA_BCZs5Q((VideoFramesRewinder.Frame) obj, (VideoFramesRewinder.Frame) obj2);
        }
    });
    private AtomicBoolean stop = new AtomicBoolean(false);
    private AtomicLong until = new AtomicLong(0);
    private float lastSpeed = 1.0f;
    private Runnable prepareRunnable = new Runnable() { // from class: org.telegram.messenger.video.VideoFramesRewinder$$ExternalSyntheticLambda2
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$2();
        }
    };

    public VideoFramesRewinder() {
        int devicePerformanceClass = SharedConfig.getDevicePerformanceClass();
        if (devicePerformanceClass == 1) {
            this.maxFramesCount = 200;
            this.maxFrameSide = 580;
        } else if (devicePerformanceClass == 2) {
            this.maxFramesCount = MediaError.DetailedErrorCode.MANIFEST_UNKNOWN;
            this.maxFrameSide = 720;
        } else {
            this.maxFramesCount = 100;
            this.maxFrameSide = 480;
        }
    }

    public void draw(Canvas canvas, int i, int i2) {
        this.f848w = i;
        this.f847h = i2;
        if (this.mDecoder == null || this.currentFrame == null) {
            return;
        }
        canvas.save();
        canvas.scale(i / this.currentFrame.bitmap.getWidth(), i2 / this.currentFrame.bitmap.getHeight());
        canvas.drawBitmap(this.currentFrame.bitmap, 0.0f, 0.0f, this.paint);
        canvas.restore();
    }

    public boolean isReady() {
        return this.mDecoder != null;
    }

    public void setup(File file) {
        if (file == null) {
            release();
        } else {
            this.stop.set(false);
            this.mDecoder = AnimatedFileNative.createDecoderFrom(file.getAbsolutePath(), this.meta, UserConfig.selectedAccount, 0L, null, true);
        }
    }

    public static /* synthetic */ int $r8$lambda$Gp5VzuvDbaeLquWZKjlA_BCZs5Q(Frame frame, Frame frame2) {
        return (int) (frame.position - frame2.position);
    }

    public class Frame {
        Bitmap bitmap;
        long position;

        private Frame() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c6 A[LOOP:1: B:25:0x00af->B:27:0x00c6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e1 A[EDGE_INSN: B:46:0x00e1->B:28:0x00e1 BREAK  A[LOOP:1: B:25:0x00af->B:27:0x00c6], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$new$2() {
        Frame frame;
        int i;
        int i2;
        int i3;
        long jCeil;
        AnimatedFileNative animatedFileNative;
        final ArrayList arrayList = new ArrayList();
        final long jCurrentTimeMillis = System.currentTimeMillis();
        int[] iArr = this.meta;
        char c2 = 4;
        int i4 = iArr[4];
        int i5 = 0;
        int iMin = Math.min(this.f848w / 4, iArr[0]);
        int iMin2 = Math.min(this.f847h / 4, this.meta[1]);
        int i6 = this.maxFrameSide;
        if (iMin > i6 || iMin2 > i6) {
            float fMax = i6 / Math.max(iMin, iMin2);
            iMin = (int) (iMin * fMax);
            iMin2 = (int) (iMin2 * fMax);
        }
        this.mDecoder.seekToMs(this.prepareToMs - ((long) (this.prepareWithSpeed * 350.0f)), false);
        char c3 = 3;
        long j = this.meta[3];
        int i7 = 0;
        int i8 = 0;
        while (true) {
            char c4 = c2;
            if (this.meta[c3] > this.until.get() || i7 >= this.maxFramesCount || this.stop.get()) {
                break;
            }
            float f = 1000.0f / i4;
            char c5 = c3;
            long j2 = j;
            long j3 = (long) (j + (this.prepareWithSpeed * f));
            if (!this.freeFrames.isEmpty()) {
                frame = this.freeFrames.remove(i5);
            } else {
                frame = new Frame();
            }
            Bitmap bitmap = frame.bitmap;
            if (bitmap == null || bitmap.getWidth() != iMin || frame.bitmap.getHeight() != iMin2) {
                AndroidUtilities.recycleBitmap(frame.bitmap);
                try {
                    frame.bitmap = Bitmap.createBitmap(iMin, iMin2, Bitmap.Config.ARGB_8888);
                    while (true) {
                        i = i7;
                        i2 = i4;
                        i3 = iMin2;
                        jCeil = ((long) this.meta[c5]) + ((long) Math.ceil(f));
                        animatedFileNative = this.mDecoder;
                        if (jCeil < j3) {
                            break;
                        }
                        animatedFileNative.getVideoFrame(null, true, 0.0f, this.meta[c4], false);
                        i4 = i2;
                        i7 = i;
                        iMin2 = i3;
                    }
                    if (animatedFileNative.getVideoFrame(frame.bitmap, true, 0.0f, this.meta[c4], false) != 0) {
                        i8++;
                        if (i8 > 6) {
                            break;
                        }
                    } else {
                        long j4 = this.meta[c5];
                        frame.position = j4;
                        arrayList.add(frame);
                        j2 = j4;
                    }
                    i7 = i + 1;
                    i4 = i2;
                    c3 = c5;
                    c2 = c4;
                    j = j2;
                    iMin2 = i3;
                    i5 = 0;
                } catch (OutOfMemoryError unused) {
                    FileLog.m895d("[VideoFramesRewinder] failed to create bitmap: out of memory");
                }
            } else {
                while (true) {
                    i = i7;
                    i2 = i4;
                    i3 = iMin2;
                    jCeil = ((long) this.meta[c5]) + ((long) Math.ceil(f));
                    animatedFileNative = this.mDecoder;
                    if (jCeil < j3) {
                    }
                    animatedFileNative.getVideoFrame(null, true, 0.0f, this.meta[c4], false);
                    i4 = i2;
                    i7 = i;
                    iMin2 = i3;
                }
                if (animatedFileNative.getVideoFrame(frame.bitmap, true, 0.0f, this.meta[c4], false) != 0) {
                }
                i7 = i + 1;
                i4 = i2;
                c3 = c5;
                c2 = c4;
                j = j2;
                iMin2 = i3;
                i5 = 0;
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.video.VideoFramesRewinder$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1(arrayList, jCurrentTimeMillis);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(ArrayList arrayList, long j) {
        FileLog.m895d("[VideoFramesRewinder] total prepare of " + arrayList.size() + " took " + (System.currentTimeMillis() - j) + "ms");
        if (!arrayList.isEmpty()) {
            FileLog.m895d("[VideoFramesRewinder] prepared from " + ((Frame) arrayList.get(0)).position + "ms to " + ((Frame) arrayList.get(arrayList.size() - 1)).position + "ms (requested up to " + this.prepareToMs + "ms)");
        }
        this.isPreparing = false;
        Iterator<Frame> it = this.frames.iterator();
        while (it.hasNext()) {
            Frame next = it.next();
            if (this.currentFrame != next && next.position > this.lastSeek) {
                if (this.freeFrames.size() > 20) {
                    AndroidUtilities.recycleBitmap(next.bitmap);
                } else {
                    this.freeFrames.add(next);
                }
                it.remove();
            }
        }
        while (!arrayList.isEmpty() && this.frames.size() < this.maxFramesCount) {
            this.frames.add((Frame) arrayList.remove(arrayList.size() - 1));
        }
        if (arrayList.size() > 0) {
            FileLog.m895d("[VideoFramesRewinder] prepared " + arrayList.size() + " more frames than I could fit :(");
        }
        if (this.destroyAfterPrepare) {
            release();
            this.stop.set(false);
        }
    }

    private void prepare(long j) {
        if (this.isPreparing) {
            return;
        }
        FileLog.m895d("[VideoFramesRewinder] starting preparing " + j + "ms");
        this.isPreparing = true;
        this.prepareToMs = j;
        this.prepareWithSpeed = this.lastSpeed;
        Utilities.themeQueue.postRunnable(this.prepareRunnable);
    }

    public void seek(long j, float f) {
        if (this.mDecoder == null) {
            return;
        }
        this.lastSeek = j;
        this.lastSpeed = f;
        this.until.set(j);
        Iterator<Frame> it = this.frames.iterator();
        ArrayList arrayList = new ArrayList();
        while (it.hasNext()) {
            Frame next = it.next();
            arrayList.add(Long.valueOf(next.position));
            float f2 = 25.0f * f;
            if (Math.abs(next.position - j) < f2) {
                if (this.currentFrame != next) {
                    FileLog.m895d("[VideoFramesRewinder] found a frame " + next.position + "ms to fit to " + j + "ms from " + this.frames.size() + " frames");
                    this.currentFrame = next;
                    invalidate();
                    int i = 0;
                    while (it.hasNext()) {
                        it.next();
                        it.remove();
                        i++;
                    }
                    if (i > 0) {
                        FileLog.m895d("[VideoFramesRewinder] also deleted " + i + " frames after this frame");
                    }
                }
                for (int size = arrayList.size() - 2; size >= 0; size--) {
                    long jLongValue = ((Long) arrayList.get(size + 1)).longValue();
                    long jLongValue2 = ((Long) arrayList.get(size)).longValue();
                    if (Math.abs(jLongValue - jLongValue2) > f2) {
                        prepare(jLongValue2);
                        return;
                    }
                }
                prepare(Math.max(0L, this.frames.first().position - 20));
                return;
            }
        }
        FileLog.m895d("[VideoFramesRewinder] didn't find a frame, wanting to prepare " + j + "ms");
        prepare(Math.max(0L, j));
    }

    public void clearCurrent() {
        if (this.currentFrame != null) {
            this.currentFrame = null;
            invalidate();
        }
    }

    public void release() {
        if (this.isPreparing) {
            this.stop.set(true);
            this.destroyAfterPrepare = true;
            return;
        }
        AnimatedFileNative animatedFileNative = this.mDecoder;
        if (animatedFileNative != null) {
            animatedFileNative.recycle();
            this.mDecoder = null;
        }
        int i = 0;
        this.destroyAfterPrepare = false;
        clearCurrent();
        this.until.set(0L);
        Iterator<Frame> it = this.frames.iterator();
        while (it.hasNext()) {
            AndroidUtilities.recycleBitmap(it.next().bitmap);
        }
        this.frames.clear();
        ArrayList<Frame> arrayList = this.freeFrames;
        int size = arrayList.size();
        while (i < size) {
            Frame frame = arrayList.get(i);
            i++;
            AndroidUtilities.recycleBitmap(frame.bitmap);
        }
        this.freeFrames.clear();
    }

    public void setParentView(View view) {
        this.parentView = view;
    }

    private void invalidate() {
        View view = this.parentView;
        if (view != null) {
            view.invalidate();
        }
    }
}
