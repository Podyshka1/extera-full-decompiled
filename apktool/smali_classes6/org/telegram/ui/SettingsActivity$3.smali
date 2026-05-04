.class Lorg/telegram/ui/SettingsActivity$3;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$3;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 3

    .line 356
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$3;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetanimatorSearchPageVisible(Lorg/telegram/ui/SettingsActivity;)Lme/vkryl/android/animator/BoolAnimator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$3;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$mupdateActionBarVisible(Lorg/telegram/ui/SettingsActivity;)V

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$3;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method public onSearchExpand()V
    .locals 3

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$3;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetanimatorSearchPageVisible(Lorg/telegram/ui/SettingsActivity;)Lme/vkryl/android/animator/BoolAnimator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$3;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetsearch(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/ProfileActivity$SearchAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$3;->this$0:Lorg/telegram/ui/SettingsActivity;

    const-string v2, ""

    invoke-static {v1, v2}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fputquery(Lorg/telegram/ui/SettingsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->search(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$3;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$mupdateActionBarVisible(Lorg/telegram/ui/SettingsActivity;)V

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$3;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 2

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$3;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetsearch(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/ProfileActivity$SearchAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$3;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fputquery(Lorg/telegram/ui/SettingsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->search(Ljava/lang/String;)V

    return-void
.end method
