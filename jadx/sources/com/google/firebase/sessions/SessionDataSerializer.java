package com.google.firebase.sessions;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.Serializer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.ByteStreamsKt;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes.dex */
public final class SessionDataSerializer implements Serializer {
    private final SessionGenerator sessionGenerator;

    public SessionDataSerializer(SessionGenerator sessionGenerator) {
        Intrinsics.checkNotNullParameter(sessionGenerator, "sessionGenerator");
        this.sessionGenerator = sessionGenerator;
    }

    @Override // androidx.datastore.core.Serializer
    public SessionData getDefaultValue() {
        return new SessionData(this.sessionGenerator.generateNewSession(null), (Time) null, (Map) null, 6, (DefaultConstructorMarker) null);
    }

    @Override // androidx.datastore.core.Serializer
    public Object readFrom(InputStream inputStream, Continuation continuation) throws CorruptionException {
        try {
            Json.Default r3 = Json.Default;
            String strDecodeToString = StringsKt.decodeToString(ByteStreamsKt.readBytes(inputStream));
            r3.getSerializersModule();
            return (SessionData) r3.decodeFromString(SessionData.Companion.serializer(), strDecodeToString);
        } catch (Exception e) {
            throw new CorruptionException("Cannot parse session data", e);
        }
    }

    @Override // androidx.datastore.core.Serializer
    public Object writeTo(SessionData sessionData, OutputStream outputStream, Continuation continuation) throws IOException {
        outputStream.write(StringsKt.encodeToByteArray(Json.Default.encodeToString(SessionData.Companion.serializer(), sessionData)));
        return Unit.INSTANCE;
    }
}
