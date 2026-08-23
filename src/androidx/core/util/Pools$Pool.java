package androidx.core.util;

/* JADX INFO: loaded from: classes.dex */
public interface Pools$Pool {
    Object acquire();

    boolean release(Object obj);
}
