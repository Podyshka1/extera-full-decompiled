package androidx.camera.camera2.impl;

import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.Looper;
import android.util.Size;
import android.view.Display;
import androidx.camera.camera2.compat.workaround.DisplaySizeCorrector;
import androidx.camera.camera2.compat.workaround.MaxPreviewSize;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.core.internal.utils.SizeUtil;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0014J\u0013\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002¢\u0006\u0002\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\r2\b\b\u0002\u0010\u001b\u001a\u00020\u001cJ\b\u0010\u001d\u001a\u00020\u0014H\u0002J\b\u0010\u001e\u001a\u00020\u0014H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Landroidx/camera/camera2/impl/DisplayInfoManager;", _UrlKt.FRAGMENT_ENCODE_SET, "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "maxPreviewSize", "Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;", "displaySizeCorrector", "Landroidx/camera/camera2/compat/workaround/DisplaySizeCorrector;", "lock", "displays", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/view/Display;", "[Landroid/view/Display;", "displayListener", "Landroid/hardware/display/DisplayManager$DisplayListener;", "displayManager", "Landroid/hardware/display/DisplayManager;", "previewSize", "Landroid/util/Size;", "refreshPreviewSize", _UrlKt.FRAGMENT_ENCODE_SET, "getPreviewSize", "getDisplays", "()[Landroid/view/Display;", "getMaxSizeDisplay", "skipStateOffDisplay", _UrlKt.FRAGMENT_ENCODE_SET, "calculatePreviewSize", "getCorrectedDisplaySize", "Companion", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDisplayInfoManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayInfoManager.kt\nandroidx/camera/camera2/impl/DisplayInfoManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,240:1\n1#2:241\n*E\n"})
public final class DisplayInfoManager {
    private static volatile DisplayInfoManager instance;
    private final DisplayManager.DisplayListener displayListener;
    private final DisplayManager displayManager;
    private final DisplaySizeCorrector displaySizeCorrector;
    private volatile Display[] displays;
    private final Object lock;
    private final MaxPreviewSize maxPreviewSize;
    private volatile Size previewSize;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Size MAX_PREVIEW_SIZE = new Size(1920, 1080);
    private static final Size ABNORMAL_DISPLAY_SIZE_THRESHOLD = new Size(320, 240);
    private static final Size FALLBACK_DISPLAY_SIZE = new Size(640, 480);

    public /* synthetic */ DisplayInfoManager(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private DisplayInfoManager(Context context) {
        this.maxPreviewSize = new MaxPreviewSize(null, 1, 0 == true ? 1 : 0);
        this.displaySizeCorrector = new DisplaySizeCorrector();
        this.lock = new Object();
        DisplayManager.DisplayListener displayListener = new DisplayManager.DisplayListener() { // from class: androidx.camera.camera2.impl.DisplayInfoManager$displayListener$1
            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayAdded(int displayId) {
                Object obj = this.this$0.lock;
                DisplayInfoManager displayInfoManager = this.this$0;
                synchronized (obj) {
                    displayInfoManager.displays = null;
                    displayInfoManager.previewSize = null;
                    Unit unit = Unit.INSTANCE;
                }
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayRemoved(int displayId) {
                Object obj = this.this$0.lock;
                DisplayInfoManager displayInfoManager = this.this$0;
                synchronized (obj) {
                    displayInfoManager.displays = null;
                    displayInfoManager.previewSize = null;
                    Unit unit = Unit.INSTANCE;
                }
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayChanged(int displayId) {
                Object obj = this.this$0.lock;
                DisplayInfoManager displayInfoManager = this.this$0;
                synchronized (obj) {
                    displayInfoManager.displays = null;
                    displayInfoManager.previewSize = null;
                    Unit unit = Unit.INSTANCE;
                }
            }
        };
        this.displayListener = displayListener;
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        displayManager.registerDisplayListener(displayListener, new Handler(Looper.getMainLooper()));
        this.displayManager = displayManager;
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u000bR\u0014\u0010\r\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000bR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroid/content/Context;", "context", "Landroidx/camera/camera2/impl/DisplayInfoManager;", "getInstance", "(Landroid/content/Context;)Landroidx/camera/camera2/impl/DisplayInfoManager;", "Landroid/util/Size;", "MAX_PREVIEW_SIZE", "Landroid/util/Size;", "ABNORMAL_DISPLAY_SIZE_THRESHOLD", "FALLBACK_DISPLAY_SIZE", "instance", "Landroidx/camera/camera2/impl/DisplayInfoManager;", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nDisplayInfoManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayInfoManager.kt\nandroidx/camera/camera2/impl/DisplayInfoManager$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,240:1\n1#2:241\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final DisplayInfoManager getInstance(Context context) {
            DisplayInfoManager displayInfoManager;
            DisplayInfoManager displayInfoManager2 = DisplayInfoManager.instance;
            if (displayInfoManager2 != null) {
                return displayInfoManager2;
            }
            synchronized (this) {
                displayInfoManager = DisplayInfoManager.instance;
                if (displayInfoManager == null) {
                    displayInfoManager = new DisplayInfoManager(ContextUtil.getPersistentApplicationContext(context), null);
                    DisplayInfoManager.instance = displayInfoManager;
                }
            }
            return displayInfoManager;
        }
    }

    public final void refreshPreviewSize() {
        synchronized (this.lock) {
            this.previewSize = calculatePreviewSize();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final Size getPreviewSize() {
        synchronized (this.lock) {
            if (this.previewSize != null) {
                return this.previewSize;
            }
            this.previewSize = calculatePreviewSize();
            return this.previewSize;
        }
    }

    private final Display[] getDisplays() {
        synchronized (this.lock) {
            Display[] displayArr = this.displays;
            if (displayArr != null) {
                return displayArr;
            }
            Display[] displays = this.displayManager.getDisplays();
            this.displays = displays;
            return displays;
        }
    }

    public static /* synthetic */ Display getMaxSizeDisplay$default(DisplayInfoManager displayInfoManager, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return displayInfoManager.getMaxSizeDisplay(z);
    }

    public final Display getMaxSizeDisplay(boolean skipStateOffDisplay) {
        Display[] displays = getDisplays();
        if (displays.length == 1) {
            return displays[0];
        }
        int i = -1;
        int i2 = -1;
        Display display = null;
        Display display2 = null;
        for (Display display3 : displays) {
            Point point = new Point();
            display3.getRealSize(point);
            int i3 = point.x;
            int i4 = point.y;
            if (i3 * i4 > i) {
                display = display3;
                i = i3 * i4;
            }
            if (display3.getState() != 1) {
                int i5 = point.x;
                int i6 = point.y;
                if (i5 * i6 > i2) {
                    display2 = display3;
                    i2 = i5 * i6;
                }
            }
        }
        if (skipStateOffDisplay && display2 != null) {
            display = display2;
        }
        if (display != null) {
            return display;
        }
        DisplayInfoManager$$ExternalSyntheticBUOutline0.m30m("No displays found from ", Arrays.toString(displays));
        return null;
    }

    private final Size calculatePreviewSize() {
        Size correctedDisplaySize = getCorrectedDisplaySize();
        Size size = MAX_PREVIEW_SIZE;
        if (SizeUtil.isSmallerByArea(size, correctedDisplaySize)) {
            correctedDisplaySize = size;
        }
        return this.maxPreviewSize.getMaxPreviewResolution(correctedDisplaySize);
    }

    private final Size getCorrectedDisplaySize() {
        Point point = new Point();
        getMaxSizeDisplay(false).getRealSize(point);
        Size size = new Size(point.x, point.y);
        if (SizeUtil.isSmallerByArea(size, ABNORMAL_DISPLAY_SIZE_THRESHOLD)) {
            Size displaySize = this.displaySizeCorrector.getDisplaySize();
            if (displaySize == null) {
                displaySize = FALLBACK_DISPLAY_SIZE;
            }
            size = displaySize;
        }
        return size.getHeight() > size.getWidth() ? new Size(size.getHeight(), size.getWidth()) : size;
    }
}
