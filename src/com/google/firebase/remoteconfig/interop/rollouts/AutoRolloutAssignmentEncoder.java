package com.google.firebase.remoteconfig.interop.rollouts;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;

/* JADX INFO: loaded from: classes5.dex */
public final class AutoRolloutAssignmentEncoder implements Configurator {
    public static final Configurator CONFIG = new AutoRolloutAssignmentEncoder();

    private AutoRolloutAssignmentEncoder() {
    }

    @Override // com.google.firebase.encoders.config.Configurator
    public void configure(EncoderConfig encoderConfig) {
        RolloutAssignmentEncoder rolloutAssignmentEncoder = RolloutAssignmentEncoder.INSTANCE;
        encoderConfig.registerEncoder(RolloutAssignment.class, rolloutAssignmentEncoder);
        encoderConfig.registerEncoder(AutoValue_RolloutAssignment.class, rolloutAssignmentEncoder);
    }

    private static final class RolloutAssignmentEncoder implements ObjectEncoder {
        static final RolloutAssignmentEncoder INSTANCE = new RolloutAssignmentEncoder();
        private static final FieldDescriptor ROLLOUTID_DESCRIPTOR = FieldDescriptor.m511of("rolloutId");
        private static final FieldDescriptor VARIANTID_DESCRIPTOR = FieldDescriptor.m511of("variantId");
        private static final FieldDescriptor PARAMETERKEY_DESCRIPTOR = FieldDescriptor.m511of("parameterKey");
        private static final FieldDescriptor PARAMETERVALUE_DESCRIPTOR = FieldDescriptor.m511of("parameterValue");
        private static final FieldDescriptor TEMPLATEVERSION_DESCRIPTOR = FieldDescriptor.m511of("templateVersion");

        private RolloutAssignmentEncoder() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        public void encode(RolloutAssignment rolloutAssignment, ObjectEncoderContext objectEncoderContext) {
            objectEncoderContext.add(ROLLOUTID_DESCRIPTOR, rolloutAssignment.getRolloutId());
            objectEncoderContext.add(VARIANTID_DESCRIPTOR, rolloutAssignment.getVariantId());
            objectEncoderContext.add(PARAMETERKEY_DESCRIPTOR, rolloutAssignment.getParameterKey());
            objectEncoderContext.add(PARAMETERVALUE_DESCRIPTOR, rolloutAssignment.getParameterValue());
            objectEncoderContext.add(TEMPLATEVERSION_DESCRIPTOR, rolloutAssignment.getTemplateVersion());
        }
    }
}
