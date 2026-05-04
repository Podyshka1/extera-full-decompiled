.class public final Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;
.super Lcom/android/tools/r8/RecordTag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/utils/chats/MainMenuHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttachMenuBotInfo"
.end annotation


# instance fields
.field private final bot:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

.field private final iconRes:I

.field private final onClick:Ljava/lang/Runnable;

.field private final onLongClick:Ljava/lang/Runnable;

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;

    iget v0, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->iconRes:I

    iget v1, p1, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->iconRes:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->text:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->text:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->bot:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    iget-object v1, p1, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->bot:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->onClick:Ljava/lang/Runnable;

    iget-object v1, p1, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->onClick:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->onLongClick:Ljava/lang/Runnable;

    iget-object p1, p1, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->onLongClick:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 7

    .line 0
    iget v0, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->iconRes:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->text:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->bot:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    iget-object v3, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->onClick:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->onLongClick:Ljava/lang/Runnable;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    return-object v5
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput p1, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->iconRes:I

    iput-object p2, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->text:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->bot:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    iput-object p4, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->onClick:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->onLongClick:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public bot()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->bot:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->$record$equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 5

    .line 64
    iget v0, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->iconRes:I

    iget-object v1, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->text:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->bot:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    iget-object v3, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->onClick:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->onLongClick:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/exteragram/messenger/export/api/ApiWrap$HistoryMessageMarkupButton$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public iconRes()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->iconRes:I

    return v0
.end method

.method public onClick()Ljava/lang/Runnable;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->onClick:Ljava/lang/Runnable;

    return-object v0
.end method

.method public onLongClick()Ljava/lang/Runnable;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->onLongClick:Ljava/lang/Runnable;

    return-object v0
.end method

.method public text()Ljava/lang/CharSequence;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 64
    invoke-direct {p0}, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/exteragram/messenger/utils/chats/MainMenuHelper$AttachMenuBotInfo;

    const-string v2, "iconRes;text;bot;onClick;onLongClick"

    invoke-static {v0, v1, v2}, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
