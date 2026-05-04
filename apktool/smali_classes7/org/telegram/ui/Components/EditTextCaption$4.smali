.class Lorg/telegram/ui/Components/EditTextCaption$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EditTextCaption;->overrideCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EditTextCaption;

.field final synthetic val$callback:Landroid/view/ActionMode$Callback;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EditTextCaption;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption$4;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    iput-object p2, p0, Lorg/telegram/ui/Components/EditTextCaption$4;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    .line 509
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$4;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->performMenuAction(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v1

    .line 514
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$4;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$4;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->-$$Nest$fputcopyPasteShowed(Lorg/telegram/ui/Components/EditTextCaption;Z)V

    .line 498
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$4;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->onContextMenuOpen()V

    .line 499
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$4;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 523
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$4;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->-$$Nest$fputcopyPasteShowed(Lorg/telegram/ui/Components/EditTextCaption;Z)V

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$4;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->onContextMenuClose()V

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$4;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 504
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$4;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
