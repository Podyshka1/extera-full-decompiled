package org.telegram.messenger.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.ToIntFunction;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DispatchQueuePoolBackground;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.utils.BitmapsCache;
import org.telegram.ui.Components.RLottieDrawable;

/* JADX INFO: loaded from: classes.dex */
public class BitmapsCache {
    private static ThreadPoolExecutor bitmapCompressExecutor;
    static volatile boolean cleanupScheduled;
    private static boolean mkdir;
    private static CacheGeneratorSharedTools sharedTools;
    private static int taskCounter;
    byte[] bufferTmp;
    volatile boolean cacheCreated;
    RandomAccessFile cachedFile;
    public volatile boolean checked;
    int compressQuality;
    boolean error;
    final File file;
    volatile boolean fileExist;
    String fileName;
    private int frameIndex;

    /* JADX INFO: renamed from: h */
    int f831h;
    BitmapFactory.Options options;
    volatile boolean recycled;
    private final Cacheable source;
    private int tryCount;
    final boolean useSharedBuffers;

    /* JADX INFO: renamed from: w */
    int f832w;
    static final ConcurrentHashMap<Thread, byte[]> sharedBuffers = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: N */
    private static final int f830N = Utilities.clamp(Runtime.getRuntime().availableProcessors() - 2, 6, 1);
    public final AtomicInteger framesProcessed = new AtomicInteger(0);
    ArrayList<FrameOffset> frameOffsets = new ArrayList<>();
    private final Object mutex = new Object();
    public AtomicBoolean cancelled = new AtomicBoolean(false);
    private Runnable cleanupSharedBuffers = new Runnable() { // from class: org.telegram.messenger.utils.BitmapsCache.1
        @Override // java.lang.Runnable
        public void run() {
            for (Thread thread : BitmapsCache.sharedBuffers.keySet()) {
                if (!thread.isAlive()) {
                    BitmapsCache.sharedBuffers.remove(thread);
                }
            }
            if (!BitmapsCache.sharedBuffers.isEmpty()) {
                AndroidUtilities.runOnUIThread(BitmapsCache.this.cleanupSharedBuffers, 5000L);
            } else {
                BitmapsCache.cleanupScheduled = false;
            }
        }
    };

    public static class CacheOptions {
        public int compressQuality = 100;
        public boolean fallback = false;
        public boolean firstFrame;
    }

    public interface Cacheable {
        int getNextFrame(Bitmap bitmap);

        void prepareForGenerateCache();

        void releaseForGenerateCache();
    }

    public static class Metadata {
        public int frame;
    }

    public void cancelCreate() {
    }

    public BitmapsCache(File file, Cacheable cacheable, CacheOptions cacheOptions, int i, int i2, boolean z) {
        this.source = cacheable;
        this.f832w = i;
        this.f831h = i2;
        this.compressQuality = cacheOptions.compressQuality;
        this.fileName = file.getName();
        if (bitmapCompressExecutor == null) {
            int i3 = f830N;
            bitmapCompressExecutor = new ThreadPoolExecutor(i3, i3, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        }
        File file2 = new File(FileLoader.checkDirectory(4), "acache");
        if (!mkdir) {
            file2.mkdir();
            mkdir = true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.fileName);
        sb.append("_");
        sb.append(i);
        sb.append("_");
        sb.append(i2);
        sb.append(z ? "_nolimit" : " ");
        sb.append(".pcache2");
        File file3 = new File(file2, sb.toString());
        this.file = file3;
        this.useSharedBuffers = i < AndroidUtilities.dp(60.0f) && i2 < AndroidUtilities.dp(60.0f);
        if (SharedConfig.getDevicePerformanceClass() >= 2) {
            this.fileExist = file3.exists();
            if (this.fileExist) {
                try {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "r");
                    try {
                        this.cacheCreated = randomAccessFile.readBoolean();
                        if (this.cacheCreated && this.frameOffsets.isEmpty()) {
                            randomAccessFile.seek(randomAccessFile.readInt());
                            int i4 = randomAccessFile.readInt();
                            fillFrames(randomAccessFile, i4 > 10000 ? 0 : i4);
                            if (this.frameOffsets.isEmpty()) {
                                this.cacheCreated = false;
                                this.fileExist = false;
                                this.checked = true;
                                file3.delete();
                            } else {
                                closeCachedFile();
                                this.cachedFile = new RandomAccessFile(file3, "r");
                            }
                        }
                        randomAccessFile.close();
                    } finally {
                    }
                } catch (Throwable th) {
                    FileLog.m898e(th);
                    this.file.delete();
                    this.fileExist = false;
                    this.checked = true;
                }
            }
            this.checked = true;
            return;
        }
        this.fileExist = false;
        this.cacheCreated = false;
    }

    public static void incrementTaskCounter() {
        taskCounter++;
    }

    public static void decrementTaskCounter() {
        int i = taskCounter - 1;
        taskCounter = i;
        if (i <= 0) {
            taskCounter = 0;
            RLottieDrawable.lottieCacheGenerateQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.utils.BitmapsCache$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    BitmapsCache.m6315$r8$lambda$75FwZaXfPh7AZ0gZ3tKl5Rqbyg();
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$75FwZaXfPh-7AZ0gZ3tKl5Rqbyg, reason: not valid java name */
    public static /* synthetic */ void m6315$r8$lambda$75FwZaXfPh7AZ0gZ3tKl5Rqbyg() {
        CacheGeneratorSharedTools cacheGeneratorSharedTools = sharedTools;
        if (cacheGeneratorSharedTools != null) {
            cacheGeneratorSharedTools.release();
            sharedTools = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x01ac, code lost:
    
        if (org.telegram.messenger.BuildVars.DEBUG_VERSION == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01ae, code lost:
    
        org.telegram.messenger.FileLog.m895d("cancelled cache generation");
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01b3, code lost:
    
        r2.set(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01b8, code lost:
    
        if (r14 >= org.telegram.messenger.utils.BitmapsCache.f830N) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01ba, code lost:
    
        r0 = r9[r14];
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01bc, code lost:
    
        if (r0 == null) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01be, code lost:
    
        r0.await();
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01c2, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01c3, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01d0, code lost:
    
        r7.close();
        r16.source.releaseForGenerateCache();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void createCache() {
        int i;
        RandomAccessFile randomAccessFile;
        final Bitmap[] bitmapArr;
        try {
            try {
                i = 0;
                if (this.file.exists()) {
                    try {
                        randomAccessFile = new RandomAccessFile(this.file, "r");
                    } catch (Throwable unused) {
                        randomAccessFile = null;
                    }
                    try {
                        this.cacheCreated = randomAccessFile.readBoolean();
                    } catch (Throwable unused2) {
                        try {
                            this.file.delete();
                        } catch (Throwable unused3) {
                        }
                        if (this.cachedFile != randomAccessFile && randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                            } catch (Throwable unused4) {
                            }
                        }
                    }
                    if (this.cacheCreated) {
                        this.frameOffsets.clear();
                        randomAccessFile.seek(randomAccessFile.readInt());
                        int i2 = randomAccessFile.readInt();
                        if (i2 > 10000) {
                            i2 = 0;
                        }
                        if (i2 > 0) {
                            fillFrames(randomAccessFile, i2);
                            randomAccessFile.seek(0L);
                            if (this.cachedFile != randomAccessFile) {
                                closeCachedFile();
                            }
                            this.cachedFile = randomAccessFile;
                            this.fileExist = true;
                            this.checked = true;
                            if (this.cachedFile != randomAccessFile) {
                                try {
                                    randomAccessFile.close();
                                } catch (Throwable unused5) {
                                }
                            }
                            return;
                        }
                        this.fileExist = false;
                        this.cacheCreated = false;
                        this.checked = true;
                    }
                    if (!this.cacheCreated) {
                        this.file.delete();
                    }
                    if (this.cachedFile != randomAccessFile) {
                        randomAccessFile.close();
                    }
                }
                final RandomAccessFile randomAccessFile2 = new RandomAccessFile(this.file, "rw");
                if (sharedTools == null) {
                    sharedTools = new CacheGeneratorSharedTools();
                }
                sharedTools.allocate(this.f831h, this.f832w);
                bitmapArr = sharedTools.bitmap;
                final ImmutableByteArrayOutputStream[] immutableByteArrayOutputStreamArr = sharedTools.byteArrayOutputStream;
                final CountDownLatch[] countDownLatchArr = new CountDownLatch[f830N];
                final ArrayList arrayList = new ArrayList();
                randomAccessFile2.writeBoolean(false);
                randomAccessFile2.writeInt(0);
                final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                this.source.prepareForGenerateCache();
                final int i3 = 0;
                final int i4 = 0;
                while (true) {
                    CountDownLatch countDownLatch = countDownLatchArr[i3];
                    if (countDownLatch != null) {
                        try {
                            countDownLatch.await();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                    if (this.cancelled.get() || atomicBoolean.get()) {
                        break;
                    }
                    if (this.source.getNextFrame(bitmapArr[i3]) == 1) {
                        countDownLatchArr[i3] = new CountDownLatch(1);
                        bitmapCompressExecutor.execute(new Runnable() { // from class: org.telegram.messenger.utils.BitmapsCache$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$createCache$1(atomicBoolean, bitmapArr, i3, immutableByteArrayOutputStreamArr, i4, randomAccessFile2, arrayList, countDownLatchArr);
                            }
                        });
                        i3++;
                        i4++;
                        if (i3 >= f830N) {
                            i3 = 0;
                        }
                        this.framesProcessed.set(i4);
                    } else {
                        for (int i5 = 0; i5 < f830N; i5++) {
                            CountDownLatch countDownLatch2 = countDownLatchArr[i5];
                            if (countDownLatch2 != null) {
                                try {
                                    countDownLatch2.await();
                                } catch (InterruptedException e2) {
                                    e2.printStackTrace();
                                }
                            }
                        }
                        int length = (int) randomAccessFile2.length();
                        Collections.sort(arrayList, Comparator.comparingInt(new ToIntFunction() { // from class: org.telegram.messenger.utils.BitmapsCache$$ExternalSyntheticLambda2
                            @Override // java.util.function.ToIntFunction
                            public final int applyAsInt(Object obj) {
                                return ((BitmapsCache.FrameOffset) obj).index;
                            }
                        }));
                        immutableByteArrayOutputStreamArr[0].reset();
                        int size = arrayList.size();
                        immutableByteArrayOutputStreamArr[0].writeInt(size);
                        for (int i6 = 0; i6 < arrayList.size(); i6++) {
                            immutableByteArrayOutputStreamArr[0].writeInt(((FrameOffset) arrayList.get(i6)).frameOffset);
                            immutableByteArrayOutputStreamArr[0].writeInt(((FrameOffset) arrayList.get(i6)).frameSize);
                        }
                        randomAccessFile2.write(immutableByteArrayOutputStreamArr[0].buf, 0, (size * 8) + 4);
                        immutableByteArrayOutputStreamArr[0].reset();
                        randomAccessFile2.seek(0L);
                        randomAccessFile2.writeBoolean(true);
                        randomAccessFile2.writeInt(length);
                        atomicBoolean.set(true);
                        randomAccessFile2.close();
                        this.frameOffsets.clear();
                        this.frameOffsets.addAll(arrayList);
                        closeCachedFile();
                        this.cachedFile = new RandomAccessFile(this.file, "r");
                        this.cacheCreated = true;
                        this.fileExist = true;
                        this.checked = true;
                    }
                }
            } finally {
                this.source.releaseForGenerateCache();
            }
        } catch (FileNotFoundException e3) {
            e3.printStackTrace();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        return;
        Bitmap bitmap = bitmapArr[i];
        if (bitmap != null) {
            try {
                bitmap.recycle();
            } catch (Exception unused6) {
            }
        }
        i++;
        i++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createCache$1(AtomicBoolean atomicBoolean, Bitmap[] bitmapArr, int i, ImmutableByteArrayOutputStream[] immutableByteArrayOutputStreamArr, int i2, RandomAccessFile randomAccessFile, ArrayList arrayList, CountDownLatch[] countDownLatchArr) {
        if (this.cancelled.get() || atomicBoolean.get()) {
            return;
        }
        Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.WEBP;
        if (Build.VERSION.SDK_INT <= 28) {
            compressFormat = Bitmap.CompressFormat.PNG;
        }
        bitmapArr[i].compress(compressFormat, this.compressQuality, immutableByteArrayOutputStreamArr[i]);
        int i3 = immutableByteArrayOutputStreamArr[i].count;
        try {
            synchronized (this.mutex) {
                FrameOffset frameOffset = new FrameOffset(i2);
                frameOffset.frameOffset = (int) randomAccessFile.length();
                arrayList.add(frameOffset);
                randomAccessFile.write(immutableByteArrayOutputStreamArr[i].buf, 0, i3);
                frameOffset.frameSize = i3;
                immutableByteArrayOutputStreamArr[i].reset();
            }
        } catch (IOException e) {
            e.printStackTrace();
            try {
                randomAccessFile.close();
            } catch (Exception unused) {
            } catch (Throwable th) {
                atomicBoolean.set(true);
                throw th;
            }
            atomicBoolean.set(true);
        }
        countDownLatchArr[i].countDown();
    }

    private void fillFrames(RandomAccessFile randomAccessFile, int i) throws IOException {
        if (i == 0) {
            return;
        }
        byte[] bArr = new byte[i * 8];
        randomAccessFile.read(bArr);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        for (int i2 = 0; i2 < i; i2++) {
            FrameOffset frameOffset = new FrameOffset(i2);
            frameOffset.frameOffset = byteBufferWrap.getInt();
            frameOffset.frameSize = byteBufferWrap.getInt();
            this.frameOffsets.add(frameOffset);
        }
    }

    public int getFrame(Bitmap bitmap, Metadata metadata) {
        int frame = getFrame(this.frameIndex, bitmap);
        metadata.frame = this.frameIndex;
        if (this.cacheCreated && !this.frameOffsets.isEmpty()) {
            int i = this.frameIndex + 1;
            this.frameIndex = i;
            if (i >= this.frameOffsets.size()) {
                this.frameIndex = 0;
            }
        }
        return frame;
    }

    public int getFrame(int i, Bitmap bitmap) {
        RandomAccessFile randomAccessFile;
        if (this.error) {
            return -1;
        }
        RandomAccessFile randomAccessFile2 = null;
        try {
            if (!this.cacheCreated && !this.fileExist) {
                return -1;
            }
            if (!this.cacheCreated || (randomAccessFile = this.cachedFile) == null) {
                randomAccessFile = new RandomAccessFile(this.file, "r");
                try {
                    this.cacheCreated = randomAccessFile.readBoolean();
                    if (this.cacheCreated && this.frameOffsets.isEmpty()) {
                        randomAccessFile.seek(randomAccessFile.readInt());
                        fillFrames(randomAccessFile, randomAccessFile.readInt());
                    }
                    if (this.frameOffsets.size() == 0) {
                        this.cacheCreated = false;
                        this.checked = true;
                    }
                    if (!this.cacheCreated) {
                        randomAccessFile.close();
                        return -1;
                    }
                } catch (FileNotFoundException unused) {
                    randomAccessFile2 = randomAccessFile;
                } catch (Throwable th) {
                    th = th;
                    randomAccessFile2 = randomAccessFile;
                    FileLog.m898e(th);
                    int i2 = this.tryCount + 1;
                    this.tryCount = i2;
                    if (i2 > 10) {
                        this.error = true;
                    }
                    if (this.error) {
                        try {
                            randomAccessFile2.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    return -1;
                }
            }
            if (this.frameOffsets.size() == 0) {
                return -1;
            }
            FrameOffset frameOffset = this.frameOffsets.get(Utilities.clamp(i, this.frameOffsets.size() - 1, 0));
            randomAccessFile.seek(frameOffset.frameOffset);
            byte[] buffer = getBuffer(frameOffset);
            randomAccessFile.readFully(buffer, 0, frameOffset.frameSize);
            if (!this.recycled) {
                if (this.cachedFile != randomAccessFile) {
                    closeCachedFile();
                }
                this.cachedFile = randomAccessFile;
            } else {
                this.cachedFile = null;
                randomAccessFile.close();
            }
            if (this.options == null) {
                this.options = new BitmapFactory.Options();
            }
            BitmapFactory.Options options = this.options;
            options.inBitmap = bitmap;
            BitmapFactory.decodeByteArray(buffer, 0, frameOffset.frameSize, options);
            this.options.inBitmap = null;
            return 0;
        } catch (FileNotFoundException unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
        if (this.error && randomAccessFile2 != null) {
            randomAccessFile2.close();
        }
        return -1;
    }

    private void closeCachedFile() {
        RandomAccessFile randomAccessFile = this.cachedFile;
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private byte[] getBuffer(FrameOffset frameOffset) {
        byte[] bArr;
        boolean z = this.useSharedBuffers && Thread.currentThread().getName().startsWith(DispatchQueuePoolBackground.THREAD_PREFIX);
        if (z) {
            bArr = sharedBuffers.get(Thread.currentThread());
        } else {
            bArr = this.bufferTmp;
        }
        if (bArr != null && bArr.length >= frameOffset.frameSize) {
            return bArr;
        }
        byte[] bArr2 = new byte[(int) (frameOffset.frameSize * 1.3f)];
        if (z) {
            sharedBuffers.put(Thread.currentThread(), bArr2);
            if (!cleanupScheduled) {
                cleanupScheduled = true;
                AndroidUtilities.runOnUIThread(this.cleanupSharedBuffers, 5000L);
            }
            return bArr2;
        }
        this.bufferTmp = bArr2;
        return bArr2;
    }

    public boolean needGenCache() {
        return (this.cacheCreated && this.fileExist) ? false : true;
    }

    public void recycle() {
        RandomAccessFile randomAccessFile = this.cachedFile;
        if (randomAccessFile != null) {
            try {
                randomAccessFile.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.cachedFile = null;
        }
        this.recycled = true;
    }

    public int getFrameCount() {
        return this.frameOffsets.size();
    }

    public class FrameOffset {
        int frameOffset;
        int frameSize;
        final int index;

        private FrameOffset(int i) {
            this.index = i;
        }
    }

    public static class CacheGeneratorSharedTools {
        private Bitmap[] bitmap;
        ImmutableByteArrayOutputStream[] byteArrayOutputStream;
        private int lastSize;

        private CacheGeneratorSharedTools() {
            this.byteArrayOutputStream = new ImmutableByteArrayOutputStream[BitmapsCache.f830N];
            this.bitmap = new Bitmap[BitmapsCache.f830N];
        }

        public void allocate(int i, int i2) {
            int i3 = (i2 << 16) + i;
            boolean z = this.lastSize != i3;
            this.lastSize = i3;
            for (int i4 = 0; i4 < BitmapsCache.f830N; i4++) {
                if (z || this.bitmap[i4] == null) {
                    final Bitmap bitmap = this.bitmap[i4];
                    if (bitmap != null) {
                        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.utils.BitmapsCache$CacheGeneratorSharedTools$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                bitmap.recycle();
                            }
                        });
                    }
                    this.bitmap[i4] = Bitmap.createBitmap(i2, i, Bitmap.Config.ARGB_8888);
                }
                ImmutableByteArrayOutputStream[] immutableByteArrayOutputStreamArr = this.byteArrayOutputStream;
                if (immutableByteArrayOutputStreamArr[i4] == null) {
                    immutableByteArrayOutputStreamArr[i4] = new ImmutableByteArrayOutputStream(i2 * i * 2);
                }
            }
        }

        public void release() {
            final ArrayList arrayList = null;
            for (int i = 0; i < BitmapsCache.f830N; i++) {
                if (this.bitmap[i] != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(this.bitmap[i]);
                }
                this.bitmap[i] = null;
                this.byteArrayOutputStream[i] = null;
            }
            if (arrayList.isEmpty()) {
                return;
            }
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.utils.BitmapsCache$CacheGeneratorSharedTools$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    BitmapsCache.CacheGeneratorSharedTools.$r8$lambda$92tmsO31cfirt8xhSYMxR5CoewY(arrayList);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$92tmsO31cfirt8xhSYMxR5CoewY(ArrayList arrayList) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((Bitmap) obj).recycle();
            }
        }
    }
}
