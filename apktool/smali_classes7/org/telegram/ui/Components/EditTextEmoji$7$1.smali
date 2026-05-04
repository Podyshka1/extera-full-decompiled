.class Lorg/telegram/ui/Components/EditTextEmoji$7$1;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EditTextEmoji$7;->onAnimatedEmojiUnlockClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EditTextEmoji$7;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EditTextEmoji$7;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$7$1;->this$1:Lorg/telegram/ui/Components/EditTextEmoji$7;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 869
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$7$1;->this$1:Lorg/telegram/ui/Components/EditTextEmoji$7;

    iget-object v0, v0, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccount()I
    .locals 1

    .line 864
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return v0
.end method

.method public getParentActivity()Landroid/app/Activity;
    .locals 2

    .line 874
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji$7$1;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 875
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 876
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 877
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 879
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisibleDialog()Landroid/app/Dialog;
    .locals 2

    .line 886
    new-instance v0, Lorg/telegram/ui/Components/EditTextEmoji$7$1$1;

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEmoji$7$1;->this$1:Lorg/telegram/ui/Components/EditTextEmoji$7;

    iget-object v1, v1, Lorg/telegram/ui/Components/EditTextEmoji$7;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/EditTextEmoji$7$1$1;-><init>(Lorg/telegram/ui/Components/EditTextEmoji$7$1;Landroid/content/Context;)V

    return-object v0
.end method
