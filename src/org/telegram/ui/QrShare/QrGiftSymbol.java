package org.telegram.ui.QrShare;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import java.io.File;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Components.RLottieNative;

/* JADX INFO: loaded from: classes7.dex */
abstract class QrGiftSymbol {

    public static final class Loader implements NotificationCenter.NotificationCenterDelegate {
        private boolean cancelled;
        private final int currentAccount;
        private boolean done;
        private final Utilities.Callback<Bitmap> onPattern;
        private final TLRPC.Document pattern;
        private final int size;
        private boolean started;

        public Loader(int i, TLRPC.Document document, Object obj, int i2, Utilities.Callback<Bitmap> callback) {
            this.currentAccount = i;
            this.pattern = document;
            this.size = i2;
            this.onPattern = callback;
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.fileLoaded);
            if (!getFile().exists()) {
                FileLoader.getInstance(i).loadFile(document, obj, 3, 1);
            }
            checkFile();
        }

        private File getFile() {
            return FileLoader.getInstance(this.currentAccount).getPathToAttach(this.pattern, true);
        }

        public boolean isDone() {
            return this.done;
        }

        public void cancel() {
            this.cancelled = true;
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileLoaded);
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (i == NotificationCenter.fileLoaded) {
                checkFile();
            }
        }

        private void checkFile() {
            if (this.cancelled || this.started || !getFile().exists()) {
                return;
            }
            this.started = true;
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileLoaded);
            final File file = getFile();
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.QrShare.QrGiftSymbol$Loader$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$checkFile$1(file);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$checkFile$1(File file) {
            final Bitmap bitmapRender = QrGiftSymbol.render(file, this.size);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.QrShare.QrGiftSymbol$Loader$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$checkFile$0(bitmapRender);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$checkFile$0(Bitmap bitmap) {
            this.done = true;
            if (this.cancelled) {
                if (bitmap != null) {
                    bitmap.recycle();
                }
            } else if (bitmap != null) {
                this.onPattern.run(bitmap);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap render(File file, int i) {
        RLottieNative rLottieNativeCreateFromFile;
        try {
            rLottieNativeCreateFromFile = RLottieNative.createFromFile(file.getAbsolutePath());
            if (rLottieNativeCreateFromFile == null) {
                return null;
            }
            try {
                Bitmap.Config config = Bitmap.Config.ARGB_8888;
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i, config);
                rLottieNativeCreateFromFile.getFrame(0, bitmapCreateBitmap, true);
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(i, i, config);
                Paint paint = new Paint(2);
                paint.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
                new Canvas(bitmapCreateBitmap2).drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, paint);
                bitmapCreateBitmap.recycle();
                bitmapCreateBitmap2.setHasMipMap(true);
                rLottieNativeCreateFromFile.recycle();
                return bitmapCreateBitmap2;
            } catch (Throwable th) {
                th = th;
                try {
                    FileLog.m1040e(th);
                    if (rLottieNativeCreateFromFile != null) {
                        rLottieNativeCreateFromFile.recycle();
                    }
                    return null;
                } finally {
                    if (rLottieNativeCreateFromFile != null) {
                        rLottieNativeCreateFromFile.recycle();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            rLottieNativeCreateFromFile = null;
        }
    }
}
