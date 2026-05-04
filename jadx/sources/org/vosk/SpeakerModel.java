package org.vosk;

import com.sun.jna.PointerType;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public class SpeakerModel extends PointerType implements AutoCloseable {
    public SpeakerModel() {
    }

    public SpeakerModel(String str) throws IOException {
        super(LibVosk.vosk_spk_model_new(str));
        if (getPointer() == null) {
            throw new IOException("Failed to create a speaker model");
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        LibVosk.vosk_spk_model_free(getPointer());
    }
}
