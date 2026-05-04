.class Lorg/telegram/ui/CallLogActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CallLogActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CallLogActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CallLogActivity;)V
    .locals 0

    .line 741
    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$1;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 745
    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$1;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/CallLogActivity;->access$000(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 746
    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$1;->this$0:Lorg/telegram/ui/CallLogActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$mhideActionMode(Lorg/telegram/ui/CallLogActivity;Z)V

    return-void

    .line 748
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$1;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 751
    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$1;->this$0:Lorg/telegram/ui/CallLogActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$mshowDeleteAlert(Lorg/telegram/ui/CallLogActivity;Z)V

    :cond_2
    return-void
.end method
