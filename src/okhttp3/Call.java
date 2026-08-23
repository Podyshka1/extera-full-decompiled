package okhttp3;

import kotlin.jvm.functions.Function0;
import kotlin.reflect.KClass;
import okio.Timeout;

/* JADX INFO: loaded from: classes.dex */
public interface Call extends Cloneable {

    public interface Factory {
        Call newCall(Request request);
    }

    void cancel();

    /* JADX INFO: renamed from: clone */
    Call mo3885clone();

    void enqueue(Callback callback);

    Response execute();

    boolean isCanceled();

    boolean isExecuted();

    Request request();

    <T> T tag(Class<? extends T> cls);

    <T> T tag(Class<T> cls, Function0<? extends T> function0);

    <T> T tag(KClass kClass);

    <T> T tag(KClass kClass, Function0<? extends T> function0);

    Timeout timeout();
}
