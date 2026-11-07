package org.vosk;

import com.sun.jna.PointerType;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
public class Model extends PointerType implements AutoCloseable {
    public Model() {
    }

    public Model(String str) throws IOException {
        super(LibVosk.vosk_model_new(str));
        if (getPointer() != null) {
            return;
        }
        Model$$ExternalSyntheticBUOutline0.m1107m("Failed to create a model");
        throw null;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        LibVosk.vosk_model_free(getPointer());
    }
}
