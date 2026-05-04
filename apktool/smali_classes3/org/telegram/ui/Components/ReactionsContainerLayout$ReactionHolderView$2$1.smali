.class Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2$1;
.super Lorg/telegram/messenger/ImageReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;->createImageReciever()Lorg/telegram/messenger/ImageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;Landroid/view/View;)V
    .locals 0

    .line 1797
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2$1;->this$2:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z
    .locals 3

    .line 1800
    instance-of v0, p1, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    .line 1801
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1802
    invoke-virtual {v0, v2, v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 1804
    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z

    move-result p1

    return p1
.end method
