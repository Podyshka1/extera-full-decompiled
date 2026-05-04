package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.Lock3ABehavior;
import java.util.Collection;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Controller3AKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isNullOrIn(Object obj, Collection collection) {
        if (obj != null) {
            return collection.contains(obj);
        }
        return true;
    }

    /* JADX INFO: renamed from: shouldUnlockAe-t6FjEyI, reason: not valid java name */
    public static final boolean m1903shouldUnlockAet6FjEyI(Lock3ABehavior lock3ABehavior) {
        int iM1663getAFTER_NEW_SCANhRqSH3k = Lock3ABehavior.Companion.m1663getAFTER_NEW_SCANhRqSH3k();
        if (lock3ABehavior == null) {
            return false;
        }
        return Lock3ABehavior.m1658equalsimpl0(lock3ABehavior.m1661unboximpl(), iM1663getAFTER_NEW_SCANhRqSH3k);
    }

    /* JADX INFO: renamed from: shouldUnlockAf-t6FjEyI, reason: not valid java name */
    public static final boolean m1904shouldUnlockAft6FjEyI(Lock3ABehavior lock3ABehavior) {
        int iM1663getAFTER_NEW_SCANhRqSH3k = Lock3ABehavior.Companion.m1663getAFTER_NEW_SCANhRqSH3k();
        if (lock3ABehavior == null) {
            return false;
        }
        return Lock3ABehavior.m1658equalsimpl0(lock3ABehavior.m1661unboximpl(), iM1663getAFTER_NEW_SCANhRqSH3k);
    }

    /* JADX INFO: renamed from: shouldUnlockAwb-t6FjEyI, reason: not valid java name */
    public static final boolean m1905shouldUnlockAwbt6FjEyI(Lock3ABehavior lock3ABehavior) {
        int iM1663getAFTER_NEW_SCANhRqSH3k = Lock3ABehavior.Companion.m1663getAFTER_NEW_SCANhRqSH3k();
        if (lock3ABehavior == null) {
            return false;
        }
        return Lock3ABehavior.m1658equalsimpl0(lock3ABehavior.m1661unboximpl(), iM1663getAFTER_NEW_SCANhRqSH3k);
    }

    /* JADX INFO: renamed from: shouldWaitForAeToConverge-t6FjEyI, reason: not valid java name */
    public static final boolean m1906shouldWaitForAeToConverget6FjEyI(Lock3ABehavior lock3ABehavior) {
        if (lock3ABehavior != null) {
            return !Lock3ABehavior.m1658equalsimpl0(lock3ABehavior.m1661unboximpl(), Lock3ABehavior.Companion.m1664getIMMEDIATEhRqSH3k());
        }
        return false;
    }

    /* JADX INFO: renamed from: shouldWaitForAwbToConverge-t6FjEyI, reason: not valid java name */
    public static final boolean m1908shouldWaitForAwbToConverget6FjEyI(Lock3ABehavior lock3ABehavior) {
        if (lock3ABehavior != null) {
            return !Lock3ABehavior.m1658equalsimpl0(lock3ABehavior.m1661unboximpl(), Lock3ABehavior.Companion.m1664getIMMEDIATEhRqSH3k());
        }
        return false;
    }

    /* JADX INFO: renamed from: shouldWaitForAfToConverge-t6FjEyI, reason: not valid java name */
    public static final boolean m1907shouldWaitForAfToConverget6FjEyI(Lock3ABehavior lock3ABehavior) {
        if (lock3ABehavior != null) {
            return !Lock3ABehavior.m1658equalsimpl0(lock3ABehavior.m1661unboximpl(), Lock3ABehavior.Companion.m1664getIMMEDIATEhRqSH3k());
        }
        return false;
    }
}
