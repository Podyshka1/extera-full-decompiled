package com.google.firebase.remoteconfig.interop.rollouts;

import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import com.google.firebase.remoteconfig.interop.rollouts.AutoValue_RolloutAssignment;

/* JADX INFO: loaded from: classes5.dex */
public abstract class RolloutAssignment {
    public static final DataEncoder ROLLOUT_ASSIGNMENT_JSON_ENCODER = new JsonDataEncoderBuilder().configureWith(AutoRolloutAssignmentEncoder.CONFIG).build();

    public static abstract class Builder {
        public abstract RolloutAssignment build();

        public abstract Builder setParameterKey(String str);

        public abstract Builder setParameterValue(String str);

        public abstract Builder setRolloutId(String str);

        public abstract Builder setTemplateVersion(long j);

        public abstract Builder setVariantId(String str);
    }

    public abstract String getParameterKey();

    public abstract String getParameterValue();

    public abstract String getRolloutId();

    public abstract long getTemplateVersion();

    public abstract String getVariantId();

    public static Builder builder() {
        return new AutoValue_RolloutAssignment.Builder();
    }
}
