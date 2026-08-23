package com.google.mlkit.vision.label.defaults;

import com.google.mlkit.vision.label.ImageLabelerOptionsBase;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: loaded from: classes5.dex */
@Immutable
public class ImageLabelerOptions extends ImageLabelerOptionsBase {
    public static final ImageLabelerOptions DEFAULT_OPTIONS = new Builder().build();

    public static class Builder extends ImageLabelerOptionsBase.Builder<Builder> {
        public Builder() {
            setConfidenceThreshold(0.5f);
        }

        public ImageLabelerOptions build() {
            return new ImageLabelerOptions(this, null);
        }

        @Override // com.google.mlkit.vision.label.ImageLabelerOptionsBase.Builder
        public Builder setConfidenceThreshold(float f) {
            return (Builder) super.setConfidenceThreshold(f);
        }
    }

    public /* synthetic */ ImageLabelerOptions(Builder builder, zza zzaVar) {
        super(builder);
    }
}
