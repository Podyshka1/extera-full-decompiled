.class Lorg/telegram/ui/GroupCreateActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCreateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$1;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 589
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$1;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$mcheckDiscard(Lorg/telegram/ui/GroupCreateActivity;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 590
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$1;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    .line 593
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$1;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$monDonePressed(Lorg/telegram/ui/GroupCreateActivity;Z)Z

    :cond_1
    return-void
.end method
