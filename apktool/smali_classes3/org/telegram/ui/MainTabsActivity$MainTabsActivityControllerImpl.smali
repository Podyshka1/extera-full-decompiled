.class Lorg/telegram/ui/MainTabsActivity$MainTabsActivityControllerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/MainTabsActivityController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/MainTabsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainTabsActivityControllerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MainTabsActivity;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/MainTabsActivity;)V
    .locals 0

    .line 1162
    iput-object p1, p0, Lorg/telegram/ui/MainTabsActivity$MainTabsActivityControllerImpl;->this$0:Lorg/telegram/ui/MainTabsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/MainTabsActivity;Lorg/telegram/ui/MainTabsActivity-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/MainTabsActivity$MainTabsActivityControllerImpl;-><init>(Lorg/telegram/ui/MainTabsActivity;)V

    return-void
.end method


# virtual methods
.method public openAccountSelector(Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1178
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity$MainTabsActivityControllerImpl;->this$0:Lorg/telegram/ui/MainTabsActivity;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/MainTabsActivity;->-$$Nest$mopenAccountSelector(Lorg/telegram/ui/MainTabsActivity;Landroid/view/View;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setTabsVisible(Z)V
    .locals 2

    .line 1165
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity$MainTabsActivityControllerImpl;->this$0:Lorg/telegram/ui/MainTabsActivity;

    invoke-static {v0}, Lorg/telegram/ui/MainTabsActivity;->-$$Nest$fgettabsView(Lorg/telegram/ui/MainTabsActivity;)Lorg/telegram/ui/MainTabsLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1166
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity$MainTabsActivityControllerImpl;->this$0:Lorg/telegram/ui/MainTabsActivity;

    invoke-static {v0}, Lorg/telegram/ui/MainTabsActivity;->-$$Nest$fgetanimatorTabsVisible(Lorg/telegram/ui/MainTabsActivity;)Lme/vkryl/android/animator/BoolAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/vkryl/android/animator/BoolAnimator;->changeValueSilently(Z)V

    .line 1167
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity$MainTabsActivityControllerImpl;->this$0:Lorg/telegram/ui/MainTabsActivity;

    invoke-static {v0}, Lorg/telegram/ui/MainTabsActivity;->-$$Nest$fgetanimatorTabsVisible(Lorg/telegram/ui/MainTabsActivity;)Lme/vkryl/android/animator/BoolAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lme/vkryl/android/animator/BoolAnimator;->changeValueSilently(F)V

    return-void

    .line 1169
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity$MainTabsActivityControllerImpl;->this$0:Lorg/telegram/ui/MainTabsActivity;

    invoke-static {v0}, Lorg/telegram/ui/MainTabsActivity;->-$$Nest$fgetanimatorTabsVisible(Lorg/telegram/ui/MainTabsActivity;)Lme/vkryl/android/animator/BoolAnimator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    return-void
.end method
