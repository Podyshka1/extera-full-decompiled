.class Lorg/telegram/ui/UserInfoActivity$4;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/UserInfoActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/UserInfoActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/UserInfoActivity;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lorg/telegram/ui/UserInfoActivity$4;->this$0:Lorg/telegram/ui/UserInfoActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 156
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity$4;->this$0:Lorg/telegram/ui/UserInfoActivity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 157
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity$4;->this$0:Lorg/telegram/ui/UserInfoActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    .line 160
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity$4;->this$0:Lorg/telegram/ui/UserInfoActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/UserInfoActivity;->-$$Nest$mprocessDone(Lorg/telegram/ui/UserInfoActivity;Z)V

    :cond_1
    return-void
.end method
