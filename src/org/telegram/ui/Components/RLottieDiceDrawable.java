package org.telegram.ui.Components;

import android.graphics.Bitmap;
import android.text.TextUtils;
import java.io.File;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.DispatchQueuePoolBackground;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.utils.BitmapsCache;

/* JADX INFO: loaded from: classes7.dex */
public class RLottieDiceDrawable extends RLottieDrawable {
    protected boolean destroyAfterLoading;
    private int diceSwitchFramesCount;
    protected boolean loadingInBackground;
    private int secondFramesCount;
    protected boolean secondLoadingInBackground;
    protected volatile RLottieNative secondNativePtr;
    protected volatile boolean setLastFrame;

    @Override // org.telegram.ui.Components.RLottieDrawable
    public boolean isHeavyDrawable() {
        return false;
    }

    public RLottieDiceDrawable(String str, int i, int i2) {
        String res;
        super(i, i2);
        this.diceSwitchFramesCount = -1;
        this.isDice = 1;
        if ("🎲".equals(str)) {
            res = AndroidUtilities.readRes(C2665R.raw.diceloop);
            this.diceSwitchFramesCount = 60;
        } else {
            res = "🎯".equals(str) ? AndroidUtilities.readRes(C2665R.raw.dartloop) : null;
        }
        getPaint().setFlags(2);
        if (TextUtils.isEmpty(res)) {
            return;
        }
        this.nativePtr = RLottieNative.createFromRawJson(res, this.metaData);
    }

    public boolean hasBaseDice() {
        return this.nativePtr != null || this.loadingInBackground;
    }

    public boolean setDiceNumber(File file, boolean z) {
        if (this.secondNativePtr == null && !this.secondLoadingInBackground) {
            final String res = AndroidUtilities.readRes(file);
            if (TextUtils.isEmpty(res)) {
                return false;
            }
            if (z && bothRenderingBitmapsAreNull() && this.loadFrameTask == null) {
                this.isDice = 2;
                this.setLastFrame = true;
            }
            this.secondLoadingInBackground = true;
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.RLottieDiceDrawable$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setDiceNumber$2(res);
                }
            });
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setDiceNumber$2(String str) {
        if (this.destroyAfterLoading) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.RLottieDiceDrawable$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setDiceNumber$0();
                }
            });
            return;
        }
        this.secondNativePtr = RLottieNative.createFromRawJson(str);
        final int frameCount = this.secondNativePtr != null ? this.secondNativePtr.getFrameCount() : 0;
        if (this.secondNativePtr != null) {
            this.secondNativePtr.getFps();
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.RLottieDiceDrawable$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setDiceNumber$1(frameCount);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setDiceNumber$0() {
        this.secondLoadingInBackground = false;
        if (this.loadingInBackground || !this.destroyAfterLoading) {
            return;
        }
        recycle(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setDiceNumber$1(int i) {
        this.secondLoadingInBackground = false;
        if (this.destroyAfterLoading) {
            recycle(true);
            return;
        }
        this.secondFramesCount = i;
        scheduleNextGetFrame();
        invalidateInternal();
    }

    public boolean isDiceRevealed() {
        int i = this.isDice;
        if (i != 1 && i == 2) {
            if (this.setLastFrame) {
                return true;
            }
            float progress = getProgress();
            if (this.secondNativePtr != null) {
                progress = this.currentFrame / this.secondFramesCount;
            }
            if (progress > 0.95f) {
                return true;
            }
        }
        return false;
    }

    public boolean setBaseDice(File file) {
        if (this.nativePtr == null && !this.loadingInBackground) {
            final String res = AndroidUtilities.readRes(file);
            if (TextUtils.isEmpty(res)) {
                return false;
            }
            this.loadingInBackground = true;
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.RLottieDiceDrawable$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setBaseDice$4(res);
                }
            });
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setBaseDice$4(String str) {
        this.nativePtr = RLottieNative.createFromRawJson(str, this.metaData);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.RLottieDiceDrawable$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setBaseDice$3();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setBaseDice$3() {
        this.loadingInBackground = false;
        if (!this.secondLoadingInBackground && this.destroyAfterLoading) {
            recycle(true);
            return;
        }
        checkChoreographer();
        scheduleNextGetFrame();
        invalidateInternal();
    }

    @Override // org.telegram.ui.Components.RLottieDrawable
    public int beforeLoadFrameImpl() {
        if (this.isRecycled) {
            return 3;
        }
        return (this.nativePtr == null || (this.isDice == 2 && this.secondNativePtr == null)) ? 2 : 1;
    }

    @Override // org.telegram.ui.Components.RLottieDrawable
    public int loadFrameRunnableImpl(Bitmap bitmap, boolean z) {
        RLottieNative rLottieNative;
        int i = this.isDice;
        if (i != 1 && i == 2) {
            rLottieNative = this.secondNativePtr;
            if (this.setLastFrame) {
                this.currentFrame = this.secondFramesCount - 1;
            }
        } else {
            rLottieNative = this.nativePtr;
        }
        return rLottieNative.getFrame(this.currentFrame, bitmap, z) < 0 ? 2 : 1;
    }

    @Override // org.telegram.ui.Components.RLottieDrawable
    public void afterLoadFrameImpl() {
        int i = this.isDice;
        if (i != 1) {
            if (i == 2) {
                int i2 = this.currentFrame;
                if (i2 + 1 < this.secondFramesCount) {
                    this.currentFrame = i2 + 1;
                    return;
                } else {
                    this.nextFrameIsLast = true;
                    this.autoRepeatPlayCount++;
                    return;
                }
            }
            return;
        }
        int i3 = this.currentFrame;
        int i4 = i3 + 1;
        int i5 = this.diceSwitchFramesCount;
        if (i5 == -1) {
            i5 = this.metaData[0];
        }
        if (i4 < i5) {
            this.currentFrame = i3 + 1;
            return;
        }
        this.currentFrame = 0;
        this.nextFrameIsLast = false;
        if (this.secondNativePtr != null) {
            this.isDice = 2;
        }
        if (this.resetVibrationAfterRestart) {
            this.vibrationPattern = null;
            this.resetVibrationAfterRestart = false;
        }
    }

    @Override // org.telegram.ui.Components.RLottieDrawable
    public void recycle(boolean z) {
        this.isRunning = false;
        this.isRecycled = true;
        checkRunningTasks();
        checkChoreographer();
        if (this.loadingInBackground || this.secondLoadingInBackground) {
            this.destroyAfterLoading = true;
            return;
        }
        if (this.loadFrameTask == null && !this.generatingCache) {
            recycleNativePtr(z);
            BitmapsCache bitmapsCache = this.bitmapsCache;
            if (bitmapsCache != null) {
                bitmapsCache.recycle();
                this.bitmapsCache = null;
            }
            recycleResources();
            return;
        }
        this.destroyWhenDone = true;
    }

    @Override // org.telegram.ui.Components.RLottieDrawable
    public void decodeFrameFinishedInternal() {
        if (this.destroyWhenDone) {
            checkRunningTasks();
            if (this.loadFrameTask == null && this.nativePtr != null) {
                recycleNativePtr(true);
            }
        }
        if (this.nativePtr == null && this.secondNativePtr == null && this.bitmapsCache == null) {
            recycleResources();
            return;
        }
        this.waitingForNextTask = true;
        if (!hasParentView()) {
            stop();
        }
        if (this.isRunning) {
            scheduleNextGetFrame();
        }
    }

    @Override // org.telegram.ui.Components.RLottieDrawable
    public void recycleNativePtr(boolean z) {
        final RLottieNative rLottieNative = this.nativePtr;
        final RLottieNative rLottieNative2 = this.secondNativePtr;
        this.nativePtr = null;
        this.secondNativePtr = null;
        if (rLottieNative == null && rLottieNative2 == null) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.RLottieDiceDrawable$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                RLottieDiceDrawable.$r8$lambda$dzkidqaevrZJQv_c80YElxZyjkM(rLottieNative, rLottieNative2);
            }
        };
        if (z) {
            DispatchQueuePoolBackground.execute(runnable);
        } else {
            Utilities.globalQueue.postRunnable(runnable);
        }
    }

    public static /* synthetic */ void $r8$lambda$dzkidqaevrZJQv_c80YElxZyjkM(RLottieNative rLottieNative, RLottieNative rLottieNative2) {
        if (rLottieNative != null) {
            rLottieNative.recycle();
        }
        if (rLottieNative2 != null) {
            rLottieNative2.recycle();
        }
    }

    @Override // org.telegram.ui.Components.RLottieDrawable
    public boolean ignoreScheduleNextGetFrame() {
        return this.loadingInBackground;
    }
}
