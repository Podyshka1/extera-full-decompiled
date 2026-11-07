package androidx.camera.core;

import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.LensFacingCameraFilter;
import androidx.core.util.Preconditions;
import com.google.protobuf.FieldSet$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraSelector {
    private final LinkedHashSet<CameraFilter> mCameraFilterSet;
    private final String mPhysicalCameraId;
    public static final CameraSelector DEFAULT_FRONT_CAMERA = new Builder().requireLensFacing(0).build();
    public static final CameraSelector DEFAULT_BACK_CAMERA = new Builder().requireLensFacing(1).build();

    public CameraSelector(LinkedHashSet<CameraFilter> linkedHashSet, String str) {
        this.mCameraFilterSet = linkedHashSet;
        this.mPhysicalCameraId = str;
    }

    public CameraInternal select(LinkedHashSet<CameraInternal> linkedHashSet) {
        Iterator<CameraInternal> it = filter(linkedHashSet).iterator();
        if (it.hasNext()) {
            return it.next();
        }
        FieldSet$$ExternalSyntheticBUOutline0.m505m("No available camera can be found. %s %s", new Object[]{logCameras(linkedHashSet), logSelector()});
        return null;
    }

    private String logCameras(Set<CameraInternal> set) {
        StringBuilder sb = new StringBuilder("Cams:");
        sb.append(set.size());
        Iterator<CameraInternal> it = set.iterator();
        while (it.hasNext()) {
            CameraInfoInternal cameraInfoInternal = it.next().getCameraInfoInternal();
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

    public List<CameraInfo> filter(List<CameraInfo> list) {
        List<CameraInfo> arrayList = new ArrayList<>(list);
        Iterator<CameraFilter> it = this.mCameraFilterSet.iterator();
        while (it.hasNext()) {
            arrayList = it.next().filter(Collections.unmodifiableList(arrayList));
        }
        arrayList.retainAll(list);
        return arrayList;
    }

    public LinkedHashSet<CameraInternal> filter(LinkedHashSet<CameraInternal> linkedHashSet) {
        ArrayList arrayList = new ArrayList();
        Iterator<CameraInternal> it = linkedHashSet.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getCameraInfo());
        }
        List<CameraInfo> listFilter = filter(arrayList);
        LinkedHashSet<CameraInternal> linkedHashSet2 = new LinkedHashSet<>();
        for (CameraInternal cameraInternal : linkedHashSet) {
            if (listFilter.contains(cameraInternal.getCameraInfo())) {
                linkedHashSet2.add(cameraInternal);
            }
        }
        return linkedHashSet2;
    }

    public LinkedHashSet<CameraFilter> getCameraFilterSet() {
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
                    Segment$$ExternalSyntheticBUOutline1.m973m("Multiple conflicting lens facing requirements exist.");
                    return null;
                }
            }
        }
        return num;
    }

    public String getPhysicalCameraId() {
        return this.mPhysicalCameraId;
    }

    public static CameraSelector of(final CameraIdentifier... cameraIdentifierArr) {
        if (cameraIdentifierArr == null || cameraIdentifierArr.length == 0) {
            f$$ExternalSyntheticBUOutline1.m215m("At least one CameraIdentifier must be provided.");
            return null;
        }
        Builder builder = new Builder();
        builder.addCameraFilter(new CameraFilter() { // from class: androidx.camera.core.CameraSelector$$ExternalSyntheticLambda0
            @Override // androidx.camera.core.CameraFilter
            public final List filter(List list) {
                return CameraSelector.$r8$lambda$sVAI4dAQovYaCcAmS6RcCFJW3yM(cameraIdentifierArr, list);
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
        private final LinkedHashSet<CameraFilter> mCameraFilterSet;
        private String mPhysicalCameraId;

        public Builder() {
            this.mCameraFilterSet = new LinkedHashSet<>();
        }

        private Builder(LinkedHashSet<CameraFilter> linkedHashSet) {
            this.mCameraFilterSet = new LinkedHashSet<>(linkedHashSet);
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
