.class Lorg/telegram/ui/DialogsActivity$35;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->hideActionMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$finalTranslateListHeight:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;F)V
    .locals 0

    .line 9177
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput p2, p0, Lorg/telegram/ui/DialogsActivity$35;->val$finalTranslateListHeight:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 9180
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 9181
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputactionBarColorAnimator(Lorg/telegram/ui/DialogsActivity;Landroid/animation/ValueAnimator;)V

    .line 9182
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputactionModeFullyShowed(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 9183
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputinvalidateScrollY(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 9184
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputfixScrollYAfterArchiveOpened(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 9185
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 9186
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, p1, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x51

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    add-int/lit8 v1, v1, 0x30

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/DialogsActivity$35;->val$finalTranslateListHeight:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputscrollAdditionalOffset(Lorg/telegram/ui/DialogsActivity;F)V

    .line 9187
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->setTranslationY(F)V

    .line 9188
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    array-length p1, p1

    if-ge v0, p1, :cond_2

    .line 9189
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    if-eqz p1, :cond_1

    .line 9190
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->requestLayout()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9193
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 9194
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetanimatorSearchVisible(Lorg/telegram/ui/DialogsActivity;)Lme/vkryl/android/animator/BoolAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lme/vkryl/android/animator/BoolAnimator;->getValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9195
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 9196
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchField(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_3
    return-void
.end method
