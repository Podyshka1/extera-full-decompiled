.class Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3$1;
.super Lorg/telegram/messenger/ImageReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3;->createImageReciever()Lorg/telegram/messenger/ImageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3;Landroid/view/View;)V
    .locals 0

    .line 1865
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3$1;->this$2:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z
    .locals 0

    .line 1869
    invoke-super/range {p0 .. p5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmapByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZI)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1871
    instance-of p3, p1, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p3, :cond_0

    .line 1872
    check-cast p1, Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 p3, 0x1

    const/4 p4, 0x0

    .line 1873
    invoke-virtual {p1, p4, p4, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 1874
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    :cond_0
    return p2
.end method
