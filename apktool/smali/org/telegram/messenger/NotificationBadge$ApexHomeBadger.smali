.class public Lorg/telegram/messenger/NotificationBadge$ApexHomeBadger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationBadge$Badger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/NotificationBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApexHomeBadger"
.end annotation


# static fields
.field private static final CLASS:Ljava/lang/String; = "class"

.field private static final COUNT:Ljava/lang/String; = "count"

.field private static final INTENT_UPDATE_COUNTER:Ljava/lang/String; = "com.anddoes.launcher.COUNTER_CHANGED"

.field private static final PACKAGENAME:Ljava/lang/String; = "package"


# direct methods
.method public static synthetic $r8$lambda$uyCxboysT_JsHR5EyVocfICJihs(Landroid/content/Intent;)V
    .locals 1

    .line 86
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeBadge(I)V
    .locals 3

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.anddoes.launcher.COUNTER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lorg/telegram/messenger/NotificationBadge;->-$$Nest$sfgetcomponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    invoke-static {}, Lorg/telegram/messenger/NotificationBadge;->-$$Nest$sfgetcomponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "class"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-static {v0}, Lorg/telegram/messenger/NotificationBadge;->-$$Nest$smcanResolveBroadcast(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    new-instance p1, Lorg/telegram/messenger/NotificationBadge$ApexHomeBadger$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lorg/telegram/messenger/NotificationBadge$ApexHomeBadger$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getSupportLaunchers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    const-string v0, "com.anddoes.launcher"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
