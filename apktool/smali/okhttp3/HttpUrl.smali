.class public final Lokhttp3/HttpUrl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/HttpUrl$Builder;,
        Lokhttp3/HttpUrl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/HttpUrl$Companion;


# instance fields
.field private final fragment:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final pathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final port:I

.field private final queryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final scheme:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/HttpUrl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/HttpUrl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    .line 307
    iput-object p2, p0, Lokhttp3/HttpUrl;->username:Ljava/lang/String;

    .line 318
    iput-object p3, p0, Lokhttp3/HttpUrl;->password:Ljava/lang/String;

    .line 337
    iput-object p4, p0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 349
    iput p5, p0, Lokhttp3/HttpUrl;->port:I

    .line 360
    iput-object p6, p0, Lokhttp3/HttpUrl;->pathSegments:Ljava/util/List;

    .line 366
    iput-object p7, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    .line 378
    iput-object p8, p0, Lokhttp3/HttpUrl;->fragment:Ljava/lang/String;

    .line 380
    iput-object p9, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lokhttp3/HttpUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final defaultPort(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v0, p0}, Lokhttp3/HttpUrl$Companion;->defaultPort(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final get(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 1

    .line 0
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v0, p0}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method public static final get(Ljava/net/URI;)Lokhttp3/HttpUrl;
    .locals 1

    .line 0
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v0, p0}, Lokhttp3/HttpUrl$Companion;->get(Ljava/net/URI;)Lokhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method public static final get(Ljava/net/URL;)Lokhttp3/HttpUrl;
    .locals 1

    .line 0
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v0, p0}, Lokhttp3/HttpUrl$Companion;->get(Ljava/net/URL;)Lokhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method public static final parse(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 1

    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v0, p0}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final -deprecated_encodedFragment()Ljava/lang/String;
    .locals 1

    .line 925
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->encodedFragment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final -deprecated_encodedPassword()Ljava/lang/String;
    .locals 1

    .line 829
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final -deprecated_encodedPath()Ljava/lang/String;
    .locals 1

    .line 869
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final -deprecated_encodedPathSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 877
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final -deprecated_encodedQuery()Ljava/lang/String;
    .locals 1

    .line 893
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final -deprecated_encodedUsername()Ljava/lang/String;
    .locals 1

    .line 813
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final -deprecated_fragment()Ljava/lang/String;
    .locals 1

    .line 933
    iget-object v0, p0, Lokhttp3/HttpUrl;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public final -deprecated_host()Ljava/lang/String;
    .locals 1

    .line 845
    iget-object v0, p0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final -deprecated_password()Ljava/lang/String;
    .locals 1

    .line 837
    iget-object v0, p0, Lokhttp3/HttpUrl;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final -deprecated_pathSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 885
    iget-object v0, p0, Lokhttp3/HttpUrl;->pathSegments:Ljava/util/List;

    return-object v0
.end method

.method public final -deprecated_pathSize()I
    .locals 1

    .line 861
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->pathSize()I

    move-result v0

    return v0
.end method

.method public final -deprecated_port()I
    .locals 1

    .line 853
    iget v0, p0, Lokhttp3/HttpUrl;->port:I

    return v0
.end method

.method public final -deprecated_query()Ljava/lang/String;
    .locals 1

    .line 901
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->query()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final -deprecated_queryParameterNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 917
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->queryParameterNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final -deprecated_querySize()I
    .locals 1

    .line 909
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->querySize()I

    move-result v0

    return v0
.end method

.method public final -deprecated_scheme()Ljava/lang/String;
    .locals 1

    .line 805
    iget-object v0, p0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public final -deprecated_uri()Ljava/net/URI;
    .locals 1

    .line 797
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public final -deprecated_url()Ljava/net/URL;
    .locals 1

    .line 789
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public final -deprecated_username()Ljava/lang/String;
    .locals 1

    .line 821
    iget-object v0, p0, Lokhttp3/HttpUrl;->username:Ljava/lang/String;

    return-object v0
.end method

.method public final encodedFragment()Ljava/lang/String;
    .locals 7

    .line 701
    iget-object v0, p0, Lokhttp3/HttpUrl;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 702
    :cond_0
    iget-object v1, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v2, 0x23

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 703
    iget-object v1, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final encodedPassword()Ljava/lang/String;
    .locals 7

    .line 456
    iget-object v0, p0, Lokhttp3/HttpUrl;->password:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 457
    :cond_0
    iget-object v1, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    iget-object v0, p0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v2, 0x3a

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 458
    iget-object v1, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    const/4 v5, 0x6

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    .line 459
    iget-object v2, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final encodedPath()Ljava/lang/String;
    .locals 6

    .line 489
    iget-object v0, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v1, 0x2f

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    .line 490
    iget-object v1, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    const-string v2, "?#"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 491
    iget-object v2, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final encodedPathSegments()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v1, 0x2f

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    .line 508
    iget-object v1, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    const-string v2, "?#"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 509
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 513
    iget-object v3, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-static {v3, v4, v0, v1}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v3

    .line 514
    iget-object v4, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "substring(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final encodedQuery()Ljava/lang/String;
    .locals 7

    .line 535
    iget-object v0, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 536
    :cond_0
    iget-object v1, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v2, 0x3f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 537
    iget-object v1, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v1

    .line 538
    iget-object v2, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final encodedUsername()Ljava/lang/String;
    .locals 4

    .line 437
    iget-object v0, p0, Lokhttp3/HttpUrl;->username:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 438
    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 439
    iget-object v1, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    const-string v2, ":@"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 440
    iget-object v2, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 753
    instance-of v0, p1, Lokhttp3/HttpUrl;

    if-eqz v0, :cond_0

    check-cast p1, Lokhttp3/HttpUrl;

    iget-object p1, p1, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    iget-object v0, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final fragment()Ljava/lang/String;
    .locals 1

    .line 378
    iget-object v0, p0, Lokhttp3/HttpUrl;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 755
    iget-object v0, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final host()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final isHttps()Z
    .locals 2

    .line 383
    iget-object v0, p0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    const-string v1, "https"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final newBuilder()Lokhttp3/HttpUrl$Builder;
    .locals 4

    .line 728
    new-instance v0, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lokhttp3/HttpUrl$Builder;-><init>()V

    .line 729
    iget-object v1, p0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->setScheme$okhttp(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->setEncodedUsername$okhttp(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->setEncodedPassword$okhttp(Ljava/lang/String;)V

    .line 732
    iget-object v1, p0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->setHost$okhttp(Ljava/lang/String;)V

    .line 734
    iget v1, p0, Lokhttp3/HttpUrl;->port:I

    sget-object v2, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v3, p0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/HttpUrl$Companion;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lokhttp3/HttpUrl;->port:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->setPort$okhttp(I)V

    .line 735
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->getEncodedPathSegments$okhttp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 736
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->getEncodedPathSegments$okhttp()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 737
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 738
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->encodedFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->setEncodedFragment$okhttp(Ljava/lang/String;)V

    return-object v0
.end method

.method public final newBuilder(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 1

    const-string/jumbo v0, "link"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    :try_start_0
    new-instance v0, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lokhttp3/HttpUrl$Builder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lokhttp3/HttpUrl$Builder;->parse$okhttp(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final password()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lokhttp3/HttpUrl;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final pathSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lokhttp3/HttpUrl;->pathSegments:Ljava/util/List;

    return-object v0
.end method

.method public final pathSize()I
    .locals 1

    .line 474
    iget-object v0, p0, Lokhttp3/HttpUrl;->pathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final port()I
    .locals 1

    .line 349
    iget v0, p0, Lokhttp3/HttpUrl;->port:I

    return v0
.end method

.method public final query()Ljava/lang/String;
    .locals 3

    .line 557
    iget-object v0, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 558
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v2, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lokhttp3/HttpUrl$Companion;->access$toQueryString(Lokhttp3/HttpUrl$Companion;Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 560
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final queryParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 596
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v3

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v0

    if-lez v0, :cond_1

    if-le v2, v3, :cond_2

    :cond_1
    if-gez v0, :cond_4

    if-gt v3, v2, :cond_4

    .line 597
    :cond_2
    :goto_0
    iget-object v4, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 598
    iget-object p1, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_3
    if-eq v2, v3, :cond_4

    add-int/2addr v2, v0

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public final queryParameterName(I)Ljava/lang/String;
    .locals 1

    .line 665
    iget-object v0, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    .line 666
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 665
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final queryParameterNames()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 620
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3}, Ljava/util/LinkedHashSet;-><init>(IF)V

    .line 621
    iget-object v1, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v2

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v3

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v1

    if-lez v1, :cond_1

    if-le v2, v3, :cond_2

    :cond_1
    if-gez v1, :cond_3

    if-gt v3, v2, :cond_3

    .line 622
    :cond_2
    :goto_0
    iget-object v4, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    if-eq v2, v3, :cond_3

    add-int/2addr v2, v1

    goto :goto_0

    .line 246
    :cond_3
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "unmodifiableSet(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final queryParameterValue(I)Ljava/lang/String;
    .locals 1

    .line 683
    iget-object v0, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    .line 684
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 683
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final queryParameterValues(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 642
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 643
    iget-object v1, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v2

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v3

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v1

    if-lez v1, :cond_1

    if-le v2, v3, :cond_2

    :cond_1
    if-gez v1, :cond_4

    if-gt v3, v2, :cond_4

    .line 644
    :cond_2
    :goto_0
    iget-object v4, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 645
    iget-object v4, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eq v2, v3, :cond_4

    add-int/2addr v2, v1

    goto :goto_0

    .line 242
    :cond_4
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string/jumbo v0, "unmodifiableList(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final querySize()I
    .locals 1

    .line 579
    iget-object v0, p0, Lokhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final redact()Ljava/lang/String;
    .locals 2

    .line 712
    const-string v0, "/..."

    invoke-virtual {p0, v0}, Lokhttp3/HttpUrl;->newBuilder(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 713
    const-string v1, ""

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->username(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 714
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->password(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 715
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 716
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 1

    const-string/jumbo v0, "link"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl;->newBuilder(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final scheme()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 757
    iget-object v0, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final topPrivateDomain()Ljava/lang/String;
    .locals 2

    .line 777
    iget-object v0, p0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/internal/_HostnamesCommonKt;->canParseAsIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 780
    :cond_0
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final uri()Ljava/net/URI;
    .locals 4

    .line 410
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->reencodeForUri$okhttp()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 416
    :try_start_1
    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 413
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 419
    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final url()Ljava/net/URL;
    .locals 2

    .line 389
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lokhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 391
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final username()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lokhttp3/HttpUrl;->username:Ljava/lang/String;

    return-object v0
.end method
