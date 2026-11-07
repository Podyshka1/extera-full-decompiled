package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import androidx.camera.camera2.pipe.FlashMode;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0001\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0097\u0001\u0010\u0018\u001a\u00020\u00152\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0016\u0010\u0017J\u001d\u0010\u001b\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001a\u0012\u0004\u0012\u00020\u00010\u0019¢\u0006\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R$\u0010&\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u001e8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006'"}, d2 = {"Landroidx/camera/camera2/pipe/graph/GraphState3A;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/camera/camera2/pipe/AeMode;", "aeMode", "Landroidx/camera/camera2/pipe/AfMode;", "afMode", "Landroidx/camera/camera2/pipe/AwbMode;", "awbMode", "Landroidx/camera/camera2/pipe/FlashMode;", "flashMode", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/params/MeteringRectangle;", "aeRegions", "afRegions", "awbRegions", _UrlKt.FRAGMENT_ENCODE_SET, "aeLock", "afLock", "awbLock", _UrlKt.FRAGMENT_ENCODE_SET, "update-7jOEVJU", "(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", PluginsConstants.UPDATE, _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/CaptureRequest$Key;", "toCaptureRequestParametersMap", "()Ljava/util/Map;", "Lkotlinx/atomicfu/AtomicRef;", "Landroidx/camera/camera2/pipe/graph/State3A;", "_state", "Lkotlinx/atomicfu/AtomicRef;", "value", "getCurrent", "()Landroidx/camera/camera2/pipe/graph/State3A;", "setCurrent", "(Landroidx/camera/camera2/pipe/graph/State3A;)V", "current", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGraphState3A.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GraphState3A.kt\nandroidx/camera/camera2/pipe/graph/GraphState3A\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,154:1\n164#2,3:155\n167#2:159\n1#3:158\n*S KotlinDebug\n*F\n+ 1 GraphState3A.kt\nandroidx/camera/camera2/pipe/graph/GraphState3A\n*L\n134#1:155,3\n134#1:159\n*E\n"})
public final class GraphState3A {
    private final AtomicRef<State3A> _state = AtomicFU.atomic(new State3A(null, null, null, null, null, null, null, null, null, null, 1023, null));

    public final State3A getCurrent() {
        return this._state.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: update-7jOEVJU$default, reason: not valid java name */
    public static /* synthetic */ void m1596update7jOEVJU$default(GraphState3A graphState3A, AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List list, List list2, List list3, Boolean bool, Boolean bool2, Boolean bool3, int i, Object obj) {
        if ((i & 1) != 0) {
            aeMode = null;
        }
        if ((i & 2) != 0) {
            afMode = null;
        }
        if ((i & 4) != 0) {
            awbMode = null;
        }
        if ((i & 8) != 0) {
            flashMode = null;
        }
        if ((i & 16) != 0) {
            list = null;
        }
        if ((i & 32) != 0) {
            list2 = null;
        }
        if ((i & 64) != 0) {
            list3 = null;
        }
        if ((i & 128) != 0) {
            bool = null;
        }
        if ((i & 256) != 0) {
            bool2 = null;
        }
        if ((i & 512) != 0) {
            bool3 = null;
        }
        graphState3A.m1597update7jOEVJU(aeMode, afMode, awbMode, flashMode, list, list2, list3, bool, bool2, bool3);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0068  */
    /* JADX INFO: renamed from: update-7jOEVJU, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m1597update7jOEVJU(AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List<MeteringRectangle> aeRegions, List<MeteringRectangle> afRegions, List<MeteringRectangle> awbRegions, Boolean aeLock, Boolean afLock, Boolean awbLock) {
        State3A value;
        State3A state3A;
        AeMode aeMode2;
        AfMode afMode2;
        AwbMode awbMode2;
        FlashMode flashMode2;
        List<MeteringRectangle> aeRegions2;
        List<MeteringRectangle> afRegions2;
        List<MeteringRectangle> awbRegions2;
        Boolean aeLock2;
        Boolean afLock2;
        List<MeteringRectangle> list;
        List<MeteringRectangle> list2;
        List<MeteringRectangle> list3;
        Boolean awbLock2;
        AtomicRef<State3A> atomicRef = this._state;
        do {
            value = atomicRef.getValue();
            state3A = value;
            aeMode2 = aeMode == null ? state3A.getAeMode() : aeMode;
            afMode2 = afMode == null ? state3A.getAfMode() : afMode;
            awbMode2 = awbMode == null ? state3A.getAwbMode() : awbMode;
            flashMode2 = flashMode == null ? state3A.getFlashMode() : flashMode;
            if (aeRegions != null) {
                List<MeteringRectangle> list4 = aeRegions;
                if (list4.isEmpty()) {
                    list4 = null;
                }
                aeRegions2 = list4;
                if (aeRegions2 == null) {
                    aeRegions2 = state3A.getAeRegions();
                }
            }
            if (afRegions != null) {
                List<MeteringRectangle> list5 = afRegions;
                if (list5.isEmpty()) {
                    list5 = null;
                }
                afRegions2 = list5;
                if (afRegions2 == null) {
                    afRegions2 = state3A.getAfRegions();
                }
            }
            if (awbRegions != null) {
                List<MeteringRectangle> list6 = awbRegions;
                awbRegions2 = list6.isEmpty() ? null : list6;
                if (awbRegions2 == null) {
                    awbRegions2 = state3A.getAwbRegions();
                }
            }
            aeLock2 = aeLock == null ? state3A.getAeLock() : aeLock;
            afLock2 = afLock == null ? state3A.getAfLock() : afLock;
            if (awbLock == null) {
                awbLock2 = state3A.getAwbLock();
                List<MeteringRectangle> list7 = afRegions2;
                list = awbRegions2;
                list2 = aeRegions2;
                list3 = list7;
            } else {
                List<MeteringRectangle> list8 = afRegions2;
                list = awbRegions2;
                list2 = aeRegions2;
                list3 = list8;
                awbLock2 = awbLock;
            }
        } while (!atomicRef.compareAndSet(value, state3A.m1603copy7jOEVJU(aeMode2, afMode2, awbMode2, flashMode2, list2, list3, list, aeLock2, afLock2, awbLock2)));
    }

    public final Map<CaptureRequest.Key<?>, Object> toCaptureRequestParametersMap() {
        return GraphState3AKt.toCaptureRequestParameterMap(getCurrent());
    }
}
