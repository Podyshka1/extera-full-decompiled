.class public abstract Landroidx/camera/camera2/impl/ComboRequestListenerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final containsTag(Landroidx/camera/camera2/pipe/RequestMetadata;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tagKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tagValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Landroidx/camera/camera2/impl/TagsKt;->getCAMERAX_TAG_BUNDLE()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v0

    invoke-static {}, Landroidx/camera/core/impl/TagBundle;->emptyBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroidx/camera/camera2/pipe/Metadata;->getOrDefault(Landroidx/camera/camera2/pipe/Metadata$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/TagBundle;

    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/TagBundle;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 166
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
