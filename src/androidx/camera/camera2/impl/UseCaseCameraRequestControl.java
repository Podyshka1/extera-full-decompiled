package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;
import okio.ByteString$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\bf\u0018\u00002\u00020\u0001:\u0001<J:\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0016\u0010\u0005\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0007\u0012\u0004\u0012\u00020\u00010\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bH'J:\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0016\u0010\u0005\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0007\u0012\u0004\u0012\u00020\u00010\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bH&J*\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0010\u0010\u000e\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u000f2\b\b\u0002\u0010\b\u001a\u00020\tH&J$\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0011\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H'J,\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0017\u001a\u00020\u00182\u0014\b\u0002\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00010\u0006H'J\u000e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0003H'J\u001d\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00032\u0006\u0010\u001e\u001a\u00020\u001fH'¢\u0006\u0004\b \u0010!J\u0083\u0001\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00032\u0010\b\u0002\u0010#\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010\u000f2\u0010\b\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010\u000f2\u0010\b\u0002\u0010&\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010\u000f2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u001f2\b\b\u0002\u0010,\u001a\u00020-H'¢\u0006\u0002\b.J\u000e\u0010/\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0003H'J<\u00100\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001010\u00030\u000f2\f\u00102\u001a\b\u0012\u0004\u0012\u0002030\u000f2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u0002052\u0006\u00107\u001a\u000205H'JD\u00108\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00032\u0010\b\u0002\u0010#\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010\u000f2\u0010\b\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010\u000f2\u0010\b\u0002\u0010&\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010\u000fH'J\u000e\u00109\u001a\u00020\u0012H¦@¢\u0006\u0002\u0010:J\b\u0010;\u001a\u00020\u0004H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006=À\u0006\u0003"}, d2 = {"Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", _UrlKt.FRAGMENT_ENCODE_SET, "setParametersAsync", "Lkotlinx/coroutines/Deferred;", _UrlKt.FRAGMENT_ENCODE_SET, "values", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/CaptureRequest$Key;", "type", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;", "optionPriority", "Landroidx/camera/core/impl/Config$OptionPriority;", "submitParameters", "removeParametersAsync", "keys", _UrlKt.FRAGMENT_ENCODE_SET, "updateRepeatingRequestAsync", "isPrimary", _UrlKt.FRAGMENT_ENCODE_SET, "runningUseCases", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/UseCase;", "updateCamera2ConfigAsync", "config", "Landroidx/camera/core/impl/Config;", "tags", _UrlKt.FRAGMENT_ENCODE_SET, "setTorchOnAsync", "Landroidx/camera/camera2/pipe/Result3A;", "setTorchOffAsync", "aeMode", "Landroidx/camera/camera2/pipe/AeMode;", "setTorchOffAsync-MtizInI", "(I)Lkotlinx/coroutines/Deferred;", "startFocusAndMeteringAsync", "aeRegions", "Landroid/hardware/camera2/params/MeteringRectangle;", "afRegions", "awbRegions", "aeLockBehavior", "Landroidx/camera/camera2/pipe/Lock3ABehavior;", "afLockBehavior", "awbLockBehavior", "afTriggerStartAeMode", "timeLimitNs", _UrlKt.FRAGMENT_ENCODE_SET, "startFocusAndMeteringAsync-NxRnBj4", "cancelFocusAndMeteringAsync", "issueSingleCaptureAsync", "Ljava/lang/Void;", "captureSequence", "Landroidx/camera/core/impl/CaptureConfig;", "captureMode", _UrlKt.FRAGMENT_ENCODE_SET, "flashType", "flashMode", "update3aRegions", "awaitSurfaceSetup", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "close", "Type", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public interface UseCaseCameraRequestControl {
    Object awaitSurfaceSetup(Continuation<? super Boolean> continuation);

    Deferred<Result3A> cancelFocusAndMeteringAsync();

    void close();

    List<Deferred<Void>> issueSingleCaptureAsync(List<CaptureConfig> captureSequence, int captureMode, int flashType, int flashMode);

    Deferred<Unit> removeParametersAsync(List<? extends CaptureRequest.Key<?>> keys, Type type);

    Deferred<Unit> setParametersAsync(Map<CaptureRequest.Key<?>, ? extends Object> values, Type type, Config.OptionPriority optionPriority);

    /* JADX INFO: renamed from: setTorchOffAsync-MtizInI */
    Deferred<Result3A> mo1193setTorchOffAsyncMtizInI(int aeMode);

    Deferred<Result3A> setTorchOnAsync();

    /* JADX INFO: renamed from: startFocusAndMeteringAsync-NxRnBj4 */
    Deferred<Result3A> mo1194startFocusAndMeteringAsyncNxRnBj4(List<MeteringRectangle> aeRegions, List<MeteringRectangle> afRegions, List<MeteringRectangle> awbRegions, Lock3ABehavior aeLockBehavior, Lock3ABehavior afLockBehavior, Lock3ABehavior awbLockBehavior, AeMode afTriggerStartAeMode, long timeLimitNs);

    Deferred<Unit> submitParameters(Map<CaptureRequest.Key<?>, ? extends Object> values, Type type, Config.OptionPriority optionPriority);

    Deferred<Result3A> update3aRegions(List<MeteringRectangle> aeRegions, List<MeteringRectangle> afRegions, List<MeteringRectangle> awbRegions);

    Deferred<Unit> updateCamera2ConfigAsync(Config config, Map<String, ? extends Object> tags);

    Deferred<Unit> updateRepeatingRequestAsync(boolean isPrimary, Collection<? extends UseCase> runningUseCases);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "SESSION_CONFIG", PluginsConstants.Strategy.DEFAULT, "CAMERA2_CAMERA_CONTROL", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Type {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Type[] $VALUES;
        public static final Type SESSION_CONFIG = new Type("SESSION_CONFIG", 0);
        public static final Type DEFAULT = new Type(PluginsConstants.Strategy.DEFAULT, 1);
        public static final Type CAMERA2_CAMERA_CONTROL = new Type("CAMERA2_CAMERA_CONTROL", 2);

        private static final /* synthetic */ Type[] $values() {
            return new Type[]{SESSION_CONFIG, DEFAULT, CAMERA2_CAMERA_CONTROL};
        }

        public static EnumEntries<Type> getEntries() {
            return $ENTRIES;
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }

        private Type(String str, int i) {
        }

        static {
            Type[] typeArr$values = $values();
            $VALUES = typeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(typeArr$values);
        }
    }

    static /* synthetic */ Deferred setParametersAsync$default(UseCaseCameraRequestControl useCaseCameraRequestControl, Map map, Type type, Config.OptionPriority optionPriority, int i, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m968m("Super calls with default arguments not supported in this target, function: setParametersAsync");
            return null;
        }
        if ((i & 2) != 0) {
            type = Type.DEFAULT;
        }
        if ((i & 4) != 0) {
            optionPriority = UseCaseCameraKt.getDefaultOptionPriority();
        }
        return useCaseCameraRequestControl.setParametersAsync(map, type, optionPriority);
    }

    static /* synthetic */ Deferred submitParameters$default(UseCaseCameraRequestControl useCaseCameraRequestControl, Map map, Type type, Config.OptionPriority optionPriority, int i, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m968m("Super calls with default arguments not supported in this target, function: submitParameters");
            return null;
        }
        if ((i & 2) != 0) {
            type = Type.DEFAULT;
        }
        if ((i & 4) != 0) {
            optionPriority = UseCaseCameraKt.getDefaultOptionPriority();
        }
        return useCaseCameraRequestControl.submitParameters(map, type, optionPriority);
    }

    static /* synthetic */ Deferred removeParametersAsync$default(UseCaseCameraRequestControl useCaseCameraRequestControl, List list, Type type, int i, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m968m("Super calls with default arguments not supported in this target, function: removeParametersAsync");
            return null;
        }
        if ((i & 2) != 0) {
            type = Type.DEFAULT;
        }
        return useCaseCameraRequestControl.removeParametersAsync(list, type);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: startFocusAndMeteringAsync-NxRnBj4$default, reason: not valid java name */
    static /* synthetic */ Deferred m1220startFocusAndMeteringAsyncNxRnBj4$default(UseCaseCameraRequestControl useCaseCameraRequestControl, List list, List list2, List list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode, long j, int i, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m968m("Super calls with default arguments not supported in this target, function: startFocusAndMeteringAsync-NxRnBj4");
            return null;
        }
        if ((i & 1) != 0) {
            list = null;
        }
        if ((i & 2) != 0) {
            list2 = null;
        }
        if ((i & 4) != 0) {
            list3 = null;
        }
        if ((i & 8) != 0) {
            lock3ABehavior = null;
        }
        if ((i & 16) != 0) {
            lock3ABehavior2 = null;
        }
        if ((i & 32) != 0) {
            lock3ABehavior3 = null;
        }
        if ((i & 64) != 0) {
            aeMode = null;
        }
        if ((i & 128) != 0) {
            j = 3000000000L;
        }
        return useCaseCameraRequestControl.mo1194startFocusAndMeteringAsyncNxRnBj4(list, list2, list3, lock3ABehavior, lock3ABehavior2, lock3ABehavior3, aeMode, j);
    }
}
