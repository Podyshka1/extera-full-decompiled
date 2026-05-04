.class public final Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContainerScope"
.end annotation


# instance fields
.field private final container:I

.field private final videoMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(ILjava/util/Map;)V
    .locals 1

    const-string v0, "videoMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p1, p0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->container:I

    .line 145
    iput-object p2, p0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->videoMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final support(Ljava/util/List;Ljava/util/List;)V
    .locals 7

    const-string v0, "videoMimes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioMimes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    check-cast p1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    iget-object v2, p0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->videoMap:Ljava/util/Map;

    .line 384
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 160
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 186
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_0
    check-cast v3, Ljava/util/Set;

    .line 161
    move-object v2, p2

    check-cast v2, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 162
    new-instance v5, Landroidx/camera/video/internal/config/FormatCombo;

    iget v6, p0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->container:I

    invoke-direct {v5, v6, v0, v4}, Landroidx/camera/video/internal/config/FormatCombo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    :cond_1
    new-instance v2, Landroidx/camera/video/internal/config/FormatCombo;

    iget v4, p0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->container:I

    invoke-direct {v2, v4, v0, v1}, Landroidx/camera/video/internal/config/FormatCombo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_2
    iget-object p1, p0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->videoMap:Ljava/util/Map;

    .line 384
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 170
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 196
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_3
    check-cast v0, Ljava/util/Set;

    .line 171
    check-cast p2, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 172
    new-instance v2, Landroidx/camera/video/internal/config/FormatCombo;

    iget v3, p0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;->container:I

    invoke-direct {v2, v3, v1, p2}, Landroidx/camera/video/internal/config/FormatCombo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-void
.end method
