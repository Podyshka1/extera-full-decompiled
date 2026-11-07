package androidx.camera.core.impl;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraValidator;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u001c2\u00020\u0001:\u0003\u001a\u001b\u001cB\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J$\u0010\u0010\u001a\u00020\t2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u0012H\u0016J\u001e\u0010\u0016\u001a\u00020\t2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0018\u001a\u00020\u0005H\u0002J\b\u0010\u0019\u001a\u00020\u000bH\u0002J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Landroidx/camera/core/impl/CameraValidatorImpl;", "Landroidx/camera/core/impl/CameraValidator;", "context", "Landroid/content/Context;", "availableCamerasSelector", "Landroidx/camera/core/CameraSelector;", "<init>", "(Landroid/content/Context;Landroidx/camera/core/CameraSelector;)V", "isVirtualDevice", _UrlKt.FRAGMENT_ENCODE_SET, "validationCriteria", "Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;", "validateOnFirstInit", _UrlKt.FRAGMENT_ENCODE_SET, "cameraRepository", "Landroidx/camera/core/impl/CameraRepository;", "isChangeInvalid", "currentCameras", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/CameraInternal;", "removedCameras", "Landroidx/camera/core/CameraIdentifier;", "hasCamera", "cameras", PluginsConstants.Settings.TYPE_SELECTOR, "getValidationCriteria", "ValidationCriteria", "Api34Impl", "Companion", "camera-core"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraValidator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraValidator.kt\nandroidx/camera/core/impl/CameraValidatorImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,209:1\n1563#2:210\n1634#2,3:211\n774#2:214\n865#2,2:215\n*S KotlinDebug\n*F\n+ 1 CameraValidator.kt\nandroidx/camera/core/impl/CameraValidatorImpl\n*L\n155#1:210\n155#1:211,3\n157#1:214\n157#1:215,2\n*E\n"})
public final class CameraValidatorImpl implements CameraValidator {
    private final CameraSelector availableCamerasSelector;
    private final Context context;
    private final boolean isVirtualDevice;
    private final ValidationCriteria validationCriteria = getValidationCriteria();

    public CameraValidatorImpl(Context context, CameraSelector cameraSelector) {
        this.context = context;
        this.availableCamerasSelector = cameraSelector;
        this.isVirtualDevice = isVirtualDevice(context);
    }

    @Override // androidx.camera.core.impl.CameraValidator
    public void validateOnFirstInit(CameraRepository cameraRepository) throws CameraValidator.CameraIdListIncorrectException {
        if (this.isVirtualDevice) {
            Logger.m74d("CameraValidator", "Virtual device with " + cameraRepository.getCameras().size() + " cameras. Skipping validation.");
            return;
        }
        Logger.m74d("CameraValidator", "Verifying camera lens facing on " + Build.DEVICE);
        if (this.validationCriteria.getCheckBack()) {
            try {
                CameraSelector.DEFAULT_BACK_CAMERA.select(cameraRepository.getCameras());
                e = null;
            } catch (RuntimeException e) {
                e = e;
                Logger.m80w("CameraValidator", "Camera LENS_FACING_BACK verification failed", e);
            }
        } else {
            e = null;
        }
        if (this.validationCriteria.getCheckFront()) {
            try {
                CameraSelector.DEFAULT_FRONT_CAMERA.select(cameraRepository.getCameras());
            } catch (RuntimeException e2) {
                Logger.m80w("CameraValidator", "Camera LENS_FACING_FRONT verification failed", e2);
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
    public boolean isChangeInvalid(Set<? extends CameraInternal> currentCameras, Set<CameraIdentifier> removedCameras) {
        if (this.isVirtualDevice || !(this.validationCriteria.getCheckBack() || this.validationCriteria.getCheckFront())) {
            return false;
        }
        boolean zHasCamera = hasCamera(currentCameras, CameraSelector.DEFAULT_BACK_CAMERA);
        boolean zHasCamera2 = hasCamera(currentCameras, CameraSelector.DEFAULT_FRONT_CAMERA);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(removedCameras, 10));
        Iterator<T> it = removedCameras.iterator();
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
        Set<? extends CameraInternal> set2 = CollectionsKt.toSet(arrayList2);
        return (this.validationCriteria.getCheckBack() && zHasCamera && !hasCamera(set2, CameraSelector.DEFAULT_BACK_CAMERA)) || (this.validationCriteria.getCheckFront() && zHasCamera2 && !hasCamera(set2, CameraSelector.DEFAULT_FRONT_CAMERA));
    }

    private final boolean hasCamera(Set<? extends CameraInternal> cameras, CameraSelector selector) {
        try {
            selector.select(new LinkedHashSet<>(cameras));
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\b\u0082\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000e\u001a\u00020\u00022\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0010\u001a\u0004\b\u0013\u0010\u0012¨\u0006\u0014"}, d2 = {"Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "checkBack", "checkFront", "<init>", "(ZZ)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Z", "getCheckBack", "()Z", "getCheckFront", "camera-core"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class ValidationCriteria {
        private final boolean checkBack;
        private final boolean checkFront;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ValidationCriteria)) {
                return false;
            }
            ValidationCriteria validationCriteria = (ValidationCriteria) other;
            return this.checkBack == validationCriteria.checkBack && this.checkFront == validationCriteria.checkFront;
        }

        public int hashCode() {
            return (Boolean.hashCode(this.checkBack) * 31) + Boolean.hashCode(this.checkFront);
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

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Landroidx/camera/core/impl/CameraValidatorImpl$Api34Impl;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getDeviceId", _UrlKt.FRAGMENT_ENCODE_SET, "context", "Landroid/content/Context;", "camera-core"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Api34Impl {
        public static final Api34Impl INSTANCE = new Api34Impl();

        private Api34Impl() {
        }

        public final int getDeviceId(Context context) {
            return context.getDeviceId();
        }
    }
}
