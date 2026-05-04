package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;
import com.google.firebase.encoders.proto.ProtobufEncoder;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class ProtobufEncoder {
    private final ObjectEncoder fallbackEncoder;
    private final Map objectEncoders;
    private final Map valueEncoders;

    ProtobufEncoder(Map map, Map map2, ObjectEncoder objectEncoder) {
        this.objectEncoders = map;
        this.valueEncoders = map2;
        this.fallbackEncoder = objectEncoder;
    }

    public void encode(Object obj, OutputStream outputStream) {
        new ProtobufDataEncoderContext(outputStream, this.objectEncoders, this.valueEncoders, this.fallbackEncoder).encode(obj);
    }

    public byte[] encode(Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            encode(obj, byteArrayOutputStream);
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static Builder builder() {
        return new Builder();
    }

    public static final class Builder implements EncoderConfig {
        private static final ObjectEncoder DEFAULT_FALLBACK_ENCODER = new ObjectEncoder() { // from class: com.google.firebase.encoders.proto.ProtobufEncoder$Builder$$ExternalSyntheticLambda0
            @Override // com.google.firebase.encoders.ObjectEncoder
            public final void encode(Object obj, Object obj2) {
                ProtobufEncoder.Builder.m3540$r8$lambda$HcoNKxmNqN9duQx_r41_DwbVtE(obj, (ObjectEncoderContext) obj2);
            }
        };
        private final Map objectEncoders = new HashMap();
        private final Map valueEncoders = new HashMap();
        private ObjectEncoder fallbackEncoder = DEFAULT_FALLBACK_ENCODER;

        /* JADX INFO: renamed from: $r8$lambda$HcoNKxmNqN-9duQx_r41_DwbVtE, reason: not valid java name */
        public static /* synthetic */ void m3540$r8$lambda$HcoNKxmNqN9duQx_r41_DwbVtE(Object obj, ObjectEncoderContext objectEncoderContext) {
            throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }

        @Override // com.google.firebase.encoders.config.EncoderConfig
        public Builder registerEncoder(Class cls, ObjectEncoder objectEncoder) {
            this.objectEncoders.put(cls, objectEncoder);
            this.valueEncoders.remove(cls);
            return this;
        }

        public Builder configureWith(Configurator configurator) {
            configurator.configure(this);
            return this;
        }

        public ProtobufEncoder build() {
            return new ProtobufEncoder(new HashMap(this.objectEncoders), new HashMap(this.valueEncoders), this.fallbackEncoder);
        }
    }
}
