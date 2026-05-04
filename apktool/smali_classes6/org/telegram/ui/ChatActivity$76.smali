.class Lorg/telegram/ui/ChatActivity$76;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createTextureView(Z)Landroid/view/TextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 12216
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$76;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 9

    .line 12219
    sget v0, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 12221
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 12224
    aget v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12226
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v8, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    :cond_1
    move-object v3, p2

    .line 12228
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$76;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenued(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize(Z)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$76;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenued(Lorg/telegram/ui/ChatActivity;)Z

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->roundPlayingMessageSize(Z)I

    move-result p2

    invoke-virtual {v3, v1, v1, p1, p2}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
