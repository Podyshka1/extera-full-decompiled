package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;

/* JADX INFO: loaded from: classes.dex */
public interface GeneratedSerializer extends KSerializer {
    KSerializer[] childSerializers();

    KSerializer[] typeParametersSerializers();

    /* JADX INFO: renamed from: kotlinx.serialization.internal.GeneratedSerializer$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static KSerializer[] $default$typeParametersSerializers(GeneratedSerializer generatedSerializer) {
            return PluginHelperInterfacesKt.EMPTY_SERIALIZER_ARRAY;
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class DefaultImpls {
        public static KSerializer[] typeParametersSerializers(GeneratedSerializer generatedSerializer) {
            return CC.$default$typeParametersSerializers(generatedSerializer);
        }
    }
}
