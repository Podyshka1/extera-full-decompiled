package androidx.datastore.preferences;

import androidx.datastore.preferences.protobuf.AbstractMessageLite;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.Internal;
import androidx.datastore.preferences.protobuf.MessageLiteOrBuilder;
import androidx.datastore.preferences.protobuf.Parser;
import java.util.List;
import org.mvel2.asm.Type$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
public final class PreferencesProto$StringSet extends GeneratedMessageLite<PreferencesProto$StringSet, Builder> implements MessageLiteOrBuilder {
    private static final PreferencesProto$StringSet DEFAULT_INSTANCE;
    private static volatile Parser<PreferencesProto$StringSet> PARSER = null;
    public static final int STRINGS_FIELD_NUMBER = 1;
    private Internal.ProtobufList<String> strings_ = GeneratedMessageLite.emptyProtobufList();

    private PreferencesProto$StringSet() {
    }

    public List<String> getStringsList() {
        return this.strings_;
    }

    private void ensureStringsIsMutable() {
        Internal.ProtobufList<String> protobufList = this.strings_;
        if (protobufList.isModifiable()) {
            return;
        }
        this.strings_ = GeneratedMessageLite.mutableCopy(protobufList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllStrings(Iterable<String> iterable) {
        ensureStringsIsMutable();
        AbstractMessageLite.addAll(iterable, this.strings_);
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static final class Builder extends GeneratedMessageLite.Builder<PreferencesProto$StringSet, Builder> implements MessageLiteOrBuilder {
        public /* synthetic */ Builder(PreferencesProto$1 preferencesProto$1) {
            this();
        }

        private Builder() {
            super(PreferencesProto$StringSet.DEFAULT_INSTANCE);
        }

        public Builder addAllStrings(Iterable<String> iterable) {
            copyOnWrite();
            ((PreferencesProto$StringSet) this.instance).addAllStrings(iterable);
            return this;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite
    public final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        Parser defaultInstanceBasedParser;
        int i = PreferencesProto$1.f14xa1df5c61[methodToInvoke.ordinal()];
        PreferencesProto$1 preferencesProto$1 = null;
        switch (i) {
            case 1:
                return new PreferencesProto$StringSet();
            case 2:
                return new Builder(preferencesProto$1);
            case 3:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"strings_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<PreferencesProto$StringSet> parser = PARSER;
                if (parser != null) {
                    return parser;
                }
                synchronized (PreferencesProto$StringSet.class) {
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
                Type$$ExternalSyntheticBUOutline0.m864m();
            case 7:
                return null;
        }
    }

    static {
        PreferencesProto$StringSet preferencesProto$StringSet = new PreferencesProto$StringSet();
        DEFAULT_INSTANCE = preferencesProto$StringSet;
        GeneratedMessageLite.registerDefaultInstance(PreferencesProto$StringSet.class, preferencesProto$StringSet);
    }

    public static PreferencesProto$StringSet getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }
}
