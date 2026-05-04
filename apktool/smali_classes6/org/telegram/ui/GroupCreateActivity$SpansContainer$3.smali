.class Lorg/telegram/ui/GroupCreateActivity$SpansContainer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

.field final synthetic val$span:Lorg/telegram/ui/Components/GroupCreateSpan;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Lorg/telegram/ui/Components/GroupCreateSpan;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$3;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    iput-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$3;->val$span:Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 405
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$3;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$3;->val$span:Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 406
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$3;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->-$$Nest$fgetremovingSpans(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 407
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$3;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->-$$Nest$fputcurrentAnimation(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Landroid/animation/AnimatorSet;)V

    .line 408
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$3;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->-$$Nest$fputanimationStarted(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Z)V

    return-void
.end method
