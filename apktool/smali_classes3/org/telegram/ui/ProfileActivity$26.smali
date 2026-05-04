.class Lorg/telegram/ui/ProfileActivity$26;
.super Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 0

    .line 5813
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$26;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$ClickableSmallTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 0

    .line 5817
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 5818
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$26;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mcheckPhotoDescriptionAlpha(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 3

    .line 5845
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 5846
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$26;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetonlineTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 5847
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$26;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetonlineTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 5848
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$26;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetonlineTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 5850
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$26;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetshowStatusButton(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ShowDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5851
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$26;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetshowStatusButton(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ShowDrawable;

    move-result-object v0

    const v1, -0x435c28f6    # -0.02f

    const v2, 0x3e19999a    # 0.15f

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->adaptHSV(IFF)I

    move-result p1

    const v1, 0x3fb33333    # 1.4f

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public setTranslationX(F)V
    .locals 2

    .line 5834
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 5835
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$26;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetRatingViewTranslationXOffset(Lorg/telegram/ui/ProfileActivity;)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputlastRatingViewTranslationXOffset(Lorg/telegram/ui/ProfileActivity;F)V

    .line 5836
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$26;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetonlineTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 5837
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$26;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetonlineTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 5838
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$26;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetratingView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StarRatingView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5839
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$26;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetratingView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StarRatingView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$26;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetRatingViewTranslationXOffset(Lorg/telegram/ui/ProfileActivity;)F

    move-result v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 2

    .line 5823
    invoke-super {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 5824
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$26;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetRatingViewTranslationYOffset(Lorg/telegram/ui/ProfileActivity;)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputlastRatingViewTranslationYOffset(Lorg/telegram/ui/ProfileActivity;F)V

    .line 5825
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$26;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetonlineTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 5826
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$26;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetonlineTextView(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 5827
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$26;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetratingView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StarRatingView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5828
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$26;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetratingView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StarRatingView;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method
