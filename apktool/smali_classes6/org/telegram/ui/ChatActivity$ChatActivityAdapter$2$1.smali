.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$1;
.super Lorg/telegram/messenger/browser/Browser$Progress;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->initGiftProgressDialog(Lorg/telegram/ui/Cells/ChatActionCell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;

.field final synthetic val$cell:Lorg/telegram/ui/Cells/ChatActionCell;


# direct methods
.method public static synthetic $r8$lambda$CpneEwv3_RPG5R1DooAZONxU0GY(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$1;Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$1;->lambda$end$0(Lorg/telegram/ui/Cells/ChatActionCell;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 0

    .line 36792
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$1;->val$cell:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-direct {p0}, Lorg/telegram/messenger/browser/Browser$Progress;-><init>()V

    return-void
.end method

.method private synthetic lambda$end$0(Lorg/telegram/ui/Cells/ChatActionCell;)V
    .locals 2

    .line 36806
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mresetProgressDialogLoading(Lorg/telegram/ui/ChatActivity;)V

    .line 36807
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/messenger/MessageObject;->flickerLoading:Z

    .line 36808
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    return-void
.end method


# virtual methods
.method public end(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 36805
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$1;->val$cell:Lorg/telegram/ui/Cells/ChatActionCell;

    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$1;Lorg/telegram/ui/Cells/ChatActionCell;)V

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 36795
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$1;->val$cell:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputprogressDialogAtMessageId(Lorg/telegram/ui/ChatActivity;I)V

    .line 36796
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputprogressDialogAtMessageType(Lorg/telegram/ui/ChatActivity;I)V

    .line 36797
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputprogressDialogLinkSpan(Lorg/telegram/ui/ChatActivity;Landroid/text/style/CharacterStyle;)V

    .line 36798
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$1;->val$cell:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/MessageObject;->flickerLoading:Z

    .line 36799
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2$1;->val$cell:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    return-void
.end method
