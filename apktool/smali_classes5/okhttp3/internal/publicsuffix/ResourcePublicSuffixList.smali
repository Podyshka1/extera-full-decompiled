.class public final Lokhttp3/internal/publicsuffix/ResourcePublicSuffixList;
.super Lokhttp3/internal/publicsuffix/BasePublicSuffixList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/publicsuffix/ResourcePublicSuffixList$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/publicsuffix/ResourcePublicSuffixList$Companion;

.field public static final PUBLIC_SUFFIX_RESOURCE:Lokio/Path;


# instance fields
.field private final fileSystem:Lokio/FileSystem;

.field private final path:Lokio/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lokhttp3/internal/publicsuffix/ResourcePublicSuffixList$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/publicsuffix/ResourcePublicSuffixList$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/publicsuffix/ResourcePublicSuffixList;->Companion:Lokhttp3/internal/publicsuffix/ResourcePublicSuffixList$Companion;

    .line 32
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "okhttp3/internal/publicsuffix/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/publicsuffix/ResourcePublicSuffixList;->PUBLIC_SUFFIX_RESOURCE:Lokio/Path;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lokhttp3/internal/publicsuffix/ResourcePublicSuffixList;-><init>(Lokio/Path;Lokio/FileSystem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lokio/Path;Lokio/FileSystem;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileSystem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/BasePublicSuffixList;-><init>()V

    .line 24
    iput-object p1, p0, Lokhttp3/internal/publicsuffix/ResourcePublicSuffixList;->path:Lokio/Path;

    .line 25
    iput-object p2, p0, Lokhttp3/internal/publicsuffix/ResourcePublicSuffixList;->fileSystem:Lokio/FileSystem;

    return-void
.end method

.method public synthetic constructor <init>(Lokio/Path;Lokio/FileSystem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 24
    sget-object p1, Lokhttp3/internal/publicsuffix/ResourcePublicSuffixList;->PUBLIC_SUFFIX_RESOURCE:Lokio/Path;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 25
    sget-object p2, Lokio/FileSystem;->RESOURCES:Lokio/FileSystem;

    .line 23
    :cond_1
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/publicsuffix/ResourcePublicSuffixList;-><init>(Lokio/Path;Lokio/FileSystem;)V

    return-void
.end method


# virtual methods
.method public final getFileSystem()Lokio/FileSystem;
    .locals 1

    .line 25
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/ResourcePublicSuffixList;->fileSystem:Lokio/FileSystem;

    return-object v0
.end method

.method public bridge synthetic getPath()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lokhttp3/internal/publicsuffix/ResourcePublicSuffixList;->getPath()Lokio/Path;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Lokio/Path;
    .locals 1

    .line 24
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/ResourcePublicSuffixList;->path:Lokio/Path;

    return-object v0
.end method

.method public listSource()Lokio/Source;
    .locals 2

    .line 27
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/ResourcePublicSuffixList;->fileSystem:Lokio/FileSystem;

    invoke-virtual {p0}, Lokhttp3/internal/publicsuffix/ResourcePublicSuffixList;->getPath()Lokio/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    move-result-object v0

    return-object v0
.end method
