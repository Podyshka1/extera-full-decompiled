package org.telegram.ui.Components;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import me.vkryl.core.reference.ReferenceList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimatedFileDrawableStream;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.DispatchQueuePoolBackground;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.utils.BitmapsCache;
import org.telegram.messenger.utils.Choreographer60FpsContent;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public final class AnimatedFileDrawable extends BitmapDrawable implements Animatable, BitmapsCache.Cacheable {
    private static int activeChoreographersCount;
    private final int MAX_TRIES;
    private boolean PRERENDER_FRAME;
    private final RectF actualDrawRect;
    private boolean applyTransformation;
    private AnimatedFileBuffer backgroundBuffer;
    private final Paint[] backgroundPaint;
    private final BitmapsCache bitmapsCache;
    Runnable cacheGenRunnable;
    AnimatedFileNative cacheGenerateDecoder;
    long cacheGenerateTimestamp;
    BitmapsCache.Metadata cacheMetadata;
    private Runnable cancelCache;
    private final int currentAccount;
    public long currentTime;
    private DispatchQueue decodeQueue;
    private boolean decodeSingleFrame;
    private boolean decoderCreated;
    private int decoderTryCount;
    private boolean destroyWhenDone;
    private final TLRPC.Document document;
    private final RectF dstRect;
    private final RectF[] dstRectBackground;
    private float endTime;
    private boolean forceDecodeAfterNextFrame;
    boolean generatingCache;
    Bitmap generatingCacheBitmap;
    private int invalidateAfter;
    private boolean invalidateParentViewWithSecond;
    private boolean invalidatePath;
    private boolean isChoreographerRegistered;
    private volatile boolean isPaused;
    private volatile boolean isRecycled;
    private boolean isRestarted;
    private volatile boolean isRunning;
    private boolean isStaticVideoDetected;
    public boolean isWebmSticker;
    private long lastFrameDecodeTime;
    private long lastFrameTime;
    int lastMetadata;
    private int lastTimeStamp;
    private boolean limitFps;
    private final Runnable loadFrameRunnable;
    private Runnable loadFrameTask;
    private final boolean loop;
    private volatile AnimatedFileNative mDecoder;
    private final Runnable mStartTask;
    private final Choreographer60FpsContent.FrameCallback mUiThreadChoreographerCallback;
    private final int[] metaData;
    private AnimatedFileBuffer nextRenderingBuffer;
    private AnimatedFileBuffer nextRenderingBuffer2;
    private WeakReference<View> parentView;
    private final ReferenceList<ImageReceiver> parents;
    private final File path;
    private boolean pendingRemoveLoading;
    private int pendingRemoveLoadingFramesReset;
    private volatile long pendingSeekTo;
    private volatile long pendingSeekToUI;
    private final boolean precache;
    private boolean ptrFail;
    private boolean recycleWithSecond;
    private AnimatedFileBuffer renderingBuffer;
    private int renderingHeight;
    private int renderingWidth;
    public int repeatCount;
    private final Path[] roundPath;
    private final int[] roundRadius;
    private int[] roundRadiusBackup;
    private float scaleFactor;
    private float scaleX;
    private float scaleY;
    private boolean scheduledForSeek;
    private final ReferenceList<View> secondParentViews;
    private final Matrix[] shaderMatrix;
    private boolean singleFrameDecoded;
    public boolean skipFrameUpdate;
    private float startTime;
    private AnimatedFileDrawableStream stream;
    private final long streamFileSize;
    private final int streamLoadingPriority;
    private boolean swapBuffersAllowedByChoreographer;
    private final Object sync;
    private int ticksWithoutDraw;
    int tryCount;
    private final Runnable uiRunnable;
    private final Runnable uiRunnableGenerateCache;
    private final Runnable uiRunnableNoFrame;
    private final ArrayList<AnimatedFileBuffer> unusedBuffers;
    private boolean useSharedQueue;
    private static final float[] radii = new float[8];
    private static final ScheduledThreadPoolExecutor executor = new ScheduledThreadPoolExecutor(8, new ThreadPoolExecutor.DiscardPolicy());
    private static final Xfermode SRC_XFERMODE = new PorterDuffXfermode(PorterDuff.Mode.SRC);

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uiRunnableNoFrameImpl() {
        this.loadFrameTask = null;
        chekDestroyDecoder();
        if (this.pendingSeekToUI >= 0 && this.pendingSeekTo == -1) {
            this.pendingSeekToUI = -1L;
            this.invalidateAfter = 0;
        }
        scheduleNextGetFrame();
        invalidateInternal();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uiRunnableGenerateCacheImpl() {
        if (this.isRecycled || this.destroyWhenDone || this.generatingCache || this.cacheGenRunnable != null) {
            return;
        }
        this.startTime = System.currentTimeMillis();
        if (RLottieDrawable.lottieCacheGenerateQueue == null) {
            RLottieDrawable.createCacheGenQueue();
        }
        this.generatingCache = true;
        this.loadFrameTask = null;
        BitmapsCache.incrementTaskCounter();
        DispatchQueue dispatchQueue = RLottieDrawable.lottieCacheGenerateQueue;
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.AnimatedFileDrawable$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$uiRunnableGenerateCacheImpl$1();
            }
        };
        this.cacheGenRunnable = runnable;
        dispatchQueue.postRunnable(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$uiRunnableGenerateCacheImpl$1() {
        this.bitmapsCache.createCache();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AnimatedFileDrawable$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$uiRunnableGenerateCacheImpl$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$uiRunnableGenerateCacheImpl$0() {
        if (this.cacheGenRunnable != null) {
            BitmapsCache.decrementTaskCounter();
            this.cacheGenRunnable = null;
        }
        this.generatingCache = false;
        chekDestroyDecoder();
        scheduleNextGetFrame();
    }

    private void chekDestroyDecoder() {
        if (this.loadFrameTask == null && this.destroyWhenDone && this.mDecoder != null && !this.generatingCache) {
            this.mDecoder.recycle();
            this.mDecoder = null;
        }
        if (canLoadFrames()) {
            return;
        }
        AnimatedFileBuffer animatedFileBuffer = this.renderingBuffer;
        if (animatedFileBuffer != null) {
            animatedFileBuffer.recycle();
            this.renderingBuffer = null;
        }
        AnimatedFileBuffer animatedFileBuffer2 = this.backgroundBuffer;
        if (animatedFileBuffer2 != null) {
            animatedFileBuffer2.recycle();
            this.backgroundBuffer = null;
        }
        DispatchQueue dispatchQueue = this.decodeQueue;
        if (dispatchQueue != null) {
            dispatchQueue.recycle();
            this.decodeQueue = null;
        }
        int i = 0;
        while (true) {
            int size = this.unusedBuffers.size();
            ArrayList<AnimatedFileBuffer> arrayList = this.unusedBuffers;
            if (i < size) {
                arrayList.get(i).recycle();
                i++;
            } else {
                arrayList.clear();
                invalidateInternal();
                return;
            }
        }
    }

    public void invalidateInternal() {
        Iterator<ImageReceiver> it = this.parents.iterator();
        while (it.hasNext()) {
            it.next().invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uiRunnableImpl() {
        this.loadFrameTask = null;
        chekDestroyDecoder();
        if (this.stream != null && this.pendingRemoveLoading) {
            FileLoader.getInstance(this.currentAccount).removeLoadingVideo(this.stream.getDocument(), false, false);
        }
        int i = this.pendingRemoveLoadingFramesReset;
        if (i <= 0) {
            this.pendingRemoveLoading = true;
        } else {
            this.pendingRemoveLoadingFramesReset = i - 1;
        }
        if (!this.forceDecodeAfterNextFrame) {
            this.singleFrameDecoded = true;
        } else {
            this.forceDecodeAfterNextFrame = false;
        }
        if (this.pendingSeekToUI >= 0) {
            this.nextRenderingBuffer = this.backgroundBuffer;
            this.nextRenderingBuffer2 = null;
        } else if (!this.PRERENDER_FRAME) {
            this.nextRenderingBuffer = this.backgroundBuffer;
        } else {
            AnimatedFileBuffer animatedFileBuffer = this.nextRenderingBuffer;
            if (animatedFileBuffer == null && this.nextRenderingBuffer2 == null) {
                this.nextRenderingBuffer = this.backgroundBuffer;
            } else if (animatedFileBuffer == null) {
                this.nextRenderingBuffer = this.nextRenderingBuffer2;
                this.nextRenderingBuffer2 = this.backgroundBuffer;
            } else {
                this.nextRenderingBuffer2 = this.backgroundBuffer;
            }
        }
        this.backgroundBuffer = null;
        if (this.isRestarted) {
            this.isRestarted = false;
            this.repeatCount++;
            checkRepeat();
        }
        int i2 = this.metaData[3];
        if (i2 < this.lastTimeStamp) {
            float f = this.startTime;
            this.lastTimeStamp = f > 0.0f ? (int) (f * 1000.0f) : 0;
        }
        int i3 = this.lastTimeStamp;
        if (i2 - i3 != 0) {
            int i4 = i2 - i3;
            this.invalidateAfter = i4;
            if (this.limitFps && i4 < 32) {
                this.invalidateAfter = 32;
            }
        }
        if (this.pendingSeekToUI >= 0 && this.pendingSeekTo == -1) {
            this.pendingSeekToUI = -1L;
            this.invalidateAfter = 0;
        }
        this.lastTimeStamp = this.metaData[3];
        Iterator<View> it = this.secondParentViews.iterator();
        while (it.hasNext()) {
            it.next().invalidate();
        }
        if ((!this.isRunning && this.decodeSingleFrame) || (this.renderingBuffer == null && this.nextRenderingBuffer != null)) {
            invalidateInternal();
        }
        scheduleNextGetFrame();
    }

    public void checkRepeat() {
        int i = 0;
        int i2 = 0;
        for (ImageReceiver imageReceiver : this.parents) {
            if (imageReceiver.isAttachedToWindow()) {
                i++;
            } else {
                this.parents.remove(imageReceiver);
            }
            int i3 = imageReceiver.animatedFileDrawableRepeatMaxCount;
            if (i3 > 0 && this.repeatCount >= i3) {
                i2++;
            }
        }
        if (i == i2) {
            stop();
        } else {
            start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void loadFrameRunnableImpl() {
        boolean z;
        if (this.isRecycled) {
            AndroidUtilities.runOnUIThread(this.uiRunnable);
            return;
        }
        boolean z2 = false;
        if (!this.decoderCreated && this.mDecoder == null) {
            this.mDecoder = AnimatedFileNative.createDecoderFrom(this.path.getAbsolutePath(), this.metaData, this.currentAccount, this.streamFileSize, this.stream, false);
            this.ptrFail = this.mDecoder == null && (!this.isWebmSticker || this.decoderTryCount > 15);
            if (this.mDecoder != null) {
                int[] iArr = this.metaData;
                if (iArr[0] > 3840 || iArr[1] > 3840) {
                    this.mDecoder.recycle();
                    this.mDecoder = null;
                }
            }
            adaptRenderingSize();
            updateScaleFactor();
            if (!this.isWebmSticker || this.mDecoder != null) {
                z = true;
                this.decoderCreated = z;
                AndroidUtilities.runOnUIThread(new AnimatedFileDrawable$$ExternalSyntheticLambda0(this));
            } else {
                int i = this.decoderTryCount;
                this.decoderTryCount = i + 1;
                if (i <= 15) {
                    z = false;
                }
                this.decoderCreated = z;
                AndroidUtilities.runOnUIThread(new AnimatedFileDrawable$$ExternalSyntheticLambda0(this));
            }
        }
        try {
            if (this.bitmapsCache != null) {
                if (this.backgroundBuffer == null) {
                    if (!this.unusedBuffers.isEmpty()) {
                        this.backgroundBuffer = this.unusedBuffers.remove(0);
                    } else {
                        this.backgroundBuffer = AnimatedFileBuffer.of(this.renderingWidth, this.renderingHeight);
                    }
                }
                if (this.cacheMetadata == null) {
                    this.cacheMetadata = new BitmapsCache.Metadata();
                }
                this.lastFrameDecodeTime = System.currentTimeMillis();
                BitmapsCache.Metadata metadata = this.cacheMetadata;
                int i2 = metadata.frame;
                int frame = this.bitmapsCache.getFrame(this.backgroundBuffer.bitmap, metadata);
                if (frame != -1 && this.cacheMetadata.frame < i2) {
                    this.isRestarted = true;
                }
                int[] iArr2 = this.metaData;
                AnimatedFileBuffer animatedFileBuffer = this.backgroundBuffer;
                int iMax = this.cacheMetadata.frame * Math.max(16, iArr2[4] / Math.max(1, this.bitmapsCache.getFrameCount()));
                animatedFileBuffer.time = iMax;
                iArr2[3] = iMax;
                this.backgroundBuffer.opaque = false;
                if (this.bitmapsCache.needGenCache()) {
                    AndroidUtilities.runOnUIThread(this.uiRunnableGenerateCache);
                }
                if (frame == -1) {
                    AndroidUtilities.runOnUIThread(this.uiRunnableNoFrame);
                    return;
                } else {
                    AndroidUtilities.runOnUIThread(this.uiRunnable);
                    return;
                }
            }
            if (this.mDecoder == null) {
                int[] iArr3 = this.metaData;
                if (iArr3[0] != 0 && iArr3[1] != 0) {
                    AndroidUtilities.runOnUIThread(this.uiRunnableNoFrame);
                    return;
                }
            }
            if (this.backgroundBuffer == null) {
                int[] iArr4 = this.metaData;
                if (iArr4[0] > 0 && iArr4[1] > 0) {
                    try {
                        if (!this.unusedBuffers.isEmpty()) {
                            this.backgroundBuffer = this.unusedBuffers.remove(0);
                        } else {
                            float f = this.metaData[0];
                            float f2 = this.scaleFactor;
                            this.backgroundBuffer = AnimatedFileBuffer.of((int) (f * f2), (int) (r0[1] * f2));
                        }
                    } catch (Throwable th) {
                        FileLog.m1040e(th);
                    }
                }
            }
            if (this.pendingSeekTo >= 0) {
                this.metaData[3] = (int) this.pendingSeekTo;
                long j = this.pendingSeekTo;
                synchronized (this.sync) {
                    this.pendingSeekTo = -1L;
                }
                AnimatedFileDrawableStream animatedFileDrawableStream = this.stream;
                if (animatedFileDrawableStream != null) {
                    animatedFileDrawableStream.reset();
                }
                this.mDecoder.seekToMs(j, true);
                z2 = true;
            }
            if (this.backgroundBuffer != null) {
                this.lastFrameDecodeTime = System.currentTimeMillis();
                if (this.mDecoder.getVideoFrame(this.backgroundBuffer.bitmap, false, this.startTime, this.endTime, this.loop) == 0) {
                    AndroidUtilities.runOnUIThread(this.uiRunnableNoFrame);
                    return;
                }
                if (!this.isStaticVideoDetected) {
                    this.isStaticVideoDetected = this.mDecoder.isStaticVideoDetected();
                }
                int i3 = this.metaData[3];
                if (i3 < this.lastTimeStamp) {
                    this.isRestarted = true;
                }
                if (z2) {
                    this.lastTimeStamp = i3;
                }
                AnimatedFileBuffer animatedFileBuffer2 = this.backgroundBuffer;
                animatedFileBuffer2.time = i3;
                animatedFileBuffer2.opaque = this.mDecoder.isLastFrameOpaque();
            }
        } catch (Throwable th2) {
            FileLog.m1040e(th2);
        }
        AndroidUtilities.runOnUIThread(this.uiRunnable);
    }

    private void adaptRenderingSize() {
        int i;
        if (this.renderingWidth == 0 && this.renderingHeight == 0) {
            int[] iArr = this.metaData;
            int i2 = iArr[0];
            if (i2 > 3000 || (i = iArr[1]) > 3000) {
                this.renderingWidth = i2 / 4;
                this.renderingHeight = iArr[1] / 4;
            } else if (i2 > 2200 || i > 2200) {
                this.renderingWidth = i2 / 2;
                this.renderingHeight = i / 2;
            }
        }
    }

    private void updateScaleFactor() {
        int i;
        int i2;
        int[] iArr;
        int i3;
        int i4;
        if (!this.isWebmSticker && (i = this.renderingHeight) > 0 && (i2 = this.renderingWidth) > 0 && (i3 = (iArr = this.metaData)[0]) > 0 && (i4 = iArr[1]) > 0) {
            float fMax = Math.max(i2 / i3, i / i4);
            this.scaleFactor = fMax;
            if (fMax <= 0.0f || fMax > 0.7d) {
                this.scaleFactor = 1.0f;
                return;
            }
            return;
        }
        this.scaleFactor = 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uiStartTaskImpl() {
        Iterator<View> it = this.secondParentViews.iterator();
        while (it.hasNext()) {
            it.next().invalidate();
        }
        WeakReference<View> weakReference = this.parentView;
        View view = weakReference != null ? weakReference.get() : null;
        if ((this.secondParentViews.isEmpty() || this.invalidateParentViewWithSecond) && view != null) {
            view.invalidate();
        }
    }

    public AnimatedFileDrawable(File file, boolean z, long j, int i, TLRPC.Document document, ImageLocation imageLocation, Object obj, long j2, int i2, boolean z2, BitmapsCache.CacheOptions cacheOptions) {
        this(file, z, j, i, document, imageLocation, obj, j2, i2, z2, 0, 0, cacheOptions);
    }

    public AnimatedFileDrawable(File file, boolean z, long j, int i, TLRPC.Document document, ImageLocation imageLocation, Object obj, long j2, int i2, boolean z2, int i3, int i4, BitmapsCache.CacheOptions cacheOptions) {
        this(file, z, j, i, document, imageLocation, obj, j2, i2, z2, i3, i4, cacheOptions, document != null ? 1 : 0, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r19v0, types: [android.graphics.drawable.BitmapDrawable, org.telegram.messenger.utils.BitmapsCache$Cacheable, org.telegram.ui.Components.AnimatedFileDrawable] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean] */
    public AnimatedFileDrawable(File file, boolean z, long j, int i, TLRPC.Document document, ImageLocation imageLocation, Object obj, long j2, int i2, boolean z2, int i3, int i4, BitmapsCache.CacheOptions cacheOptions, int i5, boolean z3) {
        boolean z4;
        int i6;
        ?? r14;
        boolean z5;
        ?? r10;
        int[] iArr;
        this.invalidateAfter = 50;
        int[] iArr2 = new int[8];
        this.metaData = iArr2;
        this.unusedBuffers = new ArrayList<>();
        this.pendingSeekTo = -1L;
        this.pendingSeekToUI = -1L;
        this.sync = new Object();
        this.actualDrawRect = new RectF();
        this.roundRadius = new int[4];
        this.shaderMatrix = new Matrix[3];
        this.roundPath = new Path[3];
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        this.dstRect = new RectF();
        this.scaleFactor = 1.0f;
        this.dstRectBackground = new RectF[2];
        this.backgroundPaint = new Paint[2];
        this.secondParentViews = new ReferenceList<>(true);
        this.parents = new ReferenceList<>(true);
        this.invalidatePath = true;
        this.uiRunnableNoFrame = new Runnable() { // from class: org.telegram.ui.Components.AnimatedFileDrawable$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.uiRunnableNoFrameImpl();
            }
        };
        this.uiRunnableGenerateCache = new Runnable() { // from class: org.telegram.ui.Components.AnimatedFileDrawable$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.uiRunnableGenerateCacheImpl();
            }
        };
        this.uiRunnable = new Runnable() { // from class: org.telegram.ui.Components.AnimatedFileDrawable$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.uiRunnableImpl();
            }
        };
        this.decoderTryCount = 0;
        this.MAX_TRIES = 15;
        this.loadFrameRunnable = new Runnable() { // from class: org.telegram.ui.Components.AnimatedFileDrawable$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.loadFrameRunnableImpl();
            }
        };
        this.mStartTask = new Runnable() { // from class: org.telegram.ui.Components.AnimatedFileDrawable$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.uiStartTaskImpl();
            }
        };
        this.mUiThreadChoreographerCallback = new Choreographer60FpsContent.FrameCallback() { // from class: org.telegram.ui.Components.AnimatedFileDrawable$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.utils.Choreographer60FpsContent.FrameCallback
            public final void doFrame(long j3) {
                this.f$0.onChoreographerFrame(j3);
            }
        };
        this.path = file;
        this.PRERENDER_FRAME = SharedConfig.deviceIsAboveAverage();
        this.streamFileSize = j;
        this.streamLoadingPriority = i;
        this.currentAccount = i2;
        this.renderingHeight = i4;
        this.renderingWidth = i3;
        this.loop = z3;
        boolean z6 = cacheOptions != null && i3 > 0 && i4 > 0;
        this.precache = z6;
        this.document = document;
        getPaint().setFlags(3);
        if (j == 0 || (document == null && imageLocation == null)) {
            z4 = true;
            i6 = 15;
            r14 = 0;
        } else {
            z4 = true;
            i6 = 15;
            r14 = 0;
            this.stream = new AnimatedFileDrawableStream(document, imageLocation, obj, i2, z2, i, i5);
        }
        BitmapsCache bitmapsCache = null;
        if (!z || z6) {
            z5 = z6;
            r10 = z4;
            iArr = iArr2;
        } else {
            z5 = z6;
            boolean z7 = z4;
            iArr = iArr2;
            this.mDecoder = AnimatedFileNative.createDecoderFrom(file.getAbsolutePath(), iArr, i2, j, this.stream, z2);
            this.ptrFail = (this.mDecoder != null || (this.isWebmSticker && this.decoderTryCount <= i6)) ? r14 : z7 ? 1 : 0;
            if (this.mDecoder != null && (iArr[r14] > 3840 || iArr[z7 ? 1 : 0] > 3840)) {
                this.mDecoder.recycle();
                this.mDecoder = null;
            }
            adaptRenderingSize();
            updateScaleFactor();
            this.decoderCreated = z7;
            r10 = z7;
        }
        if (z5) {
            this.mDecoder = AnimatedFileNative.createDecoderFrom(file.getAbsolutePath(), iArr, i2, j, this.stream, z2);
            this.ptrFail = (this.mDecoder != null || (this.isWebmSticker && this.decoderTryCount <= i6)) ? r14 : r10;
            if (this.mDecoder != null && (iArr[r14] > 3840 || iArr[r10] > 3840)) {
                this.mDecoder.recycle();
                this.mDecoder = null;
            } else {
                bitmapsCache = new BitmapsCache(file, this, cacheOptions, this.renderingWidth, this.renderingHeight, (this.limitFps ? 1 : 0) ^ r10);
            }
        }
        this.bitmapsCache = bitmapsCache;
        if (j2 != 0) {
            seekTo(j2, r14);
        }
    }

    public void setIsWebmSticker(boolean z) {
        this.isWebmSticker = z;
        if (z) {
            this.PRERENDER_FRAME = false;
            this.useSharedQueue = true;
        }
    }

    public void setLimitFps(boolean z) {
        this.limitFps = z;
        if (z) {
            this.PRERENDER_FRAME = false;
        }
    }

    public Bitmap getFrameAtTime(long j) {
        return getFrameAtTime(j, false);
    }

    public Bitmap getFrameAtTime(long j, boolean z) {
        int videoFrame;
        if (this.decoderCreated && this.mDecoder != null) {
            AnimatedFileDrawableStream animatedFileDrawableStream = this.stream;
            if (animatedFileDrawableStream != null) {
                animatedFileDrawableStream.cancel(false);
                this.stream.reset();
            }
            if (!z) {
                this.mDecoder.seekToMs(j, z);
            }
            int[] iArr = this.metaData;
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr[0], iArr[1], Bitmap.Config.ARGB_8888);
            AnimatedFileNative animatedFileNative = this.mDecoder;
            if (z) {
                videoFrame = animatedFileNative.getFrameAtTime(j, bitmapCreateBitmap);
            } else {
                videoFrame = animatedFileNative.getVideoFrame(bitmapCreateBitmap, true, 0.0f, 0.0f, true);
            }
            if (videoFrame != 0) {
                return bitmapCreateBitmap;
            }
            bitmapCreateBitmap.recycle();
        }
        return null;
    }

    public void setParentView(View view) {
        if (this.parentView != null) {
            return;
        }
        this.parentView = new WeakReference<>(view);
    }

    public void addParent(ImageReceiver imageReceiver) {
        if (imageReceiver != null && this.parents.add(imageReceiver) && this.isRunning) {
            scheduleNextGetFrame();
        }
        checkCacheCancel();
    }

    public void removeParent(ImageReceiver imageReceiver) {
        this.parents.remove(imageReceiver);
        if (this.parents.isEmpty()) {
            this.repeatCount = 0;
        }
        checkCacheCancel();
    }

    public void checkCacheCancel() {
        Runnable runnable;
        if (this.bitmapsCache == null) {
            return;
        }
        boolean zIsEmpty = this.parents.isEmpty();
        if (zIsEmpty && this.cancelCache == null) {
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.AnimatedFileDrawable$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$checkCacheCancel$2();
                }
            };
            this.cancelCache = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 600L);
        } else {
            if (zIsEmpty || (runnable = this.cancelCache) == null) {
                return;
            }
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.cancelCache = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkCacheCancel$2() {
        BitmapsCache bitmapsCache = this.bitmapsCache;
        if (bitmapsCache != null) {
            bitmapsCache.cancelCreate();
        }
    }

    public void setInvalidateParentViewWithSecond(boolean z) {
        this.invalidateParentViewWithSecond = z;
    }

    public void addSecondParentView(View view) {
        if (view != null) {
            this.secondParentViews.add(view);
        }
    }

    public void removeSecondParentView(View view) {
        this.secondParentViews.remove(view);
        if (this.secondParentViews.isEmpty()) {
            if (this.recycleWithSecond) {
                recycle();
                return;
            }
            int[] iArr = this.roundRadiusBackup;
            if (iArr != null) {
                setRoundRadius(iArr);
            }
        }
    }

    public void setAllowDecodeSingleFrame(boolean z) {
        this.decodeSingleFrame = z;
        if (z) {
            scheduleNextGetFrame();
        }
    }

    public void seekTo(long j, boolean z) {
        seekTo(j, z, false);
    }

    public void seekTo(long j, boolean z, boolean z2) {
        AnimatedFileDrawableStream animatedFileDrawableStream;
        synchronized (this.sync) {
            try {
                this.pendingSeekTo = j;
                this.pendingSeekToUI = j;
                this.scheduledForSeek = false;
                if (this.mDecoder != null) {
                    this.mDecoder.prepareToSeek();
                }
                if (this.decoderCreated && (animatedFileDrawableStream = this.stream) != null) {
                    animatedFileDrawableStream.cancel(z);
                    this.pendingRemoveLoading = z;
                    this.pendingRemoveLoadingFramesReset = z ? 0 : 10;
                }
                if (z2 && this.decodeSingleFrame) {
                    this.singleFrameDecoded = false;
                    if (this.loadFrameTask == null) {
                        scheduleNextGetFrame(false, true);
                    } else {
                        this.forceDecodeAfterNextFrame = true;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void seekToSync(long j) {
        if (this.mDecoder == null) {
            return;
        }
        this.mDecoder.seekToMs(j, true);
    }

    public void recycle() {
        if (!this.secondParentViews.isEmpty()) {
            this.recycleWithSecond = true;
            return;
        }
        int i = 0;
        this.isRunning = false;
        this.isRecycled = true;
        checkChoreographer();
        if (this.cacheGenRunnable != null) {
            BitmapsCache.decrementTaskCounter();
            RLottieDrawable.lottieCacheGenerateQueue.cancelRunnable(this.cacheGenRunnable);
            this.cacheGenRunnable = null;
        }
        if (this.loadFrameTask == null) {
            if (this.mDecoder != null) {
                this.mDecoder.recycle();
                this.mDecoder = null;
            }
            ArrayList arrayList = new ArrayList();
            AnimatedFileBuffer animatedFileBuffer = this.renderingBuffer;
            if (animatedFileBuffer != null) {
                arrayList.add(animatedFileBuffer.bitmap);
            }
            AnimatedFileBuffer animatedFileBuffer2 = this.nextRenderingBuffer;
            if (animatedFileBuffer2 != null) {
                arrayList.add(animatedFileBuffer2.bitmap);
            }
            AnimatedFileBuffer animatedFileBuffer3 = this.nextRenderingBuffer2;
            if (animatedFileBuffer3 != null) {
                arrayList.add(animatedFileBuffer3.bitmap);
            }
            AnimatedFileBuffer animatedFileBuffer4 = this.backgroundBuffer;
            if (animatedFileBuffer4 != null) {
                arrayList.add(animatedFileBuffer4.bitmap);
            }
            ArrayList<AnimatedFileBuffer> arrayList2 = this.unusedBuffers;
            int size = arrayList2.size();
            while (i < size) {
                AnimatedFileBuffer animatedFileBuffer5 = arrayList2.get(i);
                i++;
                AnimatedFileBuffer animatedFileBuffer6 = animatedFileBuffer5;
                if (animatedFileBuffer6 != null) {
                    arrayList.add(animatedFileBuffer6.bitmap);
                }
            }
            this.unusedBuffers.clear();
            this.renderingBuffer = null;
            this.nextRenderingBuffer = null;
            this.nextRenderingBuffer2 = null;
            this.backgroundBuffer = null;
            DispatchQueue dispatchQueue = this.decodeQueue;
            if (dispatchQueue != null) {
                dispatchQueue.recycle();
                this.decodeQueue = null;
            }
            getPaint().setShader(null);
            AndroidUtilities.recycleBitmaps(arrayList);
        } else {
            this.destroyWhenDone = true;
        }
        AnimatedFileDrawableStream animatedFileDrawableStream = this.stream;
        if (animatedFileDrawableStream != null) {
            animatedFileDrawableStream.cancel(true);
            this.stream = null;
        }
        invalidateInternal();
    }

    public void resetStream(boolean z) {
        AnimatedFileDrawableStream animatedFileDrawableStream = this.stream;
        if (animatedFileDrawableStream != null) {
            animatedFileDrawableStream.cancel(true);
        }
        if (this.mDecoder != null) {
            AnimatedFileNative animatedFileNative = this.mDecoder;
            if (z) {
                animatedFileNative.stopDecoder();
            } else {
                animatedFileNative.prepareToSeek();
            }
        }
    }

    public void setUseSharedQueue(boolean z) {
        if (this.isWebmSticker) {
            return;
        }
        this.useSharedQueue = z;
    }

    public void finalize() throws Throwable {
        try {
            this.secondParentViews.clear();
            recycle();
        } finally {
            super.finalize();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.isRunning || this.parents.isEmpty()) {
            return;
        }
        this.isRunning = true;
        this.isPaused = false;
        scheduleNextGetFrame();
        AndroidUtilities.runOnUIThread(this.mStartTask);
        checkChoreographer();
    }

    public float getCurrentProgress() {
        float f;
        int i;
        if (this.metaData[4] == 0) {
            return 0.0f;
        }
        if (this.pendingSeekToUI >= 0) {
            f = this.pendingSeekToUI;
            i = this.metaData[4];
        } else {
            int[] iArr = this.metaData;
            f = iArr[3];
            i = iArr[4];
        }
        return f / i;
    }

    public int getCurrentProgressMs() {
        int i;
        if (this.pendingSeekToUI >= 0) {
            return (int) this.pendingSeekToUI;
        }
        AnimatedFileBuffer animatedFileBuffer = this.nextRenderingBuffer;
        if (animatedFileBuffer != null && (i = animatedFileBuffer.time) != 0) {
            return i;
        }
        AnimatedFileBuffer animatedFileBuffer2 = this.renderingBuffer;
        if (animatedFileBuffer2 != null) {
            return animatedFileBuffer2.time;
        }
        return 0;
    }

    public int getProgressMs() {
        return this.metaData[3];
    }

    public int getDurationMs() {
        return this.metaData[4];
    }

    private void scheduleNextGetFrame() {
        scheduleNextGetFrame(true, false);
    }

    private void scheduleNextGetFrame(boolean z, boolean z2) {
        Runnable runnable;
        Runnable runnable2;
        if (this.loadFrameTask == null || z2) {
            if ((!this.PRERENDER_FRAME || (this.nextRenderingBuffer2 != null && (this.scheduledForSeek || this.pendingSeekToUI < 0))) && this.nextRenderingBuffer != null) {
                return;
            }
            if ((this.renderingBuffer == null || !this.isStaticVideoDetected) && canLoadFrames() && !this.destroyWhenDone) {
                if ((!this.isRunning && (!this.decodeSingleFrame || this.singleFrameDecoded)) || this.parents.isEmpty() || this.generatingCache) {
                    return;
                }
                if (this.useSharedQueue) {
                    if (this.limitFps) {
                        Runnable runnable3 = this.loadFrameRunnable;
                        this.loadFrameTask = runnable3;
                        DispatchQueuePoolBackground.execute(runnable3);
                    } else {
                        if (z2 && (runnable2 = this.loadFrameTask) != null) {
                            executor.remove(runnable2);
                        }
                        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = executor;
                        Runnable runnable4 = this.loadFrameRunnable;
                        this.loadFrameTask = runnable4;
                        scheduledThreadPoolExecutor.execute(runnable4);
                    }
                } else {
                    if (this.decodeQueue == null) {
                        this.decodeQueue = new DispatchQueue("decodeQueue" + this);
                    }
                    if (z2 && (runnable = this.loadFrameTask) != null) {
                        this.decodeQueue.cancelRunnable(runnable);
                    }
                    DispatchQueue dispatchQueue = this.decodeQueue;
                    Runnable runnable5 = this.loadFrameRunnable;
                    this.loadFrameTask = runnable5;
                    dispatchQueue.postRunnable(runnable5, 0L);
                }
                this.scheduledForSeek = true;
            }
        }
    }

    public boolean isLoadingStream() {
        AnimatedFileDrawableStream animatedFileDrawableStream = this.stream;
        return animatedFileDrawableStream != null && animatedFileDrawableStream.isWaitingForLoad();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.isRunning = false;
        checkChoreographer();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.isRunning;
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        int i = 0;
        if (this.decoderCreated) {
            int[] iArr = this.metaData;
            int i2 = iArr[2];
            i = (i2 == 90 || i2 == 270) ? iArr[0] : iArr[1];
        }
        if (i == 0) {
            return AndroidUtilities.dp(100.0f);
        }
        return (int) (i * this.scaleFactor);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        int i = 0;
        if (this.decoderCreated) {
            int[] iArr = this.metaData;
            int i2 = iArr[2];
            i = (i2 == 90 || i2 == 270) ? iArr[1] : iArr[0];
        }
        if (i == 0) {
            return AndroidUtilities.dp(100.0f);
        }
        return (int) (i * this.scaleFactor);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.applyTransformation = true;
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        drawInternal(canvas, false, System.currentTimeMillis(), 0);
    }

    public void drawInBackground(Canvas canvas, float f, float f2, float f3, float f4, int i, ColorFilter colorFilter, int i2) {
        RectF[] rectFArr = this.dstRectBackground;
        if (rectFArr[i2] == null) {
            rectFArr[i2] = new RectF();
            this.backgroundPaint[i2] = new Paint();
            this.backgroundPaint[i2].setFilterBitmap(true);
        }
        this.backgroundPaint[i2].setAlpha(i);
        this.backgroundPaint[i2].setColorFilter(colorFilter);
        this.dstRectBackground[i2].set(f, f2, f3 + f, f4 + f2);
        drawInternal(canvas, true, 0L, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x017f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawInternal(Canvas canvas, boolean z, long j, int i) {
        float fWidth;
        float fHeight;
        if (!canLoadFrames() || this.destroyWhenDone) {
            return;
        }
        long jCurrentTimeMillis = j == 0 ? System.currentTimeMillis() : j;
        RectF rectF = z ? this.dstRectBackground[i] : this.dstRect;
        Paint paint = z ? this.backgroundPaint[i] : getPaint();
        if (!z) {
            updateCurrentFrame(jCurrentTimeMillis, false);
        }
        if (this.renderingBuffer == null) {
            return;
        }
        boolean zHasRoundRadius = hasRoundRadius();
        if (!z) {
            Xfermode xfermode = (!zHasRoundRadius && this.renderingBuffer.opaque && paint.getAlpha() == 255) ? SRC_XFERMODE : null;
            if (paint.getXfermode() != xfermode) {
                paint.setXfermode(xfermode);
            }
        }
        float f = this.scaleX;
        float f2 = this.scaleY;
        if (z) {
            AnimatedFileBuffer animatedFileBuffer = this.renderingBuffer;
            int i2 = animatedFileBuffer.width;
            int i3 = animatedFileBuffer.height;
            int i4 = this.metaData[2];
            if (i4 == 90 || i4 == 270) {
                i2 = i3;
                i3 = i2;
            }
            fWidth = rectF.width() / i2;
            fHeight = rectF.height() / i3;
        } else {
            if (this.applyTransformation) {
                AnimatedFileBuffer animatedFileBuffer2 = this.renderingBuffer;
                int i5 = animatedFileBuffer2.width;
                int i6 = animatedFileBuffer2.height;
                int i7 = this.metaData[2];
                if (i7 == 90 || i7 == 270) {
                    i5 = i6;
                    i6 = i5;
                }
                rectF.set(getBounds());
                fWidth = rectF.width() / i5;
                this.scaleX = fWidth;
                fHeight = rectF.height() / i6;
                this.scaleY = fHeight;
                this.applyTransformation = false;
            }
            if (!zHasRoundRadius) {
                int i8 = z ? i + 1 : 0;
                BitmapShader shader = this.renderingBuffer.getShader(i8);
                paint.setShader(shader);
                Matrix[] matrixArr = this.shaderMatrix;
                Matrix matrix = matrixArr[i8];
                if (matrix == null) {
                    matrix = new Matrix();
                    matrixArr[i8] = matrix;
                }
                matrix.reset();
                matrix.setTranslate(rectF.left, rectF.top);
                int i9 = this.metaData[2];
                if (i9 == 90) {
                    matrix.preRotate(90.0f);
                    matrix.preTranslate(0.0f, -rectF.width());
                } else if (i9 == 180) {
                    matrix.preRotate(180.0f);
                    matrix.preTranslate(-rectF.width(), -rectF.height());
                } else if (i9 == 270) {
                    matrix.preRotate(270.0f);
                    matrix.preTranslate(-rectF.height(), 0.0f);
                }
                matrix.preScale(f, f2);
                shader.setLocalMatrix(matrix);
                Path[] pathArr = this.roundPath;
                Path path = pathArr[i8];
                if (path == null) {
                    path = new Path();
                    pathArr[i8] = path;
                }
                if (this.invalidatePath || z) {
                    if (!z) {
                        this.invalidatePath = false;
                    }
                    int i10 = 0;
                    while (true) {
                        int[] iArr = this.roundRadius;
                        if (i10 >= iArr.length) {
                            break;
                        }
                        float[] fArr = radii;
                        int i11 = i10 * 2;
                        int i12 = iArr[i10];
                        fArr[i11] = i12;
                        fArr[i11 + 1] = i12;
                        i10++;
                    }
                    path.rewind();
                    path.addRoundRect(z ? rectF : this.actualDrawRect, radii, Path.Direction.CW);
                }
                if (!isRoundRadiusSame()) {
                    canvas.drawPath(path, paint);
                    return;
                }
                if (!z) {
                    rectF = this.actualDrawRect;
                }
                int i13 = this.roundRadius[0];
                canvas.drawRoundRect(rectF, i13, i13, paint);
                return;
            }
            drawBitmap(rectF, paint, canvas, f, f2);
            return;
        }
        float f3 = fWidth;
        f2 = fHeight;
        f = f3;
        if (!zHasRoundRadius) {
        }
    }

    private void drawBitmap(RectF rectF, Paint paint, Canvas canvas, float f, float f2) {
        canvas.save();
        canvas.translate(rectF.left, rectF.top);
        int i = this.metaData[2];
        if (i == 90) {
            canvas.rotate(90.0f);
            canvas.translate(0.0f, -rectF.width());
        } else if (i == 180) {
            canvas.rotate(180.0f);
            canvas.translate(-rectF.width(), -rectF.height());
        } else if (i == 270) {
            canvas.rotate(270.0f);
            canvas.translate(-rectF.height(), 0.0f);
        }
        canvas.scale(f, f2);
        canvas.drawBitmap(this.renderingBuffer.bitmap, 0.0f, 0.0f, paint);
        canvas.restore();
    }

    public long getLastFrameTimestamp() {
        return this.lastTimeStamp;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        int i = 0;
        if (this.decoderCreated) {
            int[] iArr = this.metaData;
            int i2 = iArr[2];
            i = (i2 == 90 || i2 == 270) ? iArr[0] : iArr[1];
        }
        return i == 0 ? AndroidUtilities.dp(100.0f) : i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        int i = 0;
        if (this.decoderCreated) {
            int[] iArr = this.metaData;
            int i2 = iArr[2];
            i = (i2 == 90 || i2 == 270) ? iArr[1] : iArr[0];
        }
        return i == 0 ? AndroidUtilities.dp(100.0f) : i;
    }

    public Bitmap getBackgroundBitmap() {
        AnimatedFileBuffer animatedFileBuffer = this.backgroundBuffer;
        if (animatedFileBuffer != null) {
            return animatedFileBuffer.bitmap;
        }
        return null;
    }

    public Bitmap getAnimatedBitmap() {
        AnimatedFileBuffer animatedFileBuffer = this.renderingBuffer;
        if (animatedFileBuffer != null) {
            return animatedFileBuffer.bitmap;
        }
        AnimatedFileBuffer animatedFileBuffer2 = this.nextRenderingBuffer;
        if (animatedFileBuffer2 != null) {
            return animatedFileBuffer2.bitmap;
        }
        AnimatedFileBuffer animatedFileBuffer3 = this.nextRenderingBuffer2;
        if (animatedFileBuffer3 != null) {
            return animatedFileBuffer3.bitmap;
        }
        return null;
    }

    public void replaceAnimatedBitmap(Bitmap bitmap) {
        AnimatedFileBuffer animatedFileBuffer = this.renderingBuffer;
        if (animatedFileBuffer != null) {
            this.unusedBuffers.add(animatedFileBuffer);
        }
        AnimatedFileBuffer animatedFileBuffer2 = this.nextRenderingBuffer;
        if (animatedFileBuffer2 != null) {
            this.unusedBuffers.add(animatedFileBuffer2);
        }
        AnimatedFileBuffer animatedFileBuffer3 = this.nextRenderingBuffer2;
        if (animatedFileBuffer3 != null) {
            this.unusedBuffers.add(animatedFileBuffer3);
        }
        this.renderingBuffer = AnimatedFileBuffer.of(bitmap);
        this.nextRenderingBuffer = null;
        this.nextRenderingBuffer2 = null;
    }

    public void setActualDrawRect(float f, float f2, float f3, float f4) {
        float f5 = f4 + f2;
        float f6 = f3 + f;
        RectF rectF = this.actualDrawRect;
        if (rectF.left == f && rectF.top == f2 && rectF.right == f6 && rectF.bottom == f5) {
            return;
        }
        rectF.set(f, f2, f6, f5);
        this.invalidatePath = true;
    }

    public void setRoundRadius(int[] iArr) {
        if (!this.secondParentViews.isEmpty()) {
            if (this.roundRadiusBackup == null) {
                this.roundRadiusBackup = new int[4];
            }
            int[] iArr2 = this.roundRadius;
            int[] iArr3 = this.roundRadiusBackup;
            System.arraycopy(iArr2, 0, iArr3, 0, iArr3.length);
        }
        for (int i = 0; i < 4; i++) {
            if (!this.invalidatePath && iArr[i] != this.roundRadius[i]) {
                this.invalidatePath = true;
            }
            this.roundRadius[i] = iArr[i];
        }
    }

    private boolean hasRoundRadius() {
        for (int i : this.roundRadius) {
            if (i != 0) {
                return true;
            }
        }
        return false;
    }

    private boolean isRoundRadiusSame() {
        int i;
        int[] iArr = this.roundRadius;
        int i2 = iArr[0];
        int i3 = iArr[1];
        return i2 == i3 && i3 == (i = iArr[2]) && i == iArr[3];
    }

    public boolean hasBitmap() {
        if (canLoadFrames()) {
            return (this.renderingBuffer == null && this.nextRenderingBuffer == null) ? false : true;
        }
        return false;
    }

    public int getOrientation() {
        return this.metaData[2];
    }

    public AnimatedFileDrawable makeCopy() {
        AnimatedFileDrawable animatedFileDrawable;
        AnimatedFileDrawableStream animatedFileDrawableStream = this.stream;
        if (animatedFileDrawableStream != null) {
            File file = this.path;
            long j = this.streamFileSize;
            int i = this.streamLoadingPriority;
            TLRPC.Document document = animatedFileDrawableStream.getDocument();
            ImageLocation location = this.stream.getLocation();
            Object parentObject = this.stream.getParentObject();
            long j2 = this.pendingSeekToUI;
            int i2 = this.currentAccount;
            AnimatedFileDrawableStream animatedFileDrawableStream2 = this.stream;
            animatedFileDrawable = new AnimatedFileDrawable(file, false, j, i, document, location, parentObject, j2, i2, animatedFileDrawableStream2 != null && animatedFileDrawableStream2.isPreview(), null);
        } else {
            animatedFileDrawable = new AnimatedFileDrawable(this.path, false, this.streamFileSize, this.streamLoadingPriority, this.document, null, null, this.pendingSeekToUI, this.currentAccount, false, null);
        }
        int[] iArr = animatedFileDrawable.metaData;
        int[] iArr2 = this.metaData;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1];
        return animatedFileDrawable;
    }

    public void setStartEndTime(long j, long j2) {
        this.startTime = j / 1000.0f;
        this.endTime = j2 / 1000.0f;
        if (j < 0 || getCurrentProgressMs() >= j) {
            return;
        }
        seekTo(j, true);
    }

    public long getStartTime() {
        return (long) (this.startTime * 1000.0f);
    }

    public boolean isRecycled() {
        return this.isRecycled || this.decoderTryCount >= 15;
    }

    public boolean decoderFailed() {
        return this.decoderCreated && this.ptrFail;
    }

    public Bitmap getNextFrame(boolean z) {
        AnimatedFileNative animatedFileNative = this.mDecoder;
        AnimatedFileBuffer animatedFileBuffer = this.backgroundBuffer;
        if (animatedFileNative == null) {
            if (animatedFileBuffer != null) {
                return animatedFileBuffer.bitmap;
            }
            return null;
        }
        if (animatedFileBuffer == null) {
            if (!this.unusedBuffers.isEmpty()) {
                this.backgroundBuffer = this.unusedBuffers.remove(0);
            } else {
                float f = this.metaData[0];
                float f2 = this.scaleFactor;
                this.backgroundBuffer = AnimatedFileBuffer.of((int) (f * f2), (int) (r0[1] * f2));
            }
        }
        this.mDecoder.getVideoFrame(this.backgroundBuffer.bitmap, false, this.startTime, this.endTime, z);
        return this.backgroundBuffer.bitmap;
    }

    public void skipNextFrame(boolean z) {
        if (this.mDecoder == null) {
            return;
        }
        this.mDecoder.getVideoFrame(null, false, this.startTime, this.endTime, z);
    }

    public boolean hasParents() {
        return !this.parents.isEmpty();
    }

    @Override // org.telegram.messenger.utils.BitmapsCache.Cacheable
    public void prepareForGenerateCache() {
        this.cacheGenerateDecoder = AnimatedFileNative.createDecoderFrom(this.path.getAbsolutePath(), this.metaData, this.currentAccount, this.streamFileSize, this.stream, false);
    }

    @Override // org.telegram.messenger.utils.BitmapsCache.Cacheable
    public void releaseForGenerateCache() {
        AnimatedFileNative animatedFileNative = this.cacheGenerateDecoder;
        if (animatedFileNative != null) {
            animatedFileNative.recycle();
            this.cacheGenerateDecoder = null;
        }
    }

    @Override // org.telegram.messenger.utils.BitmapsCache.Cacheable
    public int getNextFrame(Bitmap bitmap) {
        int i;
        if (this.cacheGenerateDecoder == null) {
            return -1;
        }
        Canvas canvas = new Canvas(bitmap);
        if (this.generatingCacheBitmap == null) {
            int[] iArr = this.metaData;
            this.generatingCacheBitmap = Bitmap.createBitmap(iArr[0], iArr[1], Bitmap.Config.ARGB_8888);
        }
        this.cacheGenerateDecoder.getVideoFrame(this.generatingCacheBitmap, false, this.startTime, this.endTime, this.loop);
        long j = this.cacheGenerateTimestamp;
        if (j != 0 && ((i = this.metaData[3]) == 0 || j > i)) {
            return 0;
        }
        int i2 = this.lastMetadata;
        int i3 = this.metaData[3];
        if (i2 == i3) {
            int i4 = this.tryCount + 1;
            this.tryCount = i4;
            if (i4 > 5) {
                return 0;
            }
        }
        this.lastMetadata = i3;
        bitmap.eraseColor(0);
        canvas.save();
        float width = this.renderingWidth / this.generatingCacheBitmap.getWidth();
        canvas.scale(width, width);
        canvas.drawBitmap(this.generatingCacheBitmap, 0.0f, 0.0f, (Paint) null);
        canvas.restore();
        this.cacheGenerateTimestamp = this.metaData[3];
        return 1;
    }

    public Bitmap getFirstFrame(Bitmap bitmap) {
        Bitmap bitmapCreateBitmap = bitmap == null ? Bitmap.createBitmap(this.renderingWidth, this.renderingHeight, Bitmap.Config.ARGB_8888) : bitmap;
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        AnimatedFileNative animatedFileNativeCreateDecoderFrom = AnimatedFileNative.createDecoderFrom(this.path.getAbsolutePath(), this.metaData, this.currentAccount, this.streamFileSize, this.stream, false);
        if (animatedFileNativeCreateDecoderFrom == null) {
            return bitmapCreateBitmap;
        }
        if (this.generatingCacheBitmap == null) {
            this.generatingCacheBitmap = Bitmap.createBitmap(Math.max(1, this.metaData[0]), Math.max(1, this.metaData[1]), Bitmap.Config.ARGB_8888);
        }
        animatedFileNativeCreateDecoderFrom.getVideoFrame(this.generatingCacheBitmap, false, this.startTime, this.endTime, true);
        animatedFileNativeCreateDecoderFrom.recycle();
        bitmapCreateBitmap.eraseColor(0);
        canvas.save();
        float width = this.renderingWidth / this.generatingCacheBitmap.getWidth();
        canvas.scale(width, width);
        canvas.drawBitmap(this.generatingCacheBitmap, 0.0f, 0.0f, (Paint) null);
        canvas.restore();
        return bitmapCreateBitmap;
    }

    private boolean canLoadFrames() {
        return this.precache ? this.bitmapsCache != null : (this.mDecoder == null && this.decoderCreated) ? false : true;
    }

    public void updateCurrentFrame(long j, boolean z) {
        checkChoreographerAfterDrawCall();
        updateCurrentFrameInternal(j, z);
    }

    private void updateCurrentFrameInternal(long j, boolean z) {
        boolean z2 = this.swapBuffersAllowedByChoreographer || (!this.isRunning && this.decodeSingleFrame);
        if (this.isRunning) {
            AnimatedFileBuffer animatedFileBuffer = this.renderingBuffer;
            if (animatedFileBuffer == null && this.nextRenderingBuffer == null) {
                scheduleNextGetFrame();
                return;
            }
            if (this.nextRenderingBuffer != null) {
                if (animatedFileBuffer == null || (z2 && !this.skipFrameUpdate && this.pendingSeekToUI < 0)) {
                    swapBuffers(j);
                    scheduleNextGetFrame();
                    return;
                }
                return;
            }
            return;
        }
        if (this.isRunning || !this.decodeSingleFrame || !z2 || this.nextRenderingBuffer == null) {
            return;
        }
        swapBuffers(j);
        scheduleNextGetFrame();
    }

    private void swapBuffers(long j) {
        AnimatedFileBuffer animatedFileBuffer = this.renderingBuffer;
        if (animatedFileBuffer != null) {
            this.unusedBuffers.add(animatedFileBuffer);
        }
        this.renderingBuffer = this.nextRenderingBuffer;
        this.nextRenderingBuffer = this.nextRenderingBuffer2;
        this.nextRenderingBuffer2 = null;
        this.lastFrameTime = j;
        this.swapBuffersAllowedByChoreographer = false;
    }

    public int getFps() {
        return this.metaData[5];
    }

    public int estimateSizeInCache() {
        return Math.max(getIntrinsicWidth() * getIntrinsicHeight(), this.renderingWidth * this.renderingHeight) * 12;
    }

    private void checkChoreographerAfterFrameCall() {
        int i = this.ticksWithoutDraw + 1;
        this.ticksWithoutDraw = i;
        if (i > 10) {
            this.isPaused = true;
        }
        checkChoreographerInternal();
    }

    private void checkChoreographerAfterDrawCall() {
        this.ticksWithoutDraw = 0;
        if (this.isPaused) {
            this.isPaused = false;
            checkChoreographer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onChoreographerFrame(long j) {
        checkChoreographerAfterFrameCall();
        if (this.isChoreographerRegistered) {
            this.swapBuffersAllowedByChoreographer = true;
            invalidateInternal();
        }
    }

    private void checkChoreographer() {
        AndroidUtilities.executeOnUIThread(new AnimatedFileDrawable$$ExternalSyntheticLambda0(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkChoreographerInternal() {
        int i;
        if (this.isRunning && !this.isPaused && !this.isStaticVideoDetected) {
            if (this.isChoreographerRegistered || (i = this.metaData[5]) <= 0) {
                return;
            }
            activeChoreographersCount++;
            this.isChoreographerRegistered = true;
            this.ticksWithoutDraw = 0;
            Choreographer60FpsContent.getInstance().addFrameCallback(this.mUiThreadChoreographerCallback, i);
            return;
        }
        if (this.isChoreographerRegistered) {
            activeChoreographersCount--;
            this.isChoreographerRegistered = false;
            this.ticksWithoutDraw = 0;
            Choreographer60FpsContent.getInstance().removeFrameCallback(this.mUiThreadChoreographerCallback);
        }
    }
}
