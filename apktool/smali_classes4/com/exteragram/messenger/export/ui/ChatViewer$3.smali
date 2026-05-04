.class Lcom/exteragram/messenger/export/ui/ChatViewer$3;
.super Lorg/telegram/ui/Components/ChatAvatarContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/export/ui/ChatViewer;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/export/ui/ChatViewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$3;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected canSearch()Z
    .locals 1

    .line 664
    const-string v0, ""

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected openSearch()V
    .locals 0

    return-void
.end method
