package androidx.camera.core.impl;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.camera.camera2.adapter.EvCompValue$$ExternalSyntheticBackport0;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraValidator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class CameraValidatorImpl implements CameraValidator {
    public static final Companion Companion = new Companion(null);
    private final CameraSelector availableCamerasSelector;
    private final Context context;
    private final boolean isVirtualDevice;
    private final ValidationCriteria validationCriteria;

    public CameraValidatorImpl(Context context, CameraSelector cameraSelector) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.availableCamerasSelector = cameraSelector;
        this.isVirtualDevice = isVirtualDevice(context);
        this.validationCriteria = getValidationCriteria();
    }

    @Override // androidx.camera.core.impl.CameraValidator
    public void validateOnFirstInit(CameraRepository cameraRepository) throws CameraValidator.CameraIdListIncorrectException {
        Intrinsics.checkNotNullParameter(cameraRepository, "cameraRepository");
        if (this.isVirtualDevice) {
            Logger.m76d("CameraValidator", "Virtual device with " + cameraRepository.getCameras().size() + " cameras. Skipping validation.");
            return;
        }
        Logger.m76d("CameraValidator", "Verifying camera lens facing on " + Build.DEVICE);
        if (this.validationCriteria.getCheckBack()) {
            try {
                Intrinsics.checkNotNull(CameraSelector.DEFAULT_BACK_CAMERA.select(cameraRepository.getCameras()));
                e = null;
            } catch (RuntimeException e) {
                e = e;
                Logger.m82w("CameraValidator", "Camera LENS_FACING_BACK verification failed", e);
            }
        } else {
            e = null;
        }
        if (this.validationCriteria.getCheckFront()) {
            try {
                Intrinsics.checkNotNull(CameraSelector.DEFAULT_FRONT_CAMERA.select(cameraRepository.getCameras()));
            } catch (RuntimeException e2) {
                Logger.m82w("CameraValidator", "Camera LENS_FACING_FRONT verification failed", e2);
                if (e == null) {
                    e = e2;
                }
            }
        }
        if (e != null) {
            throw new CameraValidator.CameraIdListIncorrectException("Expected camera missing from device.", cameraRepository.getCameras().size(), e);
        }
    }

    @Override // androidx.camera.core.impl.CameraValidator
    public boolean isChangeInvalid(Set currentCameras, Set removedCameras) {
        Intrinsics.checkNotNullParameter(currentCameras, "currentCameras");
        Intrinsics.checkNotNullParameter(removedCameras, "removedCameras");
        if (this.isVirtualDevice || !(this.validationCriteria.getCheckBack() || this.validationCriteria.getCheckFront())) {
            return false;
        }
        CameraSelector DEFAULT_BACK_CAMERA = CameraSelector.DEFAULT_BACK_CAMERA;
        Intrinsics.checkNotNullExpressionValue(DEFAULT_BACK_CAMERA, "DEFAULT_BACK_CAMERA");
        boolean zHasCamera = hasCamera(currentCameras, DEFAULT_BACK_CAMERA);
        CameraSelector DEFAULT_FRONT_CAMERA = CameraSelector.DEFAULT_FRONT_CAMERA;
        Intrinsics.checkNotNullExpressionValue(DEFAULT_FRONT_CAMERA, "DEFAULT_FRONT_CAMERA");
        boolean zHasCamera2 = hasCamera(currentCameras, DEFAULT_FRONT_CAMERA);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(removedCameras, 10));
        Iterator it = removedCameras.iterator();
        while (it.hasNext()) {
            arrayList.add(((CameraIdentifier) it.next()).getInternalId());
        }
        Set set = CollectionsKt.toSet(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : currentCameras) {
            if (!set.contains(((CameraInternal) obj).getCameraInfoInternal().getCameraId())) {
                arrayList2.add(obj);
            }
        }
        Set set2 = CollectionsKt.toSet(arrayList2);
        CameraSelector DEFAULT_BACK_CAMERA2 = CameraSelector.DEFAULT_BACK_CAMERA;
        Intrinsics.checkNotNullExpressionValue(DEFAULT_BACK_CAMERA2, "DEFAULT_BACK_CAMERA");
        boolean zHasCamera3 = hasCamera(set2, DEFAULT_BACK_CAMERA2);
        CameraSelector DEFAULT_FRONT_CAMERA2 = CameraSelector.DEFAULT_FRONT_CAMERA;
        Intrinsics.checkNotNullExpressionValue(DEFAULT_FRONT_CAMERA2, "DEFAULT_FRONT_CAMERA");
        return (this.validationCriteria.getCheckBack() && zHasCamera && !zHasCamera3) || (this.validationCriteria.getCheckFront() && zHasCamera2 && !hasCamera(set2, DEFAULT_FRONT_CAMERA2));
    }

    private final boolean hasCamera(Set set, CameraSelector cameraSelector) {
        try {
            cameraSelector.select(new LinkedHashSet(set));
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    private static final class ValidationCriteria {
        private final boolean checkBack;
        private final boolean checkFront;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ValidationCriteria)) {
                return false;
            }
            ValidationCriteria validationCriteria = (ValidationCriteria) obj;
            return this.checkBack == validationCriteria.checkBack && this.checkFront == validationCriteria.checkFront;
        }

        public int hashCode() {
            return (EvCompValue$$ExternalSyntheticBackport0.m10m(this.checkBack) * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.checkFront);
        }

        public String toString() {
            return "ValidationCriteria(checkBack=" + this.checkBack + ", checkFront=" + this.checkFront + ')';
        }

        public ValidationCriteria(boolean z, boolean z2) {
            this.checkBack = z;
            this.checkFront = z2;
        }

        public final boolean getCheckBack() {
            return this.checkBack;
        }

        public final boolean getCheckFront() {
            return this.checkFront;
        }
    }

    private final ValidationCriteria getValidationCriteria() {
        PackageManager packageManager = this.context.getPackageManager();
        CameraSelector cameraSelector = this.availableCamerasSelector;
        Integer lensFacing = cameraSelector != null ? cameraSelector.getLensFacing() : null;
        boolean zHasSystemFeature = packageManager.hasSystemFeature("android.hardware.camera");
        boolean zHasSystemFeature2 = packageManager.hasSystemFeature("android.hardware.camera.front");
        boolean z = false;
        boolean z2 = zHasSystemFeature && (lensFacing == null || lensFacing.intValue() == 1);
        if (zHasSystemFeature2 && (lensFacing == null || lensFacing.intValue() == 0)) {
            z = true;
        }
        return new ValidationCriteria(z2, z);
    }

    private final boolean isVirtualDevice(Context context) {
        return Build.VERSION.SDK_INT >= 34 && Api34Impl.INSTANCE.getDeviceId(context) != 0;
    }

    private static final class Api34Impl {
        public static final Api34Impl INSTANCE = new Api34Impl();

        private Api34Impl() {
        }

        public final int getDeviceId(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return context.getDeviceId();
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
