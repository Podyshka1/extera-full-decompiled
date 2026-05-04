.class public final Lokhttp3/Cookie$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private domain:Ljava/lang/String;

.field private expiresAt:J

.field private hostOnly:Z

.field private httpOnly:Z

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private persistent:Z

.field private sameSite:Ljava/lang/String;

.field private secure:Z

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0xe677d21fdbffL

    .line 298
    iput-wide v0, p0, Lokhttp3/Cookie$Builder;->expiresAt:J

    .line 300
    const-string v0, "/"

    iput-object v0, p0, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Cookie;)V
    .locals 2

    const-string v0, "cookie"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lokhttp3/Cookie$Builder;-><init>()V

    .line 308
    invoke-virtual {p1}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    .line 309
    invoke-virtual {p1}, Lokhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Lokhttp3/Cookie;->expiresAt()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Cookie$Builder;->expiresAt:J

    .line 311
    invoke-virtual {p1}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Lokhttp3/Cookie;->path()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Lokhttp3/Cookie;->secure()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->secure:Z

    .line 314
    invoke-virtual {p1}, Lokhttp3/Cookie;->httpOnly()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->httpOnly:Z

    .line 315
    invoke-virtual {p1}, Lokhttp3/Cookie;->persistent()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->persistent:Z

    .line 316
    invoke-virtual {p1}, Lokhttp3/Cookie;->hostOnly()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->hostOnly:Z

    .line 317
    invoke-virtual {p1}, Lokhttp3/Cookie;->sameSite()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/Cookie$Builder;->sameSite:Ljava/lang/String;

    return-void
.end method

.method private final domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;
    .locals 2

    .line 358
    invoke-static {p1}, Lokhttp3/internal/_HostnamesCommonKt;->toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iput-object v0, p0, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    .line 361
    iput-boolean p2, p0, Lokhttp3/Cookie$Builder;->hostOnly:Z

    return-object p0

    .line 359
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final build()Lokhttp3/Cookie;
    .locals 13

    .line 387
    new-instance v0, Lokhttp3/Cookie;

    .line 388
    iget-object v1, p0, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 389
    iget-object v2, p0, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 390
    iget-wide v3, p0, Lokhttp3/Cookie$Builder;->expiresAt:J

    .line 391
    iget-object v5, p0, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 392
    iget-object v6, p0, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    .line 393
    iget-boolean v7, p0, Lokhttp3/Cookie$Builder;->secure:Z

    .line 394
    iget-boolean v8, p0, Lokhttp3/Cookie$Builder;->httpOnly:Z

    .line 395
    iget-boolean v9, p0, Lokhttp3/Cookie$Builder;->persistent:Z

    .line 396
    iget-boolean v10, p0, Lokhttp3/Cookie$Builder;->hostOnly:Z

    .line 397
    iget-object v11, p0, Lokhttp3/Cookie$Builder;->sameSite:Ljava/lang/String;

    const/4 v12, 0x0

    .line 387
    invoke-direct/range {v0 .. v12}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.domain == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final domain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 1

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 345
    invoke-direct {p0, p1, v0}, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final expiresAt(J)Lokhttp3/Cookie$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/high16 p1, -0x8000000000000000L

    :cond_0
    const-wide v0, 0xe677d21fdbffL

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    move-wide p1, v0

    .line 337
    :cond_1
    iput-wide p1, p0, Lokhttp3/Cookie$Builder;->expiresAt:J

    const/4 p1, 0x1

    .line 338
    iput-boolean p1, p0, Lokhttp3/Cookie$Builder;->persistent:Z

    return-object p0
.end method

.method public final hostOnlyDomain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 1

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 351
    invoke-direct {p0, p1, v0}, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final httpOnly()Lokhttp3/Cookie$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 377
    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->httpOnly:Z

    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iput-object p1, p0, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    return-object p0

    .line 322
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "name is not trimmed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final path(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 4

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 366
    const-string v2, "/"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iput-object p1, p0, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    return-object p0

    .line 366
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "path must start with \'/\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final sameSite(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 1

    const-string v0, "sameSite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iput-object p1, p0, Lokhttp3/Cookie$Builder;->sameSite:Ljava/lang/String;

    return-object p0

    .line 382
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sameSite is not trimmed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final secure()Lokhttp3/Cookie$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 372
    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->secure:Z

    return-object p0
.end method

.method public final value(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iput-object p1, p0, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    return-object p0

    .line 328
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "value is not trimmed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
