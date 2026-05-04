package org.telegram.ui.Components;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.view.View;
import androidx.annotation.Keep;
import java.io.File;
import java.util.ArrayList;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
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
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public class AnimatedFileDrawable extends BitmapDrawable implements Animatable, BitmapsCache.Cacheable {
    private final int MAX_TRIES;
    private boolean PRERENDER_FRAME;
    private final boolean USE_BITMAP_SHADER;
    private RectF actualDrawRect;
    private boolean applyTransformation;
    private Bitmap backgroundBitmap;
    private int backgroundBitmapTime;
    private final Paint[] backgroundPaint;
    private final BitmapShader[] backgroundShader;
    BitmapsCache bitmapsCache;
    Runnable cacheGenRunnable;
    long cacheGenerateNativePtr;
    long cacheGenerateTimestamp;
    BitmapsCache.Metadata cacheMetadata;
    private Runnable cancelCache;
    private int currentAccount;
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
    private boolean forceDisable;
    boolean generatingCache;
    Bitmap generatingCacheBitmap;
    public boolean ignoreNoParent;
    private int invalidateAfter;
    private boolean invalidateParentViewWithSecond;
    private boolean invalidatePath;
    private volatile boolean isRecycled;
    private boolean isRestarted;
    private volatile boolean isRunning;
    public boolean isWebmSticker;
    private long lastFrameDecodeTime;
    private long lastFrameTime;
    int lastMetadata;
    private int lastTimeStamp;
    private boolean limitFps;
    private final Runnable loadFrameRunnable;
    private Runnable loadFrameTask;
    private final Runnable mStartTask;
    private final int[] metaData;
    public volatile long nativePtr;
    private Bitmap nextRenderingBitmap;
    private Bitmap nextRenderingBitmap2;
    private int nextRenderingBitmapTime;
    private int nextRenderingBitmapTime2;
    private final BitmapShader[] nextRenderingShader;
    private final BitmapShader[] nextRenderingShader2;
    private View parentView;
    private final ArrayList parents;
    private File path;
    private boolean pendingRemoveLoading;
    private int pendingRemoveLoadingFramesReset;
    private volatile long pendingSeekTo;
    private volatile long pendingSeekToUI;
    private boolean precache;
    private boolean ptrFail;
    private boolean recycleWithSecond;
    private Bitmap renderingBitmap;
    private int renderingBitmapTime;
    private int renderingHeight;
    private final BitmapShader[] renderingShader;
    private int renderingWidth;
    public int repeatCount;
    private Path[] roundPath;
    private final Path[] roundPathBackground;
    private int[] roundRadius;
    private int[] roundRadiusBackup;
    private float scaleFactor;
    private float scaleX;
    private float scaleY;
    private boolean scheduledForSeek;
    private final ArrayList secondParentViews;
    private Matrix[] shaderMatrix;
    private final Matrix[] shaderMatrixBackground;
    private boolean singleFrameDecoded;
    public boolean skipFrameUpdate;
    private float startTime;
    private AnimatedFileDrawableStream stream;
    private long streamFileSize;
    private int streamLoadingPriority;
    private final Object sync;
    int tryCount;
    private Runnable uiRunnable;
    private Runnable uiRunnableGenerateCache;
    private Runnable uiRunnableNoFrame;
    ArrayList unusedBitmaps;
    private boolean useSharedQueue;
    private static float[] radii = new float[8];
    private static ScheduledThreadPoolExecutor executor = new ScheduledThreadPoolExecutor(8, new ThreadPoolExecutor.DiscardPolicy());

    public static native long createDecoder(String str, int[] iArr, int i, long j, Object obj, boolean z);

    public static native void destroyDecoder(long j);

    public static native int getFrameAtTime(long j, long j2, Bitmap bitmap, int[] iArr, int i, AnimatedFileDrawable animatedFileDrawable);

    public static native int getVideoFrame(long j, Bitmap bitmap, int[] iArr, int i, boolean z, float f, float f2, boolean z2, AnimatedFileDrawable animatedFileDrawable);

    public static native void getVideoInfo(int i, String str, int[] iArr);

    public static native void prepareToSeek(long j);

    public static native void seekToMs(long j, long j2, int[] iArr, boolean z, AnimatedFileDrawable animatedFileDrawable);

    public static native void stopDecoder(long j);

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.AnimatedFileDrawable$2 */
    /* JADX INFO: loaded from: classes7.dex */
    class RunnableC32272 implements Runnable {
        RunnableC32272() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AnimatedFileDrawable.this.isRecycled || AnimatedFileDrawable.this.destroyWhenDone) {
                return;
            }
            AnimatedFileDrawable animatedFileDrawable = AnimatedFileDrawable.this;
            if (animatedFileDrawable.generatingCache || animatedFileDrawable.cacheGenRunnable != null) {
                return;
            }
            animatedFileDrawable.startTime = System.currentTimeMillis();
            if (RLottieDrawable.lottieCacheGenerateQueue == null) {
                RLottieDrawable.createCacheGenQueue();
            }
            AnimatedFileDrawable animatedFileDrawable2 = AnimatedFileDrawable.this;
            animatedFileDrawable2.generatingCache = true;
            animatedFileDrawable2.loadFrameTask = null;
            BitmapsCache.incrementTaskCounter();
            DispatchQueue dispatchQueue = RLottieDrawable.lottieCacheGenerateQueue;
            AnimatedFileDrawable animatedFileDrawable3 = AnimatedFileDrawable.this;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.AnimatedFileDrawable$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$run$1();
                }
            };
            animatedFileDrawable3.cacheGenRunnable = runnable;
            dispatchQueue.postRunnable(runnable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1() {
            AnimatedFileDrawable.this.bitmapsCache.createCache();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AnimatedFileDrawable$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$run$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0() {
            if (AnimatedFileDrawable.this.cacheGenRunnable != null) {
                BitmapsCache.decrementTaskCounter();
                AnimatedFileDrawable.this.cacheGenRunnable = null;
            }
            AnimatedFileDrawable animatedFileDrawable = AnimatedFileDrawable.this;
            animatedFileDrawable.generatingCache = false;
            animatedFileDrawable.chekDestroyDecoder();
            AnimatedFileDrawable.this.scheduleNextGetFrame();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void chekDestroyDecoder() {
        if (this.loadFrameTask == null && this.destroyWhenDone && this.nativePtr != 0 && !this.generatingCache) {
            destroyDecoder(this.nativePtr);
            this.nativePtr = 0L;
        }
        if (canLoadFrames()) {
            return;
        }
        Bitmap bitmap = this.renderingBitmap;
        if (bitmap != null) {
            bitmap.recycle();
            this.renderingBitmap = null;
        }
        Bitmap bitmap2 = this.backgroundBitmap;
        if (bitmap2 != null) {
            bitmap2.recycle();
            this.backgroundBitmap = null;
        }
        DispatchQueue dispatchQueue = this.decodeQueue;
        if (dispatchQueue != null) {
            dispatchQueue.recycle();
            this.decodeQueue = null;
        }
        for (int i = 0; i < this.unusedBitmaps.size(); i++) {
            Bitmap bitmap3 = (Bitmap) this.unusedBitmaps.get(i);
            if (bitmap3 != null) {
                bitmap3.recycle();
            }
        }
        this.unusedBitmaps.clear();
        invalidateInternal();
    }

    public void invalidateInternal() {
        for (int i = 0; i < this.parents.size(); i++) {
            ((ImageReceiver) this.parents.get(i)).invalidate();
        }
    }

    public void checkRepeat() {
        if (this.ignoreNoParent) {
            start();
            return;
        }
        int i = 0;
        int i2 = 0;
        while (i < this.parents.size()) {
            ImageReceiver imageReceiver = (ImageReceiver) this.parents.get(i);
            if (!imageReceiver.isAttachedToWindow()) {
                this.parents.remove(i);
                i--;
            }
            int i3 = imageReceiver.animatedFileDrawableRepeatMaxCount;
            if (i3 > 0 && this.repeatCount >= i3) {
                i2++;
            }
            i++;
        }
        if (this.parents.size() == i2) {
            stop();
        } else {
            start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateScaleFactor() {
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
    public /* synthetic */ void lambda$new$0() {
        View view;
        if (!this.secondParentViews.isEmpty()) {
            int size = this.secondParentViews.size();
            for (int i = 0; i < size; i++) {
                ((View) this.secondParentViews.get(i)).invalidate();
            }
        }
        if ((this.secondParentViews.isEmpty() || this.invalidateParentViewWithSecond) && (view = this.parentView) != null) {
            view.invalidate();
        }
    }

    public AnimatedFileDrawable(File file, boolean z, long j, int i, TLRPC.Document document, ImageLocation imageLocation, Object obj, long j2, int i2, boolean z2, BitmapsCache.CacheOptions cacheOptions) {
        this(file, z, j, i, document, imageLocation, obj, j2, i2, z2, 0, 0, cacheOptions);
    }

    public AnimatedFileDrawable(File file, boolean z, long j, int i, TLRPC.Document document, ImageLocation imageLocation, Object obj, long j2, int i2, boolean z2, int i3, int i4, BitmapsCache.CacheOptions cacheOptions) {
        this(file, z, j, i, document, imageLocation, obj, j2, i2, z2, i3, i4, cacheOptions, document != null ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AnimatedFileDrawable(File file, boolean z, long j, int i, TLRPC.Document document, ImageLocation imageLocation, Object obj, long j2, int i2, boolean z2, int i3, int i4, BitmapsCache.CacheOptions cacheOptions, int i5) {
        char c;
        char c2;
        long j3;
        int[] iArr;
        this.USE_BITMAP_SHADER = Build.VERSION.SDK_INT < 29;
        this.PRERENDER_FRAME = true;
        this.invalidateAfter = 50;
        int[] iArr2 = new int[6];
        this.metaData = iArr2;
        this.pendingSeekTo = -1L;
        this.pendingSeekToUI = -1L;
        this.sync = new Object();
        this.actualDrawRect = new RectF();
        this.renderingShader = new BitmapShader[3];
        this.nextRenderingShader = new BitmapShader[3];
        this.nextRenderingShader2 = new BitmapShader[3];
        this.backgroundShader = new BitmapShader[3];
        this.unusedBitmaps = new ArrayList();
        this.roundRadius = new int[4];
        this.shaderMatrix = new Matrix[3];
        this.roundPath = new Path[3];
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        this.dstRect = new RectF();
        this.scaleFactor = 1.0f;
        this.dstRectBackground = new RectF[2];
        this.backgroundPaint = new Paint[2];
        this.shaderMatrixBackground = new Matrix[2];
        this.roundPathBackground = new Path[2];
        this.secondParentViews = new ArrayList();
        this.parents = new ArrayList();
        this.invalidatePath = true;
        this.uiRunnableNoFrame = new Runnable() { // from class: org.telegram.ui.Components.AnimatedFileDrawable.1
            @Override // java.lang.Runnable
            public void run() {
                AnimatedFileDrawable.this.loadFrameTask = null;
                AnimatedFileDrawable.this.chekDestroyDecoder();
                if (AnimatedFileDrawable.this.pendingSeekToUI >= 0 && AnimatedFileDrawable.this.pendingSeekTo == -1) {
                    AnimatedFileDrawable.this.pendingSeekToUI = -1L;
                    AnimatedFileDrawable.this.invalidateAfter = 0;
                }
                AnimatedFileDrawable.this.scheduleNextGetFrame();
                AnimatedFileDrawable.this.invalidateInternal();
            }
        };
        this.uiRunnableGenerateCache = new RunnableC32272();
        this.uiRunnable = new Runnable() { // from class: org.telegram.ui.Components.AnimatedFileDrawable.3
            @Override // java.lang.Runnable
            public void run() {
                AnimatedFileDrawable.this.loadFrameTask = null;
                AnimatedFileDrawable.this.chekDestroyDecoder();
                if (AnimatedFileDrawable.this.stream != null && AnimatedFileDrawable.this.pendingRemoveLoading) {
                    FileLoader.getInstance(AnimatedFileDrawable.this.currentAccount).removeLoadingVideo(AnimatedFileDrawable.this.stream.getDocument(), false, false);
                }
                if (AnimatedFileDrawable.this.pendingRemoveLoadingFramesReset <= 0) {
                    AnimatedFileDrawable.this.pendingRemoveLoading = true;
                } else {
                    AnimatedFileDrawable.this.pendingRemoveLoadingFramesReset--;
                }
                if (!AnimatedFileDrawable.this.forceDecodeAfterNextFrame) {
                    AnimatedFileDrawable.this.singleFrameDecoded = true;
                } else {
                    AnimatedFileDrawable.this.forceDecodeAfterNextFrame = false;
                }
                if (AnimatedFileDrawable.this.pendingSeekToUI >= 0) {
                    AnimatedFileDrawable animatedFileDrawable = AnimatedFileDrawable.this;
                    animatedFileDrawable.nextRenderingBitmap = animatedFileDrawable.backgroundBitmap;
                    AnimatedFileDrawable animatedFileDrawable2 = AnimatedFileDrawable.this;
                    animatedFileDrawable2.nextRenderingBitmapTime = animatedFileDrawable2.backgroundBitmapTime;
                    AnimatedFileDrawable.this.nextRenderingBitmap2 = null;
                    AnimatedFileDrawable.this.nextRenderingBitmapTime2 = 0;
                    for (int i6 = 0; i6 < AnimatedFileDrawable.this.backgroundShader.length; i6++) {
                        AnimatedFileDrawable.this.nextRenderingShader[i6] = AnimatedFileDrawable.this.backgroundShader[i6];
                        AnimatedFileDrawable.this.nextRenderingShader2[i6] = null;
                    }
                } else if (!AnimatedFileDrawable.this.PRERENDER_FRAME) {
                    AnimatedFileDrawable animatedFileDrawable3 = AnimatedFileDrawable.this;
                    animatedFileDrawable3.nextRenderingBitmap = animatedFileDrawable3.backgroundBitmap;
                    AnimatedFileDrawable animatedFileDrawable4 = AnimatedFileDrawable.this;
                    animatedFileDrawable4.nextRenderingBitmapTime = animatedFileDrawable4.backgroundBitmapTime;
                    for (int i7 = 0; i7 < AnimatedFileDrawable.this.backgroundShader.length; i7++) {
                        AnimatedFileDrawable.this.nextRenderingShader[i7] = AnimatedFileDrawable.this.backgroundShader[i7];
                    }
                } else if (AnimatedFileDrawable.this.nextRenderingBitmap == null && AnimatedFileDrawable.this.nextRenderingBitmap2 == null) {
                    AnimatedFileDrawable animatedFileDrawable5 = AnimatedFileDrawable.this;
                    animatedFileDrawable5.nextRenderingBitmap = animatedFileDrawable5.backgroundBitmap;
                    AnimatedFileDrawable animatedFileDrawable6 = AnimatedFileDrawable.this;
                    animatedFileDrawable6.nextRenderingBitmapTime = animatedFileDrawable6.backgroundBitmapTime;
                    for (int i8 = 0; i8 < AnimatedFileDrawable.this.backgroundShader.length; i8++) {
                        AnimatedFileDrawable.this.nextRenderingShader[i8] = AnimatedFileDrawable.this.backgroundShader[i8];
                    }
                } else if (AnimatedFileDrawable.this.nextRenderingBitmap == null) {
                    AnimatedFileDrawable animatedFileDrawable7 = AnimatedFileDrawable.this;
                    animatedFileDrawable7.nextRenderingBitmap = animatedFileDrawable7.nextRenderingBitmap2;
                    AnimatedFileDrawable animatedFileDrawable8 = AnimatedFileDrawable.this;
                    animatedFileDrawable8.nextRenderingBitmapTime = animatedFileDrawable8.nextRenderingBitmapTime2;
                    AnimatedFileDrawable animatedFileDrawable9 = AnimatedFileDrawable.this;
                    animatedFileDrawable9.nextRenderingBitmap2 = animatedFileDrawable9.backgroundBitmap;
                    AnimatedFileDrawable animatedFileDrawable10 = AnimatedFileDrawable.this;
                    animatedFileDrawable10.nextRenderingBitmapTime2 = animatedFileDrawable10.backgroundBitmapTime;
                    for (int i9 = 0; i9 < AnimatedFileDrawable.this.backgroundShader.length; i9++) {
                        AnimatedFileDrawable.this.nextRenderingShader[i9] = AnimatedFileDrawable.this.nextRenderingShader2[i9];
                        AnimatedFileDrawable.this.nextRenderingShader2[i9] = AnimatedFileDrawable.this.backgroundShader[i9];
                    }
                } else {
                    AnimatedFileDrawable animatedFileDrawable11 = AnimatedFileDrawable.this;
                    animatedFileDrawable11.nextRenderingBitmap2 = animatedFileDrawable11.backgroundBitmap;
                    AnimatedFileDrawable animatedFileDrawable12 = AnimatedFileDrawable.this;
                    animatedFileDrawable12.nextRenderingBitmapTime2 = animatedFileDrawable12.backgroundBitmapTime;
                    for (int i10 = 0; i10 < AnimatedFileDrawable.this.backgroundShader.length; i10++) {
                        AnimatedFileDrawable.this.nextRenderingShader2[i10] = AnimatedFileDrawable.this.backgroundShader[i10];
                    }
                }
                AnimatedFileDrawable.this.backgroundBitmap = null;
                for (int i11 = 0; i11 < AnimatedFileDrawable.this.backgroundShader.length; i11++) {
                    AnimatedFileDrawable.this.backgroundShader[i11] = null;
                }
                if (AnimatedFileDrawable.this.isRestarted) {
                    AnimatedFileDrawable.this.isRestarted = false;
                    AnimatedFileDrawable animatedFileDrawable13 = AnimatedFileDrawable.this;
                    animatedFileDrawable13.repeatCount++;
                    animatedFileDrawable13.checkRepeat();
                }
                if (AnimatedFileDrawable.this.metaData[3] < AnimatedFileDrawable.this.lastTimeStamp) {
                    AnimatedFileDrawable animatedFileDrawable14 = AnimatedFileDrawable.this;
                    animatedFileDrawable14.lastTimeStamp = animatedFileDrawable14.startTime > 0.0f ? (int) (AnimatedFileDrawable.this.startTime * 1000.0f) : 0;
                }
                if (AnimatedFileDrawable.this.metaData[3] - AnimatedFileDrawable.this.lastTimeStamp != 0) {
                    AnimatedFileDrawable animatedFileDrawable15 = AnimatedFileDrawable.this;
                    animatedFileDrawable15.invalidateAfter = animatedFileDrawable15.metaData[3] - AnimatedFileDrawable.this.lastTimeStamp;
                    if (AnimatedFileDrawable.this.limitFps && AnimatedFileDrawable.this.invalidateAfter < 32) {
                        AnimatedFileDrawable.this.invalidateAfter = 32;
                    }
                }
                if (AnimatedFileDrawable.this.pendingSeekToUI >= 0 && AnimatedFileDrawable.this.pendingSeekTo == -1) {
                    AnimatedFileDrawable.this.pendingSeekToUI = -1L;
                    AnimatedFileDrawable.this.invalidateAfter = 0;
                }
                AnimatedFileDrawable animatedFileDrawable16 = AnimatedFileDrawable.this;
                animatedFileDrawable16.lastTimeStamp = animatedFileDrawable16.metaData[3];
                if (!AnimatedFileDrawable.this.secondParentViews.isEmpty()) {
                    int size = AnimatedFileDrawable.this.secondParentViews.size();
                    for (int i12 = 0; i12 < size; i12++) {
                        ((View) AnimatedFileDrawable.this.secondParentViews.get(i12)).invalidate();
                    }
                }
                AnimatedFileDrawable.this.invalidateInternal();
                AnimatedFileDrawable.this.scheduleNextGetFrame();
            }
        };
        this.decoderTryCount = 0;
        this.MAX_TRIES = 15;
        this.loadFrameRunnable = new Runnable() { // from class: org.telegram.ui.Components.AnimatedFileDrawable.4
            /* JADX WARN: Removed duplicated region for block: B:22:0x008a  */
            /* JADX WARN: Removed duplicated region for block: B:38:0x00d8  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void run() {
                boolean z3;
                if (!AnimatedFileDrawable.this.isRecycled) {
                    if (AnimatedFileDrawable.this.forceDisable) {
                        AnimatedFileDrawable.this.ptrFail = true;
                        if (AnimatedFileDrawable.this.nativePtr != 0) {
                            AnimatedFileDrawable.destroyDecoder(AnimatedFileDrawable.this.nativePtr);
                            AnimatedFileDrawable.this.nativePtr = 0L;
                        }
                        AnimatedFileDrawable.this.updateScaleFactor();
                        AnimatedFileDrawable.this.decoderCreated = true;
                        return;
                    }
                    boolean z4 = false;
                    if (!AnimatedFileDrawable.this.decoderCreated && AnimatedFileDrawable.this.nativePtr == 0) {
                        AnimatedFileDrawable animatedFileDrawable = AnimatedFileDrawable.this;
                        animatedFileDrawable.nativePtr = AnimatedFileDrawable.createDecoder(animatedFileDrawable.path.getAbsolutePath(), AnimatedFileDrawable.this.metaData, AnimatedFileDrawable.this.currentAccount, AnimatedFileDrawable.this.streamFileSize, AnimatedFileDrawable.this.stream, false);
                        AnimatedFileDrawable animatedFileDrawable2 = AnimatedFileDrawable.this;
                        if (animatedFileDrawable2.nativePtr == 0) {
                            AnimatedFileDrawable animatedFileDrawable3 = AnimatedFileDrawable.this;
                            boolean z5 = !animatedFileDrawable3.isWebmSticker || animatedFileDrawable3.decoderTryCount > 15;
                            animatedFileDrawable2.ptrFail = z5;
                            if (AnimatedFileDrawable.this.nativePtr != 0 && (AnimatedFileDrawable.this.metaData[0] > 3840 || AnimatedFileDrawable.this.metaData[1] > 3840)) {
                                AnimatedFileDrawable.destroyDecoder(AnimatedFileDrawable.this.nativePtr);
                                AnimatedFileDrawable.this.nativePtr = 0L;
                            }
                            AnimatedFileDrawable.this.updateScaleFactor();
                            AnimatedFileDrawable animatedFileDrawable4 = AnimatedFileDrawable.this;
                            if (animatedFileDrawable4.isWebmSticker && animatedFileDrawable4.nativePtr == 0) {
                                AnimatedFileDrawable animatedFileDrawable5 = AnimatedFileDrawable.this;
                                int i6 = animatedFileDrawable5.decoderTryCount;
                                animatedFileDrawable5.decoderTryCount = i6 + 1;
                                if (i6 <= 15) {
                                    z3 = false;
                                }
                                animatedFileDrawable4.decoderCreated = z3;
                            } else {
                                z3 = true;
                                animatedFileDrawable4.decoderCreated = z3;
                            }
                        }
                    }
                    try {
                        AnimatedFileDrawable animatedFileDrawable6 = AnimatedFileDrawable.this;
                        if (animatedFileDrawable6.bitmapsCache != null) {
                            if (animatedFileDrawable6.backgroundBitmap == null) {
                                if (!AnimatedFileDrawable.this.unusedBitmaps.isEmpty()) {
                                    AnimatedFileDrawable animatedFileDrawable7 = AnimatedFileDrawable.this;
                                    animatedFileDrawable7.backgroundBitmap = (Bitmap) animatedFileDrawable7.unusedBitmaps.remove(0);
                                } else {
                                    AnimatedFileDrawable animatedFileDrawable8 = AnimatedFileDrawable.this;
                                    animatedFileDrawable8.backgroundBitmap = Bitmap.createBitmap(animatedFileDrawable8.renderingWidth, AnimatedFileDrawable.this.renderingHeight, Bitmap.Config.ARGB_8888);
                                }
                            }
                            AnimatedFileDrawable animatedFileDrawable9 = AnimatedFileDrawable.this;
                            if (animatedFileDrawable9.cacheMetadata == null) {
                                animatedFileDrawable9.cacheMetadata = new BitmapsCache.Metadata();
                            }
                            AnimatedFileDrawable.this.lastFrameDecodeTime = System.currentTimeMillis();
                            AnimatedFileDrawable animatedFileDrawable10 = AnimatedFileDrawable.this;
                            int i7 = animatedFileDrawable10.cacheMetadata.frame;
                            int frame = animatedFileDrawable10.bitmapsCache.getFrame(animatedFileDrawable10.backgroundBitmap, AnimatedFileDrawable.this.cacheMetadata);
                            if (frame != -1) {
                                AnimatedFileDrawable animatedFileDrawable11 = AnimatedFileDrawable.this;
                                if (animatedFileDrawable11.cacheMetadata.frame < i7) {
                                    animatedFileDrawable11.isRestarted = true;
                                }
                            }
                            int[] iArr3 = AnimatedFileDrawable.this.metaData;
                            AnimatedFileDrawable animatedFileDrawable12 = AnimatedFileDrawable.this;
                            int iMax = animatedFileDrawable12.cacheMetadata.frame * Math.max(16, animatedFileDrawable12.metaData[4] / Math.max(1, AnimatedFileDrawable.this.bitmapsCache.getFrameCount()));
                            animatedFileDrawable12.backgroundBitmapTime = iMax;
                            iArr3[3] = iMax;
                            if (AnimatedFileDrawable.this.bitmapsCache.needGenCache()) {
                                AndroidUtilities.runOnUIThread(AnimatedFileDrawable.this.uiRunnableGenerateCache);
                            }
                            if (frame == -1) {
                                AndroidUtilities.runOnUIThread(AnimatedFileDrawable.this.uiRunnableNoFrame);
                                return;
                            } else {
                                AndroidUtilities.runOnUIThread(AnimatedFileDrawable.this.uiRunnable);
                                return;
                            }
                        }
                        if (animatedFileDrawable6.nativePtr == 0 && AnimatedFileDrawable.this.metaData[0] != 0 && AnimatedFileDrawable.this.metaData[1] != 0) {
                            AndroidUtilities.runOnUIThread(AnimatedFileDrawable.this.uiRunnableNoFrame);
                            return;
                        }
                        if (AnimatedFileDrawable.this.backgroundBitmap == null && AnimatedFileDrawable.this.metaData[0] > 0 && AnimatedFileDrawable.this.metaData[1] > 0) {
                            try {
                                if (!AnimatedFileDrawable.this.unusedBitmaps.isEmpty()) {
                                    AnimatedFileDrawable animatedFileDrawable13 = AnimatedFileDrawable.this;
                                    animatedFileDrawable13.backgroundBitmap = (Bitmap) animatedFileDrawable13.unusedBitmaps.remove(0);
                                } else {
                                    AnimatedFileDrawable.this.backgroundBitmap = Bitmap.createBitmap((int) (r0.metaData[0] * AnimatedFileDrawable.this.scaleFactor), (int) (AnimatedFileDrawable.this.metaData[1] * AnimatedFileDrawable.this.scaleFactor), Bitmap.Config.ARGB_8888);
                                }
                            } catch (Throwable th) {
                                FileLog.m955e(th);
                            }
                            if (AnimatedFileDrawable.this.USE_BITMAP_SHADER && AnimatedFileDrawable.this.backgroundShader[0] == null && AnimatedFileDrawable.this.backgroundBitmap != null && AnimatedFileDrawable.this.hasRoundRadius()) {
                                BitmapShader[] bitmapShaderArr = AnimatedFileDrawable.this.backgroundShader;
                                Bitmap bitmap = AnimatedFileDrawable.this.backgroundBitmap;
                                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                                bitmapShaderArr[0] = new BitmapShader(bitmap, tileMode, tileMode);
                            }
                        }
                        if (AnimatedFileDrawable.this.pendingSeekTo >= 0) {
                            AnimatedFileDrawable.this.metaData[3] = (int) AnimatedFileDrawable.this.pendingSeekTo;
                            long j4 = AnimatedFileDrawable.this.pendingSeekTo;
                            synchronized (AnimatedFileDrawable.this.sync) {
                                AnimatedFileDrawable.this.pendingSeekTo = -1L;
                            }
                            if (AnimatedFileDrawable.this.stream != null) {
                                AnimatedFileDrawable.this.stream.reset();
                            }
                            AnimatedFileDrawable.seekToMs(AnimatedFileDrawable.this.nativePtr, j4, AnimatedFileDrawable.this.metaData, true, AnimatedFileDrawable.this);
                            z4 = true;
                        }
                        if (AnimatedFileDrawable.this.backgroundBitmap != null) {
                            AnimatedFileDrawable.this.lastFrameDecodeTime = System.currentTimeMillis();
                            if (AnimatedFileDrawable.getVideoFrame(AnimatedFileDrawable.this.nativePtr, AnimatedFileDrawable.this.backgroundBitmap, AnimatedFileDrawable.this.metaData, AnimatedFileDrawable.this.backgroundBitmap.getRowBytes(), false, AnimatedFileDrawable.this.startTime, AnimatedFileDrawable.this.endTime, true, AnimatedFileDrawable.this) == 0) {
                                AndroidUtilities.runOnUIThread(AnimatedFileDrawable.this.uiRunnableNoFrame);
                                return;
                            }
                            if (AnimatedFileDrawable.this.metaData[3] < AnimatedFileDrawable.this.lastTimeStamp) {
                                AnimatedFileDrawable.this.isRestarted = true;
                            }
                            if (z4) {
                                AnimatedFileDrawable animatedFileDrawable14 = AnimatedFileDrawable.this;
                                animatedFileDrawable14.lastTimeStamp = animatedFileDrawable14.metaData[3];
                            }
                            AnimatedFileDrawable animatedFileDrawable15 = AnimatedFileDrawable.this;
                            animatedFileDrawable15.backgroundBitmapTime = animatedFileDrawable15.metaData[3];
                        }
                    } catch (Throwable th2) {
                        FileLog.m955e(th2);
                    }
                }
                AndroidUtilities.runOnUIThread(AnimatedFileDrawable.this.uiRunnable);
            }
        };
        this.mStartTask = new Runnable() { // from class: org.telegram.ui.Components.AnimatedFileDrawable$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        this.path = file;
        this.PRERENDER_FRAME = SharedConfig.deviceIsAboveAverage();
        this.streamFileSize = j;
        this.streamLoadingPriority = i;
        this.currentAccount = i2;
        this.renderingHeight = i4;
        this.renderingWidth = i3;
        this.precache = cacheOptions != null && i3 > 0 && i4 > 0;
        this.document = document;
        getPaint().setFlags(3);
        if (j == 0 || (document == null && imageLocation == null)) {
            c = 0;
            c2 = 1;
            j3 = 0;
        } else {
            c = 0;
            c2 = 1;
            j3 = 0;
            this.stream = new AnimatedFileDrawableStream(document, imageLocation, obj, i2, z2, i, i5);
        }
        if (!z || this.precache) {
            iArr = iArr2;
        } else {
            iArr = iArr2;
            this.nativePtr = createDecoder(file.getAbsolutePath(), iArr2, this.currentAccount, this.streamFileSize, this.stream, z2);
            this.ptrFail = (this.nativePtr != j3 || (this.isWebmSticker && this.decoderTryCount <= 15)) ? c : c2;
            if (this.nativePtr != j3 && (iArr[c] > 3840 || iArr[c2] > 3840)) {
                destroyDecoder(this.nativePtr);
                this.nativePtr = j3;
            }
            updateScaleFactor();
            this.decoderCreated = c2;
        }
        if (this.precache) {
            this.nativePtr = createDecoder(file.getAbsolutePath(), iArr, this.currentAccount, this.streamFileSize, this.stream, z2);
            this.ptrFail = (this.nativePtr != j3 || (this.isWebmSticker && this.decoderTryCount <= 15)) ? c : 1;
            if (this.nativePtr != j3 && (iArr[c] > 3840 || iArr[1] > 3840)) {
                destroyDecoder(this.nativePtr);
                this.nativePtr = j3;
            } else {
                this.bitmapsCache = new BitmapsCache(file, this, cacheOptions, this.renderingWidth, this.renderingHeight, !this.limitFps);
            }
        }
        if (j2 != j3) {
            seekTo(j2, c);
        }
    }

    public void setIsWebmSticker(boolean z) {
        this.isWebmSticker = z;
        if (z) {
            this.PRERENDER_FRAME = false;
            this.useSharedQueue = true;
        }
    }

    public Bitmap getFrameAtTime(long j) {
        return getFrameAtTime(j, false);
    }

    public Bitmap getFrameAtTime(long j, boolean z) {
        int videoFrame;
        if (this.decoderCreated && this.nativePtr != 0) {
            AnimatedFileDrawableStream animatedFileDrawableStream = this.stream;
            if (animatedFileDrawableStream != null) {
                animatedFileDrawableStream.cancel(false);
                this.stream.reset();
            }
            if (!z) {
                seekToMs(this.nativePtr, j, this.metaData, z, this);
            }
            int[] iArr = this.metaData;
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr[0], iArr[1], Bitmap.Config.ARGB_8888);
            if (z) {
                videoFrame = getFrameAtTime(this.nativePtr, j, bitmapCreateBitmap, this.metaData, bitmapCreateBitmap.getRowBytes(), this);
                bitmapCreateBitmap = bitmapCreateBitmap;
            } else {
                videoFrame = getVideoFrame(this.nativePtr, bitmapCreateBitmap, this.metaData, bitmapCreateBitmap.getRowBytes(), true, 0.0f, 0.0f, true, this);
            }
            if (videoFrame != 0) {
                return bitmapCreateBitmap;
            }
        }
        return null;
    }

    public void setParentView(View view) {
        if (this.parentView != null) {
            return;
        }
        this.parentView = view;
    }

    public void addParent(ImageReceiver imageReceiver) {
        if (imageReceiver != null && !this.parents.contains(imageReceiver)) {
            this.parents.add(imageReceiver);
            if (this.isRunning) {
                scheduleNextGetFrame();
            }
        }
        checkCacheCancel();
    }

    public void removeParent(ImageReceiver imageReceiver) {
        this.parents.remove(imageReceiver);
        if (this.parents.size() == 0) {
            this.repeatCount = 0;
            if (!this.ignoreNoParent) {
                stop();
            }
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
                    this.f$0.lambda$checkCacheCancel$1();
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
    public /* synthetic */ void lambda$checkCacheCancel$1() {
        BitmapsCache bitmapsCache = this.bitmapsCache;
        if (bitmapsCache != null) {
            bitmapsCache.cancelCreate();
        }
    }

    public void setInvalidateParentViewWithSecond(boolean z) {
        this.invalidateParentViewWithSecond = z;
    }

    public void addSecondParentView(View view) {
        if (view == null || this.secondParentViews.contains(view)) {
            return;
        }
        this.secondParentViews.add(view);
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
                if (this.nativePtr != 0) {
                    prepareToSeek(this.nativePtr);
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
        if (this.nativePtr == 0) {
            return;
        }
        seekToMs(this.nativePtr, j, this.metaData, true, this);
    }

    public void recycle() {
        if (!this.secondParentViews.isEmpty()) {
            this.recycleWithSecond = true;
            return;
        }
        this.isRunning = false;
        this.isRecycled = true;
        if (this.cacheGenRunnable != null) {
            BitmapsCache.decrementTaskCounter();
            RLottieDrawable.lottieCacheGenerateQueue.cancelRunnable(this.cacheGenRunnable);
            this.cacheGenRunnable = null;
        }
        if (this.loadFrameTask == null) {
            if (this.nativePtr != 0) {
                destroyDecoder(this.nativePtr);
                this.nativePtr = 0L;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.renderingBitmap);
            arrayList.add(this.nextRenderingBitmap);
            arrayList.add(this.nextRenderingBitmap2);
            arrayList.add(this.backgroundBitmap);
            arrayList.addAll(this.unusedBitmaps);
            this.unusedBitmaps.clear();
            this.renderingBitmap = null;
            this.nextRenderingBitmap = null;
            this.nextRenderingBitmap2 = null;
            this.backgroundBitmap = null;
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
        if (this.nativePtr != 0) {
            if (z) {
                stopDecoder(this.nativePtr);
            } else {
                prepareToSeek(this.nativePtr);
            }
        }
    }

    public void setUseSharedQueue(boolean z) {
        if (this.isWebmSticker) {
            return;
        }
        this.useSharedQueue = z;
    }

    protected void finalize() throws Throwable {
        try {
            this.secondParentViews.clear();
            recycle();
        } finally {
            super.finalize();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.isRunning) {
            return;
        }
        if (this.parents.size() != 0 || this.ignoreNoParent) {
            this.isRunning = true;
            scheduleNextGetFrame();
            AndroidUtilities.runOnUIThread(this.mStartTask);
        }
    }

    public float getCurrentProgress() {
        if (this.metaData[4] == 0) {
            return 0.0f;
        }
        if (this.pendingSeekToUI >= 0) {
            return this.pendingSeekToUI / this.metaData[4];
        }
        int[] iArr = this.metaData;
        return iArr[3] / iArr[4];
    }

    public int getCurrentProgressMs() {
        if (this.pendingSeekToUI >= 0) {
            return (int) this.pendingSeekToUI;
        }
        int i = this.nextRenderingBitmapTime;
        return i != 0 ? i : this.renderingBitmapTime;
    }

    public int getProgressMs() {
        return this.metaData[3];
    }

    public int getDurationMs() {
        return this.metaData[4];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleNextGetFrame() {
        scheduleNextGetFrame(true, false);
    }

    private void scheduleNextGetFrame(boolean z, boolean z2) {
        Runnable runnable;
        Runnable runnable2;
        if (this.loadFrameTask == null || z2) {
            long jMin = 0;
            if (((!this.PRERENDER_FRAME || (this.nextRenderingBitmap2 != null && (this.scheduledForSeek || this.pendingSeekToUI < 0))) && this.nextRenderingBitmap != null) || !canLoadFrames() || this.destroyWhenDone) {
                return;
            }
            if (!this.isRunning) {
                boolean z3 = this.decodeSingleFrame;
                if (!z3) {
                    return;
                }
                if (z3 && this.singleFrameDecoded) {
                    return;
                }
            }
            if ((this.parents.size() != 0 || this.ignoreNoParent) && !this.generatingCache) {
                if (z && this.lastFrameDecodeTime != 0) {
                    int i = this.invalidateAfter;
                    jMin = Math.min(i, Math.max(0L, ((long) i) - (System.currentTimeMillis() - this.lastFrameDecodeTime)));
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
                        scheduledThreadPoolExecutor.schedule(runnable4, jMin, TimeUnit.MILLISECONDS);
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
                    dispatchQueue.postRunnable(runnable5, jMin);
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
    protected void onBoundsChange(android.graphics.Rect rect) {
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

    /* JADX WARN: Removed duplicated region for block: B:39:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0178  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawInternal(Canvas canvas, boolean z, long j, int i) {
        float fWidth;
        if (!canLoadFrames() || this.destroyWhenDone) {
            return;
        }
        long jCurrentTimeMillis = j == 0 ? System.currentTimeMillis() : j;
        RectF rectF = z ? this.dstRectBackground[i] : this.dstRect;
        Paint paint = z ? this.backgroundPaint[i] : getPaint();
        int i2 = 0;
        if (!z) {
            updateCurrentFrame(jCurrentTimeMillis, false);
        }
        Bitmap bitmap = this.renderingBitmap;
        if (bitmap == null) {
            return;
        }
        float f = this.scaleX;
        float fHeight = this.scaleY;
        if (z) {
            int width = bitmap.getWidth();
            int height = this.renderingBitmap.getHeight();
            int i3 = this.metaData[2];
            if (i3 == 90 || i3 == 270) {
                height = width;
                width = height;
            }
            fWidth = rectF.width() / width;
            fHeight = rectF.height() / height;
        } else {
            if (this.applyTransformation) {
                int width2 = bitmap.getWidth();
                int height2 = this.renderingBitmap.getHeight();
                int i4 = this.metaData[2];
                if (i4 == 90 || i4 == 270) {
                    height2 = width2;
                    width2 = height2;
                }
                rectF.set(getBounds());
                fWidth = rectF.width() / width2;
                this.scaleX = fWidth;
                fHeight = rectF.height() / height2;
                this.scaleY = fHeight;
                this.applyTransformation = false;
            }
            if (!hasRoundRadius()) {
                int i5 = z ? i + 1 : 0;
                if (this.USE_BITMAP_SHADER) {
                    BitmapShader[] bitmapShaderArr = this.renderingShader;
                    if (bitmapShaderArr[i5] == null) {
                        Bitmap bitmap2 = this.renderingBitmap;
                        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                        bitmapShaderArr[i5] = new BitmapShader(bitmap2, tileMode, tileMode);
                    }
                    paint.setShader(this.renderingShader[i5]);
                    Matrix[] matrixArr = this.shaderMatrix;
                    Matrix matrix = matrixArr[i5];
                    if (matrix == null) {
                        matrix = new Matrix();
                        matrixArr[i5] = matrix;
                    }
                    matrix.reset();
                    matrix.setTranslate(rectF.left, rectF.top);
                    int i6 = this.metaData[2];
                    if (i6 == 90) {
                        matrix.preRotate(90.0f);
                        matrix.preTranslate(0.0f, -rectF.width());
                    } else if (i6 == 180) {
                        matrix.preRotate(180.0f);
                        matrix.preTranslate(-rectF.width(), -rectF.height());
                    } else if (i6 == 270) {
                        matrix.preRotate(270.0f);
                        matrix.preTranslate(-rectF.height(), 0.0f);
                    }
                    matrix.preScale(f, fHeight);
                    this.renderingShader[i5].setLocalMatrix(matrix);
                }
                Path[] pathArr = this.roundPath;
                Path path = pathArr[i5];
                if (path == null) {
                    path = new Path();
                    pathArr[i5] = path;
                }
                if (this.invalidatePath || z) {
                    if (!z) {
                        this.invalidatePath = false;
                    }
                    while (true) {
                        int[] iArr = this.roundRadius;
                        if (i2 >= iArr.length) {
                            break;
                        }
                        float[] fArr = radii;
                        int i7 = i2 * 2;
                        int i8 = iArr[i2];
                        fArr[i7] = i8;
                        fArr[i7 + 1] = i8;
                        i2++;
                    }
                    path.rewind();
                    path.addRoundRect(z ? rectF : this.actualDrawRect, radii, Path.Direction.CW);
                }
                if (this.USE_BITMAP_SHADER) {
                    canvas.drawPath(path, paint);
                    return;
                }
                canvas.save();
                canvas.clipPath(path);
                drawBitmap(rectF, paint, canvas, f, fHeight);
                canvas.restore();
                return;
            }
            drawBitmap(rectF, paint, canvas, f, fHeight);
            return;
        }
        f = fWidth;
        if (!hasRoundRadius()) {
        }
    }

    private void drawBitmap(RectF rectF, Paint paint, Canvas canvas, float f, float f2) {
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
        canvas.drawBitmap(this.renderingBitmap, 0.0f, 0.0f, paint);
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
        return this.backgroundBitmap;
    }

    public Bitmap getAnimatedBitmap() {
        Bitmap bitmap = this.renderingBitmap;
        if (bitmap != null) {
            return bitmap;
        }
        Bitmap bitmap2 = this.nextRenderingBitmap;
        if (bitmap2 != null) {
            return bitmap2;
        }
        Bitmap bitmap3 = this.nextRenderingBitmap2;
        if (bitmap3 != null) {
            return bitmap3;
        }
        return null;
    }

    public void replaceAnimatedBitmap(Bitmap bitmap) {
        Bitmap bitmap2 = this.renderingBitmap;
        if (bitmap2 != null) {
            this.unusedBitmaps.add(bitmap2);
        }
        Bitmap bitmap3 = this.nextRenderingBitmap;
        if (bitmap3 != null) {
            this.unusedBitmaps.add(bitmap3);
        }
        Bitmap bitmap4 = this.nextRenderingBitmap2;
        if (bitmap4 != null) {
            this.unusedBitmaps.add(bitmap4);
        }
        this.renderingBitmap = bitmap;
        this.nextRenderingBitmap = null;
        this.nextRenderingBitmap2 = null;
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

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasRoundRadius() {
        int i = 0;
        while (true) {
            int[] iArr = this.roundRadius;
            if (i >= iArr.length) {
                return false;
            }
            if (iArr[i] != 0) {
                return true;
            }
            i++;
        }
    }

    public boolean hasBitmap() {
        if (canLoadFrames()) {
            return (this.renderingBitmap == null && this.nextRenderingBitmap == null) ? false : true;
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
            File file2 = this.path;
            long j3 = this.streamFileSize;
            int i3 = this.streamLoadingPriority;
            TLRPC.Document document2 = this.document;
            long j4 = this.pendingSeekToUI;
            int i4 = this.currentAccount;
            AnimatedFileDrawableStream animatedFileDrawableStream3 = this.stream;
            animatedFileDrawable = new AnimatedFileDrawable(file2, false, j3, i3, document2, null, null, j4, i4, animatedFileDrawableStream3 != null && animatedFileDrawableStream3.isPreview(), null);
        }
        int[] iArr = animatedFileDrawable.metaData;
        int[] iArr2 = this.metaData;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1];
        return animatedFileDrawable;
    }

    public static void getVideoInfo(String str, int[] iArr) {
        getVideoInfo(Build.VERSION.SDK_INT, str, iArr);
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
        if (this.nativePtr == 0) {
            return this.backgroundBitmap;
        }
        if (this.backgroundBitmap == null) {
            if (!this.unusedBitmaps.isEmpty()) {
                this.backgroundBitmap = (Bitmap) this.unusedBitmaps.remove(0);
            } else {
                float f = this.metaData[0];
                float f2 = this.scaleFactor;
                this.backgroundBitmap = Bitmap.createBitmap((int) (f * f2), (int) (r0[1] * f2), Bitmap.Config.ARGB_8888);
            }
        }
        long j = this.nativePtr;
        Bitmap bitmap = this.backgroundBitmap;
        getVideoFrame(j, bitmap, this.metaData, bitmap.getRowBytes(), false, this.startTime, this.endTime, z, this);
        return this.backgroundBitmap;
    }

    public void skipNextFrame(boolean z) {
        if (this.nativePtr == 0) {
            return;
        }
        getVideoFrame(this.nativePtr, null, this.metaData, 0, false, this.startTime, this.endTime, z, this);
    }

    public void setLimitFps(boolean z) {
        this.limitFps = z;
        if (z) {
            this.PRERENDER_FRAME = false;
        }
    }

    public ArrayList getParents() {
        return this.parents;
    }

    @Override // org.telegram.messenger.utils.BitmapsCache.Cacheable
    public void prepareForGenerateCache() {
        this.cacheGenerateNativePtr = createDecoder(this.path.getAbsolutePath(), this.metaData, this.currentAccount, this.streamFileSize, this.stream, false);
    }

    @Override // org.telegram.messenger.utils.BitmapsCache.Cacheable
    public void releaseForGenerateCache() {
        long j = this.cacheGenerateNativePtr;
        if (j != 0) {
            destroyDecoder(j);
        }
    }

    @Override // org.telegram.messenger.utils.BitmapsCache.Cacheable
    public int getNextFrame(Bitmap bitmap) {
        int i;
        if (this.cacheGenerateNativePtr == 0) {
            return -1;
        }
        Canvas canvas = new Canvas(bitmap);
        if (this.generatingCacheBitmap == null) {
            int[] iArr = this.metaData;
            this.generatingCacheBitmap = Bitmap.createBitmap(iArr[0], iArr[1], Bitmap.Config.ARGB_8888);
        }
        long j = this.cacheGenerateNativePtr;
        Bitmap bitmap2 = this.generatingCacheBitmap;
        getVideoFrame(j, bitmap2, this.metaData, bitmap2.getRowBytes(), false, this.startTime, this.endTime, true, this);
        long j2 = this.cacheGenerateTimestamp;
        if (j2 != 0 && ((i = this.metaData[3]) == 0 || j2 > i)) {
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
        long jCreateDecoder = createDecoder(this.path.getAbsolutePath(), this.metaData, this.currentAccount, this.streamFileSize, this.stream, false);
        if (jCreateDecoder == 0) {
            return bitmapCreateBitmap;
        }
        if (this.generatingCacheBitmap == null) {
            this.generatingCacheBitmap = Bitmap.createBitmap(Math.max(1, this.metaData[0]), Math.max(1, this.metaData[1]), Bitmap.Config.ARGB_8888);
        }
        Bitmap bitmap2 = this.generatingCacheBitmap;
        getVideoFrame(jCreateDecoder, bitmap2, this.metaData, bitmap2.getRowBytes(), false, this.startTime, this.endTime, true, this);
        destroyDecoder(jCreateDecoder);
        bitmapCreateBitmap.eraseColor(0);
        canvas.save();
        float width = this.renderingWidth / this.generatingCacheBitmap.getWidth();
        canvas.scale(width, width);
        canvas.drawBitmap(this.generatingCacheBitmap, 0.0f, 0.0f, (Paint) null);
        canvas.restore();
        return bitmapCreateBitmap;
    }

    @Keep
    public void forceDisable() {
        this.forceDisable = true;
    }

    public boolean canLoadFrames() {
        return this.precache ? this.bitmapsCache != null : (this.nativePtr == 0 && this.decoderCreated) ? false : true;
    }

    public void updateCurrentFrame(long j, boolean z) {
        if (this.isRunning) {
            Bitmap bitmap = this.renderingBitmap;
            if (bitmap == null && this.nextRenderingBitmap == null) {
                scheduleNextGetFrame();
                return;
            }
            if (this.nextRenderingBitmap != null && (bitmap == null || (Math.abs(j - this.lastFrameTime) >= this.invalidateAfter && !this.skipFrameUpdate && this.pendingSeekToUI < 0))) {
                this.unusedBitmaps.add(this.renderingBitmap);
                this.renderingBitmap = this.nextRenderingBitmap;
                this.renderingBitmapTime = this.nextRenderingBitmapTime;
                for (int i = 0; i < this.backgroundShader.length; i++) {
                    BitmapShader[] bitmapShaderArr = this.renderingShader;
                    BitmapShader[] bitmapShaderArr2 = this.nextRenderingShader;
                    bitmapShaderArr[i] = bitmapShaderArr2[i];
                    BitmapShader[] bitmapShaderArr3 = this.nextRenderingShader2;
                    bitmapShaderArr2[i] = bitmapShaderArr3[i];
                    bitmapShaderArr3[i] = null;
                }
                this.nextRenderingBitmap = this.nextRenderingBitmap2;
                this.nextRenderingBitmapTime = this.nextRenderingBitmapTime2;
                this.nextRenderingBitmap2 = null;
                this.nextRenderingBitmapTime2 = 0;
                this.lastFrameTime = j;
                scheduleNextGetFrame();
                return;
            }
            invalidateInternal();
            return;
        }
        if (this.isRunning || !this.decodeSingleFrame || Math.abs(j - this.lastFrameTime) < this.invalidateAfter || this.nextRenderingBitmap == null) {
            return;
        }
        this.unusedBitmaps.add(this.renderingBitmap);
        this.renderingBitmap = this.nextRenderingBitmap;
        this.renderingBitmapTime = this.nextRenderingBitmapTime;
        for (int i2 = 0; i2 < this.backgroundShader.length; i2++) {
            BitmapShader[] bitmapShaderArr4 = this.renderingShader;
            BitmapShader[] bitmapShaderArr5 = this.nextRenderingShader;
            bitmapShaderArr4[i2] = bitmapShaderArr5[i2];
            BitmapShader[] bitmapShaderArr6 = this.nextRenderingShader2;
            bitmapShaderArr5[i2] = bitmapShaderArr6[i2];
            bitmapShaderArr6[i2] = null;
        }
        this.nextRenderingBitmap = this.nextRenderingBitmap2;
        this.nextRenderingBitmapTime = this.nextRenderingBitmapTime2;
        this.nextRenderingBitmap2 = null;
        this.nextRenderingBitmapTime2 = 0;
        this.lastFrameTime = j;
        scheduleNextGetFrame();
    }

    public int getFps() {
        return this.metaData[5];
    }

    public int getRenderingWidth() {
        return this.renderingWidth;
    }

    public int getRenderingHeight() {
        return this.renderingHeight;
    }
}
