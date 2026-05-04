package androidx.camera.core.internal;

import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class ScreenFlashWrapper implements ImageCapture.ScreenFlash {
    public static final Companion Companion = new Companion(null);
    private boolean isClearScreenFlashPending;
    private final Object lock;
    private ImageCapture.ScreenFlashListener pendingListener;
    private final ImageCapture.ScreenFlash screenFlash;

    public /* synthetic */ ScreenFlashWrapper(ImageCapture.ScreenFlash screenFlash, DefaultConstructorMarker defaultConstructorMarker) {
        this(screenFlash);
    }

    public static final ScreenFlashWrapper from(ImageCapture.ScreenFlash screenFlash) {
        return Companion.from(screenFlash);
    }

    private ScreenFlashWrapper(ImageCapture.ScreenFlash screenFlash) {
        this.screenFlash = screenFlash;
        this.lock = new Object();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ScreenFlashWrapper from(ImageCapture.ScreenFlash screenFlash) {
            return new ScreenFlashWrapper(screenFlash, null);
        }
    }

    @Override // androidx.camera.core.ImageCapture.ScreenFlash
    public void apply(long j, ImageCapture.ScreenFlashListener screenFlashListener) {
        Intrinsics.checkNotNullParameter(screenFlashListener, "screenFlashListener");
        synchronized (this.lock) {
            this.isClearScreenFlashPending = true;
            this.pendingListener = screenFlashListener;
            Unit unit = Unit.INSTANCE;
        }
        ImageCapture.ScreenFlash screenFlash = this.screenFlash;
        if (screenFlash != null) {
            screenFlash.apply(j, new ImageCapture.ScreenFlashListener() { // from class: androidx.camera.core.internal.ScreenFlashWrapper$$ExternalSyntheticLambda0
                @Override // androidx.camera.core.ImageCapture.ScreenFlashListener
                public final void onCompleted() {
                    ScreenFlashWrapper.apply$lambda$1(this.f$0);
                }
            });
        } else {
            Logger.m78e("ScreenFlashWrapper", "apply: screenFlash is null!");
            completePendingScreenFlashListener();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void apply$lambda$1(ScreenFlashWrapper screenFlashWrapper) {
        synchronized (screenFlashWrapper.lock) {
            try {
                if (screenFlashWrapper.pendingListener == null) {
                    Logger.m81w("ScreenFlashWrapper", "apply: pendingListener is null!");
                }
                screenFlashWrapper.completePendingScreenFlashListener();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.ImageCapture.ScreenFlash
    public void clear() {
        completePendingScreenFlashClear();
    }

    private final void completePendingScreenFlashListener() {
        synchronized (this.lock) {
            try {
                ImageCapture.ScreenFlashListener screenFlashListener = this.pendingListener;
                if (screenFlashListener != null) {
                    screenFlashListener.onCompleted();
                }
                this.pendingListener = null;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void completePendingScreenFlashClear() {
        synchronized (this.lock) {
            try {
                if (this.isClearScreenFlashPending) {
                    ImageCapture.ScreenFlash screenFlash = this.screenFlash;
                    if (screenFlash != null) {
                        screenFlash.clear();
                    } else {
                        Logger.m78e("ScreenFlashWrapper", "completePendingScreenFlashClear: screenFlash is null!");
                    }
                } else {
                    Logger.m81w("ScreenFlashWrapper", "completePendingScreenFlashClear: none pending!");
                }
                this.isClearScreenFlashPending = false;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void completePendingTasks() {
        completePendingScreenFlashListener();
        completePendingScreenFlashClear();
    }
}
