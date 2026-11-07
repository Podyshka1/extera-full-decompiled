package kotlinx.serialization.json.internal;

import java.lang.annotation.Annotation;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.json.ClassDiscriminatorMode;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonClassDiscriminator;
import kotlinx.serialization.json.JsonEncodingException;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a3\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u00012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00012\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\b\u001a\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\u001b\u0010\u0005\u001a\u00020\u0004*\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u0005\u0010\u000f¨\u0006\u0010"}, d2 = {"Lkotlinx/serialization/json/Json;", "Lkotlinx/serialization/SerializationStrategy;", "serializer", "actualSerializer", _UrlKt.FRAGMENT_ENCODE_SET, "classDiscriminator", _UrlKt.FRAGMENT_ENCODE_SET, "checkEncodingConflicts", "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/SerializationStrategy;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/String;)V", "Lkotlinx/serialization/descriptors/SerialKind;", "kind", "checkKind", "(Lkotlinx/serialization/descriptors/SerialKind;)V", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "json", "(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Ljava/lang/String;", "kotlinx-serialization-json"}, m862k = 2, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPolymorphic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Polymorphic.kt\nkotlinx/serialization/json/internal/PolymorphicKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TreeJsonEncoder.kt\nkotlinx/serialization/json/internal/TreeJsonEncoderKt\n+ 4 JsonExceptions.kt\nkotlinx/serialization/json/internal/JsonExceptionsKt\n*L\n1#1,114:1\n1#2:115\n270#3,4:116\n274#3:128\n276#3:136\n21#4,7:120\n60#4:127\n28#4,7:129\n21#4,7:137\n60#4:144\n28#4,7:145\n*S KotlinDebug\n*F\n+ 1 Polymorphic.kt\nkotlinx/serialization/json/internal/PolymorphicKt\n*L\n85#1:116,4\n85#1:128\n85#1:136\n85#1:120,7\n85#1:127\n85#1:129,7\n92#1:137,7\n92#1:144\n92#1:145,7\n*E\n"})
public abstract class PolymorphicKt {

    /* JADX INFO: loaded from: classes.dex */
    @Metadata(m862k = 3, mv = {2, 3, 0}, xi = 176)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ClassDiscriminatorMode.values().length];
            try {
                iArr[ClassDiscriminatorMode.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ClassDiscriminatorMode.POLYMORPHIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ClassDiscriminatorMode.ALL_JSON_OBJECTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkEncodingConflicts(Json json, SerializationStrategy<?> serializationStrategy, SerializationStrategy<?> serializationStrategy2, String str) {
        String str2;
        if (JsonNamesMapKt.getJsonEncodedNames(serializationStrategy2.getDescriptor(), json).contains(str)) {
            String serialName = serializationStrategy.getDescriptor().getSerialName();
            String serialName2 = serializationStrategy2.getDescriptor().getSerialName();
            if (json.getConfiguration().getClassDiscriminatorMode() == ClassDiscriminatorMode.ALL_JSON_OBJECTS && Intrinsics.areEqual(serialName, serialName2)) {
                str2 = "in ALL_JSON_OBJECTS class discriminator mode";
            } else {
                str2 = "as base class '" + serialName + '\'';
            }
            throw new JsonEncodingException("Class '" + serialName2 + "' cannot be serialized " + str2 + " because it has property name that conflicts with JSON class discriminator '" + str + "'.", serialName2, "You can either change class discriminator in JsonConfiguration, or rename property with @SerialName annotation.");
        }
    }

    public static final void checkKind(SerialKind serialKind) {
        if (serialKind instanceof SerialKind.ENUM) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Enums cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead");
        } else if (serialKind instanceof PrimitiveKind) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Primitives cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead");
        } else if (serialKind instanceof PolymorphicKind) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Actual serializer for polymorphic cannot be polymorphic itself");
        }
    }

    public static final String classDiscriminator(SerialDescriptor serialDescriptor, Json json) {
        for (Annotation annotation : serialDescriptor.getAnnotations()) {
            if (annotation instanceof JsonClassDiscriminator) {
                return ((JsonClassDiscriminator) annotation).discriminator();
            }
        }
        return json.getConfiguration().getClassDiscriminator();
    }
}
