.class public Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/ui/Components/UItem$UItemFactory;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 205
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$Factory;

    invoke-direct {v0}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static as(Lcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/models/EditTextSetting;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    .line 226
    const-class v0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 227
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    .line 228
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    .line 214
    instance-of p4, p1, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;

    if-eqz p4, :cond_0

    check-cast p1, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;

    iget-object p4, p2, Lorg/telegram/ui/Components/UItem;->settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

    instance-of p5, p4, Lcom/exteragram/messenger/plugins/models/EditTextSetting;

    if-eqz p5, :cond_0

    check-cast p4, Lcom/exteragram/messenger/plugins/models/EditTextSetting;

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p5, p2, Lcom/exteragram/messenger/plugins/Plugin;

    if-eqz p5, :cond_0

    check-cast p2, Lcom/exteragram/messenger/plugins/Plugin;

    .line 215
    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->bind(Ljava/lang/String;Lcom/exteragram/messenger/plugins/models/EditTextSetting;)V

    .line 216
    invoke-virtual {p1, p3}, Lorg/telegram/ui/Cells/EditTextCell;->setDivider(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 204
    invoke-virtual/range {p0 .. p5}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$Factory;->createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;
    .locals 0

    .line 209
    new-instance p2, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;

    invoke-direct {p2, p1, p5}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object p2
.end method

.method public isClickable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
