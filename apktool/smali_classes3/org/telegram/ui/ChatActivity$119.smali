.class Lorg/telegram/ui/ChatActivity$119;
.super Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createMenu(Landroid/view/View;ZZFFZZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/PopupSwipeBackLayout;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 31583
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$119;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lcom/exteragram/messenger/plugins/ui/components/PluginsMenuWrapper;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/PopupSwipeBackLayout;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected closeMenu()V
    .locals 1

    .line 31586
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$119;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->closeMenu()V

    return-void
.end method
