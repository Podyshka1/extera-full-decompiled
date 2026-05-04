.class Lorg/telegram/messenger/MessagePreviewParams$1;
.super Lorg/telegram/messenger/MessageObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagePreviewParams;->toPreviewMessage(Lorg/telegram/messenger/MessageObject;Ljava/lang/Boolean;I)Lorg/telegram/messenger/MessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagePreviewParams;

.field final synthetic val$msgtype:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagePreviewParams;ILorg/telegram/tgnet/TLRPC$Message;ZZI)V
    .locals 0

    .line 511
    iput-object p1, p0, Lorg/telegram/messenger/MessagePreviewParams$1;->this$0:Lorg/telegram/messenger/MessagePreviewParams;

    iput p6, p0, Lorg/telegram/messenger/MessagePreviewParams$1;->val$msgtype:I

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    return-void
.end method


# virtual methods
.method public generateLayout(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    .line 514
    invoke-super {p0, p1}, Lorg/telegram/messenger/MessageObject;->generateLayout(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 515
    iget p1, p0, Lorg/telegram/messenger/MessagePreviewParams$1;->val$msgtype:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 516
    iget-object p1, p0, Lorg/telegram/messenger/MessagePreviewParams$1;->this$0:Lorg/telegram/messenger/MessagePreviewParams;

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/MessagePreviewParams;->checkCurrentLink(Lorg/telegram/messenger/MessageObject;)V

    :cond_0
    return-void
.end method

.method public needDrawForwarded()Z
    .locals 1

    .line 522
    iget-object v0, p0, Lorg/telegram/messenger/MessagePreviewParams$1;->this$0:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 525
    :cond_0
    invoke-super {p0}, Lorg/telegram/messenger/MessageObject;->needDrawForwarded()Z

    move-result v0

    return v0
.end method
