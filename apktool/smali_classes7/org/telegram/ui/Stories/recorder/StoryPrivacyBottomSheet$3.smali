.class Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;
.super Lorg/telegram/ui/Components/ViewPagerFixed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 2224
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected canScroll(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 2232
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetviewPager(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 2233
    instance-of v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 2234
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_0

    .line 2235
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    return v2

    .line 2238
    :cond_0
    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->getTypeOn(Landroid/view/MotionEvent;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    .line 2240
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputactivePage(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 2242
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedContacts(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetselectedContactsByGroup(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2243
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 2246
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedEveryone(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fgetexcludedEveryoneByGroup(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2247
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    goto :goto_0

    .line 2250
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->-$$Nest$fputselectedType(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)V

    .line 2252
    :cond_3
    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    .line 2253
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    :cond_4
    if-eq p1, v1, :cond_5

    .line 2256
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    :cond_5
    if-eq p1, v1, :cond_6

    return v2

    :cond_6
    const/4 p1, 0x0

    return p1

    :cond_7
    return v2
.end method

.method protected onItemSelected(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 2265
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8700(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2266
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    :cond_0
    return-void
.end method

.method public onTabAnimationUpdate(Z)V
    .locals 0

    .line 2227
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$8600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
