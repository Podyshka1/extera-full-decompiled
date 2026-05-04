package androidx.camera.core.internal.utils;

/* JADX INFO: loaded from: classes4.dex */
public interface RingBuffer {

    public interface OnRemoveCallback {
        void onRemove(Object obj);
    }

    Object dequeue();

    boolean isEmpty();
}
