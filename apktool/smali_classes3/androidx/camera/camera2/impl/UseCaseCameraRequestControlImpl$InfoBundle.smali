.class final Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InfoBundle"
.end annotation


# instance fields
.field private final listeners:Ljava/util/Set;

.field private final options:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

.field private final tags:Ljava/util/Map;

.field private template:Landroidx/camera/camera2/pipe/RequestTemplate;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listeners"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->options:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 298
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->tags:Ljava/util/Map;

    .line 299
    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->listeners:Ljava/util/Set;

    .line 300
    iput-object p4, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 297
    new-instance p1, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {p1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    .line 298
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_1
    move-object v2, p2

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_2

    .line 299
    new-instance p3, Ljava/util/LinkedHashSet;

    invoke-direct {p3}, Ljava/util/LinkedHashSet;-><init>()V

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p5, 0x8

    if-eqz p1, :cond_3

    const/4 p4, 0x0

    :cond_3
    move-object v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    .line 296
    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;-><init>(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;-><init>(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;)V

    return-void
.end method

.method public static synthetic copy-0am55g4$default(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;ILjava/lang/Object;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->options:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->tags:Ljava/util/Map;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->listeners:Ljava/util/Set;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->copy-0am55g4(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy-0am55g4(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;
    .locals 7

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listeners"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;-><init>(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->options:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    iget-object v3, p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->options:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->tags:Ljava/util/Map;

    iget-object v3, p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->tags:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->listeners:Ljava/util/Set;

    iget-object v3, p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->listeners:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    iget-object p1, p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getListeners()Ljava/util/Set;
    .locals 1

    .line 299
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method public final getOptions()Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;
    .locals 1

    .line 297
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->options:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    return-object v0
.end method

.method public final getTags()Ljava/util/Map;
    .locals 1

    .line 298
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public final getTemplate-ejQnlcg()Landroidx/camera/camera2/pipe/RequestTemplate;
    .locals 1

    .line 300
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->options:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->tags:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->listeners:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/RequestTemplate;->unbox-impl()I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/RequestTemplate;->hashCode-impl(I)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setTemplate-xlOpshk(Landroidx/camera/camera2/pipe/RequestTemplate;)V
    .locals 0

    .line 300
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InfoBundle(options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->options:Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->tags:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->listeners:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", template="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
