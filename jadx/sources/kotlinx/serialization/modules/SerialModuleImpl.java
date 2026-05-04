package kotlinx.serialization.modules;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;

/* JADX INFO: loaded from: classes.dex */
public final class SerialModuleImpl extends SerializersModule {
    private final Map class2ContextualFactory;
    private final boolean hasInterfaceContextualSerializers;
    private final Map polyBase2DefaultDeserializerProvider;
    private final Map polyBase2DefaultSerializerProvider;
    private final Map polyBase2NamedSerializers;
    public final Map polyBase2Serializers;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SerialModuleImpl(Map class2ContextualFactory, Map polyBase2Serializers, Map polyBase2DefaultSerializerProvider, Map polyBase2NamedSerializers, Map polyBase2DefaultDeserializerProvider, boolean z) {
        super(null);
        Intrinsics.checkNotNullParameter(class2ContextualFactory, "class2ContextualFactory");
        Intrinsics.checkNotNullParameter(polyBase2Serializers, "polyBase2Serializers");
        Intrinsics.checkNotNullParameter(polyBase2DefaultSerializerProvider, "polyBase2DefaultSerializerProvider");
        Intrinsics.checkNotNullParameter(polyBase2NamedSerializers, "polyBase2NamedSerializers");
        Intrinsics.checkNotNullParameter(polyBase2DefaultDeserializerProvider, "polyBase2DefaultDeserializerProvider");
        this.class2ContextualFactory = class2ContextualFactory;
        this.polyBase2Serializers = polyBase2Serializers;
        this.polyBase2DefaultSerializerProvider = polyBase2DefaultSerializerProvider;
        this.polyBase2NamedSerializers = polyBase2NamedSerializers;
        this.polyBase2DefaultDeserializerProvider = polyBase2DefaultDeserializerProvider;
        this.hasInterfaceContextualSerializers = z;
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    public KSerializer getContextual(KClass kClass, List typeArgumentsSerializers) {
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        Intrinsics.checkNotNullParameter(typeArgumentsSerializers, "typeArgumentsSerializers");
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(this.class2ContextualFactory.get(kClass));
        return null;
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    public void dumpTo(SerializersModuleCollector collector) {
        Intrinsics.checkNotNullParameter(collector, "collector");
        Iterator it = this.class2ContextualFactory.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(entry.getValue());
            throw new NoWhenBranchMatchedException();
        }
        for (Map.Entry entry2 : this.polyBase2Serializers.entrySet()) {
            KClass kClass = (KClass) entry2.getKey();
            for (Map.Entry entry3 : ((Map) entry2.getValue()).entrySet()) {
                KClass kClass2 = (KClass) entry3.getKey();
                KSerializer kSerializer = (KSerializer) entry3.getValue();
                Intrinsics.checkNotNull(kClass, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                Intrinsics.checkNotNull(kClass2, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                Intrinsics.checkNotNull(kSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                collector.polymorphic(kClass, kClass2, kSerializer);
            }
        }
        for (Map.Entry entry4 : this.polyBase2DefaultSerializerProvider.entrySet()) {
            KClass kClass3 = (KClass) entry4.getKey();
            Function1 function1 = (Function1) entry4.getValue();
            Intrinsics.checkNotNull(kClass3, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
            Intrinsics.checkNotNull(function1, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = \"value\")] kotlin.Any, kotlinx.serialization.SerializationStrategy<kotlin.Any>?>");
            collector.polymorphicDefaultSerializer(kClass3, (Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1));
        }
        for (Map.Entry entry5 : this.polyBase2DefaultDeserializerProvider.entrySet()) {
            KClass kClass4 = (KClass) entry5.getKey();
            Function1 function12 = (Function1) entry5.getValue();
            Intrinsics.checkNotNull(kClass4, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
            Intrinsics.checkNotNull(function12, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = \"className\")] kotlin.String?, kotlinx.serialization.DeserializationStrategy<kotlin.Any>?>");
            collector.polymorphicDefaultDeserializer(kClass4, (Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function12, 1));
        }
    }
}
