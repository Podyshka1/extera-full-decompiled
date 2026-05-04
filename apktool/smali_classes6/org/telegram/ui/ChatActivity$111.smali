.class Lorg/telegram/ui/ChatActivity$111;
.super Lorg/telegram/ui/Components/EmojiPacksAlert;
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
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V
    .locals 0

    .line 30922
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$111;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 30925
    invoke-super {p0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->dismiss()V

    .line 30926
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$111;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->dimBehindView(Z)V

    return-void
.end method
