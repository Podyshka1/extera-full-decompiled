package kotlinx.coroutines.flow;

/* JADX INFO: loaded from: classes.dex */
public interface MutableStateFlow extends StateFlow, MutableSharedFlow {
    boolean compareAndSet(Object obj, Object obj2);

    Object getValue();

    void setValue(Object obj);
}
