.class Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$1;->this$0:Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 104
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$1;->this$0:Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 106
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$1;->this$0:Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->-$$Nest$msaveConfig(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)V

    :cond_1
    return-void
.end method
