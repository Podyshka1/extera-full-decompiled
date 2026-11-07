package org.telegram.ui.Components;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.NotificationCenter;
import org.telegram.tgnet.TLRPC;
import org.telegram.utils.camera.roundvideo.RoundVideoSession;

/* JADX INFO: loaded from: classes7.dex */
final class TelegramRoundVideoUpload implements RoundVideoSession.OutputListener, NotificationCenter.NotificationCenterDelegate {
    private final int currentAccount;
    private final boolean encrypted;
    private final Map<Long, Generation> generations = new HashMap();
    private boolean released;

    public static final class UploadInfo {
        final TLRPC.InputEncryptedFile encryptedFile;
        final File file;
        final TLRPC.InputFile inputFile;
        final byte[] iv;
        final byte[] key;
        final long size;

        public UploadInfo(File file, long j, TLRPC.InputFile inputFile, TLRPC.InputEncryptedFile inputEncryptedFile, byte[] bArr, byte[] bArr2) {
            this.file = file;
            this.size = j;
            this.inputFile = inputFile;
            this.encryptedFile = inputEncryptedFile;
            this.key = bArr;
            this.iv = bArr2;
        }
    }

    public static final class Generation {
        long availableSize;
        TLRPC.InputEncryptedFile encryptedFile;
        final File file;
        long finalSize;
        final long id;
        TLRPC.InputFile inputFile;
        boolean invalidated;
        byte[] iv;
        byte[] key;
        boolean uploadStarted;

        public Generation(long j, File file) {
            this.id = j;
            this.file = file;
        }
    }

    public TelegramRoundVideoUpload(int i, boolean z) {
        this.currentAccount = i;
        this.encrypted = z;
        NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.fileUploaded);
    }

    @Override // org.telegram.utils.camera.roundvideo.RoundVideoSession.OutputListener
    public synchronized void onOutputStarted(long j, File file) {
        if (this.released) {
            return;
        }
        this.generations.put(Long.valueOf(j), new Generation(j, file));
    }

    @Override // org.telegram.utils.camera.roundvideo.RoundVideoSession.OutputListener
    public synchronized void onBytesAvailable(long j, File file, long j2, long j3) {
        Generation generation = this.generations.get(Long.valueOf(j));
        if (!this.released && generation != null && !generation.invalidated) {
            startUpload(generation);
            generation.availableSize = Math.max(generation.availableSize, j2 + j3);
            FileLoader.getInstance(this.currentAccount).checkUploadNewDataAvailable(file.getAbsolutePath(), this.encrypted, generation.availableSize, 0L);
        }
    }

    @Override // org.telegram.utils.camera.roundvideo.RoundVideoSession.OutputListener
    public synchronized void onOutputInvalidated(long j, RoundVideoSession.OutputInvalidationReason outputInvalidationReason) {
        Generation generationRemove = this.generations.remove(Long.valueOf(j));
        if (generationRemove == null) {
            return;
        }
        generationRemove.invalidated = true;
        if (generationRemove.uploadStarted) {
            FileLoader.getInstance(this.currentAccount).cancelFileUpload(generationRemove.file.getAbsolutePath(), this.encrypted);
        }
    }

    @Override // org.telegram.utils.camera.roundvideo.RoundVideoSession.OutputListener
    public synchronized void onOutputCompleted(long j, File file, long j2, long j3, boolean z) {
        Generation generation = this.generations.get(Long.valueOf(j));
        if (!this.released && generation != null && !generation.invalidated) {
            startUpload(generation);
            generation.availableSize = Math.max(generation.availableSize, j2);
            generation.finalSize = j2;
            FileLoader.getInstance(this.currentAccount).checkUploadNewDataAvailable(file.getAbsolutePath(), this.encrypted, generation.availableSize, j2);
        }
    }

    @Override // org.telegram.utils.camera.roundvideo.RoundVideoSession.OutputListener
    public synchronized void onOutputError(long j, Exception exc) {
        onOutputInvalidated(j, RoundVideoSession.OutputInvalidationReason.ERROR);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0039, code lost:
    
        r0.inputFile = (org.telegram.tgnet.TLRPC.InputFile) r6[1];
        r0.encryptedFile = (org.telegram.tgnet.TLRPC.InputEncryptedFile) r6[2];
        r0.key = (byte[]) r6[3];
        r0.iv = (byte[]) r6[4];
        r0.finalSize = java.lang.Math.max(r0.finalSize, ((java.lang.Long) r6[5]).longValue());
     */
    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void didReceivedNotification(int i, int i2, Object... objArr) {
        if (!this.released && i == NotificationCenter.fileUploaded && objArr.length >= 6) {
            String str = (String) objArr[0];
            Iterator<Generation> it = this.generations.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Generation next = it.next();
                if (!next.invalidated && next.file.getAbsolutePath().equals(str)) {
                    break;
                }
            }
        }
    }

    public synchronized UploadInfo getUploadInfo(long j, File file) {
        Generation generation = this.generations.get(Long.valueOf(j));
        if (generation == null || generation.invalidated) {
            return new UploadInfo(file, file.length(), null, null, null, null);
        }
        return new UploadInfo(file, Math.max(generation.finalSize, file.length()), generation.inputFile, generation.encryptedFile, generation.key, generation.iv);
    }

    public synchronized void release(boolean z) {
        try {
            if (this.released) {
                return;
            }
            this.released = true;
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileUploaded);
            if (z) {
                Iterator<Generation> it = this.generations.values().iterator();
                while (it.hasNext()) {
                    Generation next = it.next();
                    if (next.uploadStarted && !next.invalidated) {
                        FileLoader.getInstance(this.currentAccount).cancelFileUpload(next.file.getAbsolutePath(), this.encrypted);
                    }
                    it.remove();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void startUpload(Generation generation) {
        if (generation.uploadStarted) {
            return;
        }
        generation.uploadStarted = true;
        FileLoader.getInstance(this.currentAccount).uploadFile(generation.file.getAbsolutePath(), this.encrypted, false, 1L, 33554432, false);
    }
}
