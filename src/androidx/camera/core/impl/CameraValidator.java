package androidx.camera.core.impl;

import android.content.Context;
import androidx.camera.core.CameraSelector;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public interface CameraValidator {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* JADX INFO: renamed from: androidx.camera.core.impl.CameraValidator$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        static {
            Companion companion = CameraValidator.Companion;
        }

        public static CameraValidator create(Context context, CameraSelector cameraSelector) {
            return CameraValidator.Companion.create(context, cameraSelector);
        }
    }

    boolean isChangeInvalid(Set set, Set set2);

    void validateOnFirstInit(CameraRepository cameraRepository);

    public static final class CameraIdListIncorrectException extends Exception {
        private final int availableCameraCount;

        public CameraIdListIncorrectException(String str, int i, Throwable th) {
            super(str, th);
            this.availableCameraCount = i;
        }

        public final int getAvailableCameraCount() {
            return this.availableCameraCount;
        }
    }

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final CameraValidator create(Context context, CameraSelector cameraSelector) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new CameraValidatorImpl(context, cameraSelector);
        }
    }
}
