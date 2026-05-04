.class Lorg/telegram/ui/ChannelColorActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelColorActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelColorActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelColorActivity;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$2;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDark()Z
    .locals 1

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$2;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$2200(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$2;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$2300(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    return v0
.end method

.method public supportsAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public switchDayNight(Z)V
    .locals 2

    .line 488
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$2;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->access$2400(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;

    if-eqz p1, :cond_0

    .line 489
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$2;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->access$2500(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;

    invoke-virtual {p1}, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->toggle()V

    .line 491
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$2;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/ChannelColorActivity$2;->isDark()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ChannelColorActivity;->setForceDark(ZZ)V

    .line 492
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$2;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ChannelColorActivity;->updateColors(Z)V

    return-void
.end method
