.class public Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata$Provider;
    }
.end annotation


# instance fields
.field private generationId:J

.field private memoized:Ljava/lang/Object;

.field private final provider:Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata$Provider;

.field private ref:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata$Provider;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;->provider:Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata$Provider;

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 5

    .line 29
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;->ref:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v1

    int-to-long v1, v1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    if-ne v0, p1, :cond_2

    .line 33
    iget-wide v3, p0, Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;->generationId:J

    cmp-long v0, v1, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;->provider:Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata$Provider;

    iget-object v3, p0, Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;->memoized:Ljava/lang/Object;

    invoke-interface {v0, v3}, Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata$Provider;->isValid(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    iget-object p1, p0, Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;->memoized:Ljava/lang/Object;

    return-object p1

    .line 37
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;->ref:Ljava/lang/ref/WeakReference;

    .line 38
    iput-wide v1, p0, Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;->generationId:J

    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;->provider:Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata$Provider;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata$Provider;->get(Landroid/graphics/Bitmap;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/blur3/utils/BitmapMemoizedMetadata;->memoized:Ljava/lang/Object;

    return-object p1
.end method
