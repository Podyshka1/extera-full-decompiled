.class Lorg/telegram/ui/ProfileActivity$52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createAutoDeleteItem(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    .line 12872
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$52;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 12876
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$52;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetotherItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method public setAutoDeleteHistory(II)V
    .locals 1

    .line 12881
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$52;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$msetAutoDeleteHistory(Lorg/telegram/ui/ProfileActivity;II)V

    return-void
.end method

.method public showGlobalAutoDeleteScreen()V
    .locals 2

    .line 12886
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$52;->this$0:Lorg/telegram/ui/ProfileActivity;

    new-instance v1, Lorg/telegram/ui/AutoDeleteMessagesActivity;

    invoke-direct {v1}, Lorg/telegram/ui/AutoDeleteMessagesActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 12887
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity$52;->dismiss()V

    return-void
.end method
