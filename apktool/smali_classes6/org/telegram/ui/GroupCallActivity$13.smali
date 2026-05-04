.class Lorg/telegram/ui/GroupCallActivity$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/GroupVoipInviteAlert$GroupVoipInviteAlertDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;-><init>(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;)V
    .locals 0

    .line 3764
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$13;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyInviteLink()V
    .locals 2

    .line 3767
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$13;->this$0:Lorg/telegram/ui/GroupCallActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$mgetLink(Lorg/telegram/ui/GroupCallActivity;Z)V

    return-void
.end method

.method public inviteUser(J)V
    .locals 2

    .line 3772
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$13;->this$0:Lorg/telegram/ui/GroupCallActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$minviteUserToCall(Lorg/telegram/ui/GroupCallActivity;JZ)V

    return-void
.end method

.method public needOpenSearch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 3

    .line 3777
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$13;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetenterEventSent(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3778
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 3779
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 3780
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$13;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetgroupVoipInviteAlert(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, p2, v2}, Lorg/telegram/ui/GroupCallActivity;->makeFocusable(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V

    return-void

    .line 3782
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$13;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetgroupVoipInviteAlert(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p2, v2}, Lorg/telegram/ui/GroupCallActivity;->makeFocusable(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V

    :cond_1
    return-void
.end method
