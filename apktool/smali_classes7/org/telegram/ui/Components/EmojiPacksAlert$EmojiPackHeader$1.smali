.class Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader$1;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;)V
    .locals 0

    .line 1676
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader$1;->this$1:Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentAccount()I
    .locals 1

    .line 1679
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return v0
.end method

.method public getFragmentView()Landroid/view/View;
    .locals 1

    .line 1684
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader$1;->this$1:Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2700(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 1689
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader$1;->this$1:Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2800(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 1694
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader$1;->this$1:Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2900(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    return-object v0
.end method
