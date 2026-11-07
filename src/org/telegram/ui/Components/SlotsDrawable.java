package org.telegram.ui.Components;

import android.graphics.Bitmap;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DispatchQueuePoolBackground;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Cells.ChatMessageCell;

/* JADX INFO: loaded from: classes7.dex */
public final class SlotsDrawable extends RLottieDiceDrawable {
    private Bitmap backgroundBitmapTmp;
    private ReelValue center;
    private final int[] frameCounts;
    private final int[] frameNums;
    private ReelValue left;
    private final RLottieNative[] lottieNatives;
    private boolean playWinAnimation;
    private ReelValue right;
    private final int[] secondFrameCounts;
    private final int[] secondFrameNums;
    private final RLottieNative[] secondLottieNatives;

    public enum ReelValue {
        bar,
        berries,
        lemon,
        seven,
        sevenWin
    }

    @Override // org.telegram.ui.Components.RLottieDiceDrawable, org.telegram.ui.Components.RLottieDrawable
    public void afterLoadFrameImpl() {
    }

    public SlotsDrawable(String str, int i, int i2) {
        super(str, i, i2);
        this.lottieNatives = new RLottieNative[5];
        this.frameCounts = new int[5];
        this.frameNums = new int[5];
        this.secondLottieNatives = new RLottieNative[3];
        this.secondFrameCounts = new int[3];
        this.secondFrameNums = new int[3];
    }

    @Override // org.telegram.ui.Components.RLottieDiceDrawable, org.telegram.ui.Components.RLottieDrawable
    public int beforeLoadFrameImpl() {
        if (this.isRecycled) {
            return 3;
        }
        return (this.nativePtr == null || (this.isDice == 2 && this.secondNativePtr == null)) ? 2 : 1;
    }

    @Override // org.telegram.ui.Components.RLottieDiceDrawable, org.telegram.ui.Components.RLottieDrawable
    public int loadFrameRunnableImpl(Bitmap bitmap, boolean z) {
        if (this.backgroundBitmapTmp == null) {
            try {
                this.backgroundBitmapTmp = Bitmap.createBitmap(this.width, this.height, Bitmap.Config.ARGB_8888);
            } catch (Throwable th) {
                FileLog.m1040e(th);
                return 2;
            }
        }
        int frame = -1;
        if (this.isDice == 1) {
            int i = 0;
            while (true) {
                RLottieNative[] rLottieNativeArr = this.lottieNatives;
                if (i >= rLottieNativeArr.length) {
                    break;
                }
                frame = rLottieNativeArr[i].getFrame(this.frameNums[i], this.backgroundBitmapTmp, i == 0);
                if (i != 0) {
                    int[] iArr = this.frameNums;
                    int i2 = iArr[i];
                    if (i2 + 1 < this.frameCounts[i]) {
                        iArr[i] = i2 + 1;
                    } else if (i != 4) {
                        iArr[i] = 0;
                        this.nextFrameIsLast = false;
                        if (this.secondNativePtr != null) {
                            this.isDice = 2;
                        }
                    }
                }
                i++;
            }
        } else {
            if (this.setLastFrame) {
                int i3 = 0;
                while (true) {
                    int[] iArr2 = this.secondFrameNums;
                    if (i3 >= iArr2.length) {
                        break;
                    }
                    iArr2[i3] = this.secondFrameCounts[i3] - 1;
                    i3++;
                }
            }
            if (this.playWinAnimation) {
                int[] iArr3 = this.frameNums;
                int i4 = iArr3[0];
                if (i4 + 1 < this.frameCounts[0]) {
                    iArr3[0] = i4 + 1;
                } else {
                    iArr3[0] = -1;
                }
            }
            this.lottieNatives[0].getFrame(Math.max(this.frameNums[0], 0), this.backgroundBitmapTmp, true);
            int i5 = 0;
            while (true) {
                RLottieNative[] rLottieNativeArr2 = this.secondLottieNatives;
                if (i5 >= rLottieNativeArr2.length) {
                    break;
                }
                RLottieNative rLottieNative = rLottieNativeArr2[i5];
                int i6 = this.secondFrameNums[i5];
                if (i6 < 0) {
                    i6 = this.secondFrameCounts[i5] - 1;
                }
                rLottieNative.getFrame(i6, this.backgroundBitmapTmp, false);
                if (!this.nextFrameIsLast) {
                    int[] iArr4 = this.secondFrameNums;
                    int i7 = iArr4[i5];
                    if (i7 + 1 < this.secondFrameCounts[i5]) {
                        iArr4[i5] = i7 + 1;
                    } else {
                        iArr4[i5] = -1;
                    }
                }
                i5++;
            }
            int frame2 = this.lottieNatives[4].getFrame(this.frameNums[4], this.backgroundBitmapTmp, false);
            int[] iArr5 = this.frameNums;
            int i8 = iArr5[4];
            if (i8 + 1 < this.frameCounts[4]) {
                iArr5[4] = i8 + 1;
            }
            int[] iArr6 = this.secondFrameNums;
            if (iArr6[0] == -1 && iArr6[1] == -1 && iArr6[2] == -1) {
                this.nextFrameIsLast = true;
                this.autoRepeatPlayCount++;
            }
            ReelValue reelValue = this.left;
            ReelValue reelValue2 = this.right;
            if (reelValue == reelValue2 && reelValue2 == this.center) {
                if (this.secondFrameNums[0] == this.secondFrameCounts[0] - 100) {
                    this.playWinAnimation = true;
                    if (reelValue == ReelValue.sevenWin) {
                        WeakReference<Runnable> weakReference = this.onFinishCallback;
                        Runnable runnable = weakReference == null ? null : weakReference.get();
                        if (runnable != null) {
                            AndroidUtilities.runOnUIThread(runnable);
                        }
                    }
                }
            } else {
                this.frameNums[0] = -1;
            }
            frame = frame2;
        }
        if (frame < 0) {
            return 2;
        }
        Utilities.copyBitmaps(this.backgroundBitmapTmp, bitmap);
        return 1;
    }

    private ReelValue reelValue(int i) {
        if (i == 0) {
            return ReelValue.bar;
        }
        if (i == 1) {
            return ReelValue.berries;
        }
        if (i == 2) {
            return ReelValue.lemon;
        }
        return ReelValue.seven;
    }

    private void init(int i) {
        int i2 = i - 1;
        ReelValue reelValue = reelValue(i2 & 3);
        ReelValue reelValue2 = reelValue((i2 >> 2) & 3);
        ReelValue reelValue3 = reelValue(i2 >> 4);
        ReelValue reelValue4 = ReelValue.seven;
        if (reelValue == reelValue4 && reelValue2 == reelValue4 && reelValue3 == reelValue4) {
            reelValue = ReelValue.sevenWin;
            reelValue3 = reelValue;
            reelValue2 = reelValue3;
        }
        this.left = reelValue;
        this.center = reelValue2;
        this.right = reelValue3;
    }

    public boolean setBaseDice(final ChatMessageCell chatMessageCell, final TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        if (this.nativePtr == null && !this.loadingInBackground) {
            this.loadingInBackground = true;
            final MessageObject messageObject = chatMessageCell.getMessageObject();
            final int i = chatMessageCell.getMessageObject().currentAccount;
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.SlotsDrawable$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setBaseDice$4(tL_messages_stickerSet, i, messageObject, chatMessageCell);
                }
            });
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$setBaseDice$4(TLRPC.TL_messages_stickerSet tL_messages_stickerSet, int i, MessageObject messageObject, ChatMessageCell chatMessageCell) {
        int i2;
        final TLRPC.TL_messages_stickerSet tL_messages_stickerSet2;
        final int i3;
        final MessageObject messageObject2;
        final ChatMessageCell chatMessageCell2;
        if (this.destroyAfterLoading) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SlotsDrawable$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setBaseDice$0();
                }
            });
            return;
        }
        int i4 = 0;
        boolean z = false;
        while (true) {
            RLottieNative[] rLottieNativeArr = this.lottieNatives;
            if (i4 >= rLottieNativeArr.length) {
                break;
            }
            if (rLottieNativeArr[i4] == null) {
                if (i4 == 0) {
                    i2 = 1;
                } else if (i4 == 1) {
                    i2 = 8;
                } else {
                    i2 = 2;
                    if (i4 == 2) {
                        i2 = 14;
                    } else if (i4 == 3) {
                        i2 = 20;
                    }
                }
                if (i2 >= tL_messages_stickerSet.documents.size()) {
                    tL_messages_stickerSet2 = tL_messages_stickerSet;
                    i3 = i;
                    messageObject2 = messageObject;
                    chatMessageCell2 = chatMessageCell;
                } else {
                    final TLRPC.Document document = tL_messages_stickerSet.documents.get(i2);
                    String res = AndroidUtilities.readRes(FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(document, true), 0);
                    if (TextUtils.isEmpty(res)) {
                        tL_messages_stickerSet2 = tL_messages_stickerSet;
                        i3 = i;
                        messageObject2 = messageObject;
                        chatMessageCell2 = chatMessageCell;
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SlotsDrawable$$ExternalSyntheticLambda8
                            @Override // java.lang.Runnable
                            public final void run() {
                                SlotsDrawable.m14729$r8$lambda$9KLqIfaDM0m_YCfSseYHuHp5_Y(document, i3, messageObject2, chatMessageCell2, tL_messages_stickerSet2);
                            }
                        });
                        z = true;
                    } else {
                        tL_messages_stickerSet2 = tL_messages_stickerSet;
                        i3 = i;
                        messageObject2 = messageObject;
                        chatMessageCell2 = chatMessageCell;
                        this.lottieNatives[i4] = RLottieNative.createFromRawJson(res, this.metaData);
                        this.frameCounts[i4] = this.metaData[0];
                    }
                }
            }
            i4++;
            i = i3;
            messageObject = messageObject2;
            chatMessageCell = chatMessageCell2;
            tL_messages_stickerSet = tL_messages_stickerSet2;
        }
        final int i5 = i;
        final ChatMessageCell chatMessageCell3 = chatMessageCell;
        if (z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SlotsDrawable$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setBaseDice$2();
                }
            });
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SlotsDrawable$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setBaseDice$3(i5, chatMessageCell3);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setBaseDice$0() {
        this.loadingInBackground = false;
        if (this.secondLoadingInBackground || !this.destroyAfterLoading) {
            return;
        }
        recycle(true);
    }

    /* JADX INFO: renamed from: $r8$lambda$9KLqIfaDM0m_YCfSseYHuHp-5_Y, reason: not valid java name */
    public static /* synthetic */ void m14729$r8$lambda$9KLqIfaDM0m_YCfSseYHuHp5_Y(TLRPC.Document document, int i, MessageObject messageObject, ChatMessageCell chatMessageCell, TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        DownloadController.getInstance(i).addLoadingFileObserver(FileLoader.getAttachFileName(document), messageObject, chatMessageCell);
        FileLoader.getInstance(i).loadFile(document, tL_messages_stickerSet, 1, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setBaseDice$2() {
        this.loadingInBackground = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setBaseDice$3(int i, ChatMessageCell chatMessageCell) {
        this.loadingInBackground = false;
        if (!this.secondLoadingInBackground && this.destroyAfterLoading) {
            recycle(true);
            return;
        }
        this.nativePtr = this.lottieNatives[0];
        checkChoreographer();
        DownloadController.getInstance(i).removeLoadingFileObserver(chatMessageCell);
        scheduleNextGetFrame();
        invalidateInternal();
    }

    public boolean setDiceNumber(final ChatMessageCell chatMessageCell, int i, final TLRPC.TL_messages_stickerSet tL_messages_stickerSet, final boolean z) {
        if (this.secondNativePtr == null && !this.secondLoadingInBackground) {
            init(i);
            final MessageObject messageObject = chatMessageCell.getMessageObject();
            final int i2 = chatMessageCell.getMessageObject().currentAccount;
            this.secondLoadingInBackground = true;
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.SlotsDrawable$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setDiceNumber$9(tL_messages_stickerSet, i2, messageObject, chatMessageCell, z);
                }
            });
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$setDiceNumber$9(final TLRPC.TL_messages_stickerSet tL_messages_stickerSet, final int i, final MessageObject messageObject, final ChatMessageCell chatMessageCell, final boolean z) {
        int i2;
        String res;
        if (this.destroyAfterLoading) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SlotsDrawable$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setDiceNumber$5();
                }
            });
            return;
        }
        int i3 = 0;
        boolean z2 = false;
        while (true) {
            RLottieNative[] rLottieNativeArr = this.secondLottieNatives;
            if (i3 >= rLottieNativeArr.length + 2) {
                break;
            }
            if (i3 <= 2) {
                if (rLottieNativeArr[i3] == null) {
                    if (i3 == 0) {
                        ReelValue reelValue = this.left;
                        if (reelValue == ReelValue.bar) {
                            i2 = 5;
                        } else if (reelValue == ReelValue.berries) {
                            i2 = 6;
                        } else if (reelValue == ReelValue.lemon) {
                            i2 = 7;
                        } else {
                            i2 = reelValue == ReelValue.seven ? 4 : 3;
                        }
                    } else if (i3 == 1) {
                        ReelValue reelValue2 = this.center;
                        if (reelValue2 == ReelValue.bar) {
                            i2 = 11;
                        } else if (reelValue2 == ReelValue.berries) {
                            i2 = 12;
                        } else if (reelValue2 == ReelValue.lemon) {
                            i2 = 13;
                        } else {
                            i2 = reelValue2 == ReelValue.seven ? 10 : 9;
                        }
                    } else {
                        ReelValue reelValue3 = this.right;
                        if (reelValue3 == ReelValue.bar) {
                            i2 = 17;
                        } else if (reelValue3 == ReelValue.berries) {
                            i2 = 18;
                        } else if (reelValue3 == ReelValue.lemon) {
                            i2 = 19;
                        } else {
                            i2 = reelValue3 == ReelValue.seven ? 16 : 15;
                        }
                    }
                    final TLRPC.Document document = tL_messages_stickerSet.documents.get(i2);
                    res = AndroidUtilities.readRes(FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(document, true), 0);
                    if (!TextUtils.isEmpty(res)) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SlotsDrawable$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() {
                                SlotsDrawable.$r8$lambda$ioI6n65Ds3Po212F8eKCB1Qemms(document, i, messageObject, chatMessageCell, tL_messages_stickerSet);
                            }
                        });
                        z2 = true;
                    } else {
                        RLottieNative rLottieNativeCreateFromRawJson = RLottieNative.createFromRawJson(res, this.metaData);
                        if (i3 <= 2) {
                            this.secondLottieNatives[i3] = rLottieNativeCreateFromRawJson;
                            this.secondFrameCounts[i3] = this.metaData[0];
                        } else {
                            this.lottieNatives[i3 == 3 ? (char) 0 : (char) 4] = rLottieNativeCreateFromRawJson;
                            this.frameCounts[i3 == 3 ? (char) 0 : (char) 4] = this.metaData[0];
                        }
                    }
                }
            } else if (this.lottieNatives[i3] == null) {
                i2 = i3 == 3 ? 1 : 2;
                final TLRPC.Document document2 = tL_messages_stickerSet.documents.get(i2);
                res = AndroidUtilities.readRes(FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(document2, true), 0);
                if (!TextUtils.isEmpty(res)) {
                }
            }
            i3++;
        }
        if (z2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SlotsDrawable$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setDiceNumber$7();
                }
            });
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SlotsDrawable$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setDiceNumber$8(z, i, chatMessageCell);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setDiceNumber$5() {
        this.secondLoadingInBackground = false;
        if (this.loadingInBackground || !this.destroyAfterLoading) {
            return;
        }
        recycle(true);
    }

    public static /* synthetic */ void $r8$lambda$ioI6n65Ds3Po212F8eKCB1Qemms(TLRPC.Document document, int i, MessageObject messageObject, ChatMessageCell chatMessageCell, TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        DownloadController.getInstance(i).addLoadingFileObserver(FileLoader.getAttachFileName(document), messageObject, chatMessageCell);
        FileLoader.getInstance(i).loadFile(document, tL_messages_stickerSet, 1, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setDiceNumber$7() {
        this.secondLoadingInBackground = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setDiceNumber$8(boolean z, int i, ChatMessageCell chatMessageCell) {
        if (z && bothRenderingBitmapsAreNull() && this.loadFrameTask == null) {
            this.isDice = 2;
            this.setLastFrame = true;
        }
        this.secondLoadingInBackground = false;
        if (!this.loadingInBackground && this.destroyAfterLoading) {
            recycle(true);
            return;
        }
        this.secondNativePtr = this.secondLottieNatives[0];
        DownloadController.getInstance(i).removeLoadingFileObserver(chatMessageCell);
        scheduleNextGetFrame();
        invalidateInternal();
    }

    @Override // org.telegram.ui.Components.RLottieDiceDrawable, org.telegram.ui.Components.RLottieDrawable
    public void recycle(boolean z) {
        this.isRunning = false;
        this.isRecycled = true;
        checkRunningTasks();
        checkChoreographer();
        if (this.loadingInBackground || this.secondLoadingInBackground) {
            this.destroyAfterLoading = true;
        } else if (this.loadFrameTask == null) {
            recycleInternal(true, z);
            recycleResources();
        } else {
            this.destroyWhenDone = true;
        }
    }

    @Override // org.telegram.ui.Components.RLottieDiceDrawable, org.telegram.ui.Components.RLottieDrawable
    public void decodeFrameFinishedInternal() {
        if (this.destroyWhenDone) {
            checkRunningTasks();
            if (this.loadFrameTask == null) {
                recycleInternal(false);
            }
        }
        if (this.nativePtr == null && this.secondNativePtr == null) {
            recycleResources();
            return;
        }
        this.waitingForNextTask = true;
        if (!hasParentView()) {
            stop();
        }
        scheduleNextGetFrame();
    }

    private void recycleInternal(boolean z) {
        ArrayList<RLottieNative> arrayListDetachNatives = detachNatives(z);
        for (int i = 0; i < arrayListDetachNatives.size(); i++) {
            arrayListDetachNatives.get(i).recycle();
        }
    }

    private void recycleInternal(boolean z, boolean z2) {
        final ArrayList<RLottieNative> arrayListDetachNatives = detachNatives(z);
        if (arrayListDetachNatives.isEmpty()) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.SlotsDrawable$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                SlotsDrawable.$r8$lambda$egTlNg9fUo53Gc7N3NSFK35fWTg(arrayListDetachNatives);
            }
        };
        if (z2) {
            DispatchQueuePoolBackground.execute(runnable);
        } else {
            Utilities.globalQueue.postRunnable(runnable);
        }
    }

    public static /* synthetic */ void $r8$lambda$egTlNg9fUo53Gc7N3NSFK35fWTg(ArrayList arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            ((RLottieNative) arrayList.get(i)).recycle();
        }
    }

    private ArrayList<RLottieNative> detachNatives(boolean z) {
        ArrayList<RLottieNative> arrayList = new ArrayList<>();
        int i = 0;
        int i2 = 0;
        while (true) {
            RLottieNative[] rLottieNativeArr = this.lottieNatives;
            if (i2 >= rLottieNativeArr.length) {
                break;
            }
            RLottieNative rLottieNative = rLottieNativeArr[i2];
            if (rLottieNative != null) {
                if (z && rLottieNative == this.nativePtr) {
                    this.nativePtr = null;
                }
                arrayList.add(this.lottieNatives[i2]);
                this.lottieNatives[i2] = null;
            }
            i2++;
        }
        while (true) {
            RLottieNative[] rLottieNativeArr2 = this.secondLottieNatives;
            if (i >= rLottieNativeArr2.length) {
                return arrayList;
            }
            RLottieNative rLottieNative2 = rLottieNativeArr2[i];
            if (rLottieNative2 != null) {
                if (z && rLottieNative2 == this.secondNativePtr) {
                    this.secondNativePtr = null;
                }
                arrayList.add(this.secondLottieNatives[i]);
                this.secondLottieNatives[i] = null;
            }
            i++;
        }
    }
}
