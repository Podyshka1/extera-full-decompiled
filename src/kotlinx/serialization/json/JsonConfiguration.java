package kotlinx.serialization.json;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class JsonConfiguration {
    private final boolean allowComments;
    private final boolean allowSpecialFloatingPointValues;
    private final boolean allowStructuredMapKeys;
    private final boolean allowTrailingComma;
    private final String classDiscriminator;
    private ClassDiscriminatorMode classDiscriminatorMode;
    private final boolean coerceInputValues;
    private final boolean decodeEnumsCaseInsensitive;
    private final boolean encodeDefaults;
    private final boolean explicitNulls;
    private final boolean ignoreUnknownKeys;
    private final boolean isLenient;
    private final boolean prettyPrint;
    private final String prettyPrintIndent;
    private final boolean useAlternativeNames;
    private final boolean useArrayPolymorphism;

    public final JsonNamingStrategy getNamingStrategy() {
        return null;
    }

    public JsonConfiguration(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, String prettyPrintIndent, boolean z7, boolean z8, String classDiscriminator, boolean z9, boolean z10, JsonNamingStrategy jsonNamingStrategy, boolean z11, boolean z12, boolean z13, ClassDiscriminatorMode classDiscriminatorMode) {
        Intrinsics.checkNotNullParameter(prettyPrintIndent, "prettyPrintIndent");
        Intrinsics.checkNotNullParameter(classDiscriminator, "classDiscriminator");
        Intrinsics.checkNotNullParameter(classDiscriminatorMode, "classDiscriminatorMode");
        this.encodeDefaults = z;
        this.ignoreUnknownKeys = z2;
        this.isLenient = z3;
        this.allowStructuredMapKeys = z4;
        this.prettyPrint = z5;
        this.explicitNulls = z6;
        this.prettyPrintIndent = prettyPrintIndent;
        this.coerceInputValues = z7;
        this.useArrayPolymorphism = z8;
        this.classDiscriminator = classDiscriminator;
        this.allowSpecialFloatingPointValues = z9;
        this.useAlternativeNames = z10;
        this.decodeEnumsCaseInsensitive = z11;
        this.allowTrailingComma = z12;
        this.allowComments = z13;
        this.classDiscriminatorMode = classDiscriminatorMode;
    }

    public final boolean getEncodeDefaults() {
        return this.encodeDefaults;
    }

    public final boolean getIgnoreUnknownKeys() {
        return this.ignoreUnknownKeys;
    }

    public final boolean isLenient() {
        return this.isLenient;
    }

    public final boolean getAllowStructuredMapKeys() {
        return this.allowStructuredMapKeys;
    }

    public final boolean getPrettyPrint() {
        return this.prettyPrint;
    }

    public final boolean getExplicitNulls() {
        return this.explicitNulls;
    }

    public final String getPrettyPrintIndent() {
        return this.prettyPrintIndent;
    }

    public /* synthetic */ JsonConfiguration(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, String str, boolean z7, boolean z8, String str2, boolean z9, boolean z10, JsonNamingStrategy jsonNamingStrategy, boolean z11, boolean z12, boolean z13, ClassDiscriminatorMode classDiscriminatorMode, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? false : z3, (i & 8) != 0 ? false : z4, (i & 16) != 0 ? false : z5, (i & 32) != 0 ? true : z6, (i & 64) != 0 ? "    " : str, (i & 128) != 0 ? false : z7, (i & 256) != 0 ? false : z8, (i & 512) != 0 ? "type" : str2, (i & 1024) != 0 ? false : z9, (i & 2048) == 0 ? z10 : true, (i & 4096) != 0 ? null : jsonNamingStrategy, (i & 8192) != 0 ? false : z11, (i & 16384) != 0 ? false : z12, (i & 32768) != 0 ? false : z13, (i & 65536) != 0 ? ClassDiscriminatorMode.POLYMORPHIC : classDiscriminatorMode);
    }

    public final boolean getCoerceInputValues() {
        return this.coerceInputValues;
    }

    public final boolean getUseArrayPolymorphism() {
        return this.useArrayPolymorphism;
    }

    public final String getClassDiscriminator() {
        return this.classDiscriminator;
    }

    public final boolean getAllowSpecialFloatingPointValues() {
        return this.allowSpecialFloatingPointValues;
    }

    public final boolean getUseAlternativeNames() {
        return this.useAlternativeNames;
    }

    public final boolean getDecodeEnumsCaseInsensitive() {
        return this.decodeEnumsCaseInsensitive;
    }

    public final boolean getAllowTrailingComma() {
        return this.allowTrailingComma;
    }

    public final boolean getAllowComments() {
        return this.allowComments;
    }

    public final ClassDiscriminatorMode getClassDiscriminatorMode() {
        return this.classDiscriminatorMode;
    }

    public String toString() {
        return "JsonConfiguration(encodeDefaults=" + this.encodeDefaults + ", ignoreUnknownKeys=" + this.ignoreUnknownKeys + ", isLenient=" + this.isLenient + ", allowStructuredMapKeys=" + this.allowStructuredMapKeys + ", prettyPrint=" + this.prettyPrint + ", explicitNulls=" + this.explicitNulls + ", prettyPrintIndent='" + this.prettyPrintIndent + "', coerceInputValues=" + this.coerceInputValues + ", useArrayPolymorphism=" + this.useArrayPolymorphism + ", classDiscriminator='" + this.classDiscriminator + "', allowSpecialFloatingPointValues=" + this.allowSpecialFloatingPointValues + ", useAlternativeNames=" + this.useAlternativeNames + ", namingStrategy=" + ((Object) null) + ", decodeEnumsCaseInsensitive=" + this.decodeEnumsCaseInsensitive + ", allowTrailingComma=" + this.allowTrailingComma + ", allowComments=" + this.allowComments + ", classDiscriminatorMode=" + this.classDiscriminatorMode + ')';
    }
}
