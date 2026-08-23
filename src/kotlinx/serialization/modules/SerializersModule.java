package kotlinx.serialization.modules;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;

/* JADX INFO: loaded from: classes.dex */
public abstract class SerializersModule {
    public /* synthetic */ SerializersModule(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract void dumpTo(SerializersModuleCollector serializersModuleCollector);

    public abstract KSerializer getContextual(KClass kClass, List list);

    private SerializersModule() {
    }

    public static /* synthetic */ KSerializer getContextual$default(SerializersModule serializersModule, KClass kClass, List list, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getContextual");
        }
        if ((i & 2) != 0) {
            list = CollectionsKt.emptyList();
        }
        return serializersModule.getContextual(kClass, list);
    }
}
