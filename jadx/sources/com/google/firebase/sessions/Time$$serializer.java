package com.google.firebase.sessions;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: loaded from: classes.dex */
public /* synthetic */ class Time$$serializer implements GeneratedSerializer {
    public static final Time$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    private Time$$serializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    static {
        Time$$serializer time$$serializer = new Time$$serializer();
        INSTANCE = time$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.google.firebase.sessions.Time", time$$serializer, 3);
        pluginGeneratedSerialDescriptor.addElement("ms", false);
        pluginGeneratedSerialDescriptor.addElement("us", true);
        pluginGeneratedSerialDescriptor.addElement("seconds", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        LongSerializer longSerializer = LongSerializer.INSTANCE;
        return new KSerializer[]{longSerializer, longSerializer, longSerializer};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Time deserialize(Decoder decoder) {
        int i;
        long jDecodeLongElement;
        long j;
        long j2;
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(serialDescriptor);
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            long jDecodeLongElement2 = compositeDecoderBeginStructure.decodeLongElement(serialDescriptor, 0);
            long jDecodeLongElement3 = compositeDecoderBeginStructure.decodeLongElement(serialDescriptor, 1);
            jDecodeLongElement = compositeDecoderBeginStructure.decodeLongElement(serialDescriptor, 2);
            i = 7;
            j = jDecodeLongElement2;
            j2 = jDecodeLongElement3;
        } else {
            long jDecodeLongElement4 = 0;
            boolean z = true;
            int i2 = 0;
            long jDecodeLongElement5 = 0;
            long jDecodeLongElement6 = 0;
            while (z) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(serialDescriptor);
                if (iDecodeElementIndex == -1) {
                    z = false;
                } else if (iDecodeElementIndex == 0) {
                    jDecodeLongElement5 = compositeDecoderBeginStructure.decodeLongElement(serialDescriptor, 0);
                    i2 |= 1;
                } else if (iDecodeElementIndex == 1) {
                    jDecodeLongElement6 = compositeDecoderBeginStructure.decodeLongElement(serialDescriptor, 1);
                    i2 |= 2;
                } else {
                    if (iDecodeElementIndex != 2) {
                        throw new UnknownFieldException(iDecodeElementIndex);
                    }
                    jDecodeLongElement4 = compositeDecoderBeginStructure.decodeLongElement(serialDescriptor, 2);
                    i2 |= 4;
                }
            }
            i = i2;
            jDecodeLongElement = jDecodeLongElement4;
            j = jDecodeLongElement5;
            j2 = jDecodeLongElement6;
        }
        compositeDecoderBeginStructure.endStructure(serialDescriptor);
        return new Time(i, j, j2, jDecodeLongElement, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void serialize(Encoder encoder, Time value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(serialDescriptor);
        Time.write$Self$com_google_firebase_firebase_sessions(value, compositeEncoderBeginStructure, serialDescriptor);
        compositeEncoderBeginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
