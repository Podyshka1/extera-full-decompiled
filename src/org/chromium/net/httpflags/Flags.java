package org.chromium.net.httpflags;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MapEntryLite;
import com.google.protobuf.MapFieldLite;
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
public final class Flags extends GeneratedMessageLite<Flags, Builder> implements FlagsOrBuilder {
    private static final Flags DEFAULT_INSTANCE;
    public static final int FLAGS_FIELD_NUMBER = 1;
    private static volatile Parser<Flags> PARSER;
    private MapFieldLite<String, FlagValue> flags_ = MapFieldLite.emptyMapField();

    private Flags() {
    }

    public static final class FlagsDefaultEntryHolder {
        static final MapEntryLite<String, FlagValue> defaultEntry = MapEntryLite.newDefaultInstance(WireFormat.FieldType.STRING, _UrlKt.FRAGMENT_ENCODE_SET, WireFormat.FieldType.MESSAGE, FlagValue.getDefaultInstance());

        private FlagsDefaultEntryHolder() {
        }
    }

    private MapFieldLite<String, FlagValue> internalGetFlags() {
        return this.flags_;
    }

    private MapFieldLite<String, FlagValue> internalGetMutableFlags() {
        if (!this.flags_.isMutable()) {
            this.flags_ = this.flags_.mutableCopy();
        }
        return this.flags_;
    }

    @Override // org.chromium.net.httpflags.FlagsOrBuilder
    public int getFlagsCount() {
        return internalGetFlags().size();
    }

    @Override // org.chromium.net.httpflags.FlagsOrBuilder
    public boolean containsFlags(String str) {
        str.getClass();
        return internalGetFlags().containsKey(str);
    }

    @Override // org.chromium.net.httpflags.FlagsOrBuilder
    @Deprecated
    public Map<String, FlagValue> getFlags() {
        return getFlagsMap();
    }

    @Override // org.chromium.net.httpflags.FlagsOrBuilder
    public Map<String, FlagValue> getFlagsMap() {
        return Collections.unmodifiableMap(internalGetFlags());
    }

    @Override // org.chromium.net.httpflags.FlagsOrBuilder
    public FlagValue getFlagsOrDefault(String str, FlagValue flagValue) {
        str.getClass();
        MapFieldLite<String, FlagValue> mapFieldLiteInternalGetFlags = internalGetFlags();
        return mapFieldLiteInternalGetFlags.containsKey(str) ? mapFieldLiteInternalGetFlags.get(str) : flagValue;
    }

    @Override // org.chromium.net.httpflags.FlagsOrBuilder
    public FlagValue getFlagsOrThrow(String str) {
        str.getClass();
        MapFieldLite<String, FlagValue> mapFieldLiteInternalGetFlags = internalGetFlags();
        if (!mapFieldLiteInternalGetFlags.containsKey(str)) {
            Segment$$ExternalSyntheticBUOutline0.m924m();
            return null;
        }
        return mapFieldLiteInternalGetFlags.get(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, FlagValue> getMutableFlagsMap() {
        return internalGetMutableFlags();
    }

    public static Flags parseFrom(ByteBuffer byteBuffer) {
        return (Flags) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Flags parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) {
        return (Flags) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static Flags parseFrom(ByteString byteString) {
        return (Flags) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Flags parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) {
        return (Flags) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Flags parseFrom(byte[] bArr) {
        return (Flags) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Flags parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) {
        return (Flags) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Flags parseFrom(InputStream inputStream) {
        return (Flags) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Flags parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
        return (Flags) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Flags parseDelimitedFrom(InputStream inputStream) {
        return (Flags) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Flags parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) {
        return (Flags) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Flags parseFrom(CodedInputStream codedInputStream) {
        return (Flags) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Flags parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) {
        return (Flags) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static Builder newBuilder(Flags flags) {
        return DEFAULT_INSTANCE.createBuilder(flags);
    }

    public static final class Builder extends GeneratedMessageLite.Builder<Flags, Builder> implements FlagsOrBuilder {
        private Builder() {
            super(Flags.DEFAULT_INSTANCE);
        }

        @Override // org.chromium.net.httpflags.FlagsOrBuilder
        public int getFlagsCount() {
            return ((Flags) this.instance).getFlagsMap().size();
        }

        @Override // org.chromium.net.httpflags.FlagsOrBuilder
        public boolean containsFlags(String str) {
            str.getClass();
            return ((Flags) this.instance).getFlagsMap().containsKey(str);
        }

        public Builder clearFlags() {
            copyOnWrite();
            ((Flags) this.instance).getMutableFlagsMap().clear();
            return this;
        }

        public Builder removeFlags(String str) {
            str.getClass();
            copyOnWrite();
            ((Flags) this.instance).getMutableFlagsMap().remove(str);
            return this;
        }

        @Override // org.chromium.net.httpflags.FlagsOrBuilder
        @Deprecated
        public Map<String, FlagValue> getFlags() {
            return getFlagsMap();
        }

        @Override // org.chromium.net.httpflags.FlagsOrBuilder
        public Map<String, FlagValue> getFlagsMap() {
            return Collections.unmodifiableMap(((Flags) this.instance).getFlagsMap());
        }

        @Override // org.chromium.net.httpflags.FlagsOrBuilder
        public FlagValue getFlagsOrDefault(String str, FlagValue flagValue) {
            str.getClass();
            Map<String, FlagValue> flagsMap = ((Flags) this.instance).getFlagsMap();
            return flagsMap.containsKey(str) ? flagsMap.get(str) : flagValue;
        }

        @Override // org.chromium.net.httpflags.FlagsOrBuilder
        public FlagValue getFlagsOrThrow(String str) {
            str.getClass();
            Map<String, FlagValue> flagsMap = ((Flags) this.instance).getFlagsMap();
            if (!flagsMap.containsKey(str)) {
                Segment$$ExternalSyntheticBUOutline0.m924m();
                return null;
            }
            return flagsMap.get(str);
        }

        public Builder putFlags(String str, FlagValue flagValue) {
            str.getClass();
            flagValue.getClass();
            copyOnWrite();
            ((Flags) this.instance).getMutableFlagsMap().put(str, flagValue);
            return this;
        }

        public Builder putAllFlags(Map<String, FlagValue> map) {
            copyOnWrite();
            ((Flags) this.instance).getMutableFlagsMap().putAll(map);
            return this;
        }
    }

    /* JADX INFO: renamed from: org.chromium.net.httpflags.Flags$1 */
    public static /* synthetic */ class C24421 {

        /* JADX INFO: renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f919xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f919xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f919xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f919xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f919xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f919xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f919xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f919xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    public final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        Parser defaultInstanceBasedParser;
        int i = C24421.f919xa1df5c61[methodToInvoke.ordinal()];
        switch (i) {
            case 1:
                return new Flags();
            case 2:
                return new Builder();
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"flags_", FlagsDefaultEntryHolder.defaultEntry});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<Flags> parser = PARSER;
                if (parser != null) {
                    return parser;
                }
                synchronized (Flags.class) {
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
        Flags flags = new Flags();
        DEFAULT_INSTANCE = flags;
        GeneratedMessageLite.registerDefaultInstance(Flags.class, flags);
    }

    public static Flags getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Parser<Flags> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }
}
