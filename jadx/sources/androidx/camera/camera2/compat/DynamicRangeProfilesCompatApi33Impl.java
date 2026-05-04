package androidx.camera.camera2.compat;

import android.hardware.camera2.params.DynamicRangeProfiles;
import android.util.Log;
import androidx.camera.camera2.compat.DynamicRangeProfilesCompat;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.internal.DynamicRangeConversions;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes3.dex */
public final class DynamicRangeProfilesCompatApi33Impl implements DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl {
    private final DynamicRangeProfiles dynamicRangeProfiles;

    public DynamicRangeProfilesCompatApi33Impl(DynamicRangeProfiles dynamicRangeProfiles) {
        Intrinsics.checkNotNullParameter(dynamicRangeProfiles, "dynamicRangeProfiles");
        this.dynamicRangeProfiles = dynamicRangeProfiles;
    }

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl
    public Set getSupportedDynamicRanges() {
        Set<Long> supportedProfiles = this.dynamicRangeProfiles.getSupportedProfiles();
        Intrinsics.checkNotNullExpressionValue(supportedProfiles, "getSupportedProfiles(...)");
        return profileSetToDynamicRangeSet(supportedProfiles);
    }

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl
    public Set getDynamicRangeCaptureRequestConstraints(DynamicRange dynamicRange) {
        Intrinsics.checkNotNullParameter(dynamicRange, "dynamicRange");
        Long lDynamicRangeToFirstSupportedProfile = dynamicRangeToFirstSupportedProfile(dynamicRange);
        if (lDynamicRangeToFirstSupportedProfile == null) {
            throw new IllegalArgumentException(("DynamicRange is not supported: " + dynamicRange).toString());
        }
        Set<Long> profileCaptureRequestConstraints = this.dynamicRangeProfiles.getProfileCaptureRequestConstraints(lDynamicRangeToFirstSupportedProfile.longValue());
        Intrinsics.checkNotNullExpressionValue(profileCaptureRequestConstraints, "getProfileCaptureRequestConstraints(...)");
        return profileSetToDynamicRangeSet(profileCaptureRequestConstraints);
    }

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl
    public DynamicRangeProfiles unwrap() {
        return this.dynamicRangeProfiles;
    }

    private final Long dynamicRangeToFirstSupportedProfile(DynamicRange dynamicRange) {
        return DynamicRangeConversions.INSTANCE.dynamicRangeToFirstSupportedProfile(dynamicRange, this.dynamicRangeProfiles);
    }

    private final DynamicRange profileToDynamicRange(long j) {
        DynamicRange dynamicRangeProfileToDynamicRange = DynamicRangeConversions.INSTANCE.profileToDynamicRange(j);
        if (dynamicRangeProfileToDynamicRange == null) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled("CXCP")) {
                Log.w(Camera2Logger.TRUNCATED_TAG, "Dynamic range profile cannot be converted to a DynamicRange object: " + j);
            }
        }
        return dynamicRangeProfileToDynamicRange;
    }

    private final Set profileSetToDynamicRangeSet(Set set) {
        if (set.isEmpty()) {
            return SetsKt.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            DynamicRange dynamicRangeProfileToDynamicRange = profileToDynamicRange(((Number) it.next()).longValue());
            if (dynamicRangeProfileToDynamicRange != null) {
                linkedHashSet.add(dynamicRangeProfileToDynamicRange);
            }
        }
        Set setUnmodifiableSet = DesugarCollections.unmodifiableSet(linkedHashSet);
        Intrinsics.checkNotNullExpressionValue(setUnmodifiableSet, "unmodifiableSet(...)");
        return setUnmodifiableSet;
    }
}
