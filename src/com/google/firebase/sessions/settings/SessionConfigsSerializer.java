package com.google.firebase.sessions.settings;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.Serializer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.p024io.ByteStreamsKt;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes.dex */
public final class SessionConfigsSerializer implements Serializer {
    public static final SessionConfigsSerializer INSTANCE = new SessionConfigsSerializer();
    private static final SessionConfigs defaultValue = new SessionConfigs(null, null, null, null, null);

    private SessionConfigsSerializer() {
    }

    @Override // androidx.datastore.core.Serializer
    public SessionConfigs getDefaultValue() {
        return defaultValue;
    }

    @Override // androidx.datastore.core.Serializer
    public Object readFrom(InputStream inputStream, Continuation continuation) throws CorruptionException {
        try {
            Json.Default r3 = Json.Default;
            String strDecodeToString = StringsKt.decodeToString(ByteStreamsKt.readBytes(inputStream));
            r3.getSerializersModule();
            return (SessionConfigs) r3.decodeFromString(SessionConfigs.Companion.serializer(), strDecodeToString);
        } catch (Exception e) {
            throw new CorruptionException("Cannot parse session configs", e);
        }
    }

    @Override // androidx.datastore.core.Serializer
    public Object writeTo(SessionConfigs sessionConfigs, OutputStream outputStream, Continuation continuation) throws IOException {
        outputStream.write(StringsKt.encodeToByteArray(Json.Default.encodeToString(SessionConfigs.Companion.serializer(), sessionConfigs)));
        return Unit.INSTANCE;
    }
}
