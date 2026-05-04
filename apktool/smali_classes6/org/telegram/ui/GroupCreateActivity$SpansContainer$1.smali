.class Lorg/telegram/ui/GroupCreateActivity$SpansContainer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$1;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 321
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$1;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    iget-object p1, p1, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$1;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->-$$Nest$fgetanimationIndex(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 322
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$1;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
