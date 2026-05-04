.class Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell$1;
.super Lorg/telegram/ui/Cells/ChatMessageCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;Landroid/content/Context;II)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell$1;->this$0:Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;

    iput p4, p0, Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell$1;->val$type:I

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 194
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 196
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 197
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawAvatarWithOnlineStatus(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;)V

    .line 199
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected isUserOnline(Lorg/telegram/tgnet/TLRPC$User;)Z
    .locals 2

    .line 186
    iget v0, p0, Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell$1;->val$type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 189
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isUserOnline(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    return p1
.end method
