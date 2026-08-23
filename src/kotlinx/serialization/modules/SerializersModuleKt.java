package kotlinx.serialization.modules;

import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class SerializersModuleKt {
    private static final SerializersModule EmptySerializersModule = new SerialModuleImpl(MapsKt.emptyMap(), MapsKt.emptyMap(), MapsKt.emptyMap(), MapsKt.emptyMap(), MapsKt.emptyMap(), false);

    public static final SerializersModule getEmptySerializersModule() {
        return EmptySerializersModule;
    }
}
