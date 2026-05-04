package androidx.concurrent.futures;

/* JADX INFO: loaded from: classes.dex */
public final class ResolvableFuture extends AbstractResolvableFuture {
    public static ResolvableFuture create() {
        return new ResolvableFuture();
    }

    @Override // androidx.concurrent.futures.AbstractResolvableFuture
    public boolean set(Object obj) {
        return super.set(obj);
    }

    @Override // androidx.concurrent.futures.AbstractResolvableFuture
    public boolean setException(Throwable th) {
        return super.setException(th);
    }

    private ResolvableFuture() {
    }
}
