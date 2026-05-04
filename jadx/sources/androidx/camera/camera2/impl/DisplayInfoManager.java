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
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class DisplayInfoManager {
    private static volatile DisplayInfoManager instance;
    private final DisplayManager.DisplayListener displayListener;
    private final DisplayManager displayManager;
    private final DisplaySizeCorrector displaySizeCorrector;
    private volatile Display[] displays;
    private final Object lock;
    private final MaxPreviewSize maxPreviewSize;
    private volatile Size previewSize;
    public static final Companion Companion = new Companion(null);
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
            public void onDisplayAdded(int i) {
                Object obj = this.this$0.lock;
                DisplayInfoManager displayInfoManager = this.this$0;
                synchronized (obj) {
                    displayInfoManager.displays = null;
                    displayInfoManager.previewSize = null;
                    Unit unit = Unit.INSTANCE;
                }
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayRemoved(int i) {
                Object obj = this.this$0.lock;
                DisplayInfoManager displayInfoManager = this.this$0;
                synchronized (obj) {
                    displayInfoManager.displays = null;
                    displayInfoManager.previewSize = null;
                    Unit unit = Unit.INSTANCE;
                }
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayChanged(int i) {
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
        Object systemService = context.getSystemService("display");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.display.DisplayManager");
        DisplayManager displayManager = (DisplayManager) systemService;
        displayManager.registerDisplayListener(displayListener, new Handler(Looper.getMainLooper()));
        this.displayManager = displayManager;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final DisplayInfoManager getInstance(Context context) {
            DisplayInfoManager displayInfoManager;
            Intrinsics.checkNotNullParameter(context, "context");
            DisplayInfoManager displayInfoManager2 = DisplayInfoManager.instance;
            if (displayInfoManager2 != null) {
                return displayInfoManager2;
            }
            synchronized (this) {
                displayInfoManager = DisplayInfoManager.instance;
                if (displayInfoManager == null) {
                    Context persistentApplicationContext = ContextUtil.getPersistentApplicationContext(context);
                    Intrinsics.checkNotNullExpressionValue(persistentApplicationContext, "getPersistentApplicationContext(...)");
                    displayInfoManager = new DisplayInfoManager(persistentApplicationContext, null);
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
                Size size = this.previewSize;
                Intrinsics.checkNotNull(size, "null cannot be cast to non-null type android.util.Size");
                return size;
            }
            this.previewSize = calculatePreviewSize();
            Size size2 = this.previewSize;
            Intrinsics.checkNotNull(size2);
            return size2;
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
            Intrinsics.checkNotNull(displays);
            return displays;
        }
    }

    public static /* synthetic */ Display getMaxSizeDisplay$default(DisplayInfoManager displayInfoManager, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return displayInfoManager.getMaxSizeDisplay(z);
    }

    public final Display getMaxSizeDisplay(boolean z) {
        Display[] displays = getDisplays();
        if (displays.length == 1) {
            return displays[0];
        }
        int i = -1;
        Display display = null;
        Display display2 = null;
        int i2 = -1;
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
        if (z && display2 != null) {
            display = display2;
        }
        if (display != null) {
            return display;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("No displays found from ");
        String string = Arrays.toString(displays);
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        sb.append(string);
        sb.append('!');
        throw new IllegalStateException(sb.toString().toString());
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
