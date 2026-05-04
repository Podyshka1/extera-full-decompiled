.class Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$1;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;Landroid/content/Context;)V
    .locals 0

    .line 3486
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 3489
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->-$$Nest$fgetcurrentDeletingSpan(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/GroupCreateSpan;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3490
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->-$$Nest$fgetcurrentDeletingSpan(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/GroupCreateSpan;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/GroupCreateSpan;->cancelDeleteAnimation()V

    .line 3491
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->-$$Nest$fputcurrentDeletingSpan(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 3493
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 3494
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3495
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 3496
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 3497
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 3500
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
