package androidx.camera.core;

import java.util.ArrayList;
import java.util.List;
import p022j$.util.DesugarCollections;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class ImageCapture$$ExternalSyntheticBackport1 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ List m75m(Object[] objArr) {
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            Objects.requireNonNull(obj);
            arrayList.add(obj);
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }
}
