.class public final Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/config/FormatComboRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;
    }
.end annotation


# instance fields
.field private final formatComboMapping:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->formatComboMapping:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/camera/video/internal/config/FormatComboRegistry;
    .locals 3

    .line 178
    new-instance v0, Landroidx/camera/video/internal/config/FormatComboRegistry;

    iget-object v1, p0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->formatComboMapping:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/config/FormatComboRegistry;-><init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final container(ILkotlin/jvm/functions/Function1;)V
    .locals 3

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder;->formatComboMapping:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 384
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 138
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 185
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    check-cast v2, Ljava/util/Map;

    .line 139
    new-instance v0, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;

    invoke-direct {v0, p1, v2}, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;-><init>(ILjava/util/Map;)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
