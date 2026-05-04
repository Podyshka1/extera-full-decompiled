.class public final Lokhttp3/Cookie;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cookie$Builder;,
        Lokhttp3/Cookie$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/Cookie$Companion;

.field private static final DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final YEAR_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final domain:Ljava/lang/String;

.field private final expiresAt:J

.field private final hostOnly:Z

.field private final httpOnly:Z

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final persistent:Z

.field private final sameSite:Ljava/lang/String;

.field private final secure:Z

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/Cookie$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/Cookie$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/Cookie;->Companion:Lokhttp3/Cookie$Companion;

    .line 403
    const-string v0, "(\\d{2,4})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    .line 405
    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    .line 406
    const-string v0, "(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    .line 407
    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    .line 58
    iput-wide p3, p0, Lokhttp3/Cookie;->expiresAt:J

    .line 63
    iput-object p5, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    .line 69
    iput-object p6, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    .line 71
    iput-boolean p7, p0, Lokhttp3/Cookie;->secure:Z

    .line 76
    iput-boolean p8, p0, Lokhttp3/Cookie;->httpOnly:Z

    .line 82
    iput-boolean p9, p0, Lokhttp3/Cookie;->persistent:Z

    .line 94
    iput-boolean p10, p0, Lokhttp3/Cookie;->hostOnly:Z

    .line 120
    iput-object p11, p0, Lokhttp3/Cookie;->sameSite:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p11}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getDAY_OF_MONTH_PATTERN$cp()Ljava/util/regex/Pattern;
    .locals 1

    .line 43
    sget-object v0, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static final synthetic access$getMONTH_PATTERN$cp()Ljava/util/regex/Pattern;
    .locals 1

    .line 43
    sget-object v0, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static final synthetic access$getTIME_PATTERN$cp()Ljava/util/regex/Pattern;
    .locals 1

    .line 43
    sget-object v0, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static final synthetic access$getYEAR_PATTERN$cp()Ljava/util/regex/Pattern;
    .locals 1

    .line 43
    sget-object v0, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static final parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 1

    sget-object v0, Lokhttp3/Cookie;->Companion:Lokhttp3/Cookie$Companion;

    invoke-virtual {v0, p0, p1}, Lokhttp3/Cookie$Companion;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object p0

    return-object p0
.end method

.method public static final parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    sget-object v0, Lokhttp3/Cookie;->Companion:Lokhttp3/Cookie$Companion;

    invoke-virtual {v0, p0, p1}, Lokhttp3/Cookie$Companion;->parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final -deprecated_domain()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public final -deprecated_expiresAt()J
    .locals 2

    .line 202
    iget-wide v0, p0, Lokhttp3/Cookie;->expiresAt:J

    return-wide v0
.end method

.method public final -deprecated_hostOnly()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z

    return v0
.end method

.method public final -deprecated_httpOnly()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z

    return v0
.end method

.method public final -deprecated_name()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final -deprecated_path()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final -deprecated_persistent()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z

    return v0
.end method

.method public final -deprecated_secure()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    return v0
.end method

.method public final -deprecated_value()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final domain()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 142
    instance-of v0, p1, Lokhttp3/Cookie;

    if-eqz v0, :cond_0

    .line 143
    check-cast p1, Lokhttp3/Cookie;

    iget-object v0, p1, Lokhttp3/Cookie;->name:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p1, Lokhttp3/Cookie;->value:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-wide v0, p1, Lokhttp3/Cookie;->expiresAt:J

    iget-wide v2, p0, Lokhttp3/Cookie;->expiresAt:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p1, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p1, Lokhttp3/Cookie;->path:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-boolean v0, p1, Lokhttp3/Cookie;->secure:Z

    iget-boolean v1, p0, Lokhttp3/Cookie;->secure:Z

    if-ne v0, v1, :cond_0

    .line 149
    iget-boolean v0, p1, Lokhttp3/Cookie;->httpOnly:Z

    iget-boolean v1, p0, Lokhttp3/Cookie;->httpOnly:Z

    if-ne v0, v1, :cond_0

    .line 150
    iget-boolean v0, p1, Lokhttp3/Cookie;->persistent:Z

    iget-boolean v1, p0, Lokhttp3/Cookie;->persistent:Z

    if-ne v0, v1, :cond_0

    .line 151
    iget-boolean v0, p1, Lokhttp3/Cookie;->hostOnly:Z

    iget-boolean v1, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-ne v0, v1, :cond_0

    .line 152
    iget-object p1, p1, Lokhttp3/Cookie;->sameSite:Ljava/lang/String;

    iget-object v0, p0, Lokhttp3/Cookie;->sameSite:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final expiresAt()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lokhttp3/Cookie;->expiresAt:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .line 157
    iget-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 158
    iget-object v0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 159
    iget-wide v2, p0, Lokhttp3/Cookie;->expiresAt:J

    invoke-static {v2, v3}, Landroidx/camera/camera2/pipe/CameraTimestamp$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 160
    iget-object v0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 161
    iget-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 162
    iget-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    invoke-static {v0}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 163
    iget-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z

    invoke-static {v0}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 164
    iget-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z

    invoke-static {v0}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 165
    iget-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z

    invoke-static {v0}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 166
    iget-object v0, p0, Lokhttp3/Cookie;->sameSite:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public final hostOnly()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z

    return v0
.end method

.method public final httpOnly()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z

    return v0
.end method

.method public final matches(Lokhttp3/HttpUrl;)Z
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 132
    :cond_0
    sget-object v0, Lokhttp3/Cookie;->Companion:Lokhttp3/Cookie$Companion;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lokhttp3/Cookie$Companion;->access$domainMatch(Lokhttp3/Cookie$Companion;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 136
    :cond_1
    sget-object v0, Lokhttp3/Cookie;->Companion:Lokhttp3/Cookie$Companion;

    iget-object v2, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lokhttp3/Cookie$Companion;->access$pathMatch(Lokhttp3/Cookie$Companion;Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 138
    :cond_2
    iget-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final newBuilder()Lokhttp3/Cookie$Builder;
    .locals 1

    .line 289
    new-instance v0, Lokhttp3/Cookie$Builder;

    invoke-direct {v0, p0}, Lokhttp3/Cookie$Builder;-><init>(Lokhttp3/Cookie;)V

    return-object v0
.end method

.method public final path()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final persistent()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z

    return v0
.end method

.method public final sameSite()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lokhttp3/Cookie;->sameSite:Ljava/lang/String;

    return-object v0
.end method

.method public final secure()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, v0}, Lokhttp3/Cookie;->toString$okhttp(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString$okhttp(Z)Ljava/lang/String;
    .locals 5

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    iget-object v1, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    iget-object v1, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-boolean v1, p0, Lokhttp3/Cookie;->persistent:Z

    if-eqz v1, :cond_1

    .line 256
    iget-wide v1, p0, Lokhttp3/Cookie;->expiresAt:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 257
    const-string v1, "; max-age=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 259
    :cond_0
    const-string v1, "; expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lokhttp3/Cookie;->expiresAt:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lokhttp3/internal/http/DateFormattingKt;->toHttpDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-nez v1, :cond_3

    .line 264
    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    .line 266
    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_2
    iget-object p1, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_3
    const-string p1, "; path="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-boolean p1, p0, Lokhttp3/Cookie;->secure:Z

    if-eqz p1, :cond_4

    .line 274
    const-string p1, "; secure"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_4
    iget-boolean p1, p0, Lokhttp3/Cookie;->httpOnly:Z

    if-eqz p1, :cond_5

    .line 278
    const-string p1, "; httponly"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_5
    iget-object p1, p0, Lokhttp3/Cookie;->sameSite:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 282
    const-string p1, "; samesite="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lokhttp3/Cookie;->sameSite:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final value()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    return-object v0
.end method
