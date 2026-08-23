package kotlin.coroutines;

/* JADX INFO: loaded from: classes.dex */
public interface Continuation<T> {
    CoroutineContext getContext();

    void resumeWith(Object obj);
}
