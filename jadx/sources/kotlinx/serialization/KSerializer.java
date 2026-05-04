package kotlinx.serialization;

import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes.dex */
public interface KSerializer extends SerializationStrategy, DeserializationStrategy {
    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    SerialDescriptor getDescriptor();
}
