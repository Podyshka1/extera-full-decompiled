package kotlinx.serialization.modules;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import okhttp3.internal.url._UrlKt;
import okio.ByteString$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003JC\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\b\"\b\b\u0000\u0010\u0004*\u00020\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00052\u0012\b\u0002\u0010\t\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b0\u0007H'¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH'¢\u0006\u0004\b\u000f\u0010\u0010\u0082\u0001\u0001\u0011¨\u0006\u0012"}, d2 = {"Lkotlinx/serialization/modules/SerializersModule;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "T", "Lkotlin/reflect/KClass;", "kClass", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/serialization/KSerializer;", "typeArgumentsSerializers", "getContextual", "(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;", "Lkotlinx/serialization/modules/SerializersModuleCollector;", "collector", _UrlKt.FRAGMENT_ENCODE_SET, "dumpTo", "(Lkotlinx/serialization/modules/SerializersModuleCollector;)V", "Lkotlinx/serialization/modules/SerialModuleImpl;", "kotlinx-serialization-core"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class SerializersModule {
    public /* synthetic */ SerializersModule(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract void dumpTo(SerializersModuleCollector collector);

    public abstract <T> KSerializer<T> getContextual(KClass<T> kClass, List<? extends KSerializer<?>> typeArgumentsSerializers);

    private SerializersModule() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ KSerializer getContextual$default(SerializersModule serializersModule, KClass kClass, List list, int i, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m838m("Super calls with default arguments not supported in this target, function: getContextual");
            return null;
        }
        if ((i & 2) != 0) {
            list = CollectionsKt.emptyList();
        }
        return serializersModule.getContextual(kClass, list);
    }
}
