package org.chromium.net.httpflags;

import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageLiteOrBuilder;
import java.util.Map;
import org.chromium.net.httpflags.BaseFeatureOverrides;

/* JADX INFO: loaded from: classes5.dex */
public interface BaseFeatureOverridesOrBuilder extends MessageLiteOrBuilder {
    boolean containsFeatureStates(String str);

    @Override // com.google.protobuf.MessageLiteOrBuilder
    /* synthetic */ MessageLite getDefaultInstanceForType();

    @Deprecated
    Map<String, BaseFeatureOverrides.FeatureState> getFeatureStates();

    int getFeatureStatesCount();

    Map<String, BaseFeatureOverrides.FeatureState> getFeatureStatesMap();

    BaseFeatureOverrides.FeatureState getFeatureStatesOrDefault(String str, BaseFeatureOverrides.FeatureState featureState);

    BaseFeatureOverrides.FeatureState getFeatureStatesOrThrow(String str);

    @Override // com.google.protobuf.MessageLiteOrBuilder
    /* synthetic */ boolean isInitialized();
}
