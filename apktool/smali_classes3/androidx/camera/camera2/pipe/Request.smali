.class public final Landroidx/camera/camera2/pipe/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/Request$Listener;
    }
.end annotation


# instance fields
.field private final extras:Ljava/util/Map;

.field private final inputRequest:Landroidx/camera/camera2/pipe/InputRequest;

.field private final listeners:Ljava/util/List;

.field private final parameters:Ljava/util/Map;

.field private final streams:Ljava/util/List;

.field private final template:Landroidx/camera/camera2/pipe/RequestTemplate;


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Landroidx/camera/camera2/pipe/RequestTemplate;Landroidx/camera/camera2/pipe/InputRequest;)V
    .locals 1

    const-string/jumbo v0, "streams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listeners"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroidx/camera/camera2/pipe/Request;->streams:Ljava/util/List;

    .line 59
    iput-object p2, p0, Landroidx/camera/camera2/pipe/Request;->parameters:Ljava/util/Map;

    .line 60
    iput-object p3, p0, Landroidx/camera/camera2/pipe/Request;->extras:Ljava/util/Map;

    .line 61
    iput-object p4, p0, Landroidx/camera/camera2/pipe/Request;->listeners:Ljava/util/List;

    .line 62
    iput-object p5, p0, Landroidx/camera/camera2/pipe/Request;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    .line 63
    iput-object p6, p0, Landroidx/camera/camera2/pipe/Request;->inputRequest:Landroidx/camera/camera2/pipe/InputRequest;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Landroidx/camera/camera2/pipe/RequestTemplate;Landroidx/camera/camera2/pipe/InputRequest;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_1

    .line 60
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_2

    .line 61
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    :cond_2
    move-object v4, p4

    and-int/lit8 p2, p7, 0x10

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    move-object v5, p3

    goto :goto_0

    :cond_3
    move-object v5, p5

    :goto_0
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_4

    move-object v6, p3

    goto :goto_1

    :cond_4
    move-object v6, p6

    :goto_1
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 57
    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/pipe/Request;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Landroidx/camera/camera2/pipe/RequestTemplate;Landroidx/camera/camera2/pipe/InputRequest;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Landroidx/camera/camera2/pipe/RequestTemplate;Landroidx/camera/camera2/pipe/InputRequest;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Landroidx/camera/camera2/pipe/Request;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Landroidx/camera/camera2/pipe/RequestTemplate;Landroidx/camera/camera2/pipe/InputRequest;)V

    return-void
.end method

.method private final getUnchecked(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1

    .line 293
    iget-object v0, p0, Landroidx/camera/camera2/pipe/Request;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final toStringInternal(Z)Ljava/lang/String;
    .locals 6

    .line 300
    iget-object v0, p0, Landroidx/camera/camera2/pipe/Request;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", template="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/Request;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/RequestTemplate;->unbox-impl()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/RequestTemplate;->toString-impl(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x5

    if-eqz p1, :cond_1

    .line 303
    iget-object v3, p0, Landroidx/camera/camera2/pipe/Request;->parameters:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", parameters="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/Request;->parameters:Ljava/util/Map;

    invoke-virtual {v4, v5, v2}, Landroidx/camera/camera2/pipe/core/Debug;->formatParameterMap(Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz p1, :cond_2

    .line 309
    iget-object p1, p0, Landroidx/camera/camera2/pipe/Request;->extras:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 310
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", extras="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/Request;->extras:Ljava/util/Map;

    invoke-virtual {v1, v4, v2}, Landroidx/camera/camera2/pipe/core/Debug;->formatParameterMap(Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request(streams="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/Request;->streams:Ljava/util/List;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/Request;->getUnchecked(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/camera/camera2/pipe/Request;->extras:Ljava/util/Map;

    return-object v0
.end method

.method public final getInputRequest()Landroidx/camera/camera2/pipe/InputRequest;
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/camera/camera2/pipe/Request;->inputRequest:Landroidx/camera/camera2/pipe/InputRequest;

    return-object v0
.end method

.method public final getListeners()Ljava/util/List;
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/camera/camera2/pipe/Request;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public final getParameters()Ljava/util/Map;
    .locals 1

    .line 59
    iget-object v0, p0, Landroidx/camera/camera2/pipe/Request;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public final getStreams()Ljava/util/List;
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/camera/camera2/pipe/Request;->streams:Ljava/util/List;

    return-object v0
.end method

.method public final getTemplate-ejQnlcg()Landroidx/camera/camera2/pipe/RequestTemplate;
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/camera/camera2/pipe/Request;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 295
    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/Request;->toStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
