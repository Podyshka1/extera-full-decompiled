.class public final Lokhttp3/ConnectionSpec$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/ConnectionSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cipherSuites:[Ljava/lang/String;

.field private supportsTlsExtensions:Z

.field private tls:Z

.field private tlsVersions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lokhttp3/ConnectionSpec;)V
    .locals 1

    const-string v0, "connectionSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-virtual {p1}, Lokhttp3/ConnectionSpec;->isTls()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    .line 233
    invoke-virtual {p1}, Lokhttp3/ConnectionSpec;->getCipherSuitesAsString$okhttp()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 234
    invoke-static {p1}, Lokhttp3/ConnectionSpec;->access$getTlsVersionsAsString$p(Lokhttp3/ConnectionSpec;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Lokhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result p1

    iput-boolean p1, p0, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-boolean p1, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    return-void
.end method


# virtual methods
.method public final allEnabledCipherSuites()Lokhttp3/ConnectionSpec$Builder;
    .locals 2

    .line 240
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object p0

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final allEnabledTlsVersions()Lokhttp3/ConnectionSpec$Builder;
    .locals 2

    .line 261
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object p0

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final build()Lokhttp3/ConnectionSpec;
    .locals 5

    .line 293
    new-instance v0, Lokhttp3/ConnectionSpec;

    .line 294
    iget-boolean v1, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    .line 295
    iget-boolean v2, p0, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 296
    iget-object v3, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 297
    iget-object v4, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 293
    invoke-direct {v0, v1, v2, v3, v4}, Lokhttp3/ConnectionSpec;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public final varargs cipherSuites([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;
    .locals 1

    const-string v0, "cipherSuites"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_2

    .line 254
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 256
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object p0

    .line 254
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one cipher suite is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 253
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs cipherSuites([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;
    .locals 5

    const-string v0, "cipherSuites"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_1

    .line 11561
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11896
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 247
    invoke-virtual {v4}, Lokhttp3/CipherSuite;->javaName()Ljava/lang/String;

    move-result-object v4

    .line 11897
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_0
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 247
    check-cast p1, [Ljava/lang/String;

    .line 248
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lokhttp3/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object p1

    return-object p1

    .line 246
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getCipherSuites$okhttp()[Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method public final getSupportsTlsExtensions$okhttp()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return v0
.end method

.method public final getTls$okhttp()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    return v0
.end method

.method public final getTlsVersions$okhttp()[Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object v0
.end method

.method public final setCipherSuites$okhttp([Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lokhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-void
.end method

.method public final setSupportsTlsExtensions$okhttp(Z)V
    .locals 0

    .line 225
    iput-boolean p1, p0, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return-void
.end method

.method public final setTls$okhttp(Z)V
    .locals 0

    .line 222
    iput-boolean p1, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    return-void
.end method

.method public final setTlsVersions$okhttp([Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-void
.end method

.method public final supportsTlsExtensions(Z)Lokhttp3/ConnectionSpec$Builder;
    .locals 1

    .line 288
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_0

    .line 289
    iput-boolean p1, p0, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return-object p0

    .line 288
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "no TLS extensions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs tlsVersions([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;
    .locals 1

    const-string/jumbo v0, "tlsVersions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_2

    .line 276
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 278
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lokhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object p0

    .line 276
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one TLS version is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 275
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;
    .locals 5

    const-string/jumbo v0, "tlsVersions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iget-boolean v0, p0, Lokhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_1

    .line 11561
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11896
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 269
    invoke-virtual {v4}, Lokhttp3/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v4

    .line 11897
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_0
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 269
    check-cast p1, [Ljava/lang/String;

    .line 270
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object p1

    return-object p1

    .line 267
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
