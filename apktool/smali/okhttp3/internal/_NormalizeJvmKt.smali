.class public final Lokhttp3/internal/_NormalizeJvmKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final normalizeNfc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "string"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "normalize(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
