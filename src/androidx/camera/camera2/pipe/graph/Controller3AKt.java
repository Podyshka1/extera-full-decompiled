package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.Lock3ABehavior;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u001a'\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u0004\u0018\u0001H\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0002¢\u0006\u0002\u0010\u0005\u001a\u0013\u0010\u0006\u001a\u00020\u0001*\u0004\u0018\u00010\u0007H\u0000¢\u0006\u0002\b\b\u001a\u0013\u0010\t\u001a\u00020\u0001*\u0004\u0018\u00010\u0007H\u0000¢\u0006\u0002\b\n\u001a\u0013\u0010\u000b\u001a\u00020\u0001*\u0004\u0018\u00010\u0007H\u0000¢\u0006\u0002\b\f\u001a\u0013\u0010\r\u001a\u00020\u0001*\u0004\u0018\u00010\u0007H\u0000¢\u0006\u0002\b\u000e\u001a\u0013\u0010\u000f\u001a\u00020\u0001*\u0004\u0018\u00010\u0007H\u0000¢\u0006\u0002\b\u0010\u001a\u0013\u0010\u0011\u001a\u00020\u0001*\u0004\u0018\u00010\u0007H\u0000¢\u0006\u0002\b\u0012¨\u0006\u0013"}, d2 = {"isNullOrIn", _UrlKt.FRAGMENT_ENCODE_SET, "T", "collection", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/lang/Object;Ljava/util/Collection;)Z", "shouldUnlockAe", "Landroidx/camera/camera2/pipe/Lock3ABehavior;", "shouldUnlockAe-t6FjEyI", "shouldUnlockAf", "shouldUnlockAf-t6FjEyI", "shouldUnlockAwb", "shouldUnlockAwb-t6FjEyI", "shouldWaitForAeToConverge", "shouldWaitForAeToConverge-t6FjEyI", "shouldWaitForAwbToConverge", "shouldWaitForAwbToConverge-t6FjEyI", "shouldWaitForAfToConverge", "shouldWaitForAfToConverge-t6FjEyI", "camera-camera2-pipe"}, m910k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nController3A.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Controller3A.kt\nandroidx/camera/camera2/pipe/graph/Controller3AKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,897:1\n1#2:898\n*E\n"})
public abstract class Controller3AKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> boolean isNullOrIn(T t, Collection<? extends T> collection) {
        if (t != null) {
            return collection.contains(t);
        }
        return true;
    }

    /* JADX INFO: renamed from: shouldUnlockAe-t6FjEyI, reason: not valid java name */
    public static final boolean m1643shouldUnlockAet6FjEyI(Lock3ABehavior lock3ABehavior) {
        int iM1412getAFTER_NEW_SCANhRqSH3k = Lock3ABehavior.INSTANCE.m1412getAFTER_NEW_SCANhRqSH3k();
        if (lock3ABehavior == null) {
            return false;
        }
        return Lock3ABehavior.m1407equalsimpl0(lock3ABehavior.getValue(), iM1412getAFTER_NEW_SCANhRqSH3k);
    }

    /* JADX INFO: renamed from: shouldUnlockAf-t6FjEyI, reason: not valid java name */
    public static final boolean m1644shouldUnlockAft6FjEyI(Lock3ABehavior lock3ABehavior) {
        int iM1412getAFTER_NEW_SCANhRqSH3k = Lock3ABehavior.INSTANCE.m1412getAFTER_NEW_SCANhRqSH3k();
        if (lock3ABehavior == null) {
            return false;
        }
        return Lock3ABehavior.m1407equalsimpl0(lock3ABehavior.getValue(), iM1412getAFTER_NEW_SCANhRqSH3k);
    }

    /* JADX INFO: renamed from: shouldUnlockAwb-t6FjEyI, reason: not valid java name */
    public static final boolean m1645shouldUnlockAwbt6FjEyI(Lock3ABehavior lock3ABehavior) {
        int iM1412getAFTER_NEW_SCANhRqSH3k = Lock3ABehavior.INSTANCE.m1412getAFTER_NEW_SCANhRqSH3k();
        if (lock3ABehavior == null) {
            return false;
        }
        return Lock3ABehavior.m1407equalsimpl0(lock3ABehavior.getValue(), iM1412getAFTER_NEW_SCANhRqSH3k);
    }

    /* JADX INFO: renamed from: shouldWaitForAeToConverge-t6FjEyI, reason: not valid java name */
    public static final boolean m1646shouldWaitForAeToConverget6FjEyI(Lock3ABehavior lock3ABehavior) {
        if (lock3ABehavior != null) {
            return !Lock3ABehavior.m1407equalsimpl0(lock3ABehavior.getValue(), Lock3ABehavior.INSTANCE.m1413getIMMEDIATEhRqSH3k());
        }
        return false;
    }

    /* JADX INFO: renamed from: shouldWaitForAwbToConverge-t6FjEyI, reason: not valid java name */
    public static final boolean m1648shouldWaitForAwbToConverget6FjEyI(Lock3ABehavior lock3ABehavior) {
        if (lock3ABehavior != null) {
            return !Lock3ABehavior.m1407equalsimpl0(lock3ABehavior.getValue(), Lock3ABehavior.INSTANCE.m1413getIMMEDIATEhRqSH3k());
        }
        return false;
    }

    /* JADX INFO: renamed from: shouldWaitForAfToConverge-t6FjEyI, reason: not valid java name */
    public static final boolean m1647shouldWaitForAfToConverget6FjEyI(Lock3ABehavior lock3ABehavior) {
        if (lock3ABehavior != null) {
            return !Lock3ABehavior.m1407equalsimpl0(lock3ABehavior.getValue(), Lock3ABehavior.INSTANCE.m1413getIMMEDIATEhRqSH3k());
        }
        return false;
    }
}
