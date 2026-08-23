package androidx.camera.extensions;

import android.content.Context;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import androidx.camera.core.CameraProvider;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.extensions.ExtensionsManager;
import androidx.camera.extensions.internal.Camera2ExtensionsInfo;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.concurrent.futures.ListenableFutureKt;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class ExtensionsManager {
    public static final Companion Companion = new Companion(null);
    private static final Object EXTENSIONS_LOCK = new Object();
    private static ListenableFuture sDeinitializeFuture;
    private static ExtensionsManager sExtensionsManager;
    private static ListenableFuture sInitializeFuture;
    private final ExtensionsAvailability extensionsAvailability;
    private final ExtensionsInfo extensionsInfo;

    public static final ListenableFuture getInstanceAsync(Context context, CameraProvider cameraProvider) {
        return Companion.getInstanceAsync(context, cameraProvider);
    }

    public ExtensionsManager(ExtensionsAvailability extensionsAvailability, CameraProvider cameraProvider, Context applicationContext) {
        Intrinsics.checkNotNullParameter(extensionsAvailability, "extensionsAvailability");
        Intrinsics.checkNotNullParameter(cameraProvider, "cameraProvider");
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        this.extensionsAvailability = extensionsAvailability;
        this.extensionsInfo = new ExtensionsInfo(cameraProvider, applicationContext);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ExtensionsAvailability {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ExtensionsAvailability[] $VALUES;
        public static final ExtensionsAvailability LIBRARY_AVAILABLE = new ExtensionsAvailability("LIBRARY_AVAILABLE", 0);
        public static final ExtensionsAvailability LIBRARY_UNAVAILABLE_ERROR_LOADING = new ExtensionsAvailability("LIBRARY_UNAVAILABLE_ERROR_LOADING", 1);
        public static final ExtensionsAvailability LIBRARY_UNAVAILABLE_MISSING_IMPLEMENTATION = new ExtensionsAvailability("LIBRARY_UNAVAILABLE_MISSING_IMPLEMENTATION", 2);
        public static final ExtensionsAvailability NONE = new ExtensionsAvailability("NONE", 3);

        private static final /* synthetic */ ExtensionsAvailability[] $values() {
            return new ExtensionsAvailability[]{LIBRARY_AVAILABLE, LIBRARY_UNAVAILABLE_ERROR_LOADING, LIBRARY_UNAVAILABLE_MISSING_IMPLEMENTATION, NONE};
        }

        public static EnumEntries getEntries() {
            return $ENTRIES;
        }

        public static ExtensionsAvailability valueOf(String str) {
            return (ExtensionsAvailability) Enum.valueOf(ExtensionsAvailability.class, str);
        }

        public static ExtensionsAvailability[] values() {
            return (ExtensionsAvailability[]) $VALUES.clone();
        }

        private ExtensionsAvailability(String str, int i) {
        }

        static {
            ExtensionsAvailability[] extensionsAvailabilityArr$values = $values();
            $VALUES = extensionsAvailabilityArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(extensionsAvailabilityArr$values);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ListenableFuture getInstanceAsync(Context context, final CameraProvider cameraProvider) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(cameraProvider, "cameraProvider");
            synchronized (ExtensionsManager.EXTENSIONS_LOCK) {
                try {
                    ListenableFuture listenableFuture = ExtensionsManager.sDeinitializeFuture;
                    boolean z = false;
                    if (listenableFuture != null && !listenableFuture.isDone()) {
                        z = true;
                    }
                    if (z) {
                        throw new IllegalStateException("Not yet done deinitializing extensions");
                    }
                    ExtensionsManager.sDeinitializeFuture = null;
                    final Context persistentApplicationContext = ContextUtil.getPersistentApplicationContext(context);
                    Intrinsics.checkNotNullExpressionValue(persistentApplicationContext, "getPersistentApplicationContext(...)");
                    if (Build.VERSION.SDK_INT < 33) {
                        ListenableFuture listenableFutureImmediateFuture = Futures.immediateFuture(ExtensionsManager.Companion.getOrCreateExtensionsManager(ExtensionsAvailability.NONE, cameraProvider, persistentApplicationContext));
                        Intrinsics.checkNotNullExpressionValue(listenableFutureImmediateFuture, "immediateFuture(...)");
                        return listenableFutureImmediateFuture;
                    }
                    if (ExtensionsManager.sInitializeFuture == null) {
                        ExtensionsManager.sInitializeFuture = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.extensions.ExtensionsManager$Companion$$ExternalSyntheticLambda0
                            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                                return ExtensionsManager.Companion.getInstanceAsync$lambda$0$1(persistentApplicationContext, cameraProvider, completer);
                            }
                        });
                    }
                    ListenableFuture listenableFuture2 = ExtensionsManager.sInitializeFuture;
                    Intrinsics.checkNotNull(listenableFuture2);
                    return listenableFuture2;
                } finally {
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Object getInstanceAsync$lambda$0$1(Context context, CameraProvider cameraProvider, CallbackToFutureAdapter.Completer completer) throws CameraAccessException {
            String str;
            ExtensionsAvailability extensionsAvailability;
            Intrinsics.checkNotNullParameter(completer, "completer");
            CameraManager cameraManager = (CameraManager) context.getSystemService(CameraManager.class);
            Intrinsics.checkNotNull(cameraManager);
            Camera2ExtensionsInfo camera2ExtensionsInfo = new Camera2ExtensionsInfo(cameraManager);
            String[] cameraIdList = cameraManager.getCameraIdList();
            Intrinsics.checkNotNullExpressionValue(cameraIdList, "getCameraIdList(...)");
            int length = cameraIdList.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    str = null;
                    break;
                }
                str = cameraIdList[i];
                Intrinsics.checkNotNull(str);
                List<Integer> supportedExtensions = camera2ExtensionsInfo.getExtensionCharacteristics(str).getSupportedExtensions();
                Intrinsics.checkNotNullExpressionValue(supportedExtensions, "getSupportedExtensions(...)");
                if (!supportedExtensions.isEmpty()) {
                    break;
                }
                i++;
            }
            boolean z = str != null;
            Companion companion = ExtensionsManager.Companion;
            if (!z) {
                extensionsAvailability = ExtensionsAvailability.NONE;
            } else {
                extensionsAvailability = ExtensionsAvailability.LIBRARY_AVAILABLE;
            }
            completer.set(companion.getOrCreateExtensionsManager(extensionsAvailability, cameraProvider, context));
            return "Initialize extensions";
        }

        private final ExtensionsManager getOrCreateExtensionsManager(ExtensionsAvailability extensionsAvailability, CameraProvider cameraProvider, Context context) {
            ExtensionsManager extensionsManager;
            synchronized (ExtensionsManager.EXTENSIONS_LOCK) {
                extensionsManager = ExtensionsManager.sExtensionsManager;
                if (extensionsManager == null) {
                    extensionsManager = new ExtensionsManager(extensionsAvailability, cameraProvider, context);
                    ExtensionsManager.sExtensionsManager = extensionsManager;
                }
            }
            return extensionsManager;
        }

        public final Object getInstance(Context context, CameraProvider cameraProvider, Continuation<? super ExtensionsManager> continuation) {
            return ListenableFutureKt.await(getInstanceAsync(context, cameraProvider), continuation);
        }
    }
}
