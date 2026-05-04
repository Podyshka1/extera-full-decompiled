package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonEncoder;

/* JADX INFO: loaded from: classes.dex */
public abstract class JsonStreamsKt {
    public static final void encodeByWriter(Json json, InternalJsonWriter writer, SerializationStrategy serializer, Object obj) {
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        new StreamingJsonEncoder(writer, json, WriteMode.OBJ, new JsonEncoder[WriteMode.getEntries().size()]).encodeSerializableValue(serializer, obj);
    }
}
