.class Lorg/telegram/ui/LoginActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 549
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->-$$Nest$monDoneButtonPressed(Lorg/telegram/ui/LoginActivity;)V

    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 551
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/LoginActivity;->onBackPressed(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 552
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_1
    return-void
.end method
