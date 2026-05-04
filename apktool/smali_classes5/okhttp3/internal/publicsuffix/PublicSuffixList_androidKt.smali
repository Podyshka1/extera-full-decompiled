.class public final Lokhttp3/internal/publicsuffix/PublicSuffixList_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getDefault(Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;)Lokhttp3/internal/publicsuffix/PublicSuffixList;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance p0, Lokhttp3/internal/publicsuffix/AssetPublicSuffixList;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lokhttp3/internal/publicsuffix/AssetPublicSuffixList;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
