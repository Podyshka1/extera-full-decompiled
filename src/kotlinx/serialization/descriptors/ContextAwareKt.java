package kotlinx.serialization.descriptors;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.SerialDescriptorForNullable;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0003\u0010\u0004\"$\u0010\n\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005*\u00020\u00018FX\u0087\u0004¢\u0006\f\u0012\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Lkotlinx/serialization/modules/SerializersModule;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "getContextualDescriptor", "(Lkotlinx/serialization/modules/SerializersModule;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/descriptors/SerialDescriptor;", "Lkotlin/reflect/KClass;", "getCapturedKClass", "(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/reflect/KClass;", "getCapturedKClass$annotations", "(Lkotlinx/serialization/descriptors/SerialDescriptor;)V", "capturedKClass", "kotlinx-serialization-core"}, m754k = 2, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nContextAware.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContextAware.kt\nkotlinx/serialization/descriptors/ContextAwareKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,109:1\n1#2:110\n1586#3:111\n1661#3,3:112\n*S KotlinDebug\n*F\n+ 1 ContextAware.kt\nkotlinx/serialization/descriptors/ContextAwareKt\n*L\n75#1:111\n75#1:112,3\n*E\n"})
public abstract class ContextAwareKt {
    public static final KClass<?> getCapturedKClass(SerialDescriptor serialDescriptor) {
        if (serialDescriptor instanceof SerialDescriptorForNullable) {
            return getCapturedKClass(((SerialDescriptorForNullable) serialDescriptor).getOriginal());
        }
        return null;
    }

    public static final SerialDescriptor getContextualDescriptor(SerializersModule serializersModule, SerialDescriptor serialDescriptor) {
        KSerializer contextual$default;
        KClass<?> capturedKClass = getCapturedKClass(serialDescriptor);
        if (capturedKClass == null || (contextual$default = SerializersModule.getContextual$default(serializersModule, capturedKClass, null, 2, null)) == null) {
            return null;
        }
        return contextual$default.getDescriptor();
    }
}
