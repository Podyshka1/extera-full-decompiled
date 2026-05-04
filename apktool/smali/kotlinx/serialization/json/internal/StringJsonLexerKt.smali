.class public abstract Lkotlinx/serialization/json/internal/StringJsonLexerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final StringJsonLexer(Lkotlinx/serialization/json/Json;Ljava/lang/String;)Lkotlinx/serialization/json/internal/StringJsonLexer;
    .locals 1

    const-string/jumbo v0, "json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonConfiguration;->getAllowComments()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/StringJsonLexer;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
