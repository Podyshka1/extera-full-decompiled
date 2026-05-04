package com.google.firebase.sessions;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public /* synthetic */ class SessionData$$serializer implements GeneratedSerializer {
    public static final SessionData$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    private SessionData$$serializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        SessionData$$serializer sessionData$$serializer = new SessionData$$serializer();
        INSTANCE = sessionData$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.google.firebase.sessions.SessionData", sessionData$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("sessionDetails", false);
        pluginGeneratedSerialDescriptor.addElement("backgroundTime", true);
        pluginGeneratedSerialDescriptor.addElement("processDataMap", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        return new KSerializer[]{SessionDetails$$serializer.INSTANCE, BuiltinSerializersKt.getNullable(Time$$serializer.INSTANCE), BuiltinSerializersKt.getNullable(SessionData.$childSerializers[2])};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final SessionData deserialize(Decoder decoder) {
        int i;
        SessionDetails sessionDetails;
        Time time;
        Map map;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(serialDescriptor);
        KSerializer[] kSerializerArr = SessionData.$childSerializers;
        SessionDetails sessionDetails2 = null;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            SessionDetails sessionDetails3 = (SessionDetails) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 0, SessionDetails$$serializer.INSTANCE, null);
            Time time2 = (Time) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 1, Time$$serializer.INSTANCE, null);
            map = (Map) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 2, kSerializerArr[2], null);
            sessionDetails = sessionDetails3;
            i = 7;
            time = time2;
        } else {
            boolean z = true;
            int i2 = 0;
            Time time3 = null;
            Map map2 = null;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(serialDescriptor);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    sessionDetails2 = (SessionDetails) compositeDecoderBeginStructure.decodeSerializableElement(serialDescriptor, 0, SessionDetails$$serializer.INSTANCE, sessionDetails2);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    time3 = (Time) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 1, Time$$serializer.INSTANCE, time3);
                    i2 |= 2;
                } else {
                    if (iDecodeElementIndex != 2) {
                        throw new UnknownFieldException(iDecodeElementIndex);
                    }
                    map2 = (Map) compositeDecoderBeginStructure.decodeNullableSerializableElement(serialDescriptor, 2, kSerializerArr[2], map2);
                    i2 |= 4;
                }
            }
            i = i2;
            sessionDetails = sessionDetails2;
            time = time3;
            map = map2;
        }
        compositeDecoderBeginStructure.endStructure(serialDescriptor);
        return new SessionData(i, sessionDetails, time, map, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, SessionData value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(serialDescriptor);
        SessionData.write$Self$com_google_firebase_firebase_sessions(value, compositeEncoderBeginStructure, serialDescriptor);
        compositeEncoderBeginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
