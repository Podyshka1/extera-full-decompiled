package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.JsonSerializersModuleValidator;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleBuildersKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0019\bF\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\n\u0010\b\u001a\u00020\tH\u0082\u0080\u0004¨\u0006\n"}, d2 = {"Lkotlinx/serialization/json/JsonImpl;", "Lkotlinx/serialization/json/Json;", "configuration", "Lkotlinx/serialization/json/JsonConfiguration;", "module", "Lkotlinx/serialization/modules/SerializersModule;", "<init>", "(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/SerializersModule;)V", "validateConfiguration", _UrlKt.FRAGMENT_ENCODE_SET, "kotlinx-serialization-json"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
final class JsonImpl extends Json {
    public JsonImpl(JsonConfiguration jsonConfiguration, SerializersModule serializersModule) {
        super(jsonConfiguration, serializersModule, null);
        validateConfiguration();
    }

    private final void validateConfiguration() {
        if (Intrinsics.areEqual(getSerializersModule(), SerializersModuleBuildersKt.EmptySerializersModule())) {
            return;
        }
        getSerializersModule().dumpTo(new JsonSerializersModuleValidator(getConfiguration()));
    }
}
