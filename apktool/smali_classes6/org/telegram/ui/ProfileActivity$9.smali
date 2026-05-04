.class Lorg/telegram/ui/ProfileActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    .line 3685
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(J)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
    .locals 2

    .line 3697
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3700
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mupdateAvatarRoundRadius(Lorg/telegram/ui/ProfileActivity;)V

    .line 3701
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarImage(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromAvatarImage(Lorg/telegram/ui/ProfileActivity$AvatarImageView;Z)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object p1

    return-object p1
.end method

.method public preLayout(JLjava/lang/Runnable;)V
    .locals 2

    .line 3688
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetavatarImage(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mneedInsetForStories(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->setHasStories(Z)V

    .line 3689
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 3690
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mcollapseAvatarInstant(Lorg/telegram/ui/ProfileActivity;)V

    :cond_0
    const-wide/16 p1, 0x1e

    .line 3692
    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
