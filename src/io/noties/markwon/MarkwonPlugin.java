package io.noties.markwon;

/* JADX INFO: loaded from: classes5.dex */
public interface MarkwonPlugin {

    public interface Registry {
        <P extends MarkwonPlugin> P require(Class<P> cls);
    }
}
