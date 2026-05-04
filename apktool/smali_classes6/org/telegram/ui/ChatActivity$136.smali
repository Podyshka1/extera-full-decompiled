.class Lorg/telegram/ui/ChatActivity$136;
.super Lorg/telegram/messenger/browser/Browser$Progress;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->makeProgressForBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/String;)Lorg/telegram/messenger/browser/Browser$Progress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field final synthetic val$id:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$hr8oDMXZ2PTV7rWmRJGQxk06Yoc(Lorg/telegram/ui/ChatActivity$136;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$136;->lambda$end$0(I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;ILjava/lang/String;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 36139
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$136;->this$0:Lorg/telegram/ui/ChatActivity;

    iput p2, p0, Lorg/telegram/ui/ChatActivity$136;->val$id:I

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$136;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$136;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {p0}, Lorg/telegram/messenger/browser/Browser$Progress;-><init>()V

    return-void
.end method

.method private synthetic lambda$end$0(I)V
    .locals 1

    .line 36153
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$136;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogAtMessageId(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 36154
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$136;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mresetProgressDialogLoading(Lorg/telegram/ui/ChatActivity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public end(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 36152
    iget p1, p0, Lorg/telegram/ui/ChatActivity$136;->val$id:I

    new-instance v0, Lorg/telegram/ui/ChatActivity$136$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatActivity$136$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$136;I)V

    const-wide/16 v1, 0xf0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 36142
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$136;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v1, p0, Lorg/telegram/ui/ChatActivity$136;->val$id:I

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputprogressDialogAtMessageId(Lorg/telegram/ui/ChatActivity;I)V

    .line 36143
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$136;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputprogressDialogAtMessageType(Lorg/telegram/ui/ChatActivity;I)V

    .line 36144
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$136;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$136;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputprogressDialogBotButtonUrl(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)V

    .line 36146
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$136;->val$cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void
.end method
