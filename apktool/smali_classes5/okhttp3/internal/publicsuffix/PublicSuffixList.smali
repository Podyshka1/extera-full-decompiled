.class public interface abstract Lokhttp3/internal/publicsuffix/PublicSuffixList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;->$$INSTANCE:Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixList;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixList$Companion;

    return-void
.end method


# virtual methods
.method public abstract ensureLoaded()V
.end method

.method public abstract getBytes()Lokio/ByteString;
.end method

.method public abstract getExceptionBytes()Lokio/ByteString;
.end method
