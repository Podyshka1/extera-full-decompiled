.class Lcom/exteragram/messenger/ai/ui/activities/RolesActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/ai/ui/activities/RolesActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/ai/ui/activities/RolesActivity;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/ai/ui/activities/RolesActivity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/RolesActivity$1;->this$0:Lcom/exteragram/messenger/ai/ui/activities/RolesActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 67
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/RolesActivity$1;->this$0:Lcom/exteragram/messenger/ai/ui/activities/RolesActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/RolesActivity$1;->this$0:Lcom/exteragram/messenger/ai/ui/activities/RolesActivity;

    new-instance v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;-><init>(Lcom/exteragram/messenger/ai/data/Role;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method
