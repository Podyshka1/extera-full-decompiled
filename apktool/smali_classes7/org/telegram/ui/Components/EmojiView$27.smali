.class Lorg/telegram/ui/Components/EmojiView$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


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

.field final synthetic val$shouldDrawBackground:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 2684
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView$27;->val$shouldDrawBackground:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 6

    .line 2687
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mcheckGridVisibility(Lorg/telegram/ui/Components/EmojiView;IF)V

    .line 2688
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, p1, v1, p3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$monPageScrolled(Lorg/telegram/ui/Components/EmojiView;III)V

    .line 2689
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v0, 0x1

    invoke-static {p3, v0, v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mshowBottomTab(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    .line 2691
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetpager(Lorg/telegram/ui/Components/EmojiView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p3

    if-nez p3, :cond_0

    .line 2693
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p3

    goto :goto_0

    :cond_0
    if-ne p3, v0, :cond_1

    .line 2695
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p3

    goto :goto_0

    .line 2697
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p3

    .line 2699
    :goto_0
    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchEditText(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_6

    if-nez v3, :cond_2

    .line 2703
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v4

    goto :goto_2

    :cond_2
    if-ne v3, v0, :cond_3

    .line 2705
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v4

    goto :goto_2

    .line 2707
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_5

    if-eq v4, p3, :cond_5

    .line 2709
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchEditText(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchEditText(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 2712
    :cond_4
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchEditText(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2713
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchEditText(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2715
    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    if-nez p1, :cond_7

    const/4 v1, 0x0

    cmpl-float p2, p2, v1

    if-gtz p2, :cond_9

    :cond_7
    if-ne p1, v0, :cond_8

    goto :goto_4

    :cond_8
    move v0, v2

    :cond_9
    :goto_4
    invoke-static {p3, v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mstartStopVisibleGifs(Lorg/telegram/ui/Components/EmojiView;Z)V

    .line 2716
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mupdateStickerTabsPosition(Lorg/telegram/ui/Components/EmojiView;)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 2721
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$msaveNewPage(Lorg/telegram/ui/Components/EmojiView;)V

    .line 2722
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v0, v3, v2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mshowBackspaceButton(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    .line 2723
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView$27;->val$shouldDrawBackground:Z

    if-nez v3, :cond_1

    iget-boolean v3, v0, Lorg/telegram/ui/Components/EmojiView;->shouldDrawStickerSettings:Z

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mshowStickerSettingsButton(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    .line 2724
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;->isSearchOpened()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_3

    .line 2726
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2727
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchEditText(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_3
    if-ne p1, v2, :cond_4

    .line 2730
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2731
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchEditText(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void

    .line 2734
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2735
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$27;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersSearchField(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->-$$Nest$fgetsearchEditText(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_5
    return-void
.end method
