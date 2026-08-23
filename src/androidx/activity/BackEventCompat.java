package androidx.activity;

import android.window.BackEvent;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class BackEventCompat {
    public static final Companion Companion = new Companion(null);
    private final float progress;
    private final int swipeEdge;
    private final float touchX;
    private final float touchY;

    public BackEventCompat(float f, float f2, float f3, int i) {
        this.touchX = f;
        this.touchY = f2;
        this.progress = f3;
        this.swipeEdge = i;
    }

    public final float getTouchY() {
        return this.touchY;
    }

    public final float getProgress() {
        return this.progress;
    }

    public final int getSwipeEdge() {
        return this.swipeEdge;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public BackEventCompat(BackEvent backEvent) {
        Intrinsics.checkNotNullParameter(backEvent, "backEvent");
        Api34Impl api34Impl = Api34Impl.INSTANCE;
        this(api34Impl.touchX(backEvent), api34Impl.touchY(backEvent), api34Impl.progress(backEvent), api34Impl.swipeEdge(backEvent));
    }

    public String toString() {
        return "BackEventCompat{touchX=" + this.touchX + ", touchY=" + this.touchY + ", progress=" + this.progress + ", swipeEdge=" + this.swipeEdge + '}';
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
