.class Lorg/telegram/ui/ChatActivity$42;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field path:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$replySpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/Components/spoilers/SpoilerEffect;)V
    .locals 0

    .line 8433
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$42;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$42;->val$replySpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 8434
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$42;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 8438
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 8440
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$42;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyImageHasMediaSpoiler(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8441
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$42;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 8442
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 8443
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$42;->path:Landroid/graphics/Path;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 8445
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8446
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$42;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 8449
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$42;->val$replySpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    const/4 v1, -0x1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ea66666    # 0.325f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 8450
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$42;->val$replySpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget-object v1, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setBounds(IIII)V

    .line 8451
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$42;->val$replySpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    .line 8452
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8454
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method
