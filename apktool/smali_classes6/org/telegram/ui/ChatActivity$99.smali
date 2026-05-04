.class Lorg/telegram/ui/ChatActivity$99;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->updateBottomOverlay(Z)V
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

    .line 27681
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$99;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 27684
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$99;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputsearchExpandProgress(Lorg/telegram/ui/ChatActivity;F)V

    .line 27685
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$99;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$minvalidateChatListViewTopPadding(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method
