.class Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$1;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;)V
    .locals 0

    .line 4082
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$1;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentAccount()I
    .locals 1

    .line 4085
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$1;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    return v0
.end method

.method public getFragmentView()Landroid/view/View;
    .locals 1

    .line 4090
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$1;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetbulletinContainer(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 4095
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$1;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetbulletinContainer(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 4100
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader$1;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiPackHeader;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    return-object v0
.end method
