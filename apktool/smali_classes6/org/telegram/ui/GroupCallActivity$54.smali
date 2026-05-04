.class Lorg/telegram/ui/GroupCallActivity$54;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;->initCreatedGroupCall()V
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

    .line 6327
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$54;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 6330
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$54;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetscheduleTimeTextView(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6331
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$54;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetscheduleStartAtTextView(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6332
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$54;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetscheduleStartInTextView(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
