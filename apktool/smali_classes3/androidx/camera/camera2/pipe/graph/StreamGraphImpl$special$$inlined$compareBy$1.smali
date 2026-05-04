.class public final Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$special$$inlined$compareBy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 102
    check-cast p1, Landroidx/camera/camera2/pipe/CameraStream;

    .line 103
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-static {}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->access$getPreviewOutputTypes$cp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/OutputStream;->getOutputType()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-static {}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->access$getPreviewOutputTypes$cp()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/OutputStream;->getOutputType()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 102
    :cond_1
    check-cast p2, Landroidx/camera/camera2/pipe/CameraStream;

    .line 103
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-static {}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->access$getPreviewOutputTypes$cp()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2}, Landroidx/camera/camera2/pipe/OutputStream;->getOutputType()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object p2

    invoke-static {v1, p2}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-static {}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->access$getPreviewOutputTypes$cp()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/OutputStream;->getOutputType()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2

    move-object p2, v1

    goto :goto_1

    .line 102
    :cond_3
    invoke-static {v0, p2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1

    .line 103
    :cond_4
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    :cond_5
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method
