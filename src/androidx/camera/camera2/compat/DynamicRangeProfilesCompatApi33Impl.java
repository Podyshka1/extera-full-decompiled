package androidx.camera.camera2.compat;

import android.hardware.camera2.params.DynamicRangeProfiles;
import android.util.Log;
import androidx.camera.camera2.compat.DynamicRangeProfilesCompat;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.internal.DynamicRangeConversions;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Options$Companion$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\f\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\f\u0010\rJ#\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u000e2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0016R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00060\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatApi33Impl;", "Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;", "Landroid/hardware/camera2/params/DynamicRangeProfiles;", "dynamicRangeProfiles", "<init>", "(Landroid/hardware/camera2/params/DynamicRangeProfiles;)V", "Landroidx/camera/core/DynamicRange;", "dynamicRange", _UrlKt.FRAGMENT_ENCODE_SET, "dynamicRangeToFirstSupportedProfile", "(Landroidx/camera/core/DynamicRange;)Ljava/lang/Long;", "profile", "profileToDynamicRange", "(J)Landroidx/camera/core/DynamicRange;", _UrlKt.FRAGMENT_ENCODE_SET, "profileSet", "profileSetToDynamicRangeSet", "(Ljava/util/Set;)Ljava/util/Set;", "getDynamicRangeCaptureRequestConstraints", "(Landroidx/camera/core/DynamicRange;)Ljava/util/Set;", "unwrap", "()Landroid/hardware/camera2/params/DynamicRangeProfiles;", "Landroid/hardware/camera2/params/DynamicRangeProfiles;", "getSupportedDynamicRanges", "()Ljava/util/Set;", "supportedDynamicRanges", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDynamicRangeProfilesCompatApi33Impl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicRangeProfilesCompatApi33Impl.kt\nandroidx/camera/camera2/compat/DynamicRangeProfilesCompatApi33Impl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,78:1\n1#2:79\n119#3,4:80\n*S KotlinDebug\n*F\n+ 1 DynamicRangeProfilesCompatApi33Impl.kt\nandroidx/camera/camera2/compat/DynamicRangeProfilesCompatApi33Impl\n*L\n60#1:80,4\n*E\n"})
public final class DynamicRangeProfilesCompatApi33Impl implements DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl {
    private final DynamicRangeProfiles dynamicRangeProfiles;

    public DynamicRangeProfilesCompatApi33Impl(DynamicRangeProfiles dynamicRangeProfiles) {
        this.dynamicRangeProfiles = dynamicRangeProfiles;
    }

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl
    public Set<DynamicRange> getSupportedDynamicRanges() {
        return profileSetToDynamicRangeSet(this.dynamicRangeProfiles.getSupportedProfiles());
    }

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl
    public Set<DynamicRange> getDynamicRangeCaptureRequestConstraints(DynamicRange dynamicRange) {
        Long lDynamicRangeToFirstSupportedProfile = dynamicRangeToFirstSupportedProfile(dynamicRange);
        if (lDynamicRangeToFirstSupportedProfile == null) {
            Options$Companion$$ExternalSyntheticBUOutline0.m846m("DynamicRange is not supported: ", dynamicRange);
            return null;
        }
        return profileSetToDynamicRangeSet(this.dynamicRangeProfiles.getProfileCaptureRequestConstraints(lDynamicRangeToFirstSupportedProfile.longValue()));
    }

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl
    /* JADX INFO: renamed from: unwrap, reason: from getter */
    public DynamicRangeProfiles getDynamicRangeProfiles() {
        return this.dynamicRangeProfiles;
    }

    private final Long dynamicRangeToFirstSupportedProfile(DynamicRange dynamicRange) {
        return DynamicRangeConversions.INSTANCE.dynamicRangeToFirstSupportedProfile(dynamicRange, this.dynamicRangeProfiles);
    }

    private final DynamicRange profileToDynamicRange(long profile) {
        DynamicRange dynamicRangeProfileToDynamicRange = DynamicRangeConversions.INSTANCE.profileToDynamicRange(profile);
        if (dynamicRangeProfileToDynamicRange == null) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled("CXCP")) {
                Log.w(Camera2Logger.TRUNCATED_TAG, "Dynamic range profile cannot be converted to a DynamicRange object: " + profile);
            }
        }
        return dynamicRangeProfileToDynamicRange;
    }

    private final Set<DynamicRange> profileSetToDynamicRangeSet(Set<Long> profileSet) {
        if (profileSet.isEmpty()) {
            return SetsKt.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<Long> it = profileSet.iterator();
        while (it.hasNext()) {
            DynamicRange dynamicRangeProfileToDynamicRange = profileToDynamicRange(it.next().longValue());
            if (dynamicRangeProfileToDynamicRange != null) {
                linkedHashSet.add(dynamicRangeProfileToDynamicRange);
            }
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }
}
