package com.google.android.datatransport.runtime;

import androidx.camera.core.CameraSelector$$ExternalSyntheticBUOutline0;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.TransportFactory;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class TransportFactoryImpl implements TransportFactory {
    private final Set<Encoding> supportedPayloadEncodings;
    private final TransportContext transportContext;
    private final TransportInternal transportInternal;

    public TransportFactoryImpl(Set<Encoding> set, TransportContext transportContext, TransportInternal transportInternal) {
        this.supportedPayloadEncodings = set;
        this.transportContext = transportContext;
        this.transportInternal = transportInternal;
    }

    @Override // com.google.android.datatransport.TransportFactory
    public <T> Transport<T> getTransport(String str, Class<T> cls, Encoding encoding, Transformer<T, byte[]> transformer) {
        if (!this.supportedPayloadEncodings.contains(encoding)) {
            CameraSelector$$ExternalSyntheticBUOutline0.m72m("%s is not supported byt this factory. Supported encodings are: %s.", new Object[]{encoding, this.supportedPayloadEncodings});
            return null;
        }
        return new TransportImpl(this.transportContext, str, encoding, transformer, this.transportInternal);
    }
}
