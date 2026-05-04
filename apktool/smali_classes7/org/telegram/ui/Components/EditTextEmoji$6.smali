.class Lorg/telegram/ui/Components/EditTextEmoji$6;
.super Lorg/telegram/ui/Components/EmojiView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EditTextEmoji;->createEmojiView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private changedExpanded:Z

.field private lastExpanded:Z

.field private lastHeight:I

.field final synthetic this$0:Lorg/telegram/ui/Components/EditTextEmoji;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EditTextEmoji;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V
    .locals 0

    .line 795
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$6;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    move-object p1, p0

    invoke-direct/range {p1 .. p13}, Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 798
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$6;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgetcurrentStyle(Lorg/telegram/ui/Components/EditTextEmoji;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$6;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->-$$Nest$fgetcurrentStyle(Lorg/telegram/ui/Components/EditTextEmoji;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 799
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$6;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/Components/EditTextEmoji;->drawEmojiBackground(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 801
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 809
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/EmojiView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 810
    iget-object p2, p1, Lorg/telegram/ui/Components/EditTextEmoji$6;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->allowSearch()Z

    move-result p2

    if-eqz p2, :cond_2

    sub-int/2addr p5, p3

    .line 812
    iget-boolean p2, p1, Lorg/telegram/ui/Components/EditTextEmoji$6;->lastExpanded:Z

    if-nez p2, :cond_0

    iget-object p2, p1, Lorg/telegram/ui/Components/EditTextEmoji$6;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-boolean p2, p2, Lorg/telegram/ui/Components/EditTextEmoji;->emojiExpanded:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 813
    iput-boolean p2, p1, Lorg/telegram/ui/Components/EditTextEmoji$6;->changedExpanded:Z

    .line 815
    :cond_0
    iget-boolean p2, p1, Lorg/telegram/ui/Components/EditTextEmoji$6;->changedExpanded:Z

    if-eqz p2, :cond_1

    iget p2, p1, Lorg/telegram/ui/Components/EditTextEmoji$6;->lastHeight:I

    if-lez p2, :cond_1

    if-lez p5, :cond_1

    if-eq p5, p2, :cond_1

    sub-int p2, p5, p2

    int-to-float p2, p2

    .line 816
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    .line 817
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object p3, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 p3, 0xfa

    invoke-virtual {p2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p2, 0x0

    .line 818
    iput-boolean p2, p1, Lorg/telegram/ui/Components/EditTextEmoji$6;->changedExpanded:Z

    .line 820
    :cond_1
    iget-object p2, p1, Lorg/telegram/ui/Components/EditTextEmoji$6;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-boolean p2, p2, Lorg/telegram/ui/Components/EditTextEmoji;->emojiExpanded:Z

    iput-boolean p2, p1, Lorg/telegram/ui/Components/EditTextEmoji$6;->lastExpanded:Z

    .line 821
    iput p5, p1, Lorg/telegram/ui/Components/EditTextEmoji$6;->lastHeight:I

    :cond_2
    return-void
.end method
