.class Lorg/telegram/ui/Stories/StoriesUtilities$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoriesUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 110
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sput v0, Lorg/telegram/ui/Stories/StoriesUtilities;->debugState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 112
    sput v1, Lorg/telegram/ui/Stories/StoriesUtilities;->debugState:I

    goto :goto_0

    .line 114
    :cond_0
    sput v2, Lorg/telegram/ui/Stories/StoriesUtilities;->debugState:I

    .line 116
    :goto_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v3

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 117
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->debugRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 118
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    return-void
.end method
