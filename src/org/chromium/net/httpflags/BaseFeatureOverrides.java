package org.chromium.net.httpflags;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MapEntryLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.WireFormat;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline0;
import org.mvel2.asm.Type$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public final class BaseFeatureOverrides extends GeneratedMessageLite<BaseFeatureOverrides, Builder> implements BaseFeatureOverridesOrBuilder {
    private static final BaseFeatureOverrides DEFAULT_INSTANCE;
    public static final int FEATURE_STATES_FIELD_NUMBER = 1;
    private static volatile Parser<BaseFeatureOverrides> PARSER;
    private MapFieldLite<String, FeatureState> featureStates_ = MapFieldLite.emptyMapField();

    public interface FeatureStateOrBuilder extends MessageLiteOrBuilder {
        boolean containsParams(String str);

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        boolean getEnabled();

        @Deprecated
        Map<String, ByteString> getParams();

        int getParamsCount();

        Map<String, ByteString> getParamsMap();

        ByteString getParamsOrDefault(String str, ByteString byteString);

        ByteString getParamsOrThrow(String str);

        boolean hasEnabled();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    private BaseFeatureOverrides() {
    }

    public static final class FeatureState extends GeneratedMessageLite<FeatureState, Builder> implements FeatureStateOrBuilder {
        private static final FeatureState DEFAULT_INSTANCE;
        public static final int ENABLED_FIELD_NUMBER = 1;
        public static final int PARAMS_FIELD_NUMBER = 2;
        private static volatile Parser<FeatureState> PARSER;
        private int bitField0_;
        private boolean enabled_;
        private MapFieldLite<String, ByteString> params_ = MapFieldLite.emptyMapField();

        private FeatureState() {
        }

        @Override // org.chromium.net.httpflags.BaseFeatureOverrides.FeatureStateOrBuilder
        public boolean hasEnabled() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // org.chromium.net.httpflags.BaseFeatureOverrides.FeatureStateOrBuilder
        public boolean getEnabled() {
            return this.enabled_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEnabled(boolean z) {
            this.bitField0_ |= 1;
            this.enabled_ = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearEnabled() {
            this.bitField0_ &= -2;
            this.enabled_ = false;
        }

        public static final class ParamsDefaultEntryHolder {
            static final MapEntryLite<String, ByteString> defaultEntry = MapEntryLite.newDefaultInstance(WireFormat.FieldType.STRING, _UrlKt.FRAGMENT_ENCODE_SET, WireFormat.FieldType.BYTES, ByteString.EMPTY);

            private ParamsDefaultEntryHolder() {
            }
        }

        private MapFieldLite<String, ByteString> internalGetParams() {
            return this.params_;
        }

        private MapFieldLite<String, ByteString> internalGetMutableParams() {
            if (!this.params_.isMutable()) {
                this.params_ = this.params_.mutableCopy();
            }
            return this.params_;
        }

        @Override // org.chromium.net.httpflags.BaseFeatureOverrides.FeatureStateOrBuilder
        public int getParamsCount() {
            return internalGetParams().size();
        }

        @Override // org.chromium.net.httpflags.BaseFeatureOverrides.FeatureStateOrBuilder
        public boolean containsParams(String str) {
            str.getClass();
            return internalGetParams().containsKey(str);
        }

        @Override // org.chromium.net.httpflags.BaseFeatureOverrides.FeatureStateOrBuilder
        @Deprecated
        public Map<String, ByteString> getParams() {
            return getParamsMap();
        }

        @Override // org.chromium.net.httpflags.BaseFeatureOverrides.FeatureStateOrBuilder
        public Map<String, ByteString> getParamsMap() {
            return Collections.unmodifiableMap(internalGetParams());
        }

        @Override // org.chromium.net.httpflags.BaseFeatureOverrides.FeatureStateOrBuilder
        public ByteString getParamsOrDefault(String str, ByteString byteString) {
            str.getClass();
            MapFieldLite<String, ByteString> mapFieldLiteInternalGetParams = internalGetParams();
            return mapFieldLiteInternalGetParams.containsKey(str) ? mapFieldLiteInternalGetParams.get(str) : byteString;
        }

        @Override // org.chromium.net.httpflags.BaseFeatureOverrides.FeatureStateOrBuilder
        public ByteString getParamsOrThrow(String str) {
            str.getClass();
            MapFieldLite<String, ByteString> mapFieldLiteInternalGetParams = internalGetParams();
            if (!mapFieldLiteInternalGetParams.containsKey(str)) {
                Segment$$ExternalSyntheticBUOutline0.m924m();
                return null;
            }
            return mapFieldLiteInternalGetParams.get(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Map<String, ByteString> getMutableParamsMap() {
            return internalGetMutableParams();
        }

        public static FeatureState parseFrom(ByteBuffer byteBuffer) {
            return (FeatureState) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static FeatureState parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
            return (FeatureState) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static FeatureState parseFrom(ByteString byteString) {
            return (FeatureState) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static FeatureState parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
            return (FeatureState) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static FeatureState parseFrom(byte[] bArr) {
            return (FeatureState) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static FeatureState parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
            return (FeatureState) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static FeatureState parseFrom(InputStream inputStream) {
            return (FeatureState) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static FeatureState parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (FeatureState) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static FeatureState parseDelimitedFrom(InputStream inputStream) {
            return (FeatureState) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static FeatureState parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (FeatureState) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static FeatureState parseFrom(CodedInputStream codedInputStream) {
            return (FeatureState) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static FeatureState parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
            return (FeatureState) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(FeatureState featureState) {
            return DEFAULT_INSTANCE.createBuilder(featureState);
        }

        public static final class Builder extends GeneratedMessageLite.Builder<FeatureState, Builder> implements FeatureStateOrBuilder {
            private Builder() {
                super(FeatureState.DEFAULT_INSTANCE);
            }

            @Override // org.chromium.net.httpflags.BaseFeatureOverrides.FeatureStateOrBuilder
            public boolean hasEnabled() {
                return ((FeatureState) this.instance).hasEnabled();
            }

            @Override // org.chromium.net.httpflags.BaseFeatureOverrides.FeatureStateOrBuilder
            public boolean getEnabled() {
                return ((FeatureState) this.instance).getEnabled();
            }

            public Builder setEnabled(boolean z) {
                copyOnWrite();
                ((FeatureState) this.instance).setEnabled(z);
                return this;
            }

            public Builder clearEnabled() {
                copyOnWrite();
                ((FeatureState) this.instance).clearEnabled();
                return this;
            }

            @Override // org.chromium.net.httpflags.BaseFeatureOverrides.FeatureStateOrBuilder
            public int getParamsCount() {
                return ((FeatureState) this.instance).getParamsMap().size();
            }

            @Override // org.chromium.net.httpflags.BaseFeatureOverrides.FeatureStateOrBuilder
            public boolean containsParams(String str) {
                str.getClass();
                return ((FeatureState) this.instance).getParamsMap().containsKey(str);
            }

            public Builder clearParams() {
                copyOnWrite();
                ((FeatureState) this.instance).getMutableParamsMap().clear();
                return this;
            }

            public Builder removeParams(String str) {
                str.getClass();
                copyOnWrite();
                ((FeatureState) this.instance).getMutableParamsMap().remove(str);
                return this;
            }

            @Override // org.chromium.net.httpflags.BaseFeatureOverrides.FeatureStateOrBuilder
            @Deprecated
            public Map<String, ByteString> getParams() {
                return getParamsMap();
            }

            @Override // org.chromium.net.httpflags.BaseFeatureOverrides.FeatureStateOrBuilder
            public Map<String, ByteString> getParamsMap() {
                return Collections.unmodifiableMap(((FeatureState) this.instance).getParamsMap());
            }

            @Override // org.chromium.net.httpflags.BaseFeatureOverrides.FeatureStateOrBuilder
            public ByteString getParamsOrDefault(String str, ByteString byteString) {
                str.getClass();
                Map<String, ByteString> paramsMap = ((FeatureState) this.instance).getParamsMap();
                return paramsMap.containsKey(str) ? paramsMap.get(str) : byteString;
            }

            @Override // org.chromium.net.httpflags.BaseFeatureOverrides.FeatureStateOrBuilder
            public ByteString getParamsOrThrow(String str) {
                str.getClass();
                Map<String, ByteString> paramsMap = ((FeatureState) this.instance).getParamsMap();
                if (!paramsMap.containsKey(str)) {
                    Segment$$ExternalSyntheticBUOutline0.m924m();
                    return null;
                }
                return paramsMap.get(str);
            }

            public Builder putParams(String str, ByteString byteString) {
                str.getClass();
                byteString.getClass();
                copyOnWrite();
                ((FeatureState) this.instance).getMutableParamsMap().put(str, byteString);
                return this;
            }

            public Builder putAllParams(Map<String, ByteString> map) {
                copyOnWrite();
                ((FeatureState) this.instance).getMutableParamsMap().putAll(map);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        public final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
            Parser defaultInstanceBasedParser;
            int i = C24401.f917xa1df5c61[methodToInvoke.ordinal()];
            switch (i) {
                case 1:
                    return new FeatureState();
                case 2:
                    return new Builder();
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0001\u0000\u0000\u0001ဇ\u0000\u00022", new Object[]{"bitField0_", "enabled_", "params_", ParamsDefaultEntryHolder.defaultEntry});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<FeatureState> parser = PARSER;
                    if (parser != null) {
                        return parser;
                    }
                    synchronized (FeatureState.class) {
                        try {
                            defaultInstanceBasedParser = PARSER;
                            if (defaultInstanceBasedParser == null) {
                                defaultInstanceBasedParser = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                                PARSER = defaultInstanceBasedParser;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                    return defaultInstanceBasedParser;
                case 6:
                    return (byte) 1;
                default:
                    Type$$ExternalSyntheticBUOutline0.m960m();
                case 7:
                    return null;
            }
        }

        static {
            FeatureState featureState = new FeatureState();
            DEFAULT_INSTANCE = featureState;
            GeneratedMessageLite.registerDefaultInstance(FeatureState.class, featureState);
        }

        public static FeatureState getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<FeatureState> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* JADX INFO: renamed from: org.chromium.net.httpflags.BaseFeatureOverrides$1 */
    public static /* synthetic */ class C24401 {

        /* JADX INFO: renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f917xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f917xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f917xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f917xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f917xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f917xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f917xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f917xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static final class FeatureStatesDefaultEntryHolder {
        static final MapEntryLite<String, FeatureState> defaultEntry = MapEntryLite.newDefaultInstance(WireFormat.FieldType.STRING, _UrlKt.FRAGMENT_ENCODE_SET, WireFormat.FieldType.MESSAGE, FeatureState.getDefaultInstance());

        private FeatureStatesDefaultEntryHolder() {
        }
    }

    private MapFieldLite<String, FeatureState> internalGetFeatureStates() {
        return this.featureStates_;
    }

    private MapFieldLite<String, FeatureState> internalGetMutableFeatureStates() {
        if (!this.featureStates_.isMutable()) {
            this.featureStates_ = this.featureStates_.mutableCopy();
        }
        return this.featureStates_;
    }

    @Override // org.chromium.net.httpflags.BaseFeatureOverridesOrBuilder
    public int getFeatureStatesCount() {
        return internalGetFeatureStates().size();
    }

    @Override // org.chromium.net.httpflags.BaseFeatureOverridesOrBuilder
    public boolean containsFeatureStates(String str) {
        str.getClass();
        return internalGetFeatureStates().containsKey(str);
    }

    @Override // org.chromium.net.httpflags.BaseFeatureOverridesOrBuilder
    @Deprecated
    public Map<String, FeatureState> getFeatureStates() {
        return getFeatureStatesMap();
    }

    @Override // org.chromium.net.httpflags.BaseFeatureOverridesOrBuilder
    public Map<String, FeatureState> getFeatureStatesMap() {
        return Collections.unmodifiableMap(internalGetFeatureStates());
    }

    @Override // org.chromium.net.httpflags.BaseFeatureOverridesOrBuilder
    public FeatureState getFeatureStatesOrDefault(String str, FeatureState featureState) {
        str.getClass();
        MapFieldLite<String, FeatureState> mapFieldLiteInternalGetFeatureStates = internalGetFeatureStates();
        return mapFieldLiteInternalGetFeatureStates.containsKey(str) ? mapFieldLiteInternalGetFeatureStates.get(str) : featureState;
    }

    @Override // org.chromium.net.httpflags.BaseFeatureOverridesOrBuilder
    public FeatureState getFeatureStatesOrThrow(String str) {
        str.getClass();
        MapFieldLite<String, FeatureState> mapFieldLiteInternalGetFeatureStates = internalGetFeatureStates();
        if (!mapFieldLiteInternalGetFeatureStates.containsKey(str)) {
            Segment$$ExternalSyntheticBUOutline0.m924m();
            return null;
        }
        return mapFieldLiteInternalGetFeatureStates.get(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, FeatureState> getMutableFeatureStatesMap() {
        return internalGetMutableFeatureStates();
    }

    public static BaseFeatureOverrides parseFrom(ByteBuffer byteBuffer) {
        return (BaseFeatureOverrides) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static BaseFeatureOverrides parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
        return (BaseFeatureOverrides) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static BaseFeatureOverrides parseFrom(ByteString byteString) {
        return (BaseFeatureOverrides) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static BaseFeatureOverrides parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
        return (BaseFeatureOverrides) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static BaseFeatureOverrides parseFrom(byte[] bArr) {
        return (BaseFeatureOverrides) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static BaseFeatureOverrides parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
        return (BaseFeatureOverrides) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static BaseFeatureOverrides parseFrom(InputStream inputStream) {
        return (BaseFeatureOverrides) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BaseFeatureOverrides parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
        return (BaseFeatureOverrides) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BaseFeatureOverrides parseDelimitedFrom(InputStream inputStream) {
        return (BaseFeatureOverrides) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BaseFeatureOverrides parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
        return (BaseFeatureOverrides) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BaseFeatureOverrides parseFrom(CodedInputStream codedInputStream) {
        return (BaseFeatureOverrides) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static BaseFeatureOverrides parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        return (BaseFeatureOverrides) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static Builder newBuilder(BaseFeatureOverrides baseFeatureOverrides) {
        return DEFAULT_INSTANCE.createBuilder(baseFeatureOverrides);
    }

    public static final class Builder extends GeneratedMessageLite.Builder<BaseFeatureOverrides, Builder> implements BaseFeatureOverridesOrBuilder {
        private Builder() {
            super(BaseFeatureOverrides.DEFAULT_INSTANCE);
        }

        @Override // org.chromium.net.httpflags.BaseFeatureOverridesOrBuilder
        public int getFeatureStatesCount() {
            return ((BaseFeatureOverrides) this.instance).getFeatureStatesMap().size();
        }

        @Override // org.chromium.net.httpflags.BaseFeatureOverridesOrBuilder
        public boolean containsFeatureStates(String str) {
            str.getClass();
            return ((BaseFeatureOverrides) this.instance).getFeatureStatesMap().containsKey(str);
        }

        public Builder clearFeatureStates() {
            copyOnWrite();
            ((BaseFeatureOverrides) this.instance).getMutableFeatureStatesMap().clear();
            return this;
        }

        public Builder removeFeatureStates(String str) {
            str.getClass();
            copyOnWrite();
            ((BaseFeatureOverrides) this.instance).getMutableFeatureStatesMap().remove(str);
            return this;
        }

        @Override // org.chromium.net.httpflags.BaseFeatureOverridesOrBuilder
        @Deprecated
        public Map<String, FeatureState> getFeatureStates() {
            return getFeatureStatesMap();
        }

        @Override // org.chromium.net.httpflags.BaseFeatureOverridesOrBuilder
        public Map<String, FeatureState> getFeatureStatesMap() {
            return Collections.unmodifiableMap(((BaseFeatureOverrides) this.instance).getFeatureStatesMap());
        }

        @Override // org.chromium.net.httpflags.BaseFeatureOverridesOrBuilder
        public FeatureState getFeatureStatesOrDefault(String str, FeatureState featureState) {
            str.getClass();
            Map<String, FeatureState> featureStatesMap = ((BaseFeatureOverrides) this.instance).getFeatureStatesMap();
            return featureStatesMap.containsKey(str) ? featureStatesMap.get(str) : featureState;
        }

        @Override // org.chromium.net.httpflags.BaseFeatureOverridesOrBuilder
        public FeatureState getFeatureStatesOrThrow(String str) {
            str.getClass();
            Map<String, FeatureState> featureStatesMap = ((BaseFeatureOverrides) this.instance).getFeatureStatesMap();
            if (!featureStatesMap.containsKey(str)) {
                Segment$$ExternalSyntheticBUOutline0.m924m();
                return null;
            }
            return featureStatesMap.get(str);
        }

        public Builder putFeatureStates(String str, FeatureState featureState) {
            str.getClass();
            featureState.getClass();
            copyOnWrite();
            ((BaseFeatureOverrides) this.instance).getMutableFeatureStatesMap().put(str, featureState);
            return this;
        }

        public Builder putAllFeatureStates(Map<String, FeatureState> map) {
            copyOnWrite();
            ((BaseFeatureOverrides) this.instance).getMutableFeatureStatesMap().putAll(map);
            return this;
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    public final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        Parser defaultInstanceBasedParser;
        int i = C24401.f917xa1df5c61[methodToInvoke.ordinal()];
        switch (i) {
            case 1:
                return new BaseFeatureOverrides();
            case 2:
                return new Builder();
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"featureStates_", FeatureStatesDefaultEntryHolder.defaultEntry});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<BaseFeatureOverrides> parser = PARSER;
                if (parser != null) {
                    return parser;
                }
                synchronized (BaseFeatureOverrides.class) {
                    try {
                        defaultInstanceBasedParser = PARSER;
                        if (defaultInstanceBasedParser == null) {
                            defaultInstanceBasedParser = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                            PARSER = defaultInstanceBasedParser;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return defaultInstanceBasedParser;
            case 6:
                return (byte) 1;
            default:
                Type$$ExternalSyntheticBUOutline0.m960m();
            case 7:
                return null;
        }
    }

    static {
        BaseFeatureOverrides baseFeatureOverrides = new BaseFeatureOverrides();
        DEFAULT_INSTANCE = baseFeatureOverrides;
        GeneratedMessageLite.registerDefaultInstance(BaseFeatureOverrides.class, baseFeatureOverrides);
    }

    public static BaseFeatureOverrides getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<BaseFeatureOverrides> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }
}
