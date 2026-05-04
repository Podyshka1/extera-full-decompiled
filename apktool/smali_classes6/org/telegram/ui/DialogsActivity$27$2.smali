.class Lorg/telegram/ui/DialogsActivity$27$2;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$27;->openAnimationStarted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$27;

.field final synthetic val$page:Lorg/telegram/ui/DialogsActivity$ViewPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$27;Landroid/content/Context;Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 0

    .line 5649
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$27$2;->this$1:Lorg/telegram/ui/DialogsActivity$27;

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$27$2;->val$page:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected firstPosition()I
    .locals 2

    .line 5652
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27$2;->val$page:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetdialogsType(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27$2;->this$1:Lorg/telegram/ui/DialogsActivity$27;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$27;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->hasHiddenArchive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$27$2;->val$page:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetarchivePullViewState(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
