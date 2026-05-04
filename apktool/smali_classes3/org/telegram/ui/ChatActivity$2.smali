.class Lorg/telegram/ui/ChatActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
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

    .line 1044
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$2;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1047
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$2;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$2;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmenuDeleteItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1050
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$2;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl_period:I

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$2;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$2;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v2, 0x15180

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 1053
    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatDuration(IZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    const v2, 0x47a8c000    # 86400.0f

    div-float/2addr v0, v2

    .line 1055
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "Days"

    invoke-static {v4, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1057
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$2;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmenuDeleteItem(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$string;->AutoDeleteIn:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    .line 1058
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$2;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetupdateDeleteItemRunnable(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_1
    return-void
.end method
