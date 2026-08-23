package org.telegram.messenger;

import java.util.concurrent.CountDownLatch;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes.dex */
public class AnimatedFileDrawableStream implements FileLoadOperationStream {
    private volatile boolean canceled;
    private volatile CountDownLatch countDownLatch;
    private int currentAccount;
    private int debugCanceledCount;
    private boolean debugReportSend;
    private TLRPC.Document document;
    private String finishedFilePath;
    private boolean finishedLoadingFile;
    private long lastOffset;
    private FileLoadOperation loadOperation;
    private int loadingPriority;
    private ImageLocation location;
    private Object parentObject;
    private boolean preview;
    private final Object sync = new Object();
    private boolean waitingForLoad;

    public AnimatedFileDrawableStream(TLRPC.Document document, ImageLocation imageLocation, Object obj, int i, boolean z, int i2, int i3) {
        this.document = document;
        this.location = imageLocation;
        this.parentObject = obj;
        this.currentAccount = i;
        this.preview = z;
        this.loadingPriority = i2;
        this.loadOperation = FileLoader.getInstance(i).loadStreamFile(this, this.document, this.location, this.parentObject, 0L, this.preview, i2, i3);
    }

    public boolean isFinishedLoadingFile() {
        return this.finishedLoadingFile;
    }

    public String getFinishedFilePath() {
        return this.finishedFilePath;
    }

    public int read(int i, int i2) {
        CountDownLatch countDownLatch;
        long j;
        long j2;
        boolean z;
        long j3;
        CountDownLatch countDownLatch2;
        synchronized (this.sync) {
            try {
                if (this.canceled) {
                    int i3 = this.debugCanceledCount + 1;
                    this.debugCanceledCount = i3;
                    if (!this.debugReportSend && i3 > 200) {
                        this.debugReportSend = true;
                        FileLog.m898e(new RuntimeException("infinity stream reading!!!"));
                    }
                    return 0;
                }
                if (i2 == 0) {
                    return 0;
                }
                long j4 = 0;
                long j5 = 0;
                while (j5 == j4) {
                    try {
                        countDownLatch = new CountDownLatch(1);
                        this.countDownLatch = countDownLatch;
                        j = i;
                        long[] downloadedLengthFromOffset = this.loadOperation.getDownloadedLengthFromOffset(j, i2);
                        j2 = downloadedLengthFromOffset[0];
                        try {
                            long j6 = downloadedLengthFromOffset[1];
                            boolean z2 = j6 > j4;
                            z = j6 < j4;
                            if (!this.finishedLoadingFile && z2) {
                                this.finishedLoadingFile = true;
                                this.finishedFilePath = this.loadOperation.getCacheFileFinal().getAbsolutePath();
                            }
                        } catch (Exception e) {
                            e = e;
                            j5 = j2;
                        }
                    } catch (Exception e2) {
                        e = e2;
                    }
                    if (j2 == j4) {
                        synchronized (this.sync) {
                            try {
                                if (this.canceled) {
                                    if (this.countDownLatch == countDownLatch) {
                                        this.countDownLatch = null;
                                    }
                                    cancelLoadingInternal();
                                    return 0;
                                }
                                if (this.loadOperation.isPaused() || z || this.lastOffset != j || this.preview) {
                                    j3 = j4;
                                    countDownLatch2 = null;
                                    FileLoadOperation fileLoadOperationLoadStreamFile = FileLoader.getInstance(this.currentAccount).loadStreamFile(this, this.document, this.location, this.parentObject, j, this.preview, this.loadingPriority);
                                    FileLoadOperation fileLoadOperation = this.loadOperation;
                                    if (fileLoadOperation != fileLoadOperationLoadStreamFile) {
                                        fileLoadOperation.removeStreamListener(this);
                                        this.loadOperation = fileLoadOperationLoadStreamFile;
                                    }
                                    this.lastOffset = j + j2;
                                } else {
                                    j3 = j4;
                                    countDownLatch2 = null;
                                }
                                synchronized (this.sync) {
                                    try {
                                        if (this.canceled) {
                                            if (this.countDownLatch == countDownLatch) {
                                                this.countDownLatch = countDownLatch2;
                                            }
                                            cancelLoadingInternal();
                                            return 0;
                                        }
                                    } finally {
                                    }
                                }
                                if (!this.preview) {
                                    FileLoader.getInstance(this.currentAccount).setLoadingVideo(this.document, false, true);
                                }
                                if (countDownLatch.getCount() != j3) {
                                    this.waitingForLoad = true;
                                    countDownLatch.await();
                                    this.waitingForLoad = false;
                                }
                            } finally {
                            }
                            e = e;
                            j5 = j2;
                            FileLog.m898e(e);
                            return (int) j5;
                        }
                    }
                    j3 = j4;
                    countDownLatch2 = null;
                    if (this.countDownLatch == countDownLatch) {
                        this.countDownLatch = countDownLatch2;
                    }
                    j5 = j2;
                    j4 = j3;
                }
                this.lastOffset = ((long) i) + j5;
                return (int) j5;
            } finally {
            }
        }
    }

    public void cancel() {
        cancel(true);
    }

    public void cancel(boolean z) {
        if (this.canceled) {
            return;
        }
        synchronized (this.sync) {
            try {
                CountDownLatch countDownLatch = this.countDownLatch;
                if (countDownLatch != null) {
                    countDownLatch.countDown();
                    if (z && !this.canceled && !this.preview) {
                        FileLoader.getInstance(this.currentAccount).removeLoadingVideo(this.document, false, true);
                    }
                }
                Object obj = this.parentObject;
                if (obj instanceof MessageObject) {
                    MessageObject messageObject = (MessageObject) obj;
                    if (DownloadController.getInstance(messageObject.currentAccount).isDownloading(messageObject.getId())) {
                        z = false;
                    }
                }
                if (z) {
                    cancelLoadingInternal();
                }
                this.canceled = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void cancelLoadingInternal() {
        FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.document);
        if (this.location != null) {
            FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.location.location, "mp4");
        }
    }

    public void reset() {
        synchronized (this.sync) {
            this.canceled = false;
        }
    }

    public TLRPC.Document getDocument() {
        return this.document;
    }

    public ImageLocation getLocation() {
        return this.location;
    }

    public Object getParentObject() {
        return this.document;
    }

    public boolean isPreview() {
        return this.preview;
    }

    public int getCurrentAccount() {
        return this.currentAccount;
    }

    public boolean isWaitingForLoad() {
        return this.waitingForLoad;
    }

    @Override // org.telegram.messenger.FileLoadOperationStream
    public void newDataAvailable() {
        CountDownLatch countDownLatch = this.countDownLatch;
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    public boolean isCanceled() {
        return this.canceled;
    }
}
