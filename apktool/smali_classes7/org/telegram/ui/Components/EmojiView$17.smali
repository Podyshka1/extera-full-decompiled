.class Lorg/telegram/ui/Components/EmojiView$17;
.super Lorg/telegram/ui/Components/EmojiView$SearchField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V
    .locals 0

    .line 2124
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$17;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView$SearchField;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public setTranslationY(F)V
    .locals 1

    .line 2127
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2128
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2129
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$17;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifContainer(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
