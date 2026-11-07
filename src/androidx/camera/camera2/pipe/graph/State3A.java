package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.params.MeteringRectangle;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import androidx.camera.camera2.pipe.FlashMode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001c\b\u0080\b\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0013\u0010\u0014J\u009a\u0001\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n2\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000fHÆ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0019\u001a\u00020\u0018HÖ\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001c\u001a\u00020\u001bHÖ\u0001¢\u0006\u0004\b\u001c\u0010\u001dJ\u001a\u0010\u001f\u001a\u00020\u000f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001f\u0010 R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010!\u001a\u0004\b\"\u0010#R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010$\u001a\u0004\b%\u0010&R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010'\u001a\u0004\b(\u0010)R\u0019\u0010\t\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\t\u0010*\u001a\u0004\b+\u0010,R\u001f\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\f\u0010-\u001a\u0004\b.\u0010/R\u001f\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\r\u0010-\u001a\u0004\b0\u0010/R\u001f\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\u000e\u0010-\u001a\u0004\b1\u0010/R\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u00102\u001a\u0004\b3\u00104R\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u000f8\u0006¢\u0006\f\n\u0004\b\u0011\u00102\u001a\u0004\b5\u00104R\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0006¢\u0006\f\n\u0004\b\u0012\u00102\u001a\u0004\b6\u00104¨\u00067"}, d2 = {"Landroidx/camera/camera2/pipe/graph/State3A;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/AeMode;", "aeMode", "Landroidx/camera/camera2/pipe/AfMode;", "afMode", "Landroidx/camera/camera2/pipe/AwbMode;", "awbMode", "Landroidx/camera/camera2/pipe/FlashMode;", "flashMode", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/params/MeteringRectangle;", "aeRegions", "afRegions", "awbRegions", _UrlKt.FRAGMENT_ENCODE_SET, "aeLock", "afLock", "awbLock", "<init>", "(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "copy-7jOEVJU", "(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Landroidx/camera/camera2/pipe/graph/State3A;", "copy", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Landroidx/camera/camera2/pipe/AeMode;", "getAeMode-O_cDUUs", "()Landroidx/camera/camera2/pipe/AeMode;", "Landroidx/camera/camera2/pipe/AfMode;", "getAfMode-32_E3BI", "()Landroidx/camera/camera2/pipe/AfMode;", "Landroidx/camera/camera2/pipe/AwbMode;", "getAwbMode-aLFtWSU", "()Landroidx/camera/camera2/pipe/AwbMode;", "Landroidx/camera/camera2/pipe/FlashMode;", "getFlashMode-cL-19HE", "()Landroidx/camera/camera2/pipe/FlashMode;", "Ljava/util/List;", "getAeRegions", "()Ljava/util/List;", "getAfRegions", "getAwbRegions", "Ljava/lang/Boolean;", "getAeLock", "()Ljava/lang/Boolean;", "getAfLock", "getAwbLock", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class State3A {
    private final Boolean aeLock;
    private final AeMode aeMode;
    private final List<MeteringRectangle> aeRegions;
    private final Boolean afLock;
    private final AfMode afMode;
    private final List<MeteringRectangle> afRegions;
    private final Boolean awbLock;
    private final AwbMode awbMode;
    private final List<MeteringRectangle> awbRegions;
    private final FlashMode flashMode;

    public /* synthetic */ State3A(AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List list, List list2, List list3, Boolean bool, Boolean bool2, Boolean bool3, DefaultConstructorMarker defaultConstructorMarker) {
        this(aeMode, afMode, awbMode, flashMode, list, list2, list3, bool, bool2, bool3);
    }

    /* JADX INFO: renamed from: copy-7jOEVJU, reason: not valid java name */
    public final State3A m1603copy7jOEVJU(AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List<MeteringRectangle> aeRegions, List<MeteringRectangle> afRegions, List<MeteringRectangle> awbRegions, Boolean aeLock, Boolean afLock, Boolean awbLock) {
        return new State3A(aeMode, afMode, awbMode, flashMode, aeRegions, afRegions, awbRegions, aeLock, afLock, awbLock, null);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof State3A)) {
            return false;
        }
        State3A state3A = (State3A) other;
        return Intrinsics.areEqual(this.aeMode, state3A.aeMode) && Intrinsics.areEqual(this.afMode, state3A.afMode) && Intrinsics.areEqual(this.awbMode, state3A.awbMode) && Intrinsics.areEqual(this.flashMode, state3A.flashMode) && Intrinsics.areEqual(this.aeRegions, state3A.aeRegions) && Intrinsics.areEqual(this.afRegions, state3A.afRegions) && Intrinsics.areEqual(this.awbRegions, state3A.awbRegions) && Intrinsics.areEqual(this.aeLock, state3A.aeLock) && Intrinsics.areEqual(this.afLock, state3A.afLock) && Intrinsics.areEqual(this.awbLock, state3A.awbLock);
    }

    public int hashCode() {
        AeMode aeMode = this.aeMode;
        int iM1184hashCodeimpl = (aeMode == null ? 0 : AeMode.m1184hashCodeimpl(aeMode.getValue())) * 31;
        AfMode afMode = this.afMode;
        int iM1194hashCodeimpl = (iM1184hashCodeimpl + (afMode == null ? 0 : AfMode.m1194hashCodeimpl(afMode.getValue()))) * 31;
        AwbMode awbMode = this.awbMode;
        int iM1214hashCodeimpl = (iM1194hashCodeimpl + (awbMode == null ? 0 : AwbMode.m1214hashCodeimpl(awbMode.getValue()))) * 31;
        FlashMode flashMode = this.flashMode;
        int iM1329hashCodeimpl = (iM1214hashCodeimpl + (flashMode == null ? 0 : FlashMode.m1329hashCodeimpl(flashMode.getValue()))) * 31;
        List<MeteringRectangle> list = this.aeRegions;
        int iHashCode = (iM1329hashCodeimpl + (list == null ? 0 : list.hashCode())) * 31;
        List<MeteringRectangle> list2 = this.afRegions;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<MeteringRectangle> list3 = this.awbRegions;
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

    private State3A(AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3, Boolean bool, Boolean bool2, Boolean bool3) {
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
        this((i & 1) != 0 ? null : aeMode, (i & 2) != 0 ? null : afMode, (i & 4) != 0 ? null : awbMode, (i & 8) != 0 ? null : flashMode, (i & 16) != 0 ? null : list, (i & 32) != 0 ? null : list2, (i & 64) != 0 ? null : list3, (i & 128) != 0 ? null : bool, (i & 256) != 0 ? null : bool2, (i & 512) != 0 ? null : bool3, null);
    }

    /* JADX INFO: renamed from: getAeMode-O_cDUUs, reason: not valid java name and from getter */
    public final AeMode getAeMode() {
        return this.aeMode;
    }

    /* JADX INFO: renamed from: getAfMode-32_E3BI, reason: not valid java name and from getter */
    public final AfMode getAfMode() {
        return this.afMode;
    }

    /* JADX INFO: renamed from: getAwbMode-aLFtWSU, reason: not valid java name and from getter */
    public final AwbMode getAwbMode() {
        return this.awbMode;
    }

    /* JADX INFO: renamed from: getFlashMode-cL-19HE, reason: not valid java name and from getter */
    public final FlashMode getFlashMode() {
        return this.flashMode;
    }

    public final List<MeteringRectangle> getAeRegions() {
        return this.aeRegions;
    }

    public final List<MeteringRectangle> getAfRegions() {
        return this.afRegions;
    }

    public final List<MeteringRectangle> getAwbRegions() {
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
