.class Lorg/telegram/ui/ProfileActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Bulletin$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->onFragmentCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    .line 2397
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic allowLayoutChanges()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$allowLayoutChanges(Lorg/telegram/ui/Components/Bulletin$Delegate;)Z

    move-result v0

    return v0
.end method

.method public bottomOffsetAnimated()Z
    .locals 1

    .line 2416
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbottomButtonsContainer(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic clipWithGradient(I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$clipWithGradient(Lorg/telegram/ui/Components/Bulletin$Delegate;I)Z

    move-result p1

    return p1
.end method

.method public getBottomOffset(I)I
    .locals 6

    .line 2405
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbottomButtonsContainer(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2406
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetCurrentBottomTabsOffset(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    add-int/2addr p1, v0

    return p1

    .line 2408
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getTabVisibility(IZ)F

    move-result p1

    .line 2409
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->getTabVisibility(IZ)F

    move-result v0

    .line 2410
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mgetCurrentBottomTabsOffset(Lorg/telegram/ui/ProfileActivity;)I

    move-result v4

    add-int/2addr v2, v4

    const/high16 v4, 0x42500000    # 52.0f

    .line 2411
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbottomButtonsContainer(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbottomButtonContainer(Lorg/telegram/ui/ProfileActivity;)[Landroid/widget/FrameLayout;

    move-result-object v5

    aget-object v1, v5, v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    mul-float/2addr v0, v1

    sub-float/2addr v4, v0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$4;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbottomButtonContainer(Lorg/telegram/ui/ProfileActivity;)[Landroid/widget/FrameLayout;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    mul-float/2addr p1, v0

    sub-float/2addr v4, p1

    float-to-int p1, v4

    add-int/2addr v2, p1

    return v2
.end method

.method public getTopOffset(I)I
    .locals 1

    .line 2400
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public synthetic onBottomOffsetChange(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$onBottomOffsetChange(Lorg/telegram/ui/Components/Bulletin$Delegate;F)V

    return-void
.end method

.method public synthetic onHide(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$onHide(Lorg/telegram/ui/Components/Bulletin$Delegate;Lorg/telegram/ui/Components/Bulletin;)V

    return-void
.end method

.method public synthetic onShow(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$onShow(Lorg/telegram/ui/Components/Bulletin$Delegate;Lorg/telegram/ui/Components/Bulletin;)V

    return-void
.end method
