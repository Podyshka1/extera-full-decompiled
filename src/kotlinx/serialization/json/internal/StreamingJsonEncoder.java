package kotlinx.serialization.json.internal;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.PolymorphicSerializerKt;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.json.ClassDiscriminatorMode;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonEncoder;
import kotlinx.serialization.json.internal.PolymorphicKt;
import kotlinx.serialization.modules.SerializersModule;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B1\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0010\u0010\n\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fB1\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t¢\u0006\u0004\b\u000b\u0010\u000fJ\u001f\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ+\u0010!\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u001d2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001e2\u0006\u0010 \u001a\u00028\u0000H\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010$\u001a\u00020#2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b$\u0010%J\u0017\u0010&\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b&\u0010'J\u001f\u0010(\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b(\u0010\u001cJA\u0010*\u001a\u00020\u0013\"\b\b\u0000\u0010\u001d*\u00020)2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001e2\b\u0010 \u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\u0013H\u0016¢\u0006\u0004\b,\u0010-J\u0017\u0010.\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u001aH\u0016¢\u0006\u0004\b.\u0010/J\u0017\u00100\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u0018H\u0016¢\u0006\u0004\b0\u00101J\u0017\u00103\u001a\u00020\u00132\u0006\u0010 \u001a\u000202H\u0016¢\u0006\u0004\b3\u00104J\u0017\u00106\u001a\u00020\u00132\u0006\u0010 \u001a\u000205H\u0016¢\u0006\u0004\b6\u00107J\u0017\u00108\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u0010H\u0016¢\u0006\u0004\b8\u00109R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010:R\u001a\u0010\u0006\u001a\u00020\u00058\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0006\u0010;\u001a\u0004\b<\u0010=R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010>R\u001e\u0010\n\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010?R\u001a\u0010A\u001a\u00020@8\u0016X\u0096\u0004¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\u0014\u0010F\u001a\u00020E8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u0010H\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0018\u0010J\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0018\u0010L\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010K¨\u0006M"}, d2 = {"Lkotlinx/serialization/json/internal/StreamingJsonEncoder;", "Lkotlinx/serialization/json/JsonEncoder;", "Lkotlinx/serialization/encoding/AbstractEncoder;", "Lkotlinx/serialization/json/internal/Composer;", "composer", "Lkotlinx/serialization/json/Json;", "json", "Lkotlinx/serialization/json/internal/WriteMode;", "mode", _UrlKt.FRAGMENT_ENCODE_SET, "modeReuseCache", "<init>", "(Lkotlinx/serialization/json/internal/Composer;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V", "Lkotlinx/serialization/json/internal/InternalJsonWriter;", "output", "(Lkotlinx/serialization/json/internal/InternalJsonWriter;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V", _UrlKt.FRAGMENT_ENCODE_SET, "discriminator", "serialName", _UrlKt.FRAGMENT_ENCODE_SET, "encodeTypeInfo", "(Ljava/lang/String;Ljava/lang/String;)V", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", _UrlKt.FRAGMENT_ENCODE_SET, "index", _UrlKt.FRAGMENT_ENCODE_SET, "shouldEncodeElementDefault", "(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z", "T", "Lkotlinx/serialization/SerializationStrategy;", "serializer", "value", "encodeSerializableValue", "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V", "Lkotlinx/serialization/encoding/CompositeEncoder;", "beginStructure", "(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;", "endStructure", "(Lkotlinx/serialization/descriptors/SerialDescriptor;)V", "encodeElement", _UrlKt.FRAGMENT_ENCODE_SET, "encodeNullableSerializableElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V", "encodeNull", "()V", "encodeBoolean", "(Z)V", "encodeInt", "(I)V", _UrlKt.FRAGMENT_ENCODE_SET, "encodeLong", "(J)V", _UrlKt.FRAGMENT_ENCODE_SET, "encodeDouble", "(D)V", "encodeString", "(Ljava/lang/String;)V", "Lkotlinx/serialization/json/internal/Composer;", "Lkotlinx/serialization/json/Json;", "getJson", "()Lkotlinx/serialization/json/Json;", "Lkotlinx/serialization/json/internal/WriteMode;", "[Lkotlinx/serialization/json/JsonEncoder;", "Lkotlinx/serialization/modules/SerializersModule;", "serializersModule", "Lkotlinx/serialization/modules/SerializersModule;", "getSerializersModule", "()Lkotlinx/serialization/modules/SerializersModule;", "Lkotlinx/serialization/json/JsonConfiguration;", "configuration", "Lkotlinx/serialization/json/JsonConfiguration;", "forceQuoting", "Z", "polymorphicDiscriminator", "Ljava/lang/String;", "polymorphicSerialName", "kotlinx-serialization-json"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nStreamingJsonEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamingJsonEncoder.kt\nkotlinx/serialization/json/internal/StreamingJsonEncoder\n+ 2 Polymorphic.kt\nkotlinx/serialization/json/internal/PolymorphicKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,232:1\n178#1,2:261\n178#1,2:263\n19#2,12:233\n33#2,15:246\n1#3:245\n1#3:265\n*S KotlinDebug\n*F\n+ 1 StreamingJsonEncoder.kt\nkotlinx/serialization/json/internal/StreamingJsonEncoder\n*L\n168#1:261,2\n169#1:263,2\n68#1:233,12\n68#1:246,15\n68#1:245\n*E\n"})
public final class StreamingJsonEncoder extends AbstractEncoder implements JsonEncoder {
    private final Composer composer;
    private final JsonConfiguration configuration;
    private boolean forceQuoting;
    private final Json json;
    private final WriteMode mode;
    private final JsonEncoder[] modeReuseCache;
    private String polymorphicDiscriminator;
    private String polymorphicSerialName;
    private final SerializersModule serializersModule;

    @Metadata(m862k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WriteMode.values().length];
            try {
                iArr[WriteMode.LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WriteMode.MAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WriteMode.POLY_OBJ.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005d  */
    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> void encodeSerializableValue(SerializationStrategy<? super T> serializer, T value) {
        String strClassDiscriminator;
        SerializationStrategy<? super T> serializationStrategyFindPolymorphicSerializer;
        if (getJson().getConfiguration().getUseArrayPolymorphism()) {
            serializer.serialize(this, value);
            return;
        }
        boolean z = serializer instanceof AbstractPolymorphicSerializer;
        if (z) {
            strClassDiscriminator = getJson().getConfiguration().getClassDiscriminatorMode() != ClassDiscriminatorMode.NONE ? PolymorphicKt.classDiscriminator(serializer.getDescriptor(), getJson()) : null;
        } else {
            int i = PolymorphicKt.WhenMappings.$EnumSwitchMapping$0[getJson().getConfiguration().getClassDiscriminatorMode().ordinal()];
            if (i != 1 && i != 2) {
                if (i != 3) {
                    LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
                    return;
                } else {
                    SerialKind kind = serializer.getDescriptor().getKind();
                    if (Intrinsics.areEqual(kind, StructureKind.CLASS.INSTANCE) || Intrinsics.areEqual(kind, StructureKind.OBJECT.INSTANCE)) {
                    }
                }
            }
        }
        if (z) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(serializer);
            if (value == 0) {
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(serializer);
                throw null;
            }
            serializationStrategyFindPolymorphicSerializer = PolymorphicSerializerKt.findPolymorphicSerializer(null, this, value);
        } else {
            serializationStrategyFindPolymorphicSerializer = serializer;
        }
        if (strClassDiscriminator != null) {
            PolymorphicKt.checkEncodingConflicts(getJson(), serializer, serializationStrategyFindPolymorphicSerializer, strClassDiscriminator);
            PolymorphicKt.checkKind(serializationStrategyFindPolymorphicSerializer.getDescriptor().getKind());
            String serialName = serializationStrategyFindPolymorphicSerializer.getDescriptor().getSerialName();
            this.polymorphicDiscriminator = strClassDiscriminator;
            this.polymorphicSerialName = serialName;
        }
        serializationStrategyFindPolymorphicSerializer.serialize(this, value);
    }

    public StreamingJsonEncoder(Composer composer, Json json, WriteMode writeMode, JsonEncoder[] jsonEncoderArr) {
        this.composer = composer;
        this.json = json;
        this.mode = writeMode;
        this.modeReuseCache = jsonEncoderArr;
        this.serializersModule = getJson().getSerializersModule();
        this.configuration = getJson().getConfiguration();
        int iOrdinal = writeMode.ordinal();
        if (jsonEncoderArr != null) {
            JsonEncoder jsonEncoder = jsonEncoderArr[iOrdinal];
            if (jsonEncoder == null && jsonEncoder == this) {
                return;
            }
            jsonEncoderArr[iOrdinal] = this;
        }
    }

    @Override // kotlinx.serialization.json.JsonEncoder
    public Json getJson() {
        return this.json;
    }

    public StreamingJsonEncoder(InternalJsonWriter internalJsonWriter, Json json, WriteMode writeMode, JsonEncoder[] jsonEncoderArr) {
        this(ComposersKt.Composer(internalJsonWriter, json), json, writeMode, jsonEncoderArr);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public boolean shouldEncodeElementDefault(SerialDescriptor descriptor, int index) {
        return this.configuration.getEncodeDefaults();
    }

    private final void encodeTypeInfo(String discriminator, String serialName) {
        this.composer.nextItem();
        encodeString(discriminator);
        this.composer.print(':');
        this.composer.space();
        encodeString(serialName);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public CompositeEncoder beginStructure(SerialDescriptor descriptor) {
        JsonEncoder jsonEncoder;
        WriteMode writeModeSwitchMode = WriteModeKt.switchMode(getJson(), descriptor);
        char c2 = writeModeSwitchMode.begin;
        if (c2 != 0) {
            this.composer.print(c2);
            this.composer.indent();
        }
        String str = this.polymorphicDiscriminator;
        if (str != null) {
            String serialName = this.polymorphicSerialName;
            if (serialName == null) {
                serialName = descriptor.getSerialName();
            }
            encodeTypeInfo(str, serialName);
            this.polymorphicDiscriminator = null;
            this.polymorphicSerialName = null;
        }
        if (this.mode == writeModeSwitchMode) {
            return this;
        }
        JsonEncoder[] jsonEncoderArr = this.modeReuseCache;
        return (jsonEncoderArr == null || (jsonEncoder = jsonEncoderArr[writeModeSwitchMode.ordinal()]) == null) ? new StreamingJsonEncoder(this.composer, getJson(), writeModeSwitchMode, this.modeReuseCache) : jsonEncoder;
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public void endStructure(SerialDescriptor descriptor) {
        if (this.mode.end != 0) {
            this.composer.unIndent();
            this.composer.nextItemIfNotFirst();
            this.composer.print(this.mode.end);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder
    public boolean encodeElement(SerialDescriptor descriptor, int index) {
        int i = WhenMappings.$EnumSwitchMapping$0[this.mode.ordinal()];
        if (i != 1) {
            boolean z = false;
            if (i != 2) {
                if (i != 3) {
                    if (!this.composer.getWritingFirst()) {
                        this.composer.print(',');
                    }
                    this.composer.nextItem();
                    encodeString(JsonNamesMapKt.getJsonElementName(descriptor, getJson(), index));
                    this.composer.print(':');
                    this.composer.space();
                } else {
                    if (index == 0) {
                        this.forceQuoting = true;
                    }
                    if (index == 1) {
                        this.composer.print(',');
                        this.composer.space();
                        this.forceQuoting = false;
                    }
                }
            } else if (!this.composer.getWritingFirst()) {
                int i2 = index % 2;
                Composer composer = this.composer;
                if (i2 == 0) {
                    composer.print(',');
                    this.composer.nextItem();
                    z = true;
                } else {
                    composer.print(':');
                    this.composer.space();
                }
                this.forceQuoting = z;
            } else {
                this.forceQuoting = true;
                this.composer.nextItem();
            }
        } else {
            if (!this.composer.getWritingFirst()) {
                this.composer.print(',');
            }
            this.composer.nextItem();
        }
        return true;
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.CompositeEncoder
    public <T> void encodeNullableSerializableElement(SerialDescriptor descriptor, int index, SerializationStrategy<? super T> serializer, T value) {
        if (value != null || this.configuration.getExplicitNulls()) {
            super.encodeNullableSerializableElement(descriptor, index, serializer, value);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeNull() {
        this.composer.print("null");
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeBoolean(boolean value) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(value));
        } else {
            this.composer.print(value);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeInt(int value) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(value));
        } else {
            this.composer.print(value);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeLong(long value) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(value));
        } else {
            this.composer.print(value);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeDouble(double value) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(value));
        } else {
            this.composer.print(value);
        }
        if (!this.configuration.getAllowSpecialFloatingPointValues() && Math.abs(value) > Double.MAX_VALUE) {
            throw JsonExceptionsKt.InvalidFloatingPointEncoded$default(Double.valueOf(value), null, 2, null);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public void encodeString(String value) {
        this.composer.printQuoted(value);
    }
}
