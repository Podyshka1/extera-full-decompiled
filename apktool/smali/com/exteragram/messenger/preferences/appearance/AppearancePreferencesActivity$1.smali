.class Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$1;
.super Lcom/exteragram/messenger/preferences/appearance/components/FabShapeCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;Landroid/content/Context;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$1;->this$0:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;

    invoke-direct {p0, p2}, Lcom/exteragram/messenger/preferences/appearance/components/FabShapeCell;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected rebuildFragments()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity$1;->this$0:Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;

    invoke-static {v0}, Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;->access$000(Lcom/exteragram/messenger/preferences/appearance/AppearancePreferencesActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void
.end method
