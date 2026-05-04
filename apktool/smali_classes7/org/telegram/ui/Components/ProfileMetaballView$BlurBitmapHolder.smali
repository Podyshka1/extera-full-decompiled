.class public Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ProfileMetaballView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlurBitmapHolder"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field canvas:Landroid/graphics/Canvas;

.field destroyed:Z

.field destroying:Z

.field hasContent:Z

.field isBusy:Z

.field key:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 665
    iput v0, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->key:I

    .line 673
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 674
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->canvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;)V
    .locals 2

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 665
    iput v0, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->key:I

    .line 668
    iget-object v0, p1, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object p1, p1, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 669
    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->canvas:Landroid/graphics/Canvas;

    return-void
.end method


# virtual methods
.method public canUse(II)Z
    .locals 2

    .line 689
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->destroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 690
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 691
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public canUse(Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;)Z
    .locals 3

    .line 695
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->destroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 696
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p1, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 697
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object p1, p1, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public clear()V
    .locals 2

    .line 678
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 679
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->hasContent:Z

    .line 680
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-void
.end method

.method public lock()V
    .locals 1

    const/4 v0, 0x1

    .line 709
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->isBusy:Z

    return-void
.end method

.method public ready()V
    .locals 2

    const/4 v0, 0x1

    .line 684
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->hasContent:Z

    .line 685
    iget v1, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->key:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->key:I

    return-void
.end method

.method public recycle()V
    .locals 2

    const/4 v0, 0x1

    .line 701
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->destroying:Z

    .line 702
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->isBusy:Z

    if-nez v1, :cond_0

    .line 703
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->destroyed:Z

    .line 704
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    const/4 v0, 0x0

    .line 713
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->isBusy:Z

    .line 714
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->destroyed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->destroying:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 715
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->destroyed:Z

    .line 716
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileMetaballView$BlurBitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
