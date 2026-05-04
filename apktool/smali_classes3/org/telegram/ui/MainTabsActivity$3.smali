.class Lorg/telegram/ui/MainTabsActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Bulletin$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MainTabsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MainTabsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MainTabsActivity;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lorg/telegram/ui/MainTabsActivity$3;->this$0:Lorg/telegram/ui/MainTabsActivity;

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

    .line 258
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->floating()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

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
    .locals 1

    .line 252
    iget-object p1, p0, Lorg/telegram/ui/MainTabsActivity$3;->this$0:Lorg/telegram/ui/MainTabsActivity;

    invoke-static {p1}, Lorg/telegram/ui/MainTabsActivity;->-$$Nest$misBottomTabsEnabled(Lorg/telegram/ui/MainTabsActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x42800000    # 64.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity$3;->this$0:Lorg/telegram/ui/MainTabsActivity;

    invoke-static {v0}, Lorg/telegram/ui/MainTabsActivity;->-$$Nest$fgetanimatorTabsVisible(Lorg/telegram/ui/MainTabsActivity;)Lme/vkryl/android/animator/BoolAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 253
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity$3;->this$0:Lorg/telegram/ui/MainTabsActivity;

    invoke-static {v0}, Lorg/telegram/ui/MainTabsActivity;->-$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/MainTabsActivity;)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public synthetic getTopOffset(I)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$getTopOffset(Lorg/telegram/ui/Components/Bulletin$Delegate;I)I

    move-result p1

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
