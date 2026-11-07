package androidx.camera.core.impl;

/* JADX INFO: loaded from: classes3.dex */
public class MutableStateObservable<T> extends StateObservable<T> {
    private MutableStateObservable(Object obj, boolean z) {
        super(obj, z);
    }

    public static <T> MutableStateObservable<T> withInitialState(T t) {
        return new MutableStateObservable<>(t, false);
    }

    public void setState(T t) {
        updateState(t);
    }
}
