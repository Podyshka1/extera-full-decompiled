.class final Lcom/exteragram/messenger/utils/ui/MonetUtils$OverlayChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/utils/ui/MonetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OverlayChangeReceiver"
.end annotation


# instance fields
.field private isRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    const-string p1, "android.intent.action.OVERLAY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeMonet()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 170
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeNight()Z

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->applyTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Z)V

    :cond_0
    return-void
.end method

.method public final register(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-boolean v0, p0, Lcom/exteragram/messenger/utils/ui/MonetUtils$OverlayChangeReceiver;->isRegistered:Z

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 156
    const-string v1, "android"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 157
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lcom/exteragram/messenger/utils/ui/MonetUtils$OverlayChangeReceiver;->isRegistered:Z

    return-void
.end method

.method public final unregister(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-boolean v0, p0, Lcom/exteragram/messenger/utils/ui/MonetUtils$OverlayChangeReceiver;->isRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 164
    iput-boolean p1, p0, Lcom/exteragram/messenger/utils/ui/MonetUtils$OverlayChangeReceiver;->isRegistered:Z

    return-void
.end method
