.class Lorg/telegram/ui/Cells/TextCell$2;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/TextCell;->setValueSticker(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/TextCell;

.field final synthetic val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/TextCell;Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lorg/telegram/ui/Cells/TextCell$2;->this$0:Lorg/telegram/ui/Cells/TextCell;

    iput-object p2, p0, Lorg/telegram/ui/Cells/TextCell$2;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 796
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell$2;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 797
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell$2;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x41f00000    # 30.0f

    .line 822
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x41f00000    # 30.0f

    .line 817
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 2

    .line 802
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell$2;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 807
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCell$2;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
