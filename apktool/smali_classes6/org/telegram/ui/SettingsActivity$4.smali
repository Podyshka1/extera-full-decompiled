.class Lorg/telegram/ui/SettingsActivity$4;
.super Lorg/telegram/ui/ProfileActivity$SearchAdapter;
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
.method constructor <init>(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 2

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method
