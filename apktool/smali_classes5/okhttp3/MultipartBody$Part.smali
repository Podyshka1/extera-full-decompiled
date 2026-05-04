.class public final Lokhttp3/MultipartBody$Part;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartBody$Part$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/MultipartBody$Part$Companion;


# instance fields
.field private final body:Lokhttp3/RequestBody;

.field private final headers:Lokhttp3/Headers;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/MultipartBody$Part$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/MultipartBody$Part$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    return-void
.end method

.method private constructor <init>(Lokhttp3/Headers;Lokhttp3/RequestBody;)V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lokhttp3/MultipartBody$Part;->headers:Lokhttp3/Headers;

    .line 184
    iput-object p2, p0, Lokhttp3/MultipartBody$Part;->body:Lokhttp3/RequestBody;

    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/Headers;Lokhttp3/RequestBody;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lokhttp3/MultipartBody$Part;-><init>(Lokhttp3/Headers;Lokhttp3/RequestBody;)V

    return-void
.end method

.method public static final create(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;
    .locals 1

    .line 0
    sget-object v0, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    invoke-virtual {v0, p0, p1}, Lokhttp3/MultipartBody$Part$Companion;->create(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;
    .locals 1

    .line 0
    sget-object v0, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    invoke-virtual {v0, p0}, Lokhttp3/MultipartBody$Part$Companion;->create(Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p0

    return-object p0
.end method

.method public static final createFormData(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;
    .locals 1

    .line 0
    sget-object v0, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    invoke-virtual {v0, p0, p1}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Part;

    move-result-object p0

    return-object p0
.end method

.method public static final createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;
    .locals 1

    .line 0
    sget-object v0, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final -deprecated_body()Lokhttp3/RequestBody;
    .locals 1

    .line 200
    iget-object v0, p0, Lokhttp3/MultipartBody$Part;->body:Lokhttp3/RequestBody;

    return-object v0
.end method

.method public final -deprecated_headers()Lokhttp3/Headers;
    .locals 1

    .line 192
    iget-object v0, p0, Lokhttp3/MultipartBody$Part;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method public final body()Lokhttp3/RequestBody;
    .locals 1

    .line 184
    iget-object v0, p0, Lokhttp3/MultipartBody$Part;->body:Lokhttp3/RequestBody;

    return-object v0
.end method

.method public final headers()Lokhttp3/Headers;
    .locals 1

    .line 183
    iget-object v0, p0, Lokhttp3/MultipartBody$Part;->headers:Lokhttp3/Headers;

    return-object v0
.end method
