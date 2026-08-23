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
import android.graphics.Shader;
import android.graphics.Xfermode;
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
    AnimatedFileNative cacheGenerateDecoder;
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
    private boolean isFrameOpaque;
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
    private boolean loop;
    public volatile AnimatedFileNative mDecoder;
    private final Runnable mStartTask;
    private final int[] metaData;
    private Bitmap nextRenderingBitmap;
    private Bitmap nextRenderingBitmap2;
    private int nextRenderingBitmapTime;
    private int nextRenderingBitmapTime2;
    private final BitmapShader[] nextRenderingShader;
    private final BitmapShader[] nextRenderingShader2;
    private View parentView;
    private final ArrayList<ImageReceiver> parents;
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
    private final ArrayList<View> secondParentViews;
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
    ArrayList<Bitmap> unusedBitmaps;
    private boolean useSharedQueue;
    private static float[] radii = new float[8];
    private static ScheduledThreadPoolExecutor executor = new ScheduledThreadPoolExecutor(8, new ThreadPoolExecutor.DiscardPolicy());
    private static final Xfermode SRC_XFERMODE = new PorterDuffXfermode(PorterDuff.Mode.SRC);

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.AnimatedFileDrawable$2 */
    public class RunnableC33532 implements Runnable {
        public RunnableC33532() {
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
        if (this.loadFrameTask == null && this.destroyWhenDone && this.mDecoder != null && !this.generatingCache) {
            this.mDecoder.recycle();
            this.mDecoder = null;
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
        int i = 0;
        while (true) {
            int size = this.unusedBitmaps.size();
            ArrayList<Bitmap> arrayList = this.unusedBitmaps;
            if (i < size) {
                Bitmap bitmap3 = arrayList.get(i);
                if (bitmap3 != null) {
                    bitmap3.recycle();
                }
                i++;
            } else {
                arrayList.clear();
                invalidateInternal();
                return;
            }
        }
    }

    public void invalidateInternal() {
        for (int i = 0; i < this.parents.size(); i++) {
            this.parents.get(i).invalidate();
        }
    }

    public void checkRepeat() {
        ArrayList<ImageReceiver> arrayList;
        if (this.ignoreNoParent) {
            start();
            return;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            int size = this.parents.size();
            arrayList = this.parents;
            if (i >= size) {
                break;
            }
            ImageReceiver imageReceiver = arrayList.get(i);
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
        if (arrayList.size() == i2) {
            stop();
        } else {
            start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adaptRenderingSize() {
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
                this.secondParentViews.get(i).invalidate();
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
        this(file, z, j, i, document, imageLocation, obj, j2, i2, z2, i3, i4, cacheOptions, document != null ? 1 : 0, true);
    }

    public AnimatedFileDrawable(File file, boolean z, long j, int i, TLRPC.Document document, ImageLocation imageLocation, Object obj, long j2, int i2, boolean z2, int i3, int i4, BitmapsCache.CacheOptions cacheOptions, int i5, boolean z3) {
        int[] iArr;
        this.USE_BITMAP_SHADER = Build.VERSION.SDK_INT < 29;
        this.PRERENDER_FRAME = true;
        this.invalidateAfter = 50;
        int[] iArr2 = new int[7];
        this.metaData = iArr2;
        this.pendingSeekTo = -1L;
        this.pendingSeekToUI = -1L;
        this.sync = new Object();
        this.actualDrawRect = new RectF();
        this.renderingShader = new BitmapShader[3];
        this.nextRenderingShader = new BitmapShader[3];
        this.nextRenderingShader2 = new BitmapShader[3];
        this.backgroundShader = new BitmapShader[3];
        this.unusedBitmaps = new ArrayList<>();
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
        this.secondParentViews = new ArrayList<>();
        this.parents = new ArrayList<>();
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
        this.uiRunnableGenerateCache = new RunnableC33532();
        this.uiRunnable = new Runnable() { // from class: org.telegram.ui.Components.AnimatedFileDrawable.3
            @Override // java.lang.Runnable
            public void run() {
                AnimatedFileDrawable animatedFileDrawable;
                AnimatedFileDrawable.this.loadFrameTask = null;
                AnimatedFileDrawable.this.chekDestroyDecoder();
                if (AnimatedFileDrawable.this.stream != null && AnimatedFileDrawable.this.pendingRemoveLoading) {
                    FileLoader.getInstance(AnimatedFileDrawable.this.currentAccount).removeLoadingVideo(AnimatedFileDrawable.this.stream.getDocument(), false, false);
                }
                int i6 = AnimatedFileDrawable.this.pendingRemoveLoadingFramesReset;
                AnimatedFileDrawable animatedFileDrawable2 = AnimatedFileDrawable.this;
                if (i6 <= 0) {
                    animatedFileDrawable2.pendingRemoveLoading = true;
                } else {
                    animatedFileDrawable2.pendingRemoveLoadingFramesReset--;
                }
                boolean z4 = AnimatedFileDrawable.this.forceDecodeAfterNextFrame;
                AnimatedFileDrawable animatedFileDrawable3 = AnimatedFileDrawable.this;
                if (!z4) {
                    animatedFileDrawable3.singleFrameDecoded = true;
                } else {
                    animatedFileDrawable3.forceDecodeAfterNextFrame = false;
                }
                long j3 = AnimatedFileDrawable.this.pendingSeekToUI;
                AnimatedFileDrawable animatedFileDrawable4 = AnimatedFileDrawable.this;
                if (j3 >= 0) {
                    animatedFileDrawable4.nextRenderingBitmap = animatedFileDrawable4.backgroundBitmap;
                    AnimatedFileDrawable animatedFileDrawable5 = AnimatedFileDrawable.this;
                    animatedFileDrawable5.nextRenderingBitmapTime = animatedFileDrawable5.backgroundBitmapTime;
                    AnimatedFileDrawable.this.nextRenderingBitmap2 = null;
                    AnimatedFileDrawable.this.nextRenderingBitmapTime2 = 0;
                    for (int i7 = 0; i7 < AnimatedFileDrawable.this.backgroundShader.length; i7++) {
                        AnimatedFileDrawable.this.nextRenderingShader[i7] = AnimatedFileDrawable.this.backgroundShader[i7];
                        AnimatedFileDrawable.this.nextRenderingShader2[i7] = null;
                    }
                } else {
                    boolean z5 = animatedFileDrawable4.PRERENDER_FRAME;
                    AnimatedFileDrawable animatedFileDrawable6 = AnimatedFileDrawable.this;
                    if (!z5) {
                        animatedFileDrawable6.nextRenderingBitmap = animatedFileDrawable6.backgroundBitmap;
                        AnimatedFileDrawable animatedFileDrawable7 = AnimatedFileDrawable.this;
                        animatedFileDrawable7.nextRenderingBitmapTime = animatedFileDrawable7.backgroundBitmapTime;
                        for (int i8 = 0; i8 < AnimatedFileDrawable.this.backgroundShader.length; i8++) {
                            AnimatedFileDrawable.this.nextRenderingShader[i8] = AnimatedFileDrawable.this.backgroundShader[i8];
                        }
                    } else if (animatedFileDrawable6.nextRenderingBitmap == null && AnimatedFileDrawable.this.nextRenderingBitmap2 == null) {
                        AnimatedFileDrawable animatedFileDrawable8 = AnimatedFileDrawable.this;
                        animatedFileDrawable8.nextRenderingBitmap = animatedFileDrawable8.backgroundBitmap;
                        AnimatedFileDrawable animatedFileDrawable9 = AnimatedFileDrawable.this;
                        animatedFileDrawable9.nextRenderingBitmapTime = animatedFileDrawable9.backgroundBitmapTime;
                        for (int i9 = 0; i9 < AnimatedFileDrawable.this.backgroundShader.length; i9++) {
                            AnimatedFileDrawable.this.nextRenderingShader[i9] = AnimatedFileDrawable.this.backgroundShader[i9];
                        }
                    } else {
                        Bitmap bitmap = AnimatedFileDrawable.this.nextRenderingBitmap;
                        AnimatedFileDrawable animatedFileDrawable10 = AnimatedFileDrawable.this;
                        if (bitmap == null) {
                            animatedFileDrawable10.nextRenderingBitmap = animatedFileDrawable10.nextRenderingBitmap2;
                            AnimatedFileDrawable animatedFileDrawable11 = AnimatedFileDrawable.this;
                            animatedFileDrawable11.nextRenderingBitmapTime = animatedFileDrawable11.nextRenderingBitmapTime2;
                            AnimatedFileDrawable animatedFileDrawable12 = AnimatedFileDrawable.this;
                            animatedFileDrawable12.nextRenderingBitmap2 = animatedFileDrawable12.backgroundBitmap;
                            AnimatedFileDrawable animatedFileDrawable13 = AnimatedFileDrawable.this;
                            animatedFileDrawable13.nextRenderingBitmapTime2 = animatedFileDrawable13.backgroundBitmapTime;
                            for (int i10 = 0; i10 < AnimatedFileDrawable.this.backgroundShader.length; i10++) {
                                AnimatedFileDrawable.this.nextRenderingShader[i10] = AnimatedFileDrawable.this.nextRenderingShader2[i10];
                                AnimatedFileDrawable.this.nextRenderingShader2[i10] = AnimatedFileDrawable.this.backgroundShader[i10];
                            }
                        } else {
                            animatedFileDrawable10.nextRenderingBitmap2 = animatedFileDrawable10.backgroundBitmap;
                            AnimatedFileDrawable animatedFileDrawable14 = AnimatedFileDrawable.this;
                            animatedFileDrawable14.nextRenderingBitmapTime2 = animatedFileDrawable14.backgroundBitmapTime;
                            for (int i11 = 0; i11 < AnimatedFileDrawable.this.backgroundShader.length; i11++) {
                                AnimatedFileDrawable.this.nextRenderingShader2[i11] = AnimatedFileDrawable.this.backgroundShader[i11];
                            }
                        }
                    }
                }
                AnimatedFileDrawable animatedFileDrawable15 = AnimatedFileDrawable.this;
                animatedFileDrawable15.isFrameOpaque = animatedFileDrawable15.metaData[6] == 1;
                AnimatedFileDrawable.this.backgroundBitmap = null;
                int i12 = 0;
                while (true) {
                    int length = AnimatedFileDrawable.this.backgroundShader.length;
                    animatedFileDrawable = AnimatedFileDrawable.this;
                    if (i12 >= length) {
                        break;
                    }
                    animatedFileDrawable.backgroundShader[i12] = null;
                    i12++;
                }
                if (animatedFileDrawable.isRestarted) {
                    AnimatedFileDrawable.this.isRestarted = false;
                    AnimatedFileDrawable animatedFileDrawable16 = AnimatedFileDrawable.this;
                    animatedFileDrawable16.repeatCount++;
                    animatedFileDrawable16.checkRepeat();
                }
                if (AnimatedFileDrawable.this.metaData[3] < AnimatedFileDrawable.this.lastTimeStamp) {
                    AnimatedFileDrawable animatedFileDrawable17 = AnimatedFileDrawable.this;
                    animatedFileDrawable17.lastTimeStamp = animatedFileDrawable17.startTime > 0.0f ? (int) (AnimatedFileDrawable.this.startTime * 1000.0f) : 0;
                }
                if (AnimatedFileDrawable.this.metaData[3] - AnimatedFileDrawable.this.lastTimeStamp != 0) {
                    AnimatedFileDrawable animatedFileDrawable18 = AnimatedFileDrawable.this;
                    animatedFileDrawable18.invalidateAfter = animatedFileDrawable18.metaData[3] - AnimatedFileDrawable.this.lastTimeStamp;
                    if (AnimatedFileDrawable.this.limitFps && AnimatedFileDrawable.this.invalidateAfter < 32) {
                        AnimatedFileDrawable.this.invalidateAfter = 32;
                    }
                }
                if (AnimatedFileDrawable.this.pendingSeekToUI >= 0 && AnimatedFileDrawable.this.pendingSeekTo == -1) {
                    AnimatedFileDrawable.this.pendingSeekToUI = -1L;
                    AnimatedFileDrawable.this.invalidateAfter = 0;
                }
                AnimatedFileDrawable animatedFileDrawable19 = AnimatedFileDrawable.this;
                animatedFileDrawable19.lastTimeStamp = animatedFileDrawable19.metaData[3];
                if (!AnimatedFileDrawable.this.secondParentViews.isEmpty()) {
                    int size = AnimatedFileDrawable.this.secondParentViews.size();
                    for (int i13 = 0; i13 < size; i13++) {
                        ((View) AnimatedFileDrawable.this.secondParentViews.get(i13)).invalidate();
                    }
                }
                AnimatedFileDrawable.this.invalidateInternal();
                AnimatedFileDrawable.this.scheduleNextGetFrame();
            }
        };
        this.decoderTryCount = 0;
        this.MAX_TRIES = 15;
        this.loadFrameRunnable = new Runnable() { // from class: org.telegram.ui.Components.AnimatedFileDrawable.4
            /* JADX WARN: Removed duplicated region for block: B:22:0x007f  */
            /* JADX WARN: Removed duplicated region for block: B:38:0x00ce  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void run() {
                boolean z4;
                if (!AnimatedFileDrawable.this.isRecycled) {
                    boolean z5 = AnimatedFileDrawable.this.forceDisable;
                    AnimatedFileDrawable animatedFileDrawable = AnimatedFileDrawable.this;
                    if (z5) {
                        animatedFileDrawable.ptrFail = true;
                        if (AnimatedFileDrawable.this.mDecoder != null) {
                            AnimatedFileDrawable.this.mDecoder.recycle();
                            AnimatedFileDrawable.this.mDecoder = null;
                        }
                        AnimatedFileDrawable.this.updateScaleFactor();
                        AnimatedFileDrawable.this.decoderCreated = true;
                        return;
                    }
                    boolean z6 = animatedFileDrawable.decoderCreated;
                    boolean z7 = false;
                    if (!z6 && AnimatedFileDrawable.this.mDecoder == null) {
                        AnimatedFileDrawable animatedFileDrawable2 = AnimatedFileDrawable.this;
                        animatedFileDrawable2.mDecoder = AnimatedFileNative.createDecoderFrom(animatedFileDrawable2.path.getAbsolutePath(), AnimatedFileDrawable.this.metaData, AnimatedFileDrawable.this.currentAccount, AnimatedFileDrawable.this.streamFileSize, AnimatedFileDrawable.this.stream, false);
                        AnimatedFileDrawable animatedFileDrawable3 = AnimatedFileDrawable.this;
                        if (animatedFileDrawable3.mDecoder == null) {
                            AnimatedFileDrawable animatedFileDrawable4 = AnimatedFileDrawable.this;
                            boolean z8 = !animatedFileDrawable4.isWebmSticker || animatedFileDrawable4.decoderTryCount > 15;
                            animatedFileDrawable3.ptrFail = z8;
                            if (AnimatedFileDrawable.this.mDecoder != null && (AnimatedFileDrawable.this.metaData[0] > 3840 || AnimatedFileDrawable.this.metaData[1] > 3840)) {
                                AnimatedFileDrawable.this.mDecoder.recycle();
                                AnimatedFileDrawable.this.mDecoder = null;
                            }
                            AnimatedFileDrawable.this.adaptRenderingSize();
                            AnimatedFileDrawable.this.updateScaleFactor();
                            AnimatedFileDrawable animatedFileDrawable5 = AnimatedFileDrawable.this;
                            if (animatedFileDrawable5.isWebmSticker && animatedFileDrawable5.mDecoder == null) {
                                AnimatedFileDrawable animatedFileDrawable6 = AnimatedFileDrawable.this;
                                int i6 = animatedFileDrawable6.decoderTryCount;
                                animatedFileDrawable6.decoderTryCount = i6 + 1;
                                if (i6 <= 15) {
                                    z4 = false;
                                }
                                animatedFileDrawable5.decoderCreated = z4;
                            } else {
                                z4 = true;
                                animatedFileDrawable5.decoderCreated = z4;
                            }
                        }
                    }
                    try {
                        AnimatedFileDrawable animatedFileDrawable7 = AnimatedFileDrawable.this;
                        if (animatedFileDrawable7.bitmapsCache != null) {
                            if (animatedFileDrawable7.backgroundBitmap == null) {
                                boolean zIsEmpty = AnimatedFileDrawable.this.unusedBitmaps.isEmpty();
                                AnimatedFileDrawable animatedFileDrawable8 = AnimatedFileDrawable.this;
                                if (!zIsEmpty) {
                                    animatedFileDrawable8.backgroundBitmap = animatedFileDrawable8.unusedBitmaps.remove(0);
                                } else {
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
                            AnimatedFileDrawable animatedFileDrawable13 = AnimatedFileDrawable.this;
                            if (frame == -1) {
                                AndroidUtilities.runOnUIThread(animatedFileDrawable13.uiRunnableNoFrame);
                                return;
                            } else {
                                AndroidUtilities.runOnUIThread(animatedFileDrawable13.uiRunnable);
                                return;
                            }
                        }
                        if (animatedFileDrawable7.mDecoder == null && AnimatedFileDrawable.this.metaData[0] != 0 && AnimatedFileDrawable.this.metaData[1] != 0) {
                            AndroidUtilities.runOnUIThread(AnimatedFileDrawable.this.uiRunnableNoFrame);
                            return;
                        }
                        if (AnimatedFileDrawable.this.backgroundBitmap == null && AnimatedFileDrawable.this.metaData[0] > 0 && AnimatedFileDrawable.this.metaData[1] > 0) {
                            try {
                                boolean zIsEmpty2 = AnimatedFileDrawable.this.unusedBitmaps.isEmpty();
                                AnimatedFileDrawable animatedFileDrawable14 = AnimatedFileDrawable.this;
                                if (!zIsEmpty2) {
                                    animatedFileDrawable14.backgroundBitmap = animatedFileDrawable14.unusedBitmaps.remove(0);
                                } else {
                                    animatedFileDrawable14.backgroundBitmap = Bitmap.createBitmap((int) (animatedFileDrawable14.metaData[0] * AnimatedFileDrawable.this.scaleFactor), (int) (AnimatedFileDrawable.this.metaData[1] * AnimatedFileDrawable.this.scaleFactor), Bitmap.Config.ARGB_8888);
                                }
                            } catch (Throwable th) {
                                FileLog.m898e(th);
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
                            long j3 = AnimatedFileDrawable.this.pendingSeekTo;
                            synchronized (AnimatedFileDrawable.this.sync) {
                                AnimatedFileDrawable.this.pendingSeekTo = -1L;
                            }
                            if (AnimatedFileDrawable.this.stream != null) {
                                AnimatedFileDrawable.this.stream.reset();
                            }
                            AnimatedFileDrawable.this.mDecoder.seekToMs(j3, true, AnimatedFileDrawable.this);
                            z7 = true;
                        }
                        if (AnimatedFileDrawable.this.backgroundBitmap != null) {
                            AnimatedFileDrawable.this.lastFrameDecodeTime = System.currentTimeMillis();
                            int videoFrame = AnimatedFileDrawable.this.mDecoder.getVideoFrame(AnimatedFileDrawable.this.backgroundBitmap, false, AnimatedFileDrawable.this.startTime, AnimatedFileDrawable.this.endTime, AnimatedFileDrawable.this.loop, AnimatedFileDrawable.this);
                            AnimatedFileDrawable animatedFileDrawable15 = AnimatedFileDrawable.this;
                            if (videoFrame == 0) {
                                AndroidUtilities.runOnUIThread(animatedFileDrawable15.uiRunnableNoFrame);
                                return;
                            }
                            if (animatedFileDrawable15.metaData[3] < AnimatedFileDrawable.this.lastTimeStamp) {
                                AnimatedFileDrawable.this.isRestarted = true;
                            }
                            if (z7) {
                                AnimatedFileDrawable animatedFileDrawable16 = AnimatedFileDrawable.this;
                                animatedFileDrawable16.lastTimeStamp = animatedFileDrawable16.metaData[3];
                            }
                            AnimatedFileDrawable animatedFileDrawable17 = AnimatedFileDrawable.this;
                            animatedFileDrawable17.backgroundBitmapTime = animatedFileDrawable17.metaData[3];
                        }
                    } catch (Throwable th2) {
                        FileLog.m898e(th2);
                    }
                }
                AndroidUtilities.runOnUIThread(AnimatedFileDrawable.this.uiRunnable);
            }
        };
        this.mStartTask = new Runnable() { // from class: org.telegram.ui.Components.AnimatedFileDrawable$$ExternalSyntheticLambda1
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
        this.loop = z3;
        this.precache = cacheOptions != null && i3 > 0 && i4 > 0;
        this.document = document;
        getPaint().setFlags(3);
        if (j != 0 && (document != null || imageLocation != null)) {
            this.stream = new AnimatedFileDrawableStream(document, imageLocation, obj, i2, z2, i, i5);
        }
        if (!z || this.precache) {
            iArr = iArr2;
        } else {
            iArr = iArr2;
            this.mDecoder = AnimatedFileNative.createDecoderFrom(file.getAbsolutePath(), iArr2, this.currentAccount, this.streamFileSize, this.stream, z2);
            this.ptrFail = this.mDecoder == null && (!this.isWebmSticker || this.decoderTryCount > 15);
            if (this.mDecoder != null && (iArr[0] > 3840 || iArr[1] > 3840)) {
                this.mDecoder.recycle();
                this.mDecoder = null;
            }
            adaptRenderingSize();
            updateScaleFactor();
            this.decoderCreated = true;
        }
        if (this.precache) {
            this.mDecoder = AnimatedFileNative.createDecoderFrom(file.getAbsolutePath(), iArr, this.currentAccount, this.streamFileSize, this.stream, z2);
            this.ptrFail = this.mDecoder == null && (!this.isWebmSticker || this.decoderTryCount > 15);
            if (this.mDecoder != null && (iArr[0] > 3840 || iArr[1] > 3840)) {
                this.mDecoder.recycle();
                this.mDecoder = null;
            } else {
                this.bitmapsCache = new BitmapsCache(file, this, cacheOptions, this.renderingWidth, this.renderingHeight, !this.limitFps);
            }
        }
        if (j2 != 0) {
            seekTo(j2, false);
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
        if (this.decoderCreated && this.mDecoder != null) {
            AnimatedFileDrawableStream animatedFileDrawableStream = this.stream;
            if (animatedFileDrawableStream != null) {
                animatedFileDrawableStream.cancel(false);
                this.stream.reset();
            }
            if (!z) {
                this.mDecoder.seekToMs(j, z, this);
            }
            int[] iArr = this.metaData;
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr[0], iArr[1], Bitmap.Config.ARGB_8888);
            AnimatedFileNative animatedFileNative = this.mDecoder;
            if (z) {
                videoFrame = animatedFileNative.getFrameAtTime(j, bitmapCreateBitmap, this);
            } else {
                videoFrame = animatedFileNative.getVideoFrame(bitmapCreateBitmap, true, 0.0f, 0.0f, true, this);
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
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.AnimatedFileDrawable$$ExternalSyntheticLambda0
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
        this.mDecoder.seekToMs(j, true, this);
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
            if (this.mDecoder != null) {
                this.mDecoder.recycle();
                this.mDecoder = null;
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

    /* JADX WARN: Removed duplicated region for block: B:47:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0191  */
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
            Xfermode xfermode = (this.isFrameOpaque && paint.getAlpha() == 255) ? SRC_XFERMODE : null;
            if (paint.getXfermode() != xfermode) {
                paint.setXfermode(xfermode);
            }
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

    public static void getVideoInfo(String str, int[] iArr, long j) {
        AnimatedFileNative.getVideoInfo(str, iArr, j);
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
        Bitmap bitmap = this.backgroundBitmap;
        if (animatedFileNative == null) {
            return bitmap;
        }
        if (bitmap == null) {
            if (!this.unusedBitmaps.isEmpty()) {
                this.backgroundBitmap = this.unusedBitmaps.remove(0);
            } else {
                float f = this.metaData[0];
                float f2 = this.scaleFactor;
                this.backgroundBitmap = Bitmap.createBitmap((int) (f * f2), (int) (r0[1] * f2), Bitmap.Config.ARGB_8888);
            }
        }
        this.mDecoder.getVideoFrame(this.backgroundBitmap, false, this.startTime, this.endTime, z, this);
        return this.backgroundBitmap;
    }

    public void skipNextFrame(boolean z) {
        if (this.mDecoder == null) {
            return;
        }
        this.mDecoder.getVideoFrame(null, false, this.startTime, this.endTime, z, this);
    }

    public void setLimitFps(boolean z) {
        this.limitFps = z;
        if (z) {
            this.PRERENDER_FRAME = false;
        }
    }

    public ArrayList<ImageReceiver> getParents() {
        return this.parents;
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
        this.cacheGenerateDecoder.getVideoFrame(this.generatingCacheBitmap, false, this.startTime, this.endTime, this.loop, this);
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
        animatedFileNativeCreateDecoderFrom.getVideoFrame(this.generatingCacheBitmap, false, this.startTime, this.endTime, true, this);
        animatedFileNativeCreateDecoderFrom.recycle();
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
        return this.precache ? this.bitmapsCache != null : (this.mDecoder == null && this.decoderCreated) ? false : true;
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
