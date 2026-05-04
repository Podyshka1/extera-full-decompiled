.class Lorg/telegram/ui/ProfileActivity$51;
.super Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createActionBarMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/PopupSwipeBackLayout;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 12754
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$51;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/PopupSwipeBackLayout;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public closeMenu()V
    .locals 1

    .line 12757
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$51;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetotherItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method
