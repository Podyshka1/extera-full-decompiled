package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import androidx.camera.camera2.pipe.FlashMode;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class State3A {
    private final Boolean aeLock;
    private final AeMode aeMode;
    private final List aeRegions;
    private final Boolean afLock;
    private final AfMode afMode;
    private final List afRegions;
    private final Boolean awbLock;
    private final AwbMode awbMode;
    private final List awbRegions;
    private final FlashMode flashMode;

    public /* synthetic */ State3A(AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List list, List list2, List list3, Boolean bool, Boolean bool2, Boolean bool3, DefaultConstructorMarker defaultConstructorMarker) {
        this(aeMode, afMode, awbMode, flashMode, list, list2, list3, bool, bool2, bool3);
    }

    /* JADX INFO: renamed from: copy-7jOEVJU, reason: not valid java name */
    public final State3A m1916copy7jOEVJU(AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List list, List list2, List list3, Boolean bool, Boolean bool2, Boolean bool3) {
        return new State3A(aeMode, afMode, awbMode, flashMode, list, list2, list3, bool, bool2, bool3, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof State3A)) {
            return false;
        }
        State3A state3A = (State3A) obj;
        return Intrinsics.areEqual(this.aeMode, state3A.aeMode) && Intrinsics.areEqual(this.afMode, state3A.afMode) && Intrinsics.areEqual(this.awbMode, state3A.awbMode) && Intrinsics.areEqual(this.flashMode, state3A.flashMode) && Intrinsics.areEqual(this.aeRegions, state3A.aeRegions) && Intrinsics.areEqual(this.afRegions, state3A.afRegions) && Intrinsics.areEqual(this.awbRegions, state3A.awbRegions) && Intrinsics.areEqual(this.aeLock, state3A.aeLock) && Intrinsics.areEqual(this.afLock, state3A.afLock) && Intrinsics.areEqual(this.awbLock, state3A.awbLock);
    }

    public int hashCode() {
        AeMode aeMode = this.aeMode;
        int iM1488hashCodeimpl = (aeMode == null ? 0 : AeMode.m1488hashCodeimpl(aeMode.m1491unboximpl())) * 31;
        AfMode afMode = this.afMode;
        int iM1498hashCodeimpl = (iM1488hashCodeimpl + (afMode == null ? 0 : AfMode.m1498hashCodeimpl(afMode.m1502unboximpl()))) * 31;
        AwbMode awbMode = this.awbMode;
        int iM1518hashCodeimpl = (iM1498hashCodeimpl + (awbMode == null ? 0 : AwbMode.m1518hashCodeimpl(awbMode.m1521unboximpl()))) * 31;
        FlashMode flashMode = this.flashMode;
        int iM1633hashCodeimpl = (iM1518hashCodeimpl + (flashMode == null ? 0 : FlashMode.m1633hashCodeimpl(flashMode.m1635unboximpl()))) * 31;
        List list = this.aeRegions;
        int iHashCode = (iM1633hashCodeimpl + (list == null ? 0 : list.hashCode())) * 31;
        List list2 = this.afRegions;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List list3 = this.awbRegions;
        int iHashCode3 = (iHashCode2 + (list3 == null ? 0 : list3.hashCode())) * 31;
        Boolean bool = this.aeLock;
        int iHashCode4 = (iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.afLock;
        int iHashCode5 = (iHashCode4 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.awbLock;
        return iHashCode5 + (bool3 != null ? bool3.hashCode() : 0);
    }

    public String toString() {
        return "State3A(aeMode=" + this.aeMode + ", afMode=" + this.afMode + ", awbMode=" + this.awbMode + ", flashMode=" + this.flashMode + ", aeRegions=" + this.aeRegions + ", afRegions=" + this.afRegions + ", awbRegions=" + this.awbRegions + ", aeLock=" + this.aeLock + ", afLock=" + this.afLock + ", awbLock=" + this.awbLock + ')';
    }

    private State3A(AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List list, List list2, List list3, Boolean bool, Boolean bool2, Boolean bool3) {
        this.aeMode = aeMode;
        this.afMode = afMode;
        this.awbMode = awbMode;
        this.flashMode = flashMode;
        this.aeRegions = list;
        this.afRegions = list2;
        this.awbRegions = list3;
        this.aeLock = bool;
        this.afLock = bool2;
        this.awbLock = bool3;
    }

    public /* synthetic */ State3A(AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List list, List list2, List list3, Boolean bool, Boolean bool2, Boolean bool3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : aeMode, (i & 2) != 0 ? null : afMode, (i & 4) != 0 ? null : awbMode, (i & 8) != 0 ? null : flashMode, (i & 16) != 0 ? null : list, (i & 32) != 0 ? null : list2, (i & 64) != 0 ? null : list3, (i & 128) != 0 ? null : bool, (i & 256) != 0 ? null : bool2, (i & 512) == 0 ? bool3 : null, null);
    }

    /* JADX INFO: renamed from: getAeMode-O_cDUUs, reason: not valid java name */
    public final AeMode m1917getAeModeO_cDUUs() {
        return this.aeMode;
    }

    /* JADX INFO: renamed from: getAfMode-32_E3BI, reason: not valid java name */
    public final AfMode m1918getAfMode32_E3BI() {
        return this.afMode;
    }

    /* JADX INFO: renamed from: getAwbMode-aLFtWSU, reason: not valid java name */
    public final AwbMode m1919getAwbModeaLFtWSU() {
        return this.awbMode;
    }

    /* JADX INFO: renamed from: getFlashMode-cL-19HE, reason: not valid java name */
    public final FlashMode m1920getFlashModecL19HE() {
        return this.flashMode;
    }

    public final List getAeRegions() {
        return this.aeRegions;
    }

    public final List getAfRegions() {
        return this.afRegions;
    }

    public final List getAwbRegions() {
        return this.awbRegions;
    }

    public final Boolean getAeLock() {
        return this.aeLock;
    }

    public final Boolean getAfLock() {
        return this.afLock;
    }

    public final Boolean getAwbLock() {
        return this.awbLock;
    }
}
