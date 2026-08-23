package org.telegram.p029ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.RLottieDrawable;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes3.dex */
public class DownloadProgressIcon extends View implements NotificationCenter.NotificationCenterDelegate {
    private int currentAccount;
    int currentColor;
    ArrayList currentListeners;
    float currentProgress;
    RLottieDrawable downloadCompleteDrawable;
    ImageReceiver downloadCompleteImageReceiver;
    RLottieDrawable downloadDrawable;
    ImageReceiver downloadImageReceiver;
    Paint paint;
    Paint paint2;
    float progress;
    float progressDt;
    boolean showCompletedIcon;
    private boolean wasDrawn;

    public DownloadProgressIcon(int i, Context context) {
        super(context);
        this.paint = new Paint(1);
        this.paint2 = new Paint(1);
        this.currentListeners = new ArrayList();
        this.downloadImageReceiver = new ImageReceiver(this);
        ImageReceiver imageReceiver = new ImageReceiver(this);
        this.downloadCompleteImageReceiver = imageReceiver;
        this.currentAccount = i;
        this.downloadImageReceiver.ignoreNotifications = true;
        imageReceiver.ignoreNotifications = true;
        this.downloadDrawable = new RLottieDrawable(C2888R.raw.download_progress, "download_progress", AndroidUtilities.m1124dp(28.0f), AndroidUtilities.m1124dp(28.0f), true, null);
        this.downloadCompleteDrawable = new RLottieDrawable(C2888R.raw.download_finish, "download_finish", AndroidUtilities.m1124dp(28.0f), AndroidUtilities.m1124dp(28.0f), true, null);
        RLottieDrawable rLottieDrawable = this.downloadDrawable;
        int i2 = Theme.key_actionBarDefaultIcon;
        rLottieDrawable.setLayerColor("Shape Layer 3.**", Theme.getColor(i2));
        this.downloadDrawable.setLayerColor("Arrow 4.**", Theme.getColor(i2));
        this.downloadCompleteDrawable.setLayerColor("Shape Layer 8.**", Theme.getColor(i2));
        this.downloadCompleteDrawable.setLayerColor("Arrow 8.**", Theme.getColor(i2));
        this.downloadImageReceiver.setImageBitmap(this.downloadDrawable);
        this.downloadCompleteImageReceiver.setImageBitmap(this.downloadCompleteDrawable);
        this.downloadImageReceiver.setAutoRepeat(1);
        this.downloadDrawable.setAutoRepeat(1);
        this.downloadDrawable.start();
    }

    public void updateColors() {
        RLottieDrawable rLottieDrawable = this.downloadDrawable;
        int i = Theme.key_actionBarDefaultIcon;
        int color = Theme.getColor(i);
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        rLottieDrawable.setColorFilter(new PorterDuffColorFilter(color, mode));
        this.downloadCompleteDrawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), mode));
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), TLObject.FLAG_30));
        int iM1124dp = AndroidUtilities.m1124dp(15.0f);
        float f = iM1124dp;
        int i3 = iM1124dp * 2;
        this.downloadImageReceiver.setImageCoords(f, f, getMeasuredWidth() - i3, getMeasuredHeight() - i3);
        this.downloadCompleteImageReceiver.setImageCoords(f, f, getMeasuredWidth() - i3, getMeasuredHeight() - i3);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getAlpha() == 0.0f) {
            return;
        }
        int i = this.currentColor;
        int i2 = Theme.key_actionBarDefaultIcon;
        if (i != Theme.getColor(i2)) {
            this.currentColor = Theme.getColor(i2);
            this.paint.setColor(Theme.getColor(i2));
            this.paint2.setColor(Theme.getColor(i2));
            ImageReceiver imageReceiver = this.downloadImageReceiver;
            int color = Theme.getColor(i2);
            PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
            imageReceiver.setColorFilter(new PorterDuffColorFilter(color, mode));
            this.downloadCompleteImageReceiver.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), mode));
            this.paint2.setAlpha(100);
        }
        float f = this.currentProgress;
        float f2 = this.progress;
        if (f != f2) {
            float f3 = this.progressDt;
            float f4 = f + f3;
            this.currentProgress = f4;
            if (f3 > 0.0f && f4 > f2) {
                this.currentProgress = f2;
            } else if (f3 < 0.0f && f4 < f2) {
                this.currentProgress = f2;
            } else {
                invalidate();
            }
        }
        int measuredHeight = (getMeasuredHeight() / 2) + AndroidUtilities.m1124dp(8.0f);
        float fM1124dp = AndroidUtilities.m1124dp(1.0f);
        float fM1124dp2 = AndroidUtilities.m1124dp(16.0f);
        RectF rectF = AndroidUtilities.rectTmp;
        float f5 = measuredHeight;
        float f6 = f5 - fM1124dp;
        float f7 = f5 + fM1124dp;
        rectF.set(fM1124dp2, f6, getMeasuredWidth() - fM1124dp2, f7);
        canvas.drawRoundRect(rectF, fM1124dp, fM1124dp, this.paint2);
        rectF.set(fM1124dp2, f6, ((getMeasuredWidth() - (2.0f * fM1124dp2)) * this.currentProgress) + fM1124dp2, f7);
        canvas.drawRoundRect(rectF, fM1124dp, fM1124dp, this.paint);
        canvas.save();
        canvas.clipRect(0.0f, 0.0f, getMeasuredWidth(), f6);
        if (this.progress != 1.0f) {
            this.showCompletedIcon = false;
        }
        if (this.showCompletedIcon) {
            this.downloadCompleteImageReceiver.draw(canvas);
        } else {
            this.downloadImageReceiver.draw(canvas);
        }
        if (this.progress == 1.0f && !this.showCompletedIcon && this.downloadDrawable.getCurrentFrame() == 0) {
            this.downloadCompleteDrawable.setCurrentFrame(0, false);
            this.downloadCompleteDrawable.start();
            this.showCompletedIcon = true;
        }
        canvas.restore();
        if (getAlpha() != 0.0f) {
            this.wasDrawn = true;
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateDownloadingListeners();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.onDownloadingFilesChanged);
        this.downloadImageReceiver.onAttachedToWindow();
        this.downloadCompleteImageReceiver.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        detachCurrentListeners();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.onDownloadingFilesChanged);
        this.downloadImageReceiver.onDetachedFromWindow();
        this.downloadCompleteImageReceiver.onDetachedFromWindow();
    }

    private void updateDownloadingListeners() {
        DownloadController downloadController = DownloadController.getInstance(this.currentAccount);
        HashMap map = new HashMap();
        for (int i = 0; i < this.currentListeners.size(); i++) {
            map.put(((ProgressObserver) this.currentListeners.get(i)).fileName, (ProgressObserver) this.currentListeners.get(i));
            DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver((DownloadController.FileDownloadProgressListener) this.currentListeners.get(i));
        }
        this.currentListeners.clear();
        for (int i2 = 0; i2 < downloadController.downloadingFiles.size(); i2++) {
            String fileName = downloadController.downloadingFiles.get(i2).getFileName();
            if (FileLoader.getInstance(this.currentAccount).isLoadingFile(fileName)) {
                ProgressObserver progressObserver = (ProgressObserver) map.get(fileName);
                if (progressObserver == null) {
                    progressObserver = new ProgressObserver(fileName);
                }
                DownloadController.getInstance(this.currentAccount).addLoadingFileObserver(fileName, progressObserver);
                this.currentListeners.add(progressObserver);
            }
        }
        if (this.currentListeners.size() != 0 || this.wasDrawn) {
            return;
        }
        if (DownloadController.getInstance(this.currentAccount).hasUnviewedDownloads()) {
            this.progress = 1.0f;
            this.currentProgress = 1.0f;
            this.showCompletedIcon = true;
        } else {
            this.progress = 0.0f;
            this.currentProgress = 0.0f;
            this.showCompletedIcon = false;
        }
    }

    public void updateProgress() {
        MessagesStorage.getInstance(this.currentAccount);
        long j = 0;
        long j2 = 0;
        for (int i = 0; i < this.currentListeners.size(); i++) {
            j += ((ProgressObserver) this.currentListeners.get(i)).total;
            j2 += ((ProgressObserver) this.currentListeners.get(i)).downloaded;
        }
        if (j == 0) {
            this.progress = 1.0f;
        } else {
            this.progress = j2 / j;
        }
        float f = this.progress;
        if (f > 1.0f) {
            this.progress = 1.0f;
        } else if (f < 0.0f) {
            this.progress = 0.0f;
        }
        this.progressDt = ((this.progress - this.currentProgress) * 16.0f) / 150.0f;
        invalidate();
    }

    private void detachCurrentListeners() {
        for (int i = 0; i < this.currentListeners.size(); i++) {
            DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver((DownloadController.FileDownloadProgressListener) this.currentListeners.get(i));
        }
        this.currentListeners.clear();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.onDownloadingFilesChanged) {
            updateDownloadingListeners();
            updateProgress();
        }
    }

    private class ProgressObserver implements DownloadController.FileDownloadProgressListener {
        long downloaded;
        private final String fileName;
        long total;

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public int getObserverTag() {
            return 0;
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onFailedDownload(String str, boolean z) {
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressUpload(String str, long j, long j2, boolean z) {
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onSuccessDownload(String str) {
        }

        private ProgressObserver(String str) {
            this.fileName = str;
        }

        @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
        public void onProgressDownload(String str, long j, long j2) {
            this.downloaded = j;
            this.total = j2;
            DownloadProgressIcon.this.updateProgress();
        }
    }

    @Override // android.view.View
    public void setAlpha(float f) {
        if (f == 0.0f) {
            this.wasDrawn = false;
        }
        super.setAlpha(f);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != 0) {
            this.wasDrawn = false;
        }
        super.setVisibility(i);
    }
}
