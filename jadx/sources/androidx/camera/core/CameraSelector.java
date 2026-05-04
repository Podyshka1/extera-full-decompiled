package androidx.camera.core;

import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Identifier;
import androidx.camera.core.impl.LensFacingCameraFilter;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import p022j$.util.DesugarCollections;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraSelector {
    private final LinkedHashSet mCameraFilterSet;
    private final String mPhysicalCameraId;
    public static final CameraSelector DEFAULT_FRONT_CAMERA = new Builder().requireLensFacing(0).build();
    public static final CameraSelector DEFAULT_BACK_CAMERA = new Builder().requireLensFacing(1).build();

    CameraSelector(LinkedHashSet linkedHashSet, String str) {
        this.mCameraFilterSet = linkedHashSet;
        this.mPhysicalCameraId = str;
    }

    public CameraInternal select(LinkedHashSet linkedHashSet) {
        Iterator it = filter(linkedHashSet).iterator();
        if (it.hasNext()) {
            return (CameraInternal) it.next();
        }
        throw new IllegalArgumentException(String.format("No available camera can be found. %s %s", logCameras(linkedHashSet), logSelector()));
    }

    private String logCameras(Set set) {
        StringBuilder sb = new StringBuilder();
        sb.append("Cams:");
        sb.append(set.size());
        Iterator it = set.iterator();
        while (it.hasNext()) {
            CameraInfoInternal cameraInfoInternal = ((CameraInternal) it.next()).getCameraInfoInternal();
            sb.append(String.format(" Id:%s  Lens:%s", cameraInfoInternal.getCameraId(), Integer.valueOf(cameraInfoInternal.getLensFacing())));
        }
        return sb.toString();
    }

    private String logSelector() {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format("PhyId:%s  Filters:%s", this.mPhysicalCameraId, Integer.valueOf(this.mCameraFilterSet.size())));
        for (CameraFilter cameraFilter : this.mCameraFilterSet) {
            sb.append(" Id:");
            sb.append(cameraFilter.getIdentifier());
            if (cameraFilter instanceof LensFacingCameraFilter) {
                sb.append(" LensFilter:");
                sb.append(((LensFacingCameraFilter) cameraFilter).getLensFacing());
            }
        }
        return sb.toString();
    }

    public List filter(List list) {
        List arrayList = new ArrayList(list);
        Iterator it = this.mCameraFilterSet.iterator();
        while (it.hasNext()) {
            arrayList = ((CameraFilter) it.next()).filter(DesugarCollections.unmodifiableList(arrayList));
        }
        arrayList.retainAll(list);
        return arrayList;
    }

    public LinkedHashSet filter(LinkedHashSet linkedHashSet) {
        ArrayList arrayList = new ArrayList();
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            arrayList.add(((CameraInternal) it.next()).getCameraInfo());
        }
        List listFilter = filter(arrayList);
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        Iterator it2 = linkedHashSet.iterator();
        while (it2.hasNext()) {
            CameraInternal cameraInternal = (CameraInternal) it2.next();
            if (listFilter.contains(cameraInternal.getCameraInfo())) {
                linkedHashSet2.add(cameraInternal);
            }
        }
        return linkedHashSet2;
    }

    public LinkedHashSet getCameraFilterSet() {
        return this.mCameraFilterSet;
    }

    public Integer getLensFacing() {
        Integer num = null;
        for (CameraFilter cameraFilter : this.mCameraFilterSet) {
            if (cameraFilter instanceof LensFacingCameraFilter) {
                Integer numValueOf = Integer.valueOf(((LensFacingCameraFilter) cameraFilter).getLensFacing());
                if (num == null) {
                    num = numValueOf;
                } else if (!num.equals(numValueOf)) {
                    throw new IllegalStateException("Multiple conflicting lens facing requirements exist.");
                }
            }
        }
        return num;
    }

    public String getPhysicalCameraId() {
        return this.mPhysicalCameraId;
    }

    /* JADX INFO: renamed from: of */
    public static CameraSelector m73of(final CameraIdentifier... cameraIdentifierArr) {
        if (cameraIdentifierArr == null || cameraIdentifierArr.length == 0) {
            throw new IllegalArgumentException("At least one CameraIdentifier must be provided.");
        }
        Builder builder = new Builder();
        builder.addCameraFilter(new CameraFilter() { // from class: androidx.camera.core.CameraSelector$$ExternalSyntheticLambda0
            @Override // androidx.camera.core.CameraFilter
            public final List filter(List list) {
                return CameraSelector.$r8$lambda$sVAI4dAQovYaCcAmS6RcCFJW3yM(cameraIdentifierArr, list);
            }

            @Override // androidx.camera.core.CameraFilter
            public /* synthetic */ Identifier getIdentifier() {
                return CameraFilter.DEFAULT_ID;
            }
        });
        return builder.build();
    }

    public static /* synthetic */ List $r8$lambda$sVAI4dAQovYaCcAmS6RcCFJW3yM(CameraIdentifier[] cameraIdentifierArr, List list) {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (CameraIdentifier cameraIdentifier : cameraIdentifierArr) {
            Iterator it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    CameraInfo cameraInfo = (CameraInfo) it.next();
                    if (Objects.equals(cameraInfo.getCameraIdentifier(), cameraIdentifier) && !hashSet.contains(cameraIdentifier)) {
                        arrayList.add(cameraInfo);
                        hashSet.add(cameraIdentifier);
                        break;
                    }
                }
            }
        }
        return arrayList;
    }

    public static final class Builder {
        private final LinkedHashSet mCameraFilterSet;
        private String mPhysicalCameraId;

        public Builder() {
            this.mCameraFilterSet = new LinkedHashSet();
        }

        private Builder(LinkedHashSet linkedHashSet) {
            this.mCameraFilterSet = new LinkedHashSet(linkedHashSet);
        }

        public Builder requireLensFacing(int i) {
            Preconditions.checkState(i != -1, "The specified lens facing is invalid.");
            this.mCameraFilterSet.add(new LensFacingCameraFilter(i));
            return this;
        }

        public Builder addCameraFilter(CameraFilter cameraFilter) {
            this.mCameraFilterSet.add(cameraFilter);
            return this;
        }

        public static Builder fromSelector(CameraSelector cameraSelector) {
            return new Builder(cameraSelector.getCameraFilterSet());
        }

        public CameraSelector build() {
            return new CameraSelector(this.mCameraFilterSet, this.mPhysicalCameraId);
        }
    }
}
